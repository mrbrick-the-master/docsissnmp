\--**************************************************************************
--                                                                          
--    Copyright 2009 Scientific Atlanta, A Cisco Company                                   
--    All Rights Reserved                                                   
--    No portions of this material may be reproduced in any
--    form without the written permission of:                                                
--             Cisco Systems Inc.                                           
--             5030 Sugarloaf Pkwy                                     
--             Lawrenceville, Georgia 30044                                    
--                                                                          
--**************************************************************************
                                                                                 6"(Scientific Atlanta)Cisco Cable Modem MIB definition" #"Craig Kerchner: kerchnc@cisco.com" "201004140000Z" "201001210000Z" "200912100000Z" "200910050000Z" "200910010000Z" "200908240000Z" "200908130000Z" "200908120000Z" "200907290000Z" "200904100000Z" "200902050000Z" "200901150000Z" "200811040000Z" "200801170000Z" "200711160000Z" "200711030000Z" "200710100000Z" "200708140000Z" "200705010000Z" "200701110000Z" "200611220000Z" "200610120000Z" "200609250000Z" "200609080000Z" "200609050000Z" "200608180000Z" "200607260000Z" "200606200000Z" "200601170000Z" "200512210000Z" "200105300000Z" %"Added usCmLock(2) to saCmDocsisLock" "Added saPUFEntry" "Added saLKFTable" L"Revised the mib definition for Resilency and, 
        	NarrowbandFallback" ["Added saCmStatusMessageOnBattery, 
        	saMddIpModeOverride, saCmDocsisCapableVersion" ;"Modified saCmFtpControl,
			vendorONLINELEDTreatment.
			" "Added saPUFTable"?"Added saCmFtpIpStackInterface
        	saCmFtpServerAddressType
        	saCmFtpServerAddress
        	saCmFtpServerPort,
			saCmFtpUserName
			saCmFtpPassword
			saCmFtpFilename
			saCmFtpControl
			saCmFtpStatus
			saCmFtpPayloadBytesResult
			saCmFtpTotalBytesResult
			saCmFtpElapsedTimeResult
			saCmFtpThroughputResult
			vendorUSLEDTreatment 
			vendorONLINELEDTreatment 	
			Modified vendorDSLEDTreatment and vendorLINKLEDTreatment.
			" &"Added saCmWebAccessNoActivityTimeout" "Added vendorLINKLEDTreatment" h"Added vendorDSLEDTreatment
             Corrected typo in saCmNarrowbandFallbackInterval description. " L"Added saCmSoftwareDownloadTFTPServer
             Updated Copyright date. " u"Changed the default values and range for saCmNarrowbandFallbackInterval 
              and saCmResiliencyInterval. " ?"Added half-duplex-1Gbps(6) and full-duplex-1Gbps(7)
                   to cmEthernetOperation
             Changed values to lowercase in cmUpstreamMode
                   and cmDocsis1xQpskBurstPreamble" ]"Added saCmInternalDhcpServer (1859)
             Changed DEFVAL for saCmArpRateLimit (1862)" ."Added saCmNarrowbandFallbackInterval (10123)" &"Added saCmResiliencyInterval (10101)" ("Corrected SEQUENCE objects for tables."?"Changed saCmWebAccessAdvancedType default to 1
             Changed logic for HW sepcific SW download:
                     no filename required in each row
             Removed saCmSwUpgradeFromMgt(1) from saCmSwAdminStatus
             Changed cmRGresetdefault
                     remoteProvisionFilename
                     remoteProvisionOperStatus
                     remoteProvisionAdminStatus status to obsolte (move to RG)
             Added saCmDsBonding (10086)" ?"Changed description of saCmWebAccessAdvancedPassword
             Changed description of some objects in saCmIdentityDownload
             Added saCmForceDualscan (10021)" U"Changed cmAPWeb and cmRemoteWebAccess
                     status to obsolete (892)" ?"Added saCmCpeMacAging (1003)
             Added saCmBpiForward (1017)
             Added saCmDocsisLock (1018)
             Added default to cmAPFtpSwitch (985,5326)" ""Added saCmIdentityDownload (950)" M"Added saCmTodRenewal (909)
             Added saCmAutoResetNoActivity (912)" c"Changed saCmSwCvcReference and saCmSoftwareCvcTable
                     status to obsolete (887)" %"Added saCmWebAccess tree (892,5271)" &"Added DEFVAL to cmConsoleMode (5239)" ["Changed logic for HW sepcific SW download:
               no server required in each row." "Added saCmArpRateLimit" !"Added saCmSoftwareDownload tree" "Initial Compilable Version."                       "CableModem CPU utilization"                       "CableModem Memory utilization"                       "CableModem MemFragemntation"                       "CableModem EthTxBufferNum"                       "CableModem UsbTxBufferNum"                       "CableModem MacTxBufferNum"                       "CableModem MacRxBufferNum"                       ?"Status of the upstream communication type the cable modem is currently using with the CMTS.
            1) DOCSIS 1.0 or 1.1 style TDMA
            2) DOCSIS 2.0 ATDMA
            3) DOCSIS 2.0 SCDMA"                           ?"
        		 DOCSIS: 
        		 initial downstream frequency,
        		 range: 93000000 to 855000000 Hz
        		 EuroDOCSIS:
        		 initial downstream frequency,
        		 range: 88000000 to 859000000 Hz
        		 "                      )"
        		 This MIB is only valid in DOCSIS 3.0 enabled modems with dual LEDs. 
        		 This MIB determines the DS LED color, green or amber, to be used to indicate DS state.  
                 
                 signalNB:  DS LED = amber for narrowband; DS LED = green when DS w-online wideband.
 				 signalWB:  DS LED = amber for wideband; DS LED = green when DS online narrowband.
 				 signalWBNBG: Both WB and NB states are indicated using the Green LED.
 				 signalWBNBA: Both WB and NB states are indicated using the Amber LED.
        		 "                      ?"
                        This MIB will determine Link Speed using blink rate for DOCSIS 2.0 modems or
                        using LED color for DOCSIS 3.0 Modems as seen with the LINK LED.

                        default: LINK LED behavior follows standard behavior as defined per User Guide
                        
                        FOR DOCSIS 2.0
                        1: showlinkspeed: When connected, LED blinks 1x/2sec for 10/100 operation
                        and blinks 2x/1sec for Gigabit operation.  Traffic is still reflected as
                        2x/1sec. 
                        
                        FOR DOCSIS 3.0
                        On dual LED D3.0 modems the operator can choose to have 10/100 operation indicated by either 
                        a green LED or an amber LED. Modems that support 1000 Mb speeds shall indicate using the
                        alternate LED. 
                        
                        2: d3Greenledslowspeed indicates 10/100 operation using the Green LED.
                 		3: d3Amberledslowspeed indicates 10/100 operation using the Amber LED.
                        "                      3"
        		 This MIB is only valid in DOCSIS 3.0 enabled modems with dual LEDs. 
        		 This MIB determines the US LED color, green or amber to be used to indicate US state.  
                 
                 signalWBNBG: Both WB and NB states are indicated using the Green LED.
                 signalNB:  US LED = amber for narrowband; US LED = green when US w-online wideband.
 				 signalWB:  US LED = amber for wideband; US LED = green when US online narrowband.
 				 signalWBNBA: Both WB and NB states are indicated using the Amber LED.
        		 "                      "
        		 This MIB is only valid in DOCSIS 3.0 enabled modems with dual LEDs. 
        		 This MIB provides a way to select the ONLINE LED color, green or amber to distinguish between
        		 wideband online or online(NB).  
        		         		 
        		 signalWBNBG: Both WB and NB states are indicated using the Green LED.
                 signalNB:  ONLINE LED = amber for narrowband; ONLINE LED = green when DS w-online wideband.
 				 signalWB:  ONLINE LED = amber for wideband; ONLINE LED = green when DS online narrowband.
 				 signalWBNBA: Both WB and NB states are indicated using the Amber LED. 
 				 
        		 NOTE: This LED will only provide indication of a Downstream Bonded environment and does not 
        		 indicate the presence of Upstream bonding.
                "                           J"
        		 0: disable IGMP proxy,
                 1: enable IGMP proxy"                       ?"Web page access level.
        		 0: no CPE access to any page
        		 1: access to syetm page only
        		 2: access to all pages"                       I"
        		 0: disable ARP aging out
        		 1: enable ARP aging out"                       O"The value of this object is the option way of 
        		the CM certificated."                       ?"This object is ued to turn on/off web pages. 
        	   Once we change the value of this object, 
        		CM will reboot and the new value will take effect."                       r"This object is used to for changing the password 
        		that controls the level of access to the Web Wizard."                       @"This object is used to switch ON/OFF ftp improvement function."                       ="If enable, RG setting can be reset by ResetToDefault button"                       6"If enable, MSO can read/write web page from WAN side"                      E"This object is used to change DS frequency plan.
            
            a - North America (NTSC)
            b - International DOCSIS (PAL-I, PAL-G, NTSC and 1 MHz step routine)
            c - International Euro-DOCSIS/DOCSIS (PAL-G, PAL-I, NTSC and 1 MHz step routine)
            d - Japanese (NTSC Japan)
            "                       h"This object is used to for changing the password 
        		that enables or disables the console port."                       ?"Support for transparent multicast pass-thru using Promiscuous Multicast Mode.
                The setting will be stored in non-volatile memory and will be retained 
                through a power cycle. It can be forcibly cleared with a fatcory reset."                      0"Controls the default setting of the preamble type when running in DOCSIS 1.x mode.  
         In DOCSIS 2.0 mode the preamble types is specified by the CMTS via the Upstream Channel
         Descriptor.
        0: Use QPSK0 Preamble type as the default
        1: Use QPSK1 Preamble type as the default"                       v"Controls the state of local interface.
        0: Shut down local interface,
        1: Leave local interface as is."                       r"This object is used to for changing the username 
        		that controls the level of access to the Web Wizard."                       ?"Setting this object to true(1) causes the device to 
			 reset as momentary activation of reset switch,
			 which reset only the DOCSIS parameters to factory default values.
             		 Reading this object always returns false(2)."                       ?"Can be set with a sequence of values to activate a remote factory reset. 
			 This is the same as a sustained ( 3 seconds or more ) reset switch.
             		 Reading this object always returns false(2)."                      3"Setting ARP rate-limit defines the number of ARP packets
             that can be processed per second. Limitation of this number
             prevents denial-of-service attacks. A value of 20 pps is a
             good reference. Setting the value to 0 allows unlimited
             incoming ARP messages"                       ?"Controls the DHCP server that is used when CM is offline.
           0: disable internal DHCP server
           1: enable internal DHCP server"                          K"Sets Ethernet mode.
             0: autoNegotiation(0),
             1: half-duplex-10Mbps(1),
             2: full-duplex-10Mbps(2),
             3: half-duplex-100Mbps(3),
             4: full-duplex-100Mbps(4),
             5: ethernetNotConnected(5),
             6: half-duplex-1Gbps(6),
             7: full-duplex-1Gbps(7)"                       ?"Default is Disable. 
			     If you want to use AccessProtection,you must select Enable ,
			     or AccessProtection can't be selected."                      L"Default is Disable.
        		
			     inactive(1): It detect traffic from CPE. CM is on normal situtation. 
			     active(2) : CM is on sleep situtation.
			     automatic(3): CM will detect automaticlly. You can set time on AccessProtectionDelay.
			                   If CM detect traffic from CPE,if will show disable again. "                       |"Default is 5 mins. The range is 1 to 255min.
        		 But the function is effective when AccessProtection set automatic."                       ""                       ?"To Control console port is disabled, read only, or read write"                       "T4 timeout definition."                       ?"Defines how often to update time with ToD protocol.
         0: never
         1: together with DHCP renewal
         2-11: reserved
         12+: number of hours"                       "Setting this object to any value N > 0 will cause the CM to reboot autonomously
         3/4th of N minutes after the modem has detected that there is no connectivity to the CM gateway after three unsuccessful pings. 
         NOTE: The default value of 0 means the feature is disabled."                      g"Setting this object to any value N > 0 will cause the CM to remove a MAC address
         from its CPE table N seconds after the modem has detected no traffic from it.
         This feature applies ONLY to devices connected to the CM, not the embedded ones
         (as MTA or CableHome).
         NOTE: The default value of 0 means the feature is disabled."                      ?"This object controls whether to forward traffic that is not
         destined for any CPE (not in CPE table) when running BPI.
         1: follow DOCSIS rules. Do not forward traffic when destination
            MAC not in the CPE table.
         2: when BPI is enabled, forward all traffic (if security
            association matches, otherwise cannot decrypt packets).
         When BPI is disabled, this object does not have effect."                      ?"Setting this object allows a Euro-DOCSIS modem to operate
         on a DOCSIS channel. Normally, Euro-DOCSIS will only
         operate on a Euro-DOCSIS channel.
         0: Euro-DOCSIS modem will keep scanning until it finds a
            Euro-DOCSIS or DOCSIS channel. It will lock on that
            channel, get configuration file and if it is a DOCSIS
            channel, it will un-lock and continue scanning further.
         1: Euro-DOCSIS modem will stay locked if it locates a
            DOCSIS or Euro-DOCSIS channel.
	 2: Euro-DOCSIS modem will stay locked if it locates a 
	     DOCSIS channel.
         NOTE: This object is only applied on Euro-DOCSIS models.
               DOCSIS models ignore this object.
         Equivalent to VSIF 109."                      ?"The MIB will choose whether to force dualscan
         operation for the device.  Dualscan refers to the
         CM ability to automatically scan for both 6MHz and
         8MHz carriers.
         0 : Will not force dualscan.  In this case, the 
             factory configuration for dualscan will take 
             effect.
             *note: Factory Dualscan configuration is 
              typically only enabled for EPC products.
         1 : Will force dualscan to be enabled.  In this 
             case, dualscan will be enabled regardless of 
             the factory setting.
         This MIB value will be stored to NonVolatile
         memory(NVM) and will persist across reboots.  If 
         the MIB is set via the config file, the CM will 
         store the new setting and begin using it on next
         reboot.  Removing the setting from the config 
         file will not change the value stored in NVM the 
         CM will continue to operate using the previously 
         stored value.
         However, if an SNMP SET is used to modify the 
         value, then the CM will not use the new setting 
         until the next reboot occurs or is commanded.
         A factory reset of the CM will set the stored
         value back to 0."                      ?"The MIB will choose whether to enable downstream 
         channel bonding for bonding-capable modems.  
         Non-bonding modems will ignore this MIB object.
         0 : Disable downstream channel bonding. 
         1 : Enable downstream channel bonding. 
         This MIB will take effect at the next reboot.
         This MIB value will be stored to NonVolatile
         memory(NVM) and will persist across reboots.  If 
         the MIB is set via the config file, the CM will 
         store the new setting and reboot if a change is 
         necessary.  Removing the setting from the config 
         file will not change the value stored in NVM:  the 
         CM will continue to operate using the previously 
         stored value.
         If an SNMP SET is used to modify the value, then 
         the CM will not use the new setting until the next 
         reboot occurs or is commanded.
         A factory reset of the CM will set the stored
         value back to 1."                      *"Setting to a non-zero number activates the Bonded Channel Resiliency feature
         and the set integer value becomes the period, in seconds, that the secondary 
         downstream channels are evaluated.  If the modem falls back to single downstream
         channel mode and the previously rejected (or accepted) secondary downstream
         channels are deemed to be operational the modem will reset the cable interface
         in order to come up in bonded channel mode.  The secondary channels will 
         indefinitely be evaluated every (set period) seconds and downstream bonding
         restored if possible.
         Setting the value to zero will disable this feature.  Values under 60 will be set as 60. 
         
         The default setting for all 8x4 DOCSIS 3.0 Product types is (0)."                      ?"Setting this MIB to a non-zero number will allow channel bonded modems to
         revert to Narrowband mode when wideband channels are failing.  The setting is
         an approximate number of seconds and can vary +/- 30 seconds depending on
         bonded channel conditions.
         Narrowband fallback will require a re-registration with the CMTS.
         If set to 0, then the modem will NOT attempt to re-connect the wideband channels
         until a DHCP lease timeout occurs.  During this time, no data service will be available
         to the subscriber.  Values under 10 will be set as 10.
         
         The defualt setting for all 8x4 DOCSIS 3.0 Product types is (0)."                       ?"Use this MIB to specify the interface on which the FTP file will be received on or sent to. 
            The interface must have a valid IP address in order for this tool to function.  The default interface is the 
            Cable Modem IP address."                      "This MIB defines the type of internet address to be used for the FTP Server.
            0 : IPv4 FTP Server Address
            1 : IPv6 FTP Server Address (reserved for future support)  
            NOTE: The default value of 0 indicates support for IPv4 IP address."                      "This MIB defines a network FTP Server address of a  valid network FTP server.  The FTP
            Server address must be a routable network address in order for the FTP tool to function
            correctly.  If the FTP server is unknown, return 0.0.0.0."                       O"This MIB defines the TCP port to be used on the FTP Server for file transfer."                       B"Specify the username to be used for logging into the FTP Server."                       B"Specify the password to be used for logging into the FTP Server."                       ["Specify the filename and path of the file to be downloaded or uploaded to the FTP Server."                       ["This MIB initiates the file transfer and allows the user to choose either a get or a put."                       ?"This MIB provides a file transfer status report indicating the status of the latest transfer. 
            In the event a file transfer was not activated this field shall return a value of idle(0)."                      
