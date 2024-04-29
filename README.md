## Introduction

This repo shows how to use `asciinema` and `svg-term` to record demos in your terminal sessions and save to svg or mp4 files. 

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
    - Command line that contains a valid command that can be executed.
  
  Here's an example demo file: [example-demo](example.demo).

### Play a demo
   `play-demo.sh <demo file> <command prompt> (optional)` 
   
 ```sh
   play-demo.sh example-demo $demo
```
Check out [play-demo.sh](play-demo.sh) to customize the prompt, font, colar, delay, etc. as needed.

### Play a demo and save it to a svg file
   `svg-term --command "play-demo.sh <demo file>" --output <output file> --window`
   ``` sh
     svg-term -coomand "play-demo.sh example-demo" --output example-demo.svg --window
   ```

### Play the genereated svg
Open the output file `example-demo.svg`.

### Save a demo in a mp4 file 
TODO

Have fun!

