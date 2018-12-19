#!/bin/bash
# Time download time for a set of pages

# TODO: do real timing instead of random number ;)
time_page() {
  label=$1
  url=$2
  t=$(echo "2000 + $RANDOM % 3000" | bc)
  c=$(echo "$RANDOM % 2" | bc)
  cat <<__EOF | curl --data-binary @- http://localhost:9091/metrics/job/zuzuresenti/instance/$label
    # TYPE zuzu_resenti_load_time gauge
    zuzu_resenti_load_time $t
    # TYPE zuzu_resenti_page_changed gauge
    zuzu_resenti_page_changed $c
__EOF
}

while true ; do
  time_page "epflhome"  "https://www.epfl.ch/"
  time_page "enac"  "https://www.epfl.ch/schools/enac/"
  sleep 300
done