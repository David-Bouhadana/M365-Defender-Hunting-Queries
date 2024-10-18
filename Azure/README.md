# Entra LEgacy Singin

This KQL query retrieves and visualizes sign-in logs to detect legacy TLS logins over the past 90 days. It performs the following steps:

1. **Filters the data** to include only sign-in logs from the last 90 days.
2. **Checks for successful logins** by ensuring that the `ResultType` field is "0".
3. **Expands the authentication details** to analyze the `AuthenticationProcessingDetails` field.
4. **Identifies legacy TLS usage** by checking if the `AuthenticationProcessingDetails.key` contains "Legacy TLS (TLS 1.0, 1.1, 3DES)" and the `AuthenticationProcessingDetails.value` is "True".
5. **Aggregates the data** by counting the number of legacy logins per user (`UserPrincipalName`).
6. **Sorts the results** by the number of legacy logins in descending order.
