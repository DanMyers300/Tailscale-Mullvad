#!/bin/sh
# Add routing rule for return traffic to reach Tailscale clients
ip rule add to 100.64.0.0/10 lookup 52 priority 95 2>/dev/null || true

# Start Tailscale
exec /usr/local/bin/containerboot
