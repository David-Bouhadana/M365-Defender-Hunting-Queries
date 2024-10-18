# Audit Safe Attachments

This KQL query retrieves and visualizes cloud application events related to safe attachments over the past 30 days. It performs the following steps:

1. **Defines the time range** by setting the start time to 30 days ago and the end time to the current time.
2. **Filters the data** to include only events from Microsoft Exchange Online.
3. **Checks for ATP actions** by ensuring that the `ActionType` field contains the term "atp".
4. **Projects the relevant fields** including `Timestamp`, `Application`, `ActionType`, `AccountDisplayName`, and `IPAddress`.

# Bypass Emails with long sender addresses

This KQL query retrieves email events from the last 24 hours where the sender's email address length is greater than 200 characters and there is exactly one attachment. It projects the sender's email address, the length of the sender's email address, and the delivery action.

**Filtering by Timestamp**: The query filters email events to include only those that occurred in the last 24 hours.
**Calculating Sender Email Length**: The query calculates the length of the sender's email address.
**Filtering by Email Length and Attachment Count**: The query filters events to include only those where the sender's email address length is greater than 200 characters and the attachment count is equal to 1.
**Projecting Columns**: The query projects the columns `SenderFromAddress`, `SenderEmailLength`, and `DeliveryAction`.

This query is useful for identifying suspicious or abnormal emails sent in the last 24 hours with a very long sender email address and exactly one attachment.

# Email Threat Report Spam

This KQL query retrieves and visualizes email events that have been detected with spam activity over the past 30 days. It performs the following steps:

1. **Filters the data** to include only email events from the last 30 days.
2. **Checks for spam** by ensuring that the `ThreatTypes` field contains the term "Spam".
3. **Aggregates the data** by counting the number of spam detections per day.
4. **Visualizes the results** using a line chart to show the daily trend of spam detections.

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
