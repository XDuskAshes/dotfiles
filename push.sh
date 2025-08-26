#!/bin/bash

# push to the two places i put these things
echo "Codeberg push" && git push -u codeberg main
echo "Github push" && git push -u github main
