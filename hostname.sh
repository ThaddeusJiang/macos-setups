#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -eq 0 ]; then
  echo "Current hostname config:"
  echo "  ComputerName  = $(scutil --get ComputerName 2>/dev/null || echo '(not set)')"
  echo "  LocalHostName = $(scutil --get LocalHostName 2>/dev/null || echo '(not set)')"
  echo "  HostName      = $(scutil --get HostName 2>/dev/null || echo '(not set)')"
  exit 0
fi

if [ "$#" -ne 1 ]; then
  echo "Usage:"
  echo "  $0            # show current"
  echo "  $0 <name>     # set hostname"
  exit 1
fi

INPUT="$1"

SLUG=$(echo "$INPUT" \
  | tr '[:upper:]' '[:lower:]' \
  | tr ' ' '-' \
  | tr -cd 'a-z0-9-')

echo "Setting hostname:"
echo "  ComputerName  = $INPUT"
echo "  LocalHostName = $SLUG"
echo "  HostName      = $SLUG"

sudo scutil --set ComputerName "$INPUT"
sudo scutil --set LocalHostName "$SLUG"
sudo scutil --set HostName "$SLUG"

dscacheutil -flushcache || true
sudo killall -HUP mDNSResponder || true

echo
echo "Done."
echo

echo "New values:"
echo "  ComputerName  = $(scutil --get ComputerName)"
echo "  LocalHostName = $(scutil --get LocalHostName)"
echo "  HostName      = $(scutil --get HostName)"
