Commands:
chmod +x sync.sh
./sync.sh

Explanation:
The script compares two directories by listing their file names and identifying files unique to each directory. For files present in both directories, the cmp command is used to verify whether their contents match. No files are copied or modified.
