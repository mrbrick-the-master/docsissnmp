w--**************************************************************************
--                                                                          
--    Copyright 2009 Scientific Atlanta, A Cisco Company                                   
--    All Rights Reserved                                                   
--    No portions of this material may be reproduced in any
--    form without the written permission of:                                                
--             Scientific Atlanta, A Cisco Company                                          
--             5030 Sugarloaf Pkwy                                     
--             Lawrenceville, Georgia 30044                                    
--                                                                          
--**************************************************************************
   -"WebWizard Setup user changed flag sections."               "Time zones."               "WebWizard Setup sections."                                                                                                                                                 h"Controls the behavior of router/wireless fuctions.
             Can be part of CM configuration file." "marcin.godlewski@sciatl.com" "2010031600Z" "2010021200Z" "2009021600Z" "2008093000Z" "2008060600Z" "2008020600Z" "2008052700Z" "2008043000Z" ."Added saRgDeviceConfigIgnore object(CR15857)" ?" Added new objects to the software-
        		saRgDot11BssCountStaAsCPe
        		saRgMgmtLanDhcp125Option
        		saRgDeviceConfigSnmpEnable
        		saRgFirewallWANBlockingEnable" ]" Modified  saRgDot1154gNetMode object
        	  removed maxCompatibility(5) value- CR3200""Changed saRgIpMgmtDnsServerIp to store in non-vol (2623)
             Added saRgIpMgmtPassthroughTable (2954)
             Added saRgIpMgmtLanExtraSubnetTable()
             Added saRgFirewallMacFilterTable ()
             Changes saRgDot11PrivacyWpsPushButtonTime default to 1 ()" _"Added saRgDeviceTimeSetup (2629)
             Added saRgDot11PrivacyWpsPushButtonTime (2632)" t"Added firewall tree (2607)
             Added saRgIpMgmtWanMtu (2608)
             Added saRgIpMgmtWanTtl (2608)"  "Added saRgIpMgmtWanAddr (2595)" "Initial release"                      "Defines the mode of operation for the device.
         This parameter is stored in non-vol and is multiSsid(1) by default.
         Setting this object via SNMP will cause
         the unit to reboot.
         Note: cableHome11(2) not supported with all hardware platforms."                      ?"This object controls the reset to factory default functionality
         of the gateway. This prevents the local user from using the reset
         switch to gain access to the setup pages using the default user
         name and password. The objective is to prevent theft of service
         from a user who reconfigures the device to add users or change
         wireless settings.
         Enable (object set to true):
          1. Momentary press of the Reset Switch (<5 seconds)
             DOCSIS restart of the modem (reboot, no reset to factory
             default values).
          2. Pressing the reset switch for >5 seconds
             Reboots and resets of all values (modem and router) to
             factory default.
         Disable (object set to false):
          1. Momentary press of the Reset Switch (<5 seconds)
             DOCSIS restart of the modem (reboot, no reset to factory
             default values).
          2. Pressing the reset switch for >5 seconds
             Modem reboots and resets only the cable modem settings to
             factory default values. The router settings should remain and
             should not NOT reset to factory default."                      I"Controls web page access to the WAN IP address on the gateway.
             If DMS is available in the hardware, and saRgDmsBaseWebRedirect
             is set to true, enabling this feature means to enable port
             forwarding for web access to the DMS (to port 80). Note: the
             entry for this does not appear in port forwarding table or on
             the web pages. Example of the rule: WAN_IP:8080->DMS_IP:80.
             This value is stored in non-vol and is false after factory reset.
             This value can be controlled via a setup web page."                       q"Defines what port to use for the WAN IP address of the gateway
             to be able to access RG web pages."                           ""                       ?"The address of the TFTP server used for RG config download or upload.
         If the TFTP server is unknown, return 0.0.0.0."                       w"The file name of the config file to be download or upload. 
         If unknown, the string '(unknown)' is returned."                       ?"InProgress(1) indicates that a TFTP download or upload is underway,
         Complete(2) indicates that the last download or upload is successful,
         failed(3) indicates that the last attempted download or upload is falied."                      ?"If set to download(1), the device will initiate a
         TFTP RG config file download using remoteProvisionFilename.
         If set to upload(2), the device will initiate a TFTP RG config file 
         upload to remoteProvisionServer. The filename will be the same as
         remoteProvisionFilename. 
         At initial startup, this object has the default value of
         download(1)."                           ?"Defines whether user level access is allowed to the web pages.
         This parameter is stored in non-vol and is true after factory
         reset."                      V"Defines default password for user.
         If user's password matches the default password (meaning user has
         not changed the password), a change password page comes out every
         time a user connects to the web pages.
         If user's password does not match the default password (meaning user
         has changed it) the change password page does not show.
         This parameter is stored in non-vol and is blank by default.
         If the default password is blank in non-vol (after factory
         default for example), it gets populated with this object's value."                       h"Clears user passwords if set to true (clear=set to default).
         Always returns false when read."                      b"Specifies the read access rights for every section of the WebWizard-Setup.
         The value of (1) means read-only, the value of (0) means no-access.
         If a write access to a web page is enabled, read access is also enabled.
         The value of this objects is stored in non-vol.
         Default value after factory reset is 0xffffffff."                      q"Specifies the write access rights for every section of the WebWizard-Setup.
         The value of (1) means read-write, the value of (0) means read-only or no access.
         If a write access to a web page is enabled, read access is also enabled.
         The value of this objects is stored in non-vol.
         Default value after factory reset is 0xffffffff."                           '"Configuration filename from DHCP ACK."                      "Status of configuration file download.
         - notSpecified(1): DHCP ACK did not contain necessary information
         - inProgress(2): Configuration file is being downloaded
         - success(3): configuration file download completed successfully
         - errorServer(4): TFTP server did not respond
         - errorFileNotFound(5): no file on the server
         - errorBadFile(6): the file is not good, cannot be processed
         - download(7): commands the unit to download configuration file."                      )"Specifies which user changed flags are set. The value of (1) means
        that user changed flag value is set; the value of (0) means that
        the user changed flag is not set.
        The user changed flags are stored in non-vol.
        Default value after factory reset is 0x00000000"                       ?"Controls SNMP manager status on interfaces. If bit set to 0, the SNMP
         access is disbled. If bit set to 1, the SNMP access is enabled."                      ?"This object controls if RG configuration file is to be downloaded.
         require(0): per specification, if DHCP contains parameters for the
                     file dowload, the RG MUST try to download it.
         notRequire(1): when config file download fails after exponential backoff,
                        RG will not retry DHCP and continue to be operational.
         notDownload(2): RG will not download config file.
         This MIB can be only in CM configuration file."                           2"Stored in non-vol, disabled after factory reset."                      "Up to 3 NTP servers are supported. This table
                is stored in non-vol. Default entries after factory
                reset are:
                1: time.nist.gov
                2: nist.aol-ca.truetime.com
                3: nist1-ny.glassey.com"                       ""                       "The index"                       '"IP address or FQDN of the NTP server."                       "Time zone for the gateway.
         Stored in non-vol, gmtZeroDublinEdinburghLisbonLondon(26)
         after factory reset."                       h"Daylight saving time. If set to 0, DST is disabled
         Stored in non-vol, 0 after factory reset."                       I"Rules of accessing Setup RG configuration section by user and operator."                       H"List of rules of accessing Setup RG configuration section of WebWizard"                       ""                       P"Control user and operator access to Setup RG configuration page per interface."                              ?"Used to control the 802.11 operational mode. If set to 
         notAvailable(0), then the wireless interface will be disabled, with
         the radio off, and no wireless settings web pages will be available to 
         the user.  
         If set to off(1) then the wireless interface will be disabled, but 
         there may be a web page present which indicates that wireless service 
         is available and that the MSO should be contacted to enable it. 
         If set to remote(2), then the wireless interface will be enabled, but 
         the configuration web pages are read-only so that the user may not 
         change the settings. 
         If set to local(3), then the wireless interface will be enabled, and 
         the web pages will be read-write so that the user has full control over 
         the settings.
         This parameter is stored in non-vol and set to local(3) after factory
         reset."                       ?"Controls and reflects the current channel number.
         The value of 0 means auto channel selection.
         This parameter is stored in non-vol."                       j"Controls and reflects the beacon interval for the device.
         This parameter is stored in non-vol."                       h"Controls and reflects the DTIM interval for the device.
         This parameter is stored in non-vol."                       r"Controls and reflects the fragmentation threshold for the device.
         This parameter is stored in non-vol."                       h"Controls and reflects the RTS threshold for the device.
         This parameter is stored in non-vol."                       l"Controls and reflects the short retry limit for the device.
         This parameter is stored in non-vol."                       k"Controls and reflects the long retry limit for the device.
         This parameter is stored in non-vol."                      a"Controls and reflects the behavior of the device with regards to which
         flavor of 802.11 is used.  If set to maxCompatibility(5), the device
         will interoperate with the widest variety of 54g and 802.11b clients.
         If set to maxPerformance(4), the highest throughout will be provided 
         and only 54g clients will be accepted, however nearby 802.11b networks 
         may suffer degraded performance.  If set to only54g(2), only 54g 
         clients will be accepted.
         This parameter is stored in non-vol and is maxCompatibility(5)
         after factory reset."                      8"Controls and reflects the state of 54g protection.  If set to true(1),
         the AP will use RTS/CTS to improve 802.11g performance in mixed 
         802.11g/802.11b networks.  Set to false(2) to maximize 802.11g 
         throughput under most conditions.
         This parameter is stored in non-vol."                       o"Forces the transmission rate for the AP to a particular speed.
         This parameter is stored in non-vol."                       u"Sets the output power relative to the hardware's maximum capability.
         This parameter is stored in non-vol."                       ?"Restricts the channel set based on country requirements.
         This parameter is stored in non-vol and is worldWide(0)
         (channels 1-11) after factory reset."                       _"This parameter is stored in non-vol and set to
         disableIntTx(0) after factory reset."                      N"Sets the number of user controlled Wifi networks via web pages.
         1: The user has control over the primary wireless network only.
            No guest network page is displayed.
         2: The user has control over the primary wireless network and
            one guest network. No drop down menu (or only 1 item in the
            menu) for additional guest network configuration.
         3: Same as above with 2 guest networks.
         4: Same as above with 3 guest networks.
         This object value is stored in non-vol and set to 1 
         after factory reset."                       ?"Allows to save additional BSS parameters to non-vol if set to true.
         Primary BSS parameters are ALWAYS stored in non-vol.
         This object value is stored in non-vol and set to false 
         after factory reset."                      Q"Sets the number of admin controlled Wifi networks via web pages.
         1: The admin has control over the primary wireless network only.
            No guest network page is displayed.
         2: The admin has control over the primary wireless network and
            one guest network. No drop down menu (or only 1 item in the
            menu) for additional guest network configuration.
         3: Same as above with 2 guest networks.
         4: Same as above with 3 guest networks.
         This object value is stored in non-vol and set to 1 
         after factory reset."                       n"Reports the current channel number that wireless is on.
         The value of 0 means wireless is disabled."                           "BSS table"                       :"A row in the table which represents parameters for SSID."                       "Returns the BSSID"                       ?"Controls the BSS state. The value of primary BSS
         is stored in non-vol.
         The other BSSs are disabled by default. If other
         BSS's SSID name is not defined, the BSS will not
         be enabled."                       ?"Controls and reflects the service set identifier.
         The value of primary BSS is stored in non-vol and is
         empty after factory reset.
         If other BSS's SSID name is not defined, the BSS
         will not be enabled."                       ?"Secrity for BSS.
         The value for primary BSS is stored in non-vol and is wpaPsk(2)
         after factory reset.
         For each other BSS security has to be included in configuration
         file or the BSS will be disabled."                      ?"Controls whether the device will operate in closed network mode.  If
         set to true(1), then the network mode is closed and the SSID will not
         be broadcast in beacon packets.  If set to false(2), then the network
         mode is open and the SSID will be broadcast in beacon packets.
         The value for primary BSS is stored in non-vol.
         The default value for other BSSs is false."                      ?"Controls what stations will be given access to the device.  If set to
         allowAny(0), then any station will be allowed to connect.  If set
         to allowList(1), then only stations whose MAC address appears in
         the saRgDot11AccessMacTable will be allowed to connect.
         The value for primary BSS is stored in non-vol.
         The default value for other BSSs is 0."                      "This object defines the maximum number of STAs that can connect to
         this SSID. Note that the maximum number of STA accross all SSIDs in
         the AP is 128.
         Default value is 128 for all SSIDs.
         The value for primary BSS is stored in non-vol."                      ?"STAs in Max-Count of CPEs (Max number of CPE in CM config file),
         default per eDOCSIS spec.
         This setting is used to control counting STAs in Max-Count of CPEs.
         false: Do not count STAs as a CPE
         true: Count STAs as a CPE
         This object applies when the BSS is in bridge mode. In router mode
         the STAs are behind the NAT and do not count towards max-CPE anyway.
         Note: applies only to secondary BSSs."                      ~"If set to lan(1), this service set will be authorized as a member of
         the local area network.  If set to guest(2), this service set will
         have access to the wide area internet, but will have restricted access
         to the local area network.
         Default values are lan(1) for the primary BSS and guest(2) for other BSSs.
         NOTE: NOT IMPLEMENTED"                      ?"Controls the downstream (from AP to client) throughput
         in Bytes per second from AP to client on a BSS.
         This object reserves the throughput for a BSS. The rest of
         leftover bandwidth is assigned based on BSS priority.
         Note: if the reserved bandwidth is not used, it is shared
         with other BSSs based on their priority.
         If set to 0 there is no reservation.

         Example:
         BSS 1, 2 and 3 have reservation of 3Mb/s each. BSS 1 is higher priority
         than 2, which is higher than 3.
         - only BSS 3 transmits full bandwidth traffic: BSS 3 gets full bandwidth
         - BSS 2 starts transmitting at 2 Mb/s: BSS 2 gets 2 Mb/s, BSS 3 gets
           full-2 Mb/s
         - BSS 2 increases to 4 Mb/s: BSS 3 gets full-4 Mb/s, BSS 2 gets 4 Mb/s
         - BSS 2 increases to full: BSS 3 gets 3 Mb/s, BSS 2 gets full-3 Mb/s
         - BSS 1 starts transmitting at 2 Mb/s: BSS 3 gets 3 mbps, BSS 2 gets
           full-5 Mb/s, BSS 1 gets 2 Mb/s
         - BSS 1 increases to full: BSS 3 gets 3 Mb/s, BSS 2 gets 3 Mb/s, BSS 1
           gets full-6 Mb/s
           NOTE: NOT IMPLEMENTED"                       ?"Sets the priority for non-reserved bandwidth. 1 is the highest priority.
         If BSSs use the same priority, they get bandwidth based on contention.
         NOTE: NOT IMPLEMENTED"                       ?"A table of MAC addresses which represents stations that will be allowed
         to connect to the device if saRgDot11AccessMode is set to 
         restrictToList(1)."                       A"A row in the table that specifies a single station MAC address."                       +"Indicates the instance of this table row."                       ?"A MAC address of a station which will be allowed to connect to the 
         device if saRgDot11AccessMode is set to restrictToList(1)."                      Q"The status of this conceptual row.

         To create a row in this table, a manager must set this object to 
         either createAndGo(4) or createAndWait(5).

         Until instances of all corresponding columns are appropriately 
         configured, the value of the corresponding instance of the 
         dot11BssAccessStatus column is 'notReady'.

         In particular, a newly created row cannot be made active until the 
         corresponding instance of dot11BssAccessStation has been set.
         
         Only rows with a status of active(1) will be applied."                          d"This object specifies the type of SSID used.
         mac6char(1): If saRgDot11BssSsid.32 is empty, the SSID is the last
                      3 bytes of DOCSIS MAC address, displayed as 6 lowercase
                      hex characters.
                      If saRgDot11BssSsid.32 is not empty, SSID is the value from
                      saRgDot11BssSsid.32 (set by SNMP or the user).
         mac6char-prefix(2): the same as mac6char(2) with the prefix addition
                             defined in saRgDot11BssPrimarySsidPrefix.
         Note: stored in non-vol. mac6char(1) after factory reset"                       L"The prefix for primary SSID. Stored in non-vol. Empty after factory reset."                           "WPA table"                       ="A row in the table which represents WPA parameters for BSS."                       ?"The value for primary BSS is stored in non-vol and tkipPlusAes(2)
         after factory reset.
         The default value for other BSSs is tkip."                      z"Sets the WPA Pre-Shared Key (PSK).  This value MUST be either a 
         64-digit hexadecimal number, OR a 8 to 63 character ASCII string.
         The value for primary BSS is stored in non-vol and is the serial
         number of the device after factory reset.
         The default value for other BSSs is 8 0's.
         This object return an empty string when read."                       ?"Sets the WPA Group Rekey Interval in seconds. Set to zero to disable 
         periodic rekeying.
         The value for primary BSS is stored in non-vol and is 0 after
         factory reset.
         The default value for other BSSs is 0."                       "WPA table"                       ="A row in the table which represents WPA parameters for BSS."                       #"Type of RADIUS server IP address."                       ?"Sets RADIUS server IP address.
         The value for primary BSS is stored in non-vol and is 0.0.0.0
         after factory reset.
         The default value for other BSSs is 0.0.0.0."                       ?"Sets the UDP port used to communicate with the RADIUS server.
         The value for primary BSS is stored in non-vol and is 1645
         after factory reset.
         The default value for other BSSs is 1645."                       ?"Sets or displays the RADIUS key.
         The value for primary BSS is stored in non-vol and is null
         after factory reset.
         The default value for other BSSs is null.
         This object return an empty string when read."                       ?"Sets the RADIUS Rekey Interval in seconds.
         Set to zero to disable periodic rekeying.
         The value for primary BSS is stored in non-vol and is 0
         after factory reset.
         The default value for other BSSs is 0."                       "WEP table"                       ="A row in the table which represents WPA parameters for BSS."                      ?"Controls and reflects the default key which will be used when 64 or
         128 bit encryption is enabled.  Indicates the entry from the 
         saRgDot1164BitKeyTable if saRgDot11EncryptionMode is set to wep64(1), or
         the entry from the saRgDot11128BitKeyTable if saRgDot11EncryptionMode is set 
         to wep128(2).
         The value for primary BSS is stored in non-vol and is 1 after factory reset.
         The default value for other BSSs is 1."                       ?"The value for primary BSS is stored in non-vol and is wep128(1)
          after factory reset.
          The default value for other BSSs is wep128."                       ?"Controls and reflects the WEP pass phrase.
         The value for primary BSS is stored in non-vol and is null
         after factory reset.
         The default value for other BSSs is null.
         This object return an empty string when read."                       a"A table of 40 bit key values used when saRgDot11WepEncryptionMode
         is set to wep64(0)."                       :"A row in the table which represents a single 64 bit key."                       ,"Identifies the instance of this table row."                      #"A 40 bit key to be used when saRgDot11WepEncryptionMode is set to wep64(1).
         The value for primary BSS is stored in non-vol and is all 1's after factory
         reset.
         The default value for other BSSs is all 0's.
         This object return an empty string when read."                       c"A table of 104 bit key values used when saRgDot11WepEncryptionMode
         is set to wep128(1)."                       ;"A row in the table which represents a single 128 bit key."                       ,"Identifies the instance of this table row."                      "A 104 bit key to be used when saRgDot11WepEncryptionMode is set to wep128(2).
         The value for primary BSS is stored in non-vol and is all 1's.
         The default value for other BSSs is all 0's.
         This object return an empty string when read."                           ?"Specifies how long to press WPS button to start the WPS
         procedure. 0 means disable WPS.
         Stored in non-vol, 1 after factory reset."                               ?"A table of wireless clients that are associated with the BSS."                       A"A row in the table that specifies a single station MAC address."                       +"Indicates the instance of this table row."                       4"A MAC address of a client associated with the BSS."                      "If set to true(1), then all the settings (MIB values)
         from this MIB tree will be applied to run time configuration,
         modifying previous RG operation with the new settings.
         Before setting the value to true, MIBs modified in the MIB
         tree are stored in non-vol and will not modify RG operation
         until saRgDot11ApplySettings is set to true or CM resets.
         Note: this applies only to the MIB objects that are stored
         in non-vol.
         Always returns false(2) when read."                           H"Networks on the LAN side.
             Primary BSS stored in non-vol."                       #"List of networks on the LAN side."                       ?"Defines the mode of operation for the device.
         Setting this object via SNMP will cause
         the unit to reboot.
         The value for primary BSS is stored in non-vol.
         The default value for other BSSs is router."                       ?"The LAN-Trans network number. 
            Default for primary BSS is 192.168.0.0
            Default for other BSSs is 192.168.ifIndex.0"                       ?"The device MUST provide the value of this MIB
            object in the Option 1 (Subnet Mask) of
            DHCP OFFER and ACK messages sent to a LAN IP Device."                     -- 255.255.255.0
}"The type of this address is specified by
            saRgIpMgmtLanNetwokRouterType. The PS MUST
            provide the value of this MIB object in the
            Option 3 (Router IP address) of the DHCP
            OFFER and ACK messages sent to the LAN IP Device.
            Default for primary BSS is 192.168.0.1
            Default for other BSSs is 192.168.ifIndex.1"                       ?"The value for primary BSS is stored in non-vol.
         The default value for other BSSs is:
         Enabled by default if interface is in router mode.
         Always disabled if interface is in bridge mode."                       ?"The value for primary BSS is stored in non-vol.
         The default value for other BSSs is:
         Enabled by default if interface is in router mode.
         Always disabled if interface is in bridge mode."                       d"Definition of the TOS bits for the Network.
           This object does not apply to primary BSS."                      W"This option controls if the RG adds a Cisco specific
           suboption (number 17) to DHCP DISCOVER and REQUEST
           from the clients that are bridged on the BSS:
         0: do not add the option
         1: add suboption 17 to Cisco specific enterprise-id
            (9) within DHCP option 125. The content is the SSID name."                       x"Networks on the LAN side.
             Stored in non-vol. .10-.128 for primary BSS
             after factory reset."                       #"List of networks on the LAN side."                       ?"The start of range LAN Trans IP Addresses. The type of
            this address is specified by saRgIpMgmtLanDhcpServerPoolStartType.
            Default value depends on IP network and subnet."                       ?"The end of range for LAN-Trans IP Addresses. The type of
            this address is specified by saRgIpMgmtLanDhcpServerPoolEndType.
            Default value depends on IP network and subnet."                       ?"The PS MUST provide the value of this MIB object in the
            Option 51 (IP Address lease time) of the DHCP OFFER and
            ACK messages sent to the LAN IP Device."                       ?"The PS MUST provide the value of this MIB object in
            the Option 2 (Time Offset from Coordinated
            Universal Time-UTC) in the DHCP OFFER and ACK
            messages sent to the LAN IP Device."         -- 0 to 24 hours (in seconds)
           -- UTC
 1"IP addresses of devices served by DHCP servers."                       e"List of general parameters pertaining to LAN-Trans IP
            address reservations and leases."                       <"The index of the the LAN IP Device in the LAN-Trans Realm."                       ""                       ?"The client's (i.e., LAN IP Device's) hardware address as
            indicated in the chaddr field of its DHCP REQUEST message."                       |"This is the date and time when the LAN IP lease was
            created (if it has not yet been renewed) or last renewed."                       ^"This is the date and time when the LAN IP address lease
            expired or will expire."                       T"This is the Host Name of the LAN IP address, based on DCHP
            option 12."                       ?"This is the Client Class Identifier, based on DHCP option 60."                      "This table contains the IP addresses of cable network and
            Internet DNS servers, in the order of preference in which
            the PS's CNP will query them, when it cannot resolve a DNS
            query using local information. Entries in this table are
            updated with the information contained in DHCP Option 6,
            received during both the WAN-Man and WAN-Data IP 
            acquisition processes.
            Stored in non-vol and 0.0.0.0 for all servers after
            factory reset."                       1"List of cable network and Internet DNS servers."                       ~"The order of preference for cable network and Internet DNS
            servers, as listed in DHCP option 6 (Domain Server)."                       K"This parameter indicates the IP address of a WAN DNS
            server."                       ?"Fixed IP address assignments for DHCP server.
         Table does not return any row if DHCP disabled.
         The value for primary BSS is stored in non-vol."                       e"List of general parameters pertaining to LAN-Trans IP
            address reservations and leases."                       <"The index of the the LAN IP Device in the LAN-Trans Realm."                       )"The row status. A row can be destroyed."                       ""                       ?"The client's (i.e., LAN IP Device's) hardware address as
            indicated in the chaddr field of its DHCP REQUEST message."                       T"This is the Host Name of the LAN IP address, based on DCHP
            option 12."                           r"Configures the NAT session time for TCP in seconds.
         Stored in non-vol, set to 300 after factory reset."                       r"Configures the NAT session time for UDP in seconds.
         Stored in non-vol, set to 300 after factory reset."                       q"Configures the NAT session time for ICMP in seconds.
         Stored in non-vol, set to 2 after factory reset."                       +"Static route entries in the routing table"                       4"List of static route entries in the routing table."                       "The index of the the table."                       "The row status."                       $"Static route IP network definition"                       &"Static route network mask definition"                       y"Gateway to the network defined in
         saRgIpMgmtStaticRouteNetwork and
         saRgIpMgmtStaticRouteSubnetMask."                       Q"If set to true(1), then static route entry
         will be advertised in RIP."                               ?"When dualIp(3) is selected, the second IP stack is used for
         user operations.
         Stored in non-vol, dhcp(1) after factory reset."                       ?"MTU size for the IP layer. Valid range is 256 to 1500.
         0 is the default which is 1500.
         Stored in non-vol, 0 after factory reset."                       ?"TTL for the IP packets forwarded to WAN.
         0 means no change to the original TTL (after
         being decreased by 1).
         Stored in non-vol, 128 after factory reset."                               1"Stored in non-vol, 0.0.0.0 after factory reset."                       1"Stored in non-vol, 0.0.0.0 after factory reset."                       1"Stored in non-vol, 0.0.0.0 after factory reset."                           ?"IP address for the second IP stack.
         If not specified and saRgIpMgmtWanMode is set to
         dualIp(3), DHCP is used to acquire the IP address.
         Note: this object can only be set from config file."                       ?"Specifies if the IP address is to be advertised in RIP,
         if RIP is enabled.
         Note: this object can only be set from config file."                           ?"A table of MAC addresses which represents stations that
         will be allowed to connect to the network bypassing any
         security, NAT and routing related settings. These
         stations are effectively behind bridged device."                       A"A row in the table that specifies a single station MAC address."                       +"Indicates the instance of this table row."                       "The row status."                       `"A MAC address of a station which will be allowed to connect
         directly to the network."                       ?"Additional IP addresses for primary LAN interface.
             If RIP is enabled, all subnets are advertised.
             All objects are stored in non-vol. The table
             is empty after factory reset."                       #"List of networks on the LAN side."                       +"Indicates the instance of this table row."                       "The row status."                       ""                       ""                     -- 255.255.255.0
