#!/bin/sh

echo "Launching dev server (elm-live)"
cp debug.html ./debug/index.html
node_modules/.bin/elm-live src/Main.elm --output=debug/elm.js --dir=debug --path-to-elm=node_modules/.bin/elm --open --pushstate