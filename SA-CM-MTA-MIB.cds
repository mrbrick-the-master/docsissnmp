l--**************************************************************************
--                                                                          
--    Copyright 2008 Scientific Atlanta, A Cisco Company                                   
--    All Rights Reserved                                                   
--    No portions of this material may be reproduced in any
--    form without the written permission of:                                                
--             Scientific Atlanta, A Cisco Company                                          
--             5030 Sugarloaf Pkwy                                     
--             Lawrenceville, Georgia 30044                                    
--                                                                          
--**************************************************************************
                                                     ?"Controls the behavior of the Cable Modem
             functional block in Embedded MTA devices.  
             This MIB is active only at the Cable Modem IP address" "marcin.godlewski@sciatl.com" "0902050000Z" "0807080000Z" "0804230000Z" "0804070000Z" "0803170000Z" "0711160000Z" "0706010000Z" "0703150000Z" "0610300000Z" "0610020000Z" "0609050000Z" "0607110000Z" "0606210000Z" "0603170000Z" "0602130000Z" "0601230000Z" "0601200000Z" ?"Added  saCmMtaPingTestInterval 
    				saCmMtaPingTestFailEMTAThreshold 
    				saCmMtaPingTestFailCMThreshold   
    			Objects  - CR5752" "Added saCmMtaProvState (2012)" %"Added saCmMtaDhcpOptionSixty (2468)" $"Added saCmMtaDhcpRebindRule (2452)" %"Added saCmMtaIcmpReplyEnable (5660)" I"Added enableTelnetPermanentViaWebpage(5) to saCmMtaCliAccessType (1988)" 4"Added webPage(6) to saCmMtaProvisioningMode (1528)" +"Added saCmMtaDhcpReleaseOnRngAbort (5501)" '"Added saCmMtaAltCertChain (1076,5372)" 1"Changed description of saCmMtaCliAccessPassword" H"Changed description and defval of saCmMtaProvSnmpInformCommunityString" 7"Added values 4 and 5 to saCmMtaProvisioningMode (786)" ?"Changed saCmMtaSpinLockInit access to read-only
             Changed description of saCmMtaCliAccessType
                     to remove VSIFs 105 to 108" Y"Changed saCmMtaTelnetAccess status to obsolete
             Added saCmMtaCliAccess tree" +"Added enableSsh(2) to saCmMtaTelnetAccess" "Added saCmMtaSpinLockInit" $"Added saCmMtaSwUpgradeControlTimer"              '"Control embedded MTA. 
         If disable(0), MTA will not send out DHCP DISCOVER message.
         If DHCP option 122.1 is missing, MTA is disabled and MIB is set to disable(0).
         Note:  Equivalent of VSIF 54.
         Note:  This object can be set via the CM configuration file ONLY."                      f"MTA in Max-Count of CPEs (Max number of CPE
         in CM config file), default per eDOCSIS spec.
         This setting is used to control counting MTA in Max-Count of CPEs.
         0: Do not count MTA as a CPE
         1: Count MTA as a CPE
         Note:  Equivalent of VSIF 69
         Note:  This object can be set via the CM configuration file ONLY."                      ?"DOCSIS config file filters (from RFC2669) are normally applied to the MTA and all 
         CPE interfaces per the eDOCSIS spec. This MIB controls if the filters are applied
         to the MTA.
         0: Follow e-docsis spec - apply filters to MTA, Ethernet and USB ports (default)
         1: Do not apply any filters to the MTA - apply filters only to Ethernet and USB ports  
            Filters do NOT block traffic to/from the MTA.
         Note: Equivalent of VSIF 77"                      2"Applying special requirement of inform to be sent. 
         0: Follow PacketCable Provision procedure.(default) 
         1: An inform to be sent after TFTP file download fails, and before returning to MTA-1. 
            The format for this message is the same as MTA-25 and returns ProvisionStatus 3 indicating failure. 
            And the OID returned in MTA-25 is changed to the following: 
            1.3.6.1.4.1.4491.2.2.1.1.1.9 
         Note:  Mib also controlled by VSIF 73
         Note:  This object can be set via the CM configuration file ONLY."                       ""Number of SIDs the MTA supports."                      L"Time to wait (in seconds) since last SNMP SET from the SNMP trap server to resend
         the MTA config file before restarting MTA provisioning.
         SNMP SET message must contain parameters: configuration file hash, configuration file 
         URL and, optionally, configuration file encryption key. There are three cases:
         1.a. For provisioning mode 0 (PacketCable): if hash and key and URL are given,
              the MTA will continue without waiting.
           b. For provisioning mode > 0: if URL is given, the MTA will continue without waiting.
         2.a. For provisioning mode 0: if configuration file hash or URL (or both)
              is missing, MTA will wait x seconds for the next SET and restart provisioning process.
           b. For provisioning mode > 0: if URL is missing, MTA will wait x seconds for the next SET
              and restart provisioning process.
         3. Only for provisioing mode 0: if key is missing, MTA will wait x seconds for the next SET
            and then it will continue provisioning.
         where x is this MIB object.
         Setting this parameter to 0 means that MTA will never wait for another SET. For case 2
         it will restart provisioning, for case 3 it will continue provisioning wihout key.
         Note:  This object can be set via the CM configuration file ONLY."                      	"This object must only be set via the CM configuration
         file during the provisioning process.
         After CM is operational, this object can not be set
         via SNMP.
         MTA provisioning modes:
         0: MTA follows the PacketCable provisioning specifications
            and supports BASIC, HYBRID and SECURE flows.
         1: MTA will provision using only the CM config file. VoIP
            parameters MUST be included in the CM config file as
            VSIFs. This option will become obsolete.
         2: MTA will learn the MTA config file name and location
            from the MTA DHCP OFFER.
            If the filename or location is missing, MTA will switch
            to mode 3.
         3: MTA will learn the MTA config file name and location via
            SNMP.  The MTA will send an SNMP inform to the
            provisioning server specified in DHCP option 122.3 or
            177.3, depending on saCmMtaDhcpPktcOption (note: MTA
            will not provision if saCmMtaDhcpPktcOption = requireNone(1)
            and no option 122.3 or 177.3 is specified).
         4: MTA will learn the MTA config file name and location and
            the MTA host name from the MTA DHCP OFFER/ACK.
            If the filename is missing in the DHCP OFFER/ACK, the MTA
            will request a config file name based on the MTA mac
            address (example: 000f21c4e145.bin).
            If the MTA host name is missing in the DHCP OFFER/ACK the
            MTA will use a host name of MAC_ADDR (example: 000f21c4e145).
         5: MTA will request a config file name based on the MTA mac
            address (example: 000f21c4e145.bin).  
            MTA will learn the MTA config file location via DHCP.  
            MTA will use a host name of MAC_ADDR (example: 000f21c4e145).  
            MTA will NOT use the file name and host name in the
            DHCP ACK even if the parameters are present.
         6: Web page provisioning. Parameters from a web page will be used
            rather than from config file. All the web page parameters are
            stored in non-vol. Base provisioning method is 2 above.
         For modes other than 0, MTA DHCP options 122, 177 are not required.
         Note:  This object can be set via the CM configuration file ONLY."                      a"This object must only be set via the CM configuration file during the provisioning process.
         After CM is operational, this object can not be set via SNMP.
         0: CM and MTA will accept only PacketCable option 122. If option 122 is not included
            in CM DHCP OFFER, MTA will not start.
         1: CM and MTA will accept 122 or 177 or none. If DHCP OFFER contains 122 or 177, MTA
            will process it.
         2: CM and MTA will accept only PacketCable option 177. If option 177 is not included
            in CM DHCP OFFER, MTA will not start.
         This MIB is saved into modem's non-vol memory and the new value is active after
         the modem registers and reboots again (DHCP comes before config file parsing).
         Note:  Equivalent of VSIF 64
         Note:  This object can be set via the CM configuration file ONLY."                      q"The value set in this object becomes the SNMPv2c community string in all SNMP INFORMS
         sent to the provisioning server during MTA registration.
         Provisioning methods affected include: 
         - SA ProvMode 3
         - Pktc BASIC.2 (MTA-25 only)
         - Pktc HYBRID.1 (MTA-15 only)
         - Pktc HYBRID.2 (MTA-15 and MTA-25)
        Note: Pktc SECURE mode is NOT affected.
        Note: This setting only affects provisioning-related INFORMs, not INFORMs/TRAPs sent by
              the MTA after it has completed registration.
        Note: This object can be set via the CM configuration file ONLY."                      ?"This object controls if the EMTA will continue the provisioning
               process if a response from a Time of Day server is not available
               at provisioning step CM-8. If set to true(1) the EMTA will require
               a ToD response. If set to false(0) the EMTA will request ToD but
               will not require the TOD server response.
               Note: For PacketCable secure provisioning, if this object is
               set to false(0), and ToD is not available, MTA will probably
               be unable to verify that certificates are valid and will not provision.
               Note: this object can be set in the CM config file only."                      ?"Controls telnet/SSH access to the CM IP Address when VSIF 106
         is configured for SNMP-controlled conditional telnet access
         (VSIF 106 = 2).

         When VSIF 106 = 2 AND username and password are specified
         in VSIFs 107 and 108, the value of this object can be modified
         to control telnet/SSH access. In this case, the object returns
         the current value when read (disable(0) by default).

         When VSIF 106 = 1 AND username and password are specified
         in VSIFs 107 and 108, this object returns 1 when read and
         cannot be modified.

         When VSIF 106 = 0 or username or password are not specified,
         this object returns 0 when read and cannot be modified."                       ["This object controls if the traffic between eMTA and CPE
               can be forwarded."                       "To be written."                      "This object is used to control the conditions for rebooting
             the modem following a software download:
             0: Docsis Default: Always download software and reboot
                immediately after software download,
             1: Do not download software if any phone endpoint is off hook
                and return 13 to docsDevSwAdminStatus when set to
                upgradgeFromMgt(1),
             other: Download software immediately but delay the reboot
                    until all lines have been on-hook for the specified
                    time in seconds.
             Note: docsDevSwOperStatus shows inProgess(1) even if the
                   download itself has finished and MTA is waiting for user
                   to hang up."                       |"Controls whether the usmUserSpinLock from SNMPv3 USM is initially 
         set to zero or to a random value at boot time."                      |"Normally, an image built for PacketCable may only use the CableLabs
         service provider certificate chain, and an image built for
         EuroPacketCable may only use the tComLabs service provider
         certificate chain. This object allows the two certificate chains to
         be used regardless of whether the image supports PacketCable or
         EuroPacketCable.
         0: Follow the Security Specification. PacketCable images use
            Cablelabs certificate chain. EuroPacketCable images use tComlabs
            certificate chain.
         1: Don't tie the Service Provider certificate chain with the image."                      ?"This MIB allows the operator to set the MTA not to send DHCP release
         after T4StationMainEvent/RangeAbort  messge from CMTS. 
         When the value is set to 0, the MTA will follow RFC2131 and send DHCP
         release.
         When the value is set to 1, the MTA will not send any DHCP release if
         EMTA receives T4StationMainEvent/RangeAbort from CMTS
         This MIB should be set in the CM config file."                       ?"This object allows the operator to set the MTA IP stack to stop replying with the
         ICMP port destination unreachable messages during MTA initialization.
         When the MTA is online, it always responds with ICMP, if necessary."                      q"This object is used to control the DHCP client behaviour
         for the MTA when a DHCP REBIND (T2 timeout)
         occurs. The value strict will only allow the MTA to accept
         a valid DHCP ACK only from the DHCP server 
         that provided the initial lease. The value relaxed will
         allow the MTA to accept a valid DHCP ACK from any DHCP server." ."RFC 2131 Dynamic Host Configuration Protocol"                     ?"Defines the string value for SIP EMTA DHCP DISCOVER option 60 text. 
         This mib is only writeable in the the CM config file. Default option
         60 value is pktc1.0"                      ?"This MIB will show the provisioning state of the modem. This is equivalent to 
          the CM State web page. This MIB will return an integer of the current 
          provisioning state based on the descriptions below. 
          MTA Disabled / Prevented would be the value if MTA is diabled 
          (via option 122/177, ifAdminStatus, saCmMtaDevice) or prevented 
          (application not started due to bad option 122 or other error).
                                        Docsis-Downstream Scanning (1) 
                                        Docsis-Downstream Ranging (2) 
                                        Docsis-Upstream Ranging (3) 
                                        Docsis-DHCP (4) 
                                        Docsis-TFTP (5) 
                                        Docsis-Data Reg Complete (6) 
                                        Telephony-DHCP (7) 
                                        Telephony-Security (8)
                                        Telephony-TFTP (9) 
                                        Telephony-Reg with Call Server (10) 
                                        Telephony-Reg Complete (11)
                                        MTA Disabled/Prevented (12) "                       ?"Defines the interval value for the pings test from the MTA stack to the default gateway (time in minutes - default set to 15, 0 disables this feature). This value is stored in the non-vol"                       p"The number of consecutive failed ping tests to trigger a MTA only reboot (number - default set to 0 (disabled)"                       t"The number of consecutive failed ping tests to trigger a CM and  MTA  reboot (number - default set to 0 (disabled)"                      J"This MIB controls the SNMPv3EngineBoots parameter. This parameter is used in full secure packetcable provisioning  with the SNMPset for the MTA config file.
      1 is current default behavior (SNMPv3EngineBoots resets to 0 on a factory reset)
      2 will allow the value of SNMPv3EngineBoots to persist through factory resets "                          ?"Controls telnet/SSH access to the CM IP Address.

         When username and password are specified, the value of this
         object can be modified to control telnet/SSH access. In this
         case, the object returns the current value when read
         (disable(0) by default).

         Single session enables the session and once a user logs out,
         the access gets disabled. Permanent session does not disable
         the access after a user logs out."                       \"Controls and reflects the IP stack interfaces on which a telnet server
         is active."                       "Username string"                       ?"Password string. When using a plain-text string, this object is encoded
         as an ascii string.  When using the MD5 or password of the day types,
         this object should be encoded as a hex string."                       "Password type"                       E"Indicates whether or not a telnet session is currently in progress."                       ?"If a telnet session is currently in progress, setting this object
         to true(1) will terminate the session.  Setting to false(2) has
         no effect.  Always returns false(2) when read."                       ?"This object gives the address of the most recently connected device.  
         If no session has taken place since the last reboot, this object will 
         report an empty string."                       g"The address of an device which has last unsuccessfully attempted to log in 
         to this station."                       ?"Defines number of unsuccessful access atempts before disconneting
         the session. Access is blocked for duration specified in
         saCmMtaCliAccessUnlockTime.
         If 0 is specified, session is never dropped."                       W"Time to unlock the access. If 0 is specified only reboot unlocks
         the access."                       f"Timeout for a session if no activity (no input) is present.
         If 0, session will not timeout."                       '"Banner when user connects to session."                       ("Banner when user successfully logs in."                       X"Banner when user is disconnected after trying loging in with
         bad credentials."                          