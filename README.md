# Play and Record Demos in Terminal Sessions with Little Efforts

This project shows how to use `asciinema` and `svg-term` to record demos in your terminal sessions and save them to svg or mp4 files. 

<p align="center">
  <img width="800" src="examples/minikube-demo.svg">
</p>


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
  
Here's an example demo file: [minikube-demo](examples/minikube-demo).

### Play a demo and save it in a svg file
 ```
  scripts/recdemo.sh <input> [output] [--help] [options...]
  <input> input file
  <output> output file
  --help show this help
  --cols cols of the terminal
  --rows rows of the terminal
  --ps1 ps1 of the recording
  --term terminal type
```
 ```sh
   ./scripts/recdemo.sh examples/minikube-demo examples/minikube-demo.svg
```

### Play a genereated svg file
Open the svg file `minikube-demo.svg`.

### Record a demo in a mp4 file 
TODO

## Acknowledgement

The script was originally created by @wzshiming for the `kwok` project: https://kwok.sigs.k8s.io/.

=======
Have fun!
>>>>>>> 829d934 (Update README.md)
