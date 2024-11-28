#!/bin/bash

echo "Deleting old dist."
rm -rf dist

echo "==============================="
echo "Copying over source files."
cp -R src dist

echo "==============================="
echo "Generating HTML files from Markdown."
cd dist
../tools/pandoc-3.5/bin/pandoc -s -f markdown -t html5 -o index.html index.md -c style.css
cd pages
for file in **/*.md; do
  ../../tools/pandoc-3.5/bin/pandoc -s -f markdown -t html5 -o $file.html $file -c ../../style.css
done

echo "==============================="
echo "Done!"
