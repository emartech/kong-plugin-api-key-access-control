!#/bin/bash

luarocks make
luarocks pack api-key-access-control
find . -name '*.rockspec' | xargs luarocks upload --api-key=$LUAROCKS_API_KEY
find . -name '*.all.rock' -delete
find . -name '*.src.rock' -delete