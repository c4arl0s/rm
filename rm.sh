#!/bin/bash

if [[ "$1" == "-rf" || "$1" == "-f" || "$1" == "-r" ]]; then
  if [[ -z "$2" ]]; then
    echo "Error: It is missing file or directory as second parameter"
    exit 1
  fi
  /bin/rm "$@"
  status=$?
  if [ $status -eq 0 ]; then
    shift
    echo "⚠️  $@ was permanently removed"
  fi
  exit $status
fi

file_to_delete=${1:?"Error. You must specify a file or directory as first parameter."}
if mv "$file_to_delete" ~/.Trash/ > /dev/null 2>&1
then
  echo "✅ $file_to_delete was moved to .Trash directory"
else
  echo "🔴 Error: $file_to_delete was not moved to .Trash directory"
fi
