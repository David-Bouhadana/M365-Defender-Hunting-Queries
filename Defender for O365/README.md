# Email Threat Report Phishing

This KQL query is designed to detect phishing activity in email and collaboration tables over the past 30 days. The query performs the following steps:

1. **Filter Email Events**: It filters the `EmailEvents` table to include only events that occurred within the last 30 days.
2. **Identify Phishing Threats**: It further filters the events to include only those where the `ThreatTypes` field contains the value "Phish".
3. **Summarize Phishing Counts**: It summarizes the count of phishing events (`PhishCount`) by day, using the `bin` function to group the events into 1-day intervals.
4. **Render Timechart**: Finally, it renders the results as a timechart, displaying the daily count of phishing events over the specified period.

# Email Threat Report Malware

This KQL query retrieves and visualizes email events that have been detected with malware activity over the past 30 days. It performs the following steps:

1. **Filters the data** to include only email events from the last 30 days.
2. **Checks for malware** by ensuring that the `ThreatTypes` field contains the term "Malware".
3. **Aggregates the data** by counting the number of malware detections per day.
4. **Visualizes the results** using a line chart to show the daily trend of malware detections.
