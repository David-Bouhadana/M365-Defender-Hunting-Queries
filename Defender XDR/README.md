# Detecting Unauthorized Copilot Extensions

This KQL query retrieves and visualizes cloud application events related to new Copilot extensions. It performs the following steps:

1. **Defines the time range** by setting the start time to one hour ago.
2. **Filters the data** to include only events with the action type "CopilotInteraction".
3. **Extracts user and Copilot data** by extending the `UserID` and `CopilotData` fields.
4. **Identifies new Copilot plugins** by ensuring the `CopilotPlugin` field is not empty and not in the whitelist of extensions.
5. **Projects the relevant fields** including `Timestamp`, `AccountObjectId`, `UserID`, `CopilotPlugin`, and `ReportId`.
