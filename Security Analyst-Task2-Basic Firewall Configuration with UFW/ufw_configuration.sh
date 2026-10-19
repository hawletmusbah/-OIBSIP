
# Configure UFW firewall rules
# Run this script with sudo

set -e

echo "Starting UFW firewall configuration..."

# Set default policies
ufw default deny incoming
ufw default allow outgoing

# Rule 1: Allow incoming SSH
ufw allow 22/tcp

# Rule 2: Deny incoming HTTP
ufw deny 80/tcp

# Rule 3: Allow incoming HTTPS
ufw allow 443

# Rule 4: Deny traffic from the specified source range
ufw deny from 198.51.100.0/24

# Enable UFW if it is not already active
ufw --force enable

echo ""
echo "Firewall configuration completed."
echo "Current UFW rules:"
ufw status numbered
