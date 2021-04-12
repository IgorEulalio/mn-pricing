#!/bin/sh
echo "Wrapping gradle"
graddle wrapper
echo "Clean and Assemble artifacts"
./gradlew clean assemble
echo "Building Docker Image"
docker build . -t mn-pricing
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run -p 8080:8080 mn-pricing"
