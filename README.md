# CSV data analysis
using zsh shellscript 

Since I have the csv file already downloaded on my computer I do not need to use cURL or wget to obtain it. </br>
The file on my computer is called `spotify-us-daily.csv`


prints the contents of the csv file to stdout:
```
rachelminkowitz@Rachels-MBP Documents % cat spotify-us-daily.csv
```

creates a shell script in vim called musicScript.sh:

```
rachelminkowitz@Rachels-MBP Documents % vim musicScript.sh
```

verifies the script and runs it using these commands:
```
rachelminkowitz@Rachels-MBP Documents % chmod 755 musicScript.sh 
rachelminkowitz@Rachels-MBP Documents % ~/Documents/musicScript.sh
```
Above are the command line prompts, because the script does the rest of the work. 
</br>
Lets take a look at the script.

I started experimenting with different possibilities to sort the unique artist names and kept noticing that the header of the 
csv was being sorted with the rest of the data. Therefore, the first line in the script deletes the first line in the file in order to sort
without the header. 

```
sed -i '' -e '1d' spotify-us-daily.csv
```
`sed` modifies the file automatically</br>
`-i` replaces the data in the original file itself</br>
`'1d'` deletes the first line</br>

I then sort this file, using the "," as the feild separators and only keeping the unique artist names (-u) according to the values in the third column
this information is sent to the file called 'sortedList.csv'
```
sort -u -t "," -k3,3 spotify-us-daily.csv > sortedList.csv
```
`sort` sorts the file by arranging the record in a specific way</br>
`-u` removes duplicates, this is equivelent to explicitely writing `uniq`</br>
`-t ","` commas separate values</br>
`-k3,3` sort according to the values in the 3rd column only



