# elm-miniplate
A little minimal boilerplate for Elm 0.19

## Description
This little boilerplate uses a local install of Elm 0.19 and Elm-Live. It is self-contained.

## Development Server

```
$ ./dev.sh
```

Will launch [elm-live](https://github.com/wking-io/elm-live/).

## Build For Production

```
$ ./build.sh
```

Will use `elm-make --optimize` to build a production version of your source code. The code is built in the `build/` folder.

## Running the local Elm binary

```
$ ./local_elm.sh ...
```

You can call the script above passing arguments you'd normally pass to the `elm` binary and it should just work.

## TODO
There are many things to implement, on the roadmap I have:

- [ ] Add support for rollup
- [ ] Rebuild the _debug_ version of `index.html` when the live-server detect a change.