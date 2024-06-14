0x19. Postmortem
DevOps
SysAdmin

Tasks
0. My first postmortem
mandatory


Using one of the web stack debugging project issue or an outage you have personally face, write a postmortem. Most of you will never have faced an outage, so just get creative and invent your own :)

Requirements:

Issue Summary (that is often what executives will read) must contain:
duration of the outage with start and end times (including timezone)
what was the impact (what service was down/slow? What were user experiencing? How many % of the users were affected?)
what was the root cause
Timeline (format bullet point, format: time - keep it short, 1 or 2 sentences) must contain:

when was the issue detected
how was the issue detected (monitoring alert, an engineer noticed something, a customer complained…)
actions taken (what parts of the system were investigated, what were the assumption on the root cause of the issue)
misleading investigation/debugging paths that were taken
which team/individuals was the incident escalated to
how the incident was resolved
Root cause and resolution must contain:

explain in detail what was causing the issue
explain in detail how the issue was fixed
Corrective and preventative measures must contain:

what are the things that can be improved/fixed (broadly speaking)
a list of tasks to address the issue (be very specific, like a TODO, example: patch Nginx server, add monitoring on server memory…)
Be brief and straight to the point, between 400 to 600 words


Incident Overview

Start Date & Time: May 25, 2024, 12:00 PM (GMT +2) End Date & Time: May 25, 2024, 13:15 PM (GMT +2)

Impact

Affected Service: Website
User Experience: Users experienced slow load times and partial unavailability.
User Impact: Approximately 80% of users faced delays and timeouts during the incident.

Root Cause
The incident was triggered by an unexpected increase in traffic to the site as a result of a trending social media post linking our products on the online store. The increased load overwhelmed our infrastructure, leading to server overload and subsequent downtime.

Incident Timeline
12:00 PM (GMT +2):
Detection: Monitoring system triggers alerts for high server load and increased latency.
12:05 PM (GMT +2):
Investigation: Engineering team initiated an investigation, suspecting a potential DDoS attack.
12:30 AM (GMT +2):
Analysis: In-depth server logs revealed the surge was due to the news article, causing server overload.
12:45 AM (GMT +2):
Escalation: DevOps team was engaged to optimize server resources and mitigate the load.
13:15 AM (GMT +2):
Resolution: Server configurations were optimized, additional resources added, and normal service was restored.

Root Cause and Resolution

Root Cause
The root cause was an unexpected traffic increase due to a trending social media posts about some of our products, overloading our servers, which were unprepared for such spikes.

Resolution
We optimized server configurations to handle high loads effectively.
We implemented improved resource scaling to accommodate traffic surges.

Corrective and Preventative Measures

Improvements & Fixes
Enhance the server scaling strategy to accommodate traffic spikes.
Implement a Content Delivery Network (CDN) to distribute traffic load and reduce stress on primary servers.
Set up real-time traffic monitoring and server load detection to proactively identify and address anomalies.

Task List
Implement automatic server resource scaling to manage traffic surges.
Procure and integrate a CDN service.
Enhance monitoring tools for real-time traffic anomaly detection.
Conduct load testing to ensure the infrastructure can handle peak loads.
