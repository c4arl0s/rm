#!/bin/bash

file_to_delete=${1:?"Error. You must specify a file as first parameter."}
if trash -v $file_to_delete > /dev/null
then
  echo "You are not able to use wild card .*"
  echo "✅ $file_to_delete was moved to .Trash directory"
else
  echo "🔴 Error: $file_to_delete was not moved to .Trash directory"
fi
