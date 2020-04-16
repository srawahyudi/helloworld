#!/bin/bash

for i in {1..11}
do
    if [ $i -ne 6 ] # skip server six
    then
        cat helloworld.jar |ssh user@l040101-ws$i.XXXX.XX.XX \
            "cd someFolder; cat > helloworld.jar; java -jar helloworld.jar" &
    fi
done
