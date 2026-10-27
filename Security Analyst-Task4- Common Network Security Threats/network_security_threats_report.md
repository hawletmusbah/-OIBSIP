Network security threats matter because almost everything we do today depends on networks and the internet. Businesses, universities, hospitals, banks, and governments use networks to store and exchange important information. If attackers exploit these networks, they can steal data, disrupt services, or cause financial damage.

## 1. What are DoS and DDoS attacks?
A Denial-of-Service (DoS) attack is a cyberattack that attempts to make a website, server, or network unavailable by overwhelming it with traffic or requests.

A Distributed Denial-of-Service (DDoS) attack does the same thing but uses many devices or systems to send traffic to the target simultaneously.
- DoS: Usually comes from one main source.
- DDoS: Comes from multiple sources, often a botnet — a group of compromised devices controlled by an attacker.

2. How do they work?
DoS attack
An attacker sends excessive requests to a target server. The server's bandwidth, memory, or processing capacity becomes exhausted, preventing legitimate users from accessing the service.

DDoS attack
An attacker controls or exploits many devices to flood a target with traffic. Because the traffic comes from many sources, distinguishing malicious requests from legitimate ones can be more difficult.

3. Real-world example: The 2016 Dyn DDoS attack
On October 21, 2016, the company Dyn, which provides Domain Name System (DNS) services, suffered a major DDoS attack involving the Mirai botnet. The botnet exploited compromised internet-connected devices, including cameras and routers, to generate malicious traffic.
The attack disrupted access to major websites, including Twitter, Netflix, Amazon, and PayPal, for some users.

Impact of the incident:
- Websites became unavailable or difficult to access.
- Businesses lost revenue and incurred recovery costs.
- Millions of users experienced disruptions to online services.
- The incident highlighted the risks of poorly secured IoT devices.

4. Three specific mitigation strategies

1. Use a DDoS protection service

Services such as Cloudflare or a cloud provider's DDoS protection can detect malicious traffic, filter it, and help keep legitimate requests flowing to the server.

2. Implement rate limiting and traffic filtering

Set limits on requests to applications and use firewalls or a Web Application Firewall (WAF) to block suspicious traffic patterns. This helps reduce application-level floods, although rate limiting alone cannot stop every large DDoS attack.

3. Monitor traffic and prepare an incident response plan

Monitor network traffic for unusual spikes, configure alerts, and prepare procedures for contacting the ISP or DDoS protection provider. This helps the security team detect attacks and respond quickly.


## 1. What is a MITM attack?
A Man-in-the-Middle (MITM) attack happens when an attacker secretly positions themselves between two parties communicating over a network to intercept or modify their messages without their knowledge.

2. How does it work?
Victim Sends a request or private information 
Attacker (the middleman)  Intercepts, reads, or potentially modifies the communication
Legitimate server  Receives the forwarded request
he attacker may relay messages in both directions, making the connection appear normal.


Common MITM techniques include:
- Rogue Wi-Fi: Creating a fake hotspot that imitates a legitimate network.
- ARP spoofing: Tricking devices on a local network into sending traffic through the attacker's device.
- DNS spoofing: Redirecting a user to a fraudulent website.
- Certificate abuse: Using fraudulent or improperly trusted digital certificates to impersonate a website.

3. Real-world example: DigiNotar certificate breach (2011)

In 2011, the Dutch certificate authority DigiNotar was compromised, and attackers issued fraudulent digital certificates for trusted websites, including Google. These certificates enabled attackers to impersonate legitimate websites and intercept encrypted communications. The incident particularly affected users in Iran

4. Three specific mitigation strategies

1. Enforce HTTPS and validate TLS certificates

Use HTTPS/TLS to encrypt data between users and servers. Browsers and applications must properly validate certificates and warn users about invalid certificates. Never bypass certificate warnings without verifying the cause.

2. Secure network connections

Avoid sensitive transactions on untrusted public Wi-Fi. Verify the correct network before connecting, and use a trusted VPN when appropriate. Organizations should secure Wi-Fi with WPA2-AES or WPA3 and protect network devices against spoofing.

