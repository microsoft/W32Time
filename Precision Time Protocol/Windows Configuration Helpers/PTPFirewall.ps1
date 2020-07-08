New-NetFirewallRule -DisplayName 'PTP-Event-In' -Name 'PTP-Event-In’ -LocalPort 319 -Direction Inbound -Action Allow -Protocol UDP
New-NetFirewallRule -DisplayName 'PTP-General-In’ -Name 'PTP-General-In’ -LocalPort 320 -Direction Inbound -Action Allow -Protocol UDP
New-NetFirewallRule -DisplayName 'PTP-Event-Out’ -Name 'PTP-Event-Out’ -LocalPort 319 -Direction Outbound -Action Allow -Protocol UDP
New-NetFirewallRule -DisplayName 'PTP-General-Out’ -Name 'PTP-General-Out' -LocalPort 320 -Direction Outbound -Action Allow -Protocol UDP
