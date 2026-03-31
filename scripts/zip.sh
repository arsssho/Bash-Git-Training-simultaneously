#! /bin/bash

# Usage: ./zip.sh /source/path /destination/path

path1=$1
path2=$2

# Use a wildcard (*) to interate over the items Inside path1
# Usr "${path1%/}" to strip a trailing slash if it exists
for entry in "${path1%/}"/*
do
	# Get just the name without the full path or slashes
	filename=$(basename "$entry")

	echo "Compressing: $filename"
	# Create the tarball. We use -C to change directory so the tarball doesn't
	# contain the full absolute path structure.
	tar -czvf "${filename}.tar.gz" -C "${path1}" "$filename"
done

mv *.tar.gz "$path2"




