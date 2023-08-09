#!/bin/bash

html_file="index.html"

grep -oP 'https?://\S+' "$html_file"

