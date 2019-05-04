#!/bin/bash

cat ~/.bash_history |sort | uniq -c |sort -nr|head -n 5
