import argparse
import requests
import json

ytm_endpoint = "http://localhost:9863/query"

def get_request():
    return requests.get(ytm_endpoint).json()

def song_name():
    response = get_request()
    track = response['track']
    return f"{track['author']} - {track['title']}"

def song_status():
    response = get_request()
    player = response['player']
    if player['isPaused']:
        return ""
    else:
        return ""

def song_percentage(char_len=12):
    percentage = get_request()['player']['statePercent']
    char_len -= 2
    return f"[{''.join('' if i < percentage*char_len else '.' for i in range(char_len))}]"

def print_status():
    print(f"{song_status()} {song_name()} {song_percentage(12)}")

def parser():
    parser = argparse.ArgumentParser()
    parser.add_argument('-d', '--debug', action='store_true', help="Print get command")

    return parser.parse_args()

def main():

    args = parser()
    if args.debug:
        print(get_request())
    else:
        print_status()

if __name__=="__main__":
    main()
