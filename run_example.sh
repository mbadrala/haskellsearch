#!/bin/bash

echo "Generating example texts"
cd tshotmtext
python3 generate.py
cd ../

echo "Searching for 'king' in example text files"
cabal run