# Play and Record Demos in Terminal Sessions with Little Efforts
Playing and recording demos has never been easier. This project provides a small tool and demonstrates how to play a terminal demo and save it as SVG files using `asciinema` and `svg-term`.

## Install dependencies manually 
You can skip this step if you have `pip3` and `node.js/npm` installed on your machine. In this case, the script will automatically isntall `asciinema` and `svg-term` for you.

1. Install `asciinema` (https://asciinema.org/docs/installation)
      ```sh
      pip3 install asciinema
      ```
2. Install`Node.js/npm` (https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
3. Install `svg-term-cli` (https://github.com/marionebl/svg-term-cli)
      ```sh
      npm install -g svg-term-cli
      ```
## Usage
### Create a demo file
A demo file is a valid script that consists of:
- Comments and notes, each starting with `#`.
- Command lines containing valid commands that will execute during the demo.

Here's a simple example demo file: [simple.demo](examples/simple.demo). 

```
# This is a simple demo file

# Comment/note lines begin with '#'
# This is a comment.

# A command line is a valid command that will execute.
# List all files in the current directory
ls

# Show today's date
date

# Say Hello
echo "Hello, world!"

# Wait for 2 seconds
sleep 2

# That's it.
# Thank you for using recdemo!"

clear
```

### Play a demo and save it in a svg file
 ```
  scripts/recdemo.sh <input> [output] [--help] [options...]
  <input> input file
  <output> output file: .svg for a svg file (default), .cast for a cast file, .mp4 for a video file
  --help show this help
  --cols cols of the terminal
  --rows rows of the terminal
  --ps1 ps1 of the recording
  --term terminal type
```
 ```sh
   ./scripts/recdemo.sh examples/simple.demo examples/simple-demo.svg
```

### Play a genereated svg file
Just open the generated svg file `simple-demo.svg`..

<p align="center">
  <img width="800" src="examples/simple-demo.svg">
</p>

## A realistic demo 

Here's a realstic demo that shows how to use minikube to play with kubernetes on your Mac.
- Input: [minikube.demo](examples/minikube.demo)
- Output: [minikube-demo.svg](examples/minikube-demo.svg)

<p align="center">
  <img width="800" src="examples/minikube-demo.svg">
</p>

## TO DO
Add the support to save a demo in a video file by converting svg to mp4. 

## Contributions

Contributions are welcome!

## Acknowledgement

The tool `recdemo.sh` was adapted from a script that was originally created by @wzshiming for the `kwok` project: https://kwok.sigs.k8s.io/.
