Kali Linux

## Update the package list:

sudo apt update

## Install Nmap:

sudo apt install nmap -y

## Verify the installation:

nmap --version

## Result

Nmap was installed successfully and its version was checked to verify the installation.

# 1. What Is Nmap?
Nmap (Network Mapper) is a free, open-source tool used to discover devices on a network, identify open ports, detect running services, and sometimes determine operating systems.
For example, Nmap can help you identify whether a computer has port 80 open for HTTP or port 5432 open for PostgreSQL.

# 2. Why Network Scanning Matters
Network scanning helps network administrators and cybersecurity professionals understand which devices and services are accessible on a network.
Its main benefits include:
- Discovering devices: Identifies computers and other devices connected to a network.
- Identifying open ports: Shows which ports accept network connections.
- Detecting services: Helps identify services running on open ports.
- Finding security weaknesses: Helps identify potentially unnecessary exposed services and systems that may need further security testing.
- Improving network security: Helps administrators configure firewalls, restrict access, and reduce unnecessary exposure.
# 3. Ethical Use Guidelines
Nmap is a powerful cybersecurity tool, so it must be used responsibly and legally.
- Obtain permission: Scan only systems you own or have explicit authorization to test.
- Respect privacy: Do not access, collect, or disclose private information without authorization.
- Avoid disruption: Use appropriate scan settings to minimize the risk of affecting network services.
- Follow applicable laws: Comply with relevant cybersecurity laws, organizational policies, and testing agreements.
- Report findings responsibly: Share discovered security weaknesses with the system owner so they can be corrected.
- Stay within scope: If authorized to scan a particular IP address or network, do not scan unrelated systems.