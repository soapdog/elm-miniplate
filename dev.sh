#!/bin/sh

echo "Launching dev server (elm-live)"
node_modules/.bin/elm-live src/Main.elm --output=debug/elm.js --dir=debug --path-to-elm=node_modules/.bin/elm --open --pushstate