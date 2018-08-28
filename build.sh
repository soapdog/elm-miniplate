#!/bin/sh

set -e

js="build/elm.js"
min="build/elm.min.js"

echo "Building optimized version (elm-make)"
node_modules/.bin/elm make --optimize --output=$js src/Main.elm #replace with $@ to use cli args

node_modules/.bin/uglifyjs $js --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | node_modules/.bin/uglifyjs --mangle --output=$min

echo "Initial size: $(cat $js | wc -c | numfmt --to=iec) bytes  ($js)"
echo "Minified size: $(cat $min | wc -c| numfmt --to=iec) bytes  ($min)"
echo "Gzipped size: $(cat $min | gzip -c | wc -c| numfmt --to=iec) bytes"

cp ./optimized.html build/index.html