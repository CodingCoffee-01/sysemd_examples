!/bin/bash
file="gcp_file"
if [ -d "$file" ]
then
        echo "$file found."
        echo "$file found 1"
        echo "$file found 2"

else
        echo "$file not   found."
        echo "$file not 2 found."
        echo "$file not 3 found."
fi
