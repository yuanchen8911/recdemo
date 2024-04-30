## Introduction

This project shows how to use `asciinema` and `svg-term` to record demos in your terminal sessions and save them to svg or mp4 files. 

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
A demo file is any valid executable script consisting of 
    - Comment and note lines starts with #
    - Command lines that contain a valid command that can be executed.
  
Here's an example demo file: [minikube-demo](examples/minikube-demo).

### Play a demo
   `./scripts/play-demo.sh <demo file> <command prompt> (optional)` 
   
 ```sh
   ./scripts/play-demo.sh examples/minikube-demo k8s 
```
Check out [play-demo.sh](scripts/play-demo.sh) to customize the prompt, font, colar, delay, etc. as needed.

### Play a demo and save it to a svg file
   `svg-term --command "play-demo.sh <demo file>" --out <output file> --window`
   ``` sh
     svg-term --command "./scripts/play-demo.sh examples/minikube-demo k8s" --out examples/minikube-demo.svg --window
   ```
### Play a svg file
Open the generated svg file [demo](examples/minikube-demo.svg).

<p align="center">
  <img width="600" src="examples/minikube-demo.svg">
</p>

### Save a demo in a mp4 file 
TODO

Have fun!