3. Implement strong authentication and monitoring

Use phishing-resistant multifactor authentication, such as security keys or passkeys, to reduce the risk of stolen passwords being reused. Monitor networks for suspicious ARP or DNS activity and investigate unexpected certificate warnings.


## 1. What is IP spoofing?
IP spoofing is a cyberattack technique in which an attacker forges the source IP address in network packets to make them appear as if they came from another device or network.

An IP address identifies the apparent source of network traffic. By falsifying it, an attacker may hide the true origin of traffic, impersonate a trusted system at the network layer, or help carry out other attacks.

Simple example: Imagine receiving a letter with a fake return address. You may believe it came from someone you trust, even though it was sent by someone else. IP spoofing works similarly, but with network packets.

Attacker
Creates packets with a forged source IP

Forged IP packet
Source IP: trusted device's address
The source address is falsified in the packet header

Target system
Sees the forged source address and reterned to it 
The attacker may use spoofed packets to flood a target, bypass weak IP-based trust rules, or send requests that appear to originate from another system. Spoofing alone does not automatically give the attacker control of that system or access to its data.

3. Real-world example: GitHub DDoS attack (2018)
On February 28, 2018, GitHub suffered a massive distributed denial-of-service (DDoS) attack that peaked at approximately 1.35 terabits per second. The attack used memcached servers to amplify traffic directed at GitHub. Spoofing the victim's IP address caused the servers to send their responses to GitHub.

Impact:
- GitHub's service was disrupted for approximately 20 minutes.
- The huge volume of traffic overwhelmed the service temporarily.
- The incident demonstrated how IP spoofing can enable reflection and amplification attacks.
- GitHub mitigated the attack by routing traffic through its DDoS protection provider.

4. Three specific mitigation strategies

1. Implement ingress and egress filtering

Configure edge routers and firewalls to reject packets with source addresses that should not originate from or enter the relevant network. This helps prevent spoofed traffic from leaving your network and reduces incoming spoofed traffic. The IETF recommends this practice in BCP 38 / RFC 2827. 
RFC Editor+1

2. Use anti-spoofing checks and network access controls

Configure router source-address validation, such as Unicast Reverse Path Forwarding (uRPF), where appropriate. Do not rely on an IP address alone to authenticate a user or device; use strong authentication and cryptographic verification.

3. Deploy DDoS protection and traffic monitoring

Use a DDoS mitigation service, monitor unusual traffic patterns, and configure filtering for reflection and amplification attacks. This helps maintain service availability even when spoofed traffic reaches the network.


## 1. What is DNS poisoning?
DNS poisoning, also called DNS cache poisoning, occurs when an attacker causes a DNS resolver to store or return false DNS information. DNS spoofing refers to supplying forged DNS responses, which can be used to poison a cache or redirect a user.

DNS (Domain Name System) translates domain names, such as example.com, into IP addresses that computers use to connect to servers.

Simple example: You type your bank’s correct website address, but manipulated DNS information sends your browser to a fake website controlled by an attacker.

2. How does it work?
1. User
Enters a legitimate website address
2. DNS resolver
Receives or stores manipulated DNS information
3. Incorrect IP address
The domain resolves to an attacker-controlled server
4. Fake website
The victim may be tricked into revealing sensitive information



3. Real-world example: Brazilian banking DNS hijacking (2018)

In August 2018, Radware reported a campaign targeting Brazilian banking customers through vulnerable D-Link routers. Attackers exploited known router vulnerabilities to change DNS server settings, redirecting requests for Banco do Brasil to a fraudulent, cloned banking website.

Impact of the incident:
- Credential theft: Customers risked exposing their banking usernames and passwords.
- Financial fraud: Stolen credentials could be used for unauthorized transactions.
- Privacy loss: Victims could disclose sensitive financial information.
- Loss of trust: Customers could lose confidence in their bank's online services.

4. Three specific mitigation strategies

1. Enable DNSSEC validation

