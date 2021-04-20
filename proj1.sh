#!/bin/bash

printContents() {
	if [ -d "$1" ]; then
		if [ "$(ls -A "$1")" ]; then
			echo "<ul>"
			for FILE in "$1"/*; do
				filename=$(basename "$FILE")
				if [[ $(stat -c "%A" $FILE | cut -c2-2) == "r" ]] && [[ $(stat -c "%A" $FILE | cut -c5-5) == "r" ]] && [[ $(stat -c "%A" $FILE | cut -c8-8) == "r" ]]; then
					if [ -d "$FILE" ]; then
						list="<li>${filename}</li>"
						echo $list
						printContents "$FILE"
					else
						list="<li>${filename}</li>"
						echo $list
					fi
				fi
			done
			echo "</ul>"
		fi
	else
		echo "<h2>"
		echo "Directory does not exist."
		echo "</h2>"
	fi
}

if [ $# -eq 2 ];
then
	echo "<!DOCTYPE html>" > $2
	echo "<html>" >> $2
	echo "<body>" >> $2
	echo "<h1>$1</h1>" >> $2
	printContents "$1" >> $2
	echo "</body>" >> $2
	echo "</html>" >> $2
else
	echo 'Not Correct Number of Arguments.'
fi