"If set to true(1), then all the settings (MIB values)
         from this MIB tree will be applied to run time configuration,
         modifying previous RG operation with the new settings.
         Before setting the value to true, MIBs modified in the MIB
         tree are stored in non-vol and will not modify RG operation
         until saRgIpMgmtApplySettings is set to true or CM resets.
         Note: this applies only to the MIB objects that are stored
         in non-vol.
         Always returns false(2) when read."                               t"Controls the firewall.
         This parameter is stored in non-vol and
         is enabled after factory reset."                       1"Stored in non-vol, 0.0.0.0 after facroty reset."                           ^"Controls blocking of certain traffic.
         Stored in non-vol, 0x00 after factory reset."                       _"Controls detecting of certain traffic.
         Stored in non-vol, 0x40 after factory reset."                       _"Controls passthru for certain traffic.
         Stored in non-vol, 0xe0 after factory reset."                       ]"Controls WAN blocking RG feature.
         Stored in non-vol, enabled after factory reset."                           T"This table is stored in non-vol and is empty
                after factory reset."                       ""                       "The index"                       ""                       ""                       ""                       ""                       ""                           U"Note: this object does not need saRgFirewallApplySettings
         to take effect."                       ?"Triggers sending currect logs via email. Always returns false.
         Note: this objects does not need saRgFirewallApplySettings to
         send the logs."                           F"Enables sending logs via email. Email is sent when an event happens."                       ="This is stored in non-vol and is empty after factory reset."                       M"IP address or FQDN.
         Stored in non-vol. Empty after factory reset."                           T"This table is stored in non-vol and is empty
                after factory reset."                       ""                       "The index"                       d"The row status. A row can be destroyed.
             If the row is not used, set to notInService."                       ""                       ""                       T"This table is stored in non-vol and is empty
                after factory reset."                       ""                       "The index"                       d"The row status. A row can be destroyed.
             If the row is not used, set to notInService."                       ""                       ""                       "IP protocol to block."                       K"A table of clients MAC addresses that are denied from accessing Internet."                       A"A row in the table that specifies a single station MAC address."                       "The index"                       d"The row status. A row can be destroyed.
             If the row is not used, set to notInService."                       9"A MAC address of a station that cannot access Internet."                       T"This table is stored in non-vol and is empty
                after factory reset."                       ""                       "The index"                       d"The row status. A row can be destroyed.
             If the row is not used, set to notInService."                       8"Valid address must be entered for a row to be created."                       5"Valid port must be entered for a row to be created."                       5"Valid port must be entered for a row to be created."                       ""                       T"This table is stored in non-vol and is empty
                after factory reset."                       ""                       "The index"                       d"The row status. A row can be destroyed.
             If the row is not used, set to notInService."                       ""                       ""                       ""                       ""                       ""                      "If set to true(1), then all the settings (MIB values)
         from this MIB tree will be applied to run time configuration,
         modifying previous RG operation with the new settings.
         Before setting the value to true, MIBs modified in the MIB
         tree are stored in non-vol and will not modify RG operation
         until saRgFirewallApplySettings is set to true or CM resets.
         Note: this applies only to the MIB objects that are stored
         in non-vol.
         Always returns false(2) when read."                               H"Enables or disables router information protocol support in the device."                       E"Setting this object to true(1) causes the device to enable md5 auth"                       T"Key ID value for Md5 auth.
         This object return an empty string when read."                       "MD5 Key Value"                       5"Interval in Seconds for the Rip Reporting interval."                       >"The type of IP address assigned to the rgIpRipDestIpAddress."                       ?"Defines the RIP unicast destination IP Address for Rip Reports.
         If this value returns 0.0.0.0 then this is the default
         multicast IP address in the RFC (224.0.0.9)"                              