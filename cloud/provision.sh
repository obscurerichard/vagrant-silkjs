#!/bin/bash

# Credit to Stack Overflow
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
# Answer: http://stackoverflow.com/a/246128
# Question asked by http://stackoverflow.com/users/2908/jiaaro
# Answered by http://stackoverflow.com/users/8964/frank-szczerba
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo chef-solo -c "$DIR"/solo.rb -j "$DIR"/dna.json
