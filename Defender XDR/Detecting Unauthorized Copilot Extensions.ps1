//Detecting new Copilot extensions
//Détection des nouvelles extensions Copilot
let WLExtensions = dynamic(["BingWebSearch"]);
CloudAppEvents
| where Timestamp > ago(1h)
| where ActionType == "CopilotInteraction"
| extend UserID = tostring(RawEventData.UserId),
         CopilotData = todynamic(RawEventData.CopilotEventData)
| extend CopilotPlugin = tostring(CopilotData.AISystemPlugin.Id)
| where isnotempty(CopilotPlugin) and not(CopilotPlugin in (WLExtensions))
| project Timestamp, AccountObjectId, UserID, CopilotPlugin, ReportId
