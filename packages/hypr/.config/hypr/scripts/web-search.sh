#!/bin/bash
query=$(wofi -dmenu -p "Web Search:")

if [ -z "$query" ]; then
	exit
fi

# Percent-encode a string for use in a URL query value.
urlencode() {
	local s="$1" out="" i c
	for (( i=0; i<${#s}; i++ )); do
		c="${s:$i:1}"
		case "$c" in
			[a-zA-Z0-9.~_-]) out+="$c" ;;
			*) printf -v hex '%%%02X' "'$c"; out+="$hex" ;;
		esac
	done
	printf '%s' "$out"
}

# URL for a query with no recognized prefix. Profile fragments may redefine it.
default_url() {
	printf 'https://www.google.com/search?q=%s' "$(urlencode "$1")"
}

# Extra prefix routes: print a URL for (prefix, rest) and return 0, or return 1
# if the prefix isn't handled. Profile fragments may redefine it.
profile_route() {
	return 1
}

# Machine-profile fragments (stowed by hypr-home / hypr-work), e.g.
# ~/.config/hypr/profile/web-search-work.sh
for fragment in "$HOME"/.config/hypr/profile/web-search-*.sh; do
	[ -r "$fragment" ] && source "$fragment"
done

# Split the query into the first word (prefix) and the remaining text.
prefix="${query%% *}"
if [ "$prefix" = "$query" ]; then
	rest=""        # single word, no trailing text
else
	rest="${query#* }"
fi

case "$prefix" in
	google)
		# Explicit Google search.
		url="https://www.google.com/search?q=$(urlencode "$rest")"
		;;
	cdk)
		# AWS TypeScript CDK docs (Construct Hub indexes the CDK API).
		url="https://constructs.dev/search?q=$(urlencode "$rest")"
		;;
	*)
		url="$(profile_route "$prefix" "$rest")" || url="$(default_url "$query")"
		;;
esac

firefox "$url" &
