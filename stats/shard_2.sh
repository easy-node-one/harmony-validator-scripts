#! /bin/bash
echo -e "\n $(date)" && echo -e "\n $(hostname) on Shard 2 Status:\n" && ./hmy blockchain latest-headers | grep epoch && ./hmy blockchain latest-headers | grep viewID && ./hmy blockchain latest-headers | grep shardID && echo -e "\n Harmony Network Shard 2 Status:\n" && ./hmy --node="https://api.s2.t.hmny.io" blockchain latest-headers | grep epoch && ./hmy --node="https://api.s2.t.hmny.io" blockchain latest-headers | grep viewID && ./hmy --node="https://api.s2.t.hmny.io" blockchain latest-headers | grep shardID && echo -e "\n Uptime :: $(uptime)\n\n Harmony DB Size  ::  $(du -h harmony_db_0)\n Harmony DB Size  ::  $(du -h harmony_db_2)\n" && ./harmony -V