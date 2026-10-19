# UFW Firewall Configuration and Testing

## 1. What Is a Firewall?

A firewall is a security system that controls incoming and outgoing network traffic according to predefined rules. It helps protect a computer from unauthorized connections by allowing trusted traffic and blocking unwanted traffic.

UFW (Uncomplicated Firewall) is a Linux tool that makes it easier to configure and manage firewall rules.

## 2. Configured Firewall Rules

The following rules were configured in Kali Linux using UFW.

| No. | Rule | What It Does | Why It Was Chosen |
|---|---|---|---|
| 1 | `22/tcp ALLOW IN Anywhere` | Allows incoming SSH connections on TCP port 22. | SSH provides remote access for system administration. |
| 2 | `80/tcp DENY IN Anywhere` | Blocks incoming HTTP connections on TCP port 80. | Used to demonstrate how a firewall can prevent access to an unencrypted web service. |
| 3 | `443 ALLOW IN Anywhere` | Allows incoming traffic matching the configured rule on port 443. | HTTPS commonly uses port 443 and supports encrypted web communication when a properly configured HTTPS service is running. |
| 4 | `DENY IN 198.51.100.0/24` | Blocks incoming traffic from the specified IPv4 source range. | Demonstrates source-based filtering, which can be used to block unwanted network sources. |

### IPv6 Rules

Equivalent rules were also configured for IPv6:

- `22/tcp ALLOW IN Anywhere (v6)` permits incoming IPv6 SSH connections.
- `80/tcp DENY IN Anywhere (v6)` blocks incoming IPv6 HTTP connections.
- `443 ALLOW IN Anywhere (v6)` permits matching incoming IPv6 traffic on port 443.

These rules help apply similar access policies to both IPv4 and IPv6 traffic.

## 3. Why These Rules Were Selected

The rules were selected to demonstrate different firewall security controls:

- **SSH (port 22):** Allows remote administration when needed.
- **HTTP (port 80):** Blocks incoming unencrypted web traffic as a firewall demonstration.
- **HTTPS (port 443):** Allows traffic for secure web services when an HTTPS server is configured.
- **Source-based blocking:** Demonstrates how traffic from a specified IP address range can be denied.
- **IPv6 rules:** Help apply the same access-control approach to IPv6 connections.

**Note:** The address range `198.51.100.0/24` is reserved for documentation and examples. It was selected to demonstrate source-based blocking rather than to identify a real attacker.

## 4. Testing Method

The firewall was tested using Kali Linux running in VirtualBox with NAT networking and Windows as the host operating system.

1. Checked the firewall status using `sudo ufw status numbered`.
2. Configured VirtualBox port forwarding from Windows port 8080 to Kali port 80.
3. Started a temporary Python HTTP server on Kali port 80.
4. Tested TCP connectivity from Windows using `Test-NetConnection`.
5. Sent an HTTP request using `curl.exe`.
6. Inspected UFW logs to investigate incoming connection attempts.

The TCP connectivity test succeeded, but the HTTP request timed out. UFW logs recorded incoming TCP SYN packets targeting port 80. These results show that connection attempts reached Kali, but additional evidence is needed to conclusively confirm that UFW blocked them.

## 5. Conclusion

This configuration demonstrates how UFW can control network access through port-based and source-based rules. Allowing SSH supports administration, denying HTTP demonstrates restricting incoming services, allowing port 443 supports a potential HTTPS service, and the source-based rule demonstrates filtering by IP range.

Firewall rules should be selected according to the system's actual requirements. Allowing a port does not automatically create a service or make it secure; the corresponding application must also be running and properly configured.