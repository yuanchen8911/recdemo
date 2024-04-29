
`recdemo` demonstrates how to use `asciinema` and `svg-term` to create and record demos in your terminal sessions. 

## Install
1. Install asciinema (https://asciinema.org/docs/installation)
      ```sh
      pip3 install asciinema
      ```
3. Install npm (https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
4. Install svg-term-cli: (see more 
      ```sh
      npm install -g svg-term-cli
      ```
## Create a demo file
  A demo file is any valid executable script consisting of 
    - Comment and note lines starts with #
    - Command line that contains a valid command that can be executed.
  
  The following  is a simple demo file.
```
  # This is a demo how to generate 
  # First 
```
## Play a demo
   `play-demo.sh <demo file> <command prompt>` 
   
 ```sh
   play-demo.sh mydemo $demo
```
Look at `play-demo.sh` and cusromize the prompt, font, colar, delay, etc. as needed.

## Play a demo and save it  to a svg file
   `svg-term --command "play-demo.sh <demo file>" --output <output file> --window`
   ``` sh
     svg-term -coomand "play-demo.sh mydemo --output mydemo.svg --window
   ```
## Save a demo in a mp4 file


Have fun!

