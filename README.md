# DHCPLeaseDetector
A DHCP Lease Detector for OpenWRT 15.05 and higher

I wrote this script to monitor guest access to my network. In my case, if a new
lease has been detected, the script issues a Telegram message to me and enters
the new lease inside a logfile which I'm keeping for 60 days.

Installation and configuration
=
Step 1 : Upload the file into your /etc directory of your OpenWRT router.
Step 2 : Add the following line at the bottom of the file /etc/dnsmasq.conf:
         dhcp-script=/etc/DHCPLeaseDetector.sh
Step 3 : Specify your desired actions in the script.
Step 4 : Restart the DHCP-server by performing the following commands or reboot
         your router.
         # killall dnsmasq
         # /etc/init.d/dnsmasq start
Step 5 : There is no step 5. It will run this script everytime a new DHCP lease
         has been issued.

Have fun with it 8-)
