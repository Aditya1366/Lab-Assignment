Command:
chmod +x log_analyzer.sh
./log_analyzer.sh system.log

Explanation:
The script accepts the log file as a command-line argument and first checks whether the file exists and is readable. It then counts the total log entries and the number of INFO, WARNING, and ERROR messages using grep and wc. The most recent ERROR message is extracted, and a summary report file named logsummary_<date>.txt is generated.
