sed -i '' -e '1d' spotify-us-daily.csv
sort -u -t "," -k3,3 spotify-us-daily.csv > sortedList.csv
