#!/bin/bash

echo "Deleting old dist."
rm -rf dist

echo "==============================="
echo "Copying over files to dist."
cp -R src dist

echo "==============================="
echo "Compiling TypeScript files."
tsc

cd dist

echo "==============================="
echo "Cleaning up source files from dist."
rm -rf **/*.xcf
rm -rf **/*.ts

echo "==============================="
echo "Generating HTML files from Markdown."
../tools/pandoc-3.5/bin/pandoc -s -f markdown -t html5 -o index.html index.md -c style.css
cd pages
for file in **/*.md; do
  ../../tools/pandoc-3.5/bin/pandoc -s -f markdown -t html5 -o "$file.html" "$file" -c ../../style.css
done

echo "==============================="
echo "Done!"
