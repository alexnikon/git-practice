#!/bin/bash

echo "🔍 Checking for SECRET..."

# По умолчанию сканирует только *.txt и *.md, исключает .git и .github
if grep -r "SECRET" . --exclude-dir=.git --exclude-dir=.github --include="*.txt" --include="*.md"; then
  echo "❌ SECRET found!"
  exit 1
else
  echo "✅ No secret found"
  exit 0
fi