DNSSEC verifies the authenticity and integrity of signed DNS records. Configure a validating DNS resolver to reject invalid DNS responses. This helps prevent forged DNS data from being accepted, although it does not stop every form of DNS hijacking. 
ISC Knowledgebase

2. Secure routers and DNS infrastructure

Update router firmware and DNS server software, replace default administrator passwords, disable remote administration when unnecessary, and restrict who can change DNS settings. For DNS resolvers, use modern software with protections against forged responses. 
ISC Knowledgebase+1

3. Use HTTPS and verify certificate warnings

HTTPS protects communication between the browser and the legitimate server when its certificate is correctly validated. Never ignore certificate warnings or enter sensitive information on suspicious pages. HTTPS does not itself prevent DNS poisoning, but proper certificate validation can help detect redirection to an unauthenticated fake site.


## Comparison Table: Network Security Threats

| Threat | Attack Vector | Who Is at Risk? | Difficulty to Execute | Ease of Mitigation |
|---|---|---|---|---|
| **DoS/DDoS** | Floods a server or network with excessive traffic or requests. | Websites, businesses, universities, and online services. | Medium–High | Medium |
| **Man-in-the-Middle (MITM)** | Intercepts or modifies communication between two parties. | Public Wi-Fi users, banking customers, and organizations. | Medium–High | Easy–Medium |
| **IP Spoofing** | Forges the source IP address in network packets. | Networks, servers, and online services. | Medium | Medium |
| **DNS Poisoning/Spoofing** | Manipulates DNS information to redirect users to malicious destinations. | Internet users, banking customers, businesses, and DNS operators. | Medium–High | Medium |

**Note:** Difficulty and mitigation ratings are approximate and depend on the attack technique and security controls in place.


## 3 Key Takeaways for a Network Administrator
1. Implement layered security. Use firewalls, IDS/IPS, DDoS protection, secure DNS, and traffic filtering to defend against different types of network attacks.

2. Keep systems secure and updated. Regularly patch routers and servers, enforce strong authentication, use HTTPS/TLS, and configure DNSSEC validation to reduce vulnerabilities.

3. Monitor networks and prepare for incidents. Continuously monitor unusual traffic, investigate suspicious activity, maintain backups, and develop an incident response plan to minimize damage and downtime.

## References

1. National Institute of Standards and Technology (NIST). (2026). *Secure Domain Name System (DNS) Deployment Guide* (SP 800-81 Rev. 3). https://doi.org/10.6028/NIST.SP.800-81r3

2. Cybersecurity and Infrastructure Security Agency (CISA), Federal Bureau of Investigation (FBI), & Multi-State Information Sharing and Analysis Center (MS-ISAC). (2022). *Understanding and Responding to Distributed Denial-of-Service Attacks*. https://content.govdelivery.com/accounts/USDHSCISA/bulletins/334de56

3. McKay, K. A., & Cooper, D. A. (2019). *Guidelines for the Selection, Configuration, and Use of Transport Layer Security (TLS) Implementations* (NIST SP 800-52 Rev. 2). National Institute of Standards and Technology. https://doi.org/10.6028/NIST.SP.800-52r2

4. Ferguson, P., & Senie, D. (2000). *Network Ingress Filtering: Defeating Denial of Service Attacks Which Employ IP Source Address Spoofing* (RFC 2827). Internet Engineering Task Force. https://www.rfc-editor.org/rfc/rfc2827

5. Canadian Centre for Cyber Security. (2023). *Domain Name System (DNS) Tampering*. https://www.cyber.gc.ca/en/guidance/domain-name-system-dns-tampering-itsap40021

6. van der Meulen, N. (2013). DigiNotar: Dissecting the First Dutch Digital Disaster. *Journal of Strategic Security, 6*(2), 46–58. https://doi.org/10.5038/1944-0472.6.2.4

7. National Cyber Security Centre (NCSC). (2024). *Denial of Service (DoS) Guidance: Testing and Monitoring*. https://www.ncsc.gov.uk/collection/denial-service-dos-guidance-collection/preparing-denial-service-dos-attacks1/testing-and-monitoring
