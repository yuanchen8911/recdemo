# Play and Record Demos in Terminal Sessions with Little Efforts
Playing and recording demos has never been easier. This project provides a script and how you how to use it for playing demos in terminal sessions and saving them to SVG files using `asciinema` and `svg-term`.

## Install
1. Install `asciinema` (https://asciinema.org/docs/installation)
      ```sh
      pip3 install asciinema
      ```
3. Install`Node.js` and `npm` (https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
4. Install `svg-term-cli`: (https://github.com/marionebl/svg-term-cli)
      ```sh
      npm install -g svg-term-cli
      ```
## Usage
### Create a demo file
A demo file is a valid script file consisting of 
- Comment and note lines starting with `#`
- Command lines with valid commands that will execute in the demo.
  
Here's a simple example demo: [simple.demo](examples/simple.demo). 


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

## A realistc demo 

Here's a realstic demo that shows how to use minikube to play with kubernetes on your Mac..
- Input: [minikube.demo](examples/minikube.demo)
- Output: [minikube-demo.svg](examples/minikube-demo.svg)

<p align="center">
  <img width="800" src="examples/minikube-demo.svg">
</p>

## Acknowledgement

The script was adapted from a script that was created by @wzshiming for the `kwok` project: https://kwok.sigs.k8s.io/.
