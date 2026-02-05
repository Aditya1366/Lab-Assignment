Commands:
chmod +x emailcleaner.sh
./emailcleaner.sh

Explanation:
The script uses grep with regular expressions to identify valid email formats and separate invalid ones. Valid emails are sorted and passed through uniq to remove duplicates. Output is redirected into valid.txt and invalid.txt as required.
