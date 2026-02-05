Commands:
chmod +x analyze.sh
./analyze.sh sample.txt
./analyze.sh .
./analyze.sh

Explanation:
The script first checks that exactly one argument is provided. If the argument is a file, it displays the number of lines, words, and characters using wc. If the argument is a directory, it displays the total number of files and the number of .txt files. If the argument is invalid, an appropriate error message is shown.

Note:
The directory output reflects the contents of the folder at the time of execution.

