#!/bin/bash

# =================| DHCP Lease Detector |==================
# Version	: v1.0
# Auhtor	: M. Vlaanderen
# Purpose	: Detects new DHCP leases on the network 
#			  and perform some desired actions
# Date		: 2019/03/04
# License   : MIT
# ==========================================================

# Configuration
# -------------
KnownMAC="/var/knownmacs.log"
MessageLog="/var/dhcplog.log"

# Script
# ------
grep -q "$2" "$KnownMAC"
NewMacAddress=$?

if [ "$1" == "add" ] && [ "$NewMacAddress" -ne 0 ]; then
  msg="A new device with the name $4 has just connected to the network and uses IP $3."

  # Specify your actions here (for example $ echo "$msg" | mail -s "New DHCP Lease" seek@theLord.com )

  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1 - $2 - $3 - $4" >> $MessageLog
  echo "$2" >> $KnownMAC
fi
