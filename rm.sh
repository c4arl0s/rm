#!/bin/bash

if [[ "$1" == "-rf" ]]; then
  /bin/rm "$@"
  exit $?
fi

file_to_delete=${1:?"Error. You must specify a file or directory as first parameter."}
if mv "$file_to_delete" ~/.Trash/ > /dev/null 2>&1
then
  echo "✅ $file_to_delete was moved to .Trash directory"
else
  echo "🔴 Error: $file_to_delete was not moved to .Trash directory"
fi
