#!/bin/bash

chmod g+w ./
chmod g+w README.md
chmod -R g+wx data config logs metadata notebooks reports scripts
chmod -R g-w data/raw/
