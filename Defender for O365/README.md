# Email Threat Report Malware

This KQL query retrieves and visualizes email events that have been detected with malware activity over the past 30 days. It performs the following steps:

1. **Filters the data** to include only email events from the last 30 days.
2. **Checks for malware** by ensuring that the `ThreatTypes` field contains the term "Malware".
3. **Aggregates the data** by counting the number of malware detections per day.
4. **Visualizes the results** using a line chart to show the daily trend of malware detections.
