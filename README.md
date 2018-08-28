# elm-miniplate
A little minimal boilerplate for Elm 0.19

## Description
This little boilerplate uses a local install of Elm 0.19 and Elm-Live. It is self-contained.

## Setup
You need to have [nodejs](https://nodejs.org) installed to use this boilerplate.

To install the dependencies, use:

```
$ npm install
```

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

## Windows 10 Support
All the _bash scripts_ have equivalents in _Windows Batch_ format.

* `dev.sh` &rarr; `dev.bat`
* `build.sh` &rarr; `build.bat`
* `local_elm.sh` &rarr; `local_elm.bat` 

You can follow the same instructions as the commands above just replaing the script files with their _batch equivalents_.

## TODO
There are many things to implement, on the roadmap I have:

- [ ] Add support for rollup
- [ ] Rebuild the _debug_ version of `index.html` when the live-server detect a change.