B--**************************************************************************
--                                                                          
--    Copyright 2003 Broadcom Corporation                                   
--    All Rights Reserved                                                   
--    No portions of this material may be reproduced in any form without the
--    written permission of:                                                
--             Broadcom Corporation                                         
--             16251 Laguna Canyon Road                                     
--             Irvine, California  92618                                    
--    All information contained in this document is Broadcom Corporation    
--    company private, proprietary, and trade secret.                       
--                                                                          
--                                                                          
--                                                                          
--**************************************************************************
--    Filename: brcm-80211-mgmt.mib
--    Author:   Kevin O'Neal
--    Creation Date: 6-march-2003
--
--**************************************************************************
--    Description:
--
--		private MIB for runtime (not factory) 802.11 management
--		
--**************************************************************************
--    Revision History:
--
--**************************************************************************
                                                                 #"Broadcom cabledata management MIB"Q"	BANANA-CABLEDATA
                (cableData branch of the
                Broadcom Assigned Numbers and Naming Authority)
                Broadcom Corporation

        Postal: 4385 River Green Parkway
                Duluth, GA  30096
                USA

           Tel: +1 770 232-0018

        E-mail: banana-cabledata@broadcom.com" "0303060000Z" "0304160000Z" "0308050000Z" "0308200000Z" "0311200000Z" "0408110000Z" %"Initial version of this MIB module." k"Changed a few object names to avoid conflicting with the same
             names in the IEEE802dot11-MIB." :"Added some new objects primarily related to WPA and 54g." ?"Added dot11ApplySettings object for on-the-fly configuration." v"Updates to objects dot1154gNetMode, dot11EncryptionMode, 
             dot11AuthenticationMode, and dot11AccessMode." `"Fixed an error in the size of objects dot1164BitKeyValue and
             dot11128BitKeyValue."                  g"Used to control the 802.11 operational mode.  If set to 
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
         the settings."                       3"Controls and reflects the service set identifier."                       3"Controls and reflects the current channel number."                       ;"Controls and reflects the beacon interval for the device."                       9"Controls and reflects the DTIM interval for the device."                       C"Controls and reflects the fragmentation threshold for the device."                       9"Controls and reflects the RTS threshold for the device."                       ="Controls and reflects the short retry limit for the device."                       <"Controls and reflects the long retry limit for the device."                      ?"Controls and reflects the behavior of the device with regards to which
         flavor of 802.11 is used.  If set to maxCompatibility(5), the device
         will interoperate with the widest variety of 54g and 802.11b clients.
         If set to maxPerformance(4), the highest throughout will be provided 
         and only 54g clients will be accepted, however nearby 802.11b networks 
         may suffer degraded performance.  If set to only54g(2), only 54g 
         clients will be accepted."                      "Controls and reflects the state of 54g protection.  If set to true(1),
         the AP will use RTS/CTS to improve 802.11g performance in mixed 
         802.11g/802.11b networks.  Set to false(2) to maximize 802.11g 
         throughput under most conditions."                       @"Forces the transmission rate for the AP to a particular speed."                       F"Sets the output power relative to the hardware's maximum capability."                          ?"Controls and reflects the encryption mode used by the device.  If set
         to none(0), then encryption is disabled and all traffic will be sent
         in the clear.  If set to wep64(1), then 64 bit WEP encryption will be
         used with the keys from the dot1164BitKeyTable.  If set to 
         wep128(2), then 128 bit WEP encryption will be used with keys from 
         the dot11128BitKeyTable.  Modes tkip(3), aes(4), and tkipPlusAes(5)
         generate their own keys automatically."                       ,"Controls and reflects the WEP pass phrase."                      <"Controls and reflects the default key which will be used when 64 or
         128 bit encryption is enabled.  Indicates the entry from the 
         dot1164BitKeyTable if dot11EncryptionMode is set to wep64(1), or
         the entry from the dot11128BitKeyTable if dot11EncryptionMode is set 
         to wep128(2)."                       Z"A table of 40 bit key values used when dot11EncryptionMode is set to 
         wep64(1)."                       :"A row in the table which represents a single 64 bit key."                       ,"Identifies the instance of this table row."                       F"A 40 bit key to be used when dot11EncryptionMode is set to wep64(1)."                       \"A table of 104 bit key values used when dot11EncryptionMode is set to 
         wep128(2)."                       ;"A row in the table which represents a single 128 bit key."                       ,"Identifies the instance of this table row."                       R"A 104 bit key to be used when dot11EncryptionMode is set to 
         wep128(2)."                       ?"Sets the network authentication method. 802.1X and WPA require that 
         valid RADIUS parameters be set. WPA-PSK requires a valid WPA 
         Pre-Shared Key to be set."                       ?"Sets the WPA Pre-Shared Key (PSK).  This value MUST be either a 
        64-digit hexadecimal number, OR a 8 to 63 character ASCII string."                       c"Sets the WPA Group Rekey Interval in seconds. Set to zero to disable 
         periodic rekeying."                        "Sets RADIUS server IP address."                       ?"Sets the UDP port used to communicate with the RADIUS server."                       ""Sets or displays the RADIUS key."                          v"Controls the mode of authentication which will be accepted by the
         device.  If set to sharedKeyOnly(1), then only stations
         which satisfy the shared key authentication system will be allowed
         to connect.  If set to openSystemOrSharedKey(2), then shared key
         stations will be allowed to connect, or stations with no 
         authentication."                      ,"Controls whether the device will operate in closed network mode.  If
         set to true(1), then the network mode is closed and the SSID will not
         be broadcast in beacon packets.  If set to false(2), then the network
         mode is open and the SSID will be broadcast in beacon packets."                      "Controls what stations will be given access to the device.  If set to
         unrestricted(0), then any station will be allowed to connect.  If set
         to restrictToList(1), then only stations whose MAC address appears in
         the dot11AccessTable will be allowed to connect."                       ?"A table of MAC addresses which represents stations that will be allowed
         to connect to the device if dot11AccessMode is set to 
         restrictToList(1)."                       A"A row in the table that specifies a single station MAC address."                       +"Indicates the instance of this table row."                       ?"A MAC address of a station which will be allowed to connect to the 
         device if dot11AccessMode is set to restrictToList(1)."                      +"If set to true(1), then all settings from this MIB will be applied to
         the hardware for on-the-fly reconfiguration.  Note that any settings
         made are stored to non-volatile storage ONLY unless this object is
         subsequently set to true(1).  Always returns false(2) when read."                      