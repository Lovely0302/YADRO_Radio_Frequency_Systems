#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Использование: $0 <имя_файла> <слово>"
  exit 1
fi
grep "$2" "$1"

