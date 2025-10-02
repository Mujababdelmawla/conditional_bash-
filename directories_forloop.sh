#!/bin/bash 

# creating 3 directories and 2 files inside each directory using loops in bash 

desktop_path="/mnt/c/Users/asus/conditional_bash"

# create the 3 directories using for loop in bash 

for i in {1..3}

do 

	dir_name="Directory_$i"
	dir_path="$desktop_path/$dir_name"

# check if directory exists 

if [ -d "$dir_path" ]; then 
	
	echo "$dir_name is already exists..."
else 
	echo "creating $dir_name"
	mkdir "$dir_path"

fi 

# create the 2 files each will appear on each directory using for loop in bash 

for j in {1..2}

do 

	file_name="file_$j.txt"
	file_path="$dir_path/$file_name"

# check if the files exists 

if [ -f "$file_path" ]; then 

       echo "$file_name is already exists..."

else 

      echo "creating the $file_name"
      touch "$file_path"
fi 
done 
done

echo "the creating of 3 directories and 2 files inside each directory has been completted"