"Provides the number of bytes transfered during the test in the data payload.  The 
            result is representative of the most recent or current transfer.  This number should 
            equal the size the of the file transferred once the transfer completes."                      #"Provides the total number of bytes transfered during the test including all file data and 
            payload.  The result is representative of the most recent or current transfer.  The final
            value should equal the size the of the file transferred once the transfer completes."                      #"Provides the total number of bytes transfered during the test including all file data and 
            payload.  The result is representative of the most recent or current transfer.  The final
            value should equal the size the of the file transferred once the transfer completes."                       ?"Provides the calculated throughput for the file transfer which is either in progress or most 
            recently completed. This value = saCmFtpTotalBytes / saCmFtpElapsedTime."                      ?"This MIB selects the type of CM-STATUS messages to be sent in Docsis3.0 mode 
            while operating on battery and thereafter restoration of AC power. 
            atteryMessages would enable sending CM-STATUS messages 9 and 10 ONLY which is Spec compliant. 
            BatteryAndQAMMessages would enable sending CM-STATUS messages 9 and 10 for battery operation, 
            1-4 for NonPriMddFailure/Recovery, 2-5 QAM/FEC lock failure/recovery for Non Primary DS only"                      /"
        		 This MIB is only valid on IPv6 capable modems. 
        		 This MIB provides a way to override the MDD TLV for IP mode initialization.
        		 If set in the config file and IP mode is different than currently initialized
        		 the modem must DHCP release and reinitialize to proper IP mode.
        		 If set via SNMP in operational state the modem must not reinitialize.   
        		         		 
        		 honorMDD:  Honor the IP mode in the MDD message.
                                 ipv4    :  Override IP mode to IPv4 if necessary.
 				 ipv6    :  Override IP mode to IPv6 if necessary.
 				 apm     :  Override IP mode to APM if necessary. 
 				 dpm     :  Override IP mode to DPM if necessary.
 				 
        		 NOTE: The new setting will persist during reboots.
                "                       ?"Displays the string value for CM DHCP DISCOVER option 60 text. 
         This mib is only readable through SNMP.This MIB object can queried to identify the devices docsis version that it supports."                               ?"The address of the TFTP server used for RG config download or upload.
             If the TFTP server is unknown, return 0.0.0.0."                       z"The file name of the config file to be download or upload. 
             If unknown, the string '(unknown)' is returned."                       ?"InProgress(1) indicates that a TFTP download or upload is underway,
             Complete(2) indicates that the last download or upload is successful,
             failed(3) indicates that the last attempted download or upload is falied."                      ?"If set to download(1), the device will initiate a
             TFTP RG config file download using remoteProvisionFilename.
             If set to upload(2), the device will initiate a TFTP RG config file 
             upload to remoteProvisionServer. The filename will be the same as
             remoteProvisionFilename. 

             At initial startup, this object has the default value of
             download(1)."                       ?"This string is the The Virus Protection Software URL.
             It will be used as download link when click Virus Protection/software download in Setup page."                           0"Table for hardware specific software download."                       2"Entries for hardware specific software download."                       8"Index used to order the application of access entries."                       n"Model name of the cable modem product.
         If not set, applies to all models.
         example: DPC2100"                       \"Hardware version of the cable modem product.
         If not set, applies to all versions."                       _"Boot loader version of the cable modem product.
         If not set, applies to all versions."                       '"Protocol used in cable modem product."                       !"Filename of the software image."                       9"TFTP server IP address where software image is located."                       '"See docsDevSwAdminStatus for details."                       "Method of software download."                       V"reference to CVC table row.
         If not specified or 0, TLV-32 CVC will be used."                       4"CVC table for hardware specific software download."                       6"Entries for hardware specific software download CVC."                       8"Index used to order the application of access entries."                       ?"The length of the CVC is 200 hex characters (100 Bytes)
         except for the last block.
         Multiple objects can be specified in a row as CVC is usually
         longer than 100 bytes."                      ?"When CM configuration file initiated software upgrade is needed, 
             the TFTP request will be sent to SwUpgradeServer IP address.
             When the value of SwUpgradeServer is not specified in the CM
             configuration file then the TFTP request will be sent to the same
             TFTP server used for CM configuration file download (1) or to the
             IP address specified in DHCP Option 54 (2)."                           "Table for web access levels."                        "Entries for web access levels."                       ("Access level for individual interface."                       &"Type of password for advnaced pages."                       ""Username for advanced web pages."                       ?"Password (depends on type) for advanced web pages.
         If type = 1, the password is the string value.
         If type = 2, the password is the 16-byte octet (hex) string
                      of MD5 of seed generated by the PoTD tool."                       ?"Timeout for a web session if no activity is present. If the timer expires, 
          user will be logged out of Advanced webpage. If 0, web session will not 
          timeout. Valid values are 0, 30-86400"                           "Defines the IP address of TFTP server with identities.
         For an identity for MAC adress of M1:M2:M3:M4:M5:M6, the
         filename requested will be M1M2M3/M4/M5/M6.bin.
         The default value of this object equals the siaddr from DHCP offer."                      ;"Defines the relative directory where the certificates are located.
         For an identity for MAC adress of M1:M2:M3:M4:M5:M6, and the object
         set to 'cert/test' the filename requested will be
         cert/test/M1M2M3/M4/M5/M6.bin for device identity and
         and cert/test/sprca.cer for the SPRCA."                       ]"Index for the download table.
         Device identities are encrypted while SPRCA are not."                       /"Defines parameters for the identity download."                       ""                       d"Defines the filename (and path) for Service Provider Root certificate
         or device identity."                      7"Defines the timestamp (YYYYMMDDHHMM) for the identity download.
         If the date is later than stored in the modem, the download may proceed.
         If the date is older or the same than in the modem, nothing happens.
         If the download is successful, the modem will write the new date to non-vol."                      T"Commands to download the identity when set to download(2).
         Default value of idle(1) is to ignore download.
         Possible read-only values returned when queried :
         - idle(1): the modem has not attmpted to download the identities since last reboot
         - success(3): downloaded the identities successfully
         - errorTimestamp(4): the timestamp specified is not newer that in the modem
         - errorServer(5): TFTP server did not respond
         - errorFileNotFound(6): no identity file on the server
         - errorBadIdentity(7): the identity file is not good"                               /"A table of PowerUp Frequencies scanned first."                       7"A row in the table that specifies a single frequency."                       +"Indicates the instance of this table row."                      Q"Controls and reflects the status of rows in this table. Rows in this 
         	table may be created by either the create-and-go or create-and-wait 
         	paradigms.  There is no restriction on changing values in a row of 
         	this table while the row is active.  Setting the value of this object 
         	to active (either directly or indirectly via create-and-go) will cause 
         	the row to be written to non-volatile storage.  Changing the value of
         	saPUFFrequency while the row is active will also cause the
         	row to be written to non-volatile storage."             K--	MAX-ACCESS read-create //see note below, shall be read-create HERE ????
         "Frequency in Hz"                       "Annex mode for the frequency"                           $"A table of Last Known Frequencies."                       7"A row in the table that specifies a single frequency."                       +"Indicates the instance of this table row."                       "Frequency in Hz"                              