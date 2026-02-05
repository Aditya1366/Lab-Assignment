Command:
chmod +x validate_results.sh
./validate_results.sh

Explanation:
The script reads student data from marks.txt line by line using a while loop. It checks marks of each subject and counts failures using arithmetic operations. Students failing in exactly one subject and students passing all subjects are displayed. Finally, the count of students in each category is printed.
Spaces in input data were handled by trimming values before arithmetic comparison to avoid integer expression errors.
