#!/bin/bash 
function quit {
  exit
}

function hello {
  echo Hello!
}

hello
quit
echo foo 

function e {
  echo $1 
}  

e 'Hello World'
quit
echo foo 
