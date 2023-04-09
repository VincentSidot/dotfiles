#!/usr/bin/env bash

YTM_URL="http://localhost:9863/query"
YTM_KEY="xxxx"

youtube_music_post() {
	command=$1
	curl -s -X POST $YTM_URL -H "Authorization: Bearer $YTM_KEY" -d "{\"command\":\"$command\"}" >>/dev/null
}

youtube_music_post $1
