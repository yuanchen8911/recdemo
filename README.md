# recdemo (record-demo): Play and Record Demos in Terminal Sessions with Little Efforts
Playing and recording demos has never been easier. This project provides a tool and demonstrates how to play demos in terminal sessions and save them as SVG files using `asciinema` and `svg-term`.

## Install dependencies
1. Install `asciinema` (https://asciinema.org/docs/installation)
      ```sh
      pip3 install asciinema
      ```
3. Install`Node.js/npm` (https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
4. Install `svg-term-cli` (https://github.com/marionebl/svg-term-cli)
      ```sh
      npm install -g svg-term-cli
      ```
5. (optionall( Install `svg-to-video`
      ```sh
      npm install -g svg-to-video
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
# This is a comment line

# A command line is a valid command
# List all files in the current directory
ls

# Show today's date
date

# Say hello
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
Open the generated svg file `simple-demo.svg`.

<p align="center">
  <img width="800" src="examples/simple-demo.svg">
</p>

## A realistc demo 

Here's a realstic demo that shows how to use minikube to play with kubernetes on your Mac..
- Input: [minikube.demo](examples/minikube.demo)
- Output: [minikube-demo.svg](examples/minikube-demo.svg)

<p align="center">
  <img width="800" src="examples/minikube-demo.svg">
</p>

## Acknowledgement

The tool `recdemo.sh` was adapted from a script that was originally created by @wzshiming for the `kwok` project: https://kwok.sigs.k8s.io/.
