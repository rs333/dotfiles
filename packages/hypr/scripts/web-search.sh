#!/bin/bash
search_url="www.google.com/search?q="
query=$(wofi -dmenu -p "Web Search:")


if [ -z "$query" ]; then
	exit
fi
fixed_query="${query// /+}"

firefox $search_url$fixed_query &
