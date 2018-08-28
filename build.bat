@echo off

echo "Building optimized version (elm-make)"

call node_modules\.bin\elm make --optimize --output=build\elm.js src\Main.elm
call node_modules\.bin\uglifyjs build\elm.js --compress "pure_funcs='F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9',pure_getters,keep_fargs=false,unsafe_comps,unsafe" | node_modules\.bin\uglifyjs --mangle --output=build\elm.min.js

copy .\optimized.html build\index.html