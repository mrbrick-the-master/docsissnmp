 $--
-- (c) 2002 Motorola, Inc.
--
                                                                                         ["This module defines proprietary MIB variables for the Motorola SB 
line of cable modems." ?"Carolyn Huynh or Tom Beifuss
Postal: 6450 Sequence Dr.
San Diego, CA 92121
Tel: +1 858 404-3503 or 404-2643
Fax: +1 858 404-3480
E-mail: carolynhuynh@motorola.com or tom.beifuss@motorola.com" "200408160000Z" "200407270000Z" "200407270000Z" "200407150000Z" "200403300000Z" "200402200000Z" "200402040000Z" "200401260000Z" "200401220000Z" "200309020000Z" "200306160000Z" "200304140000Z" "200210150000Z" "200210140000Z" "200208220000Z" ?"Edited by Kevin Marez
- Revise all MIB descriptions to include the following information:
Storage, Modification, Default Value and Reset To Factory behavior. " ?"Edited by Kaitlyn Chau
- Add cmConfigFullResetOnT4 to perform a full reset after T4 Timeout condition
and start scanning the next frequency on the list." ?"Edited by Carolyn Huynh
- Add cmConfigFullResetOnT4 to perform a full reset after T4 Timeout condition
and start scanning the next frequency on the list." ?"Edited by Kevin Marez
- Add modemCmTurboRemoveAllPorts, modemCmTurboDoxAddPort, modemCmEnable
MsoFeatures, and modemCmDisablePacketcable objects. " ?"Edited by Carolyn Huynh
- Add cmSunboxCapable to ignore TFTP response from a wrong SUN box interface 
and allows to register when CMTS is connected to a global loop with multiple 
interfaces. " w"Edited by Kaitlyn Chau.
- Add cmConfigGwRIPDisplayMode to allow different display
  settings of the RIP GUI pages. " ?"Edited by P. Rajiv. Published as giCmConfig-16.mib. 
- SCR1699 - updated cmConfigGatewayDeviceOperMode to support a new
  mode (cableHomeVersion2). This allows cmConfigGatewayDeviceOperMode to
  be in sync with rgOperMode in brcm-rg-control.mib." ?"Edited by Carolyn Huynh.
- Add cmConfigGwRIPDownloadFeatureEnable to enable the Time Warner's Customer 
  Premise Router (CPR) Config Download GUI page." ="Edited by Jason Krasnow.
- Add cmConfigGwWrdFeatureEnable." <"Edited by Kaitlyn Chau.
- Add cmConfigGwSmpFeatureEnable." ?"Edited by Chinglan Hu.  Published as giCmConfig-15.mib.
- SCR1279 - added new MIB objects for factory security implementation. The
  MIB objects are for host app's Login Challenge and Login Response." ?"Edited by Kevin Marez.  Published as giCmConfig-12.mib.
- Updated the Compliance Statement section.  Created new
  cmExtendedChannelCompliance group and located the MIBs
  appropriately to this new group." ?"Edited by Tom Beifuss.  
- Added Compliance Statement per Kevin Marez
- Obsoleted cmSnmpHFCSetPort
- Updated cmResetToDefaults" \"Edited by Tom Beifuss.  
- Added Vendor specific branch.
- Added TI TurboDox MIB objects" ?"Edited by Zheng Fang.
- Move content of cmConfigGuiDeviceOperMode and cmConfigGuiSessionTable from cmGateway.mib.
- Add cmConfigGuiSessionInactivityTimeoutEnable."       -- August 16, 2004
          	"This object displays the most recent downstream frequency with
           which the modem registered, or is set to the first favorite
           frequency in Hz.  The value is stored in NVRAM.  A manual reset is
           required for the changes take effect."                      "This object displays the 2nd most recent downstream frequency with
           which the modem registered, or is set to the second favorite
           frequency in Hz.  The value is stored in NVRAM.  A manual reset
           is required for the changes take effect."                      "This object displays the 3rd most recent downstream frequency with
           which the modem registered, or is set to the third favorite
           frequency in Hz.  The value is stored in NVRAM.  A manual reset
           is required for the changes take effect."                      ?"EMC CM RUNNING M VERSION ONLY.
           This object retrieves/sets the scan limit flag from/to NVRAM.
           A CM reboot will be required for changes to take effect.
           Setting this flag to TRUE(1) disables full scan.
           The CM will scan only frequencies that are in the lower
           and upper scan limits.  Setting this flag to FALSE(2) allows the
           CM to do a full scan if it failed to register after scanning
           the frequencies in the scan limit."                       ?"EMC CM RUNNING M VERSION ONLY.
           This object retrieves the lower scanning limit from
           NVRAM or set new limit value in Mhz unit and save to NVRAM.
           A CM reboot will be required for changes to take effect."                       ?"EMC CM RUNNING M VERSION ONLY.
           This object retrieves the upper scanning limit from
           NVRAM or set new limit value in Mhz unit and save to NVRAM.
           A CM reboot will be required for changes to take effect."                      "This object retrieves/sets the QAM16 Preamble flag value
           from/to NVRAM.  If set to TRUE, QAM16
           Preamble mode will be used.   If set to FALSE, QPSK mode will
           be used.  A manual reset will require to take effect if changing
           flag."                      O"This object retrieves/sets the Freq Plan type.
           Set to 0 for NORTH AMERICA, 1 for
           EUROPE and 2 for JAPAN.  A manual reset is required for the 
           changes to take effect.
		Storage:  Permanent and Dynamic Non-Vol
		Modification:  Factory and User Config
		Reset To Factory Defaults:  Dynamic Non-Vol"                       A"This object controls the Upstream Channel ID for cmConfigFreq1."                       &"Acquired offset from carrier center."                       6"This object allows enable/disable of babble control."                       ?"The SNMP HFC port from which to carry out SNMP operation.
          
          This object is not accessible before CM completes registration except
          in factory mode."                       ?"The SNMP TRAP HFC port to which SNMP traps will be sent.
                    
          This object is not accessible before CM completes registration except
          in factory mode."                       w"Change the SNMP and SNMP Trap UDP Port now.  Set to true(1) to
           do the operation.  Always return false(2)."                      s"Flag used to make HTML pages viewable.  Set to True(1) to
           enable the display of HTML pages.  Set to False(2) to disable
           the display of HTML pages.
           For SBG1000 and SBG1000E, this object is always True(1).
		Storage:  Permanent and Dynamic Non-Vol
		Modification:  Factory and User Config
		Reset To Factory Defaults:  Default Value"                      ~"Reset configuration to factory defaults.
           Reboot required for the changes to take effect.

           cmConfigFreq1         = CLEAR
           cmConfigFreq2         = CLEAR
           cmConfigFreq3         = CLEAR 
           cmUpstreamChannelId1  = CLEAR
           cmUpstreamChannelId2  = CLEAR 
           cmUpstreamChannelId3  = CLEAR
           cmUpstreamPower1      = CLEAR
           cmUpstreamPower2      = CLEAR
           cmUpstreamPower3      = CLEAR

           cmDhcpServerEnable = TRUE 
           cmStandbyCapable   = TRUE

           Set to true(1) to do the operation.  Always return false(2)."                      ,"Flag used to indicate the state of standby mode.
           Returns current standby mode of the modem.
           However, if modem does not support the standby button
           then variable always return false.
           
           For SBG1000 and SBG1000E, this object is always 'false'."                      ^"Flag used to indicate the state of hybrid mode
           Set to True(1) to enable hybrid mode
           Set to False(2) to disable hybrid mode.
           For SBG1000 and SBG1000E, this object is always 'false'.
		Storage:  Permanent and Dynamic Non-Vol
		Modification:  Factory and User Config
		Reset To Factory Defaults:  Dynamic Non-Vol"                       A"This object controls the Upstream Channel ID for cmConfigFreq3."                       _"This object controls the initial Upstream Power for cmConfigFreq1
         in units of dbMv."                       _"This object controls the initial Upstream Power for cmConfigFreq2
         in units of dbMv."                       _"This object controls the initial Upstream Power for cmConfigFreq3
         in units of dbMv."                      ?"This object is used to enable DOCSIS 2.0 ATDMA operation mode.  
             Set to True(1) to enable DOCSIS 2.0 ATDMA operation mode.  
             Set to False(2) to disable DOCSIS 2.0 ATDMA operation mode.
             This object is not accessible before CM completes registration except
             in factory mode.
		Storage:  Permanent and Dynamic Non-Vol
		Modification:  Factory User Config
		Reset To Factory Defaults:  Dynamic Non-Vol"                       A"This object controls the Upstream Channel ID for cmConfigFreq2."                      O"This object is used to enable/disable whether the standby button does anything.

           If the CM is currently in standby mode, SNMP sets of cmStandbyCapable to FALSE will
           will be rejected from a Management Station but will be accepted from a config file 
           TLV11.    

           There are no restrictions on setting cmStandbyCapable to TRUE

           Setting to TRUE(1) causes the standby button to behave normally.
           Setting to FALSE(2) causes presses to the standby button to be ignored and forces
           the unit into non-standby mode."                      "This object is used to specify a customer-specific channel scan plan.
           Currently only the following IRC-offset scan plans are supported:
           IRC+1, IRC+2, IRC+3, IRC+4, IRC+5, IRC-2, IRC-1. Setting this
           object to 1 selects IRC+1, setting it to 2 selects IRC+2, and so on.
           The IRC range is (114-858 MHz) and IRC+N refers to an IRC scan plan 
           offset by N MHz so IRC+2 refers to a scan plan with a frequency range
           of (116-860 MHz). This object is set to 0 if no customer-specific 
           channel scan plan is specified. This is the default setting for this
           MIB object. An SNMP Set of this object must be followed by a manual
           reset of the device for the new value to take effect."                       ?"This object is used by SB5101/E to ignore TFTP response from a wrong SUN box interface 
           and allows to register when CMTS is connected to a global loop with multiple interfaces
           It should be set to FALSE by default."                      ?"Setting this value to True(1) causes the modem to perform a full reset on a 
           T4 Timeout condition.  Setting this value to False(2) will only perform a 
           re-initialize MAC on a T4 Timeout condition.  Setting this value to True(1) 
           could potentially cause a loss of service on devices with LAN and Telephony support.  
           This value should be stored in non-volatile memory and set to a value of False(2) 
           on a Reset To Factory Defaults."                           ?"Table of login and session information
         
         Only one entry is allowed for now.
         
          This table is not accessible before CM completes registration except
          in factory mode."                       x"Each entry stores login and session information for a user. 
         Only alphanumeric value is allowed for User ID."                       K"User id.
         This object must be maintained in non-volatile memory."                       ?"Password for this user.  
         When read, this object MUST return a zero length string.
         This object must be maintained in non-volatile memory."                      ?"Enable/disable inactivity timeout period for this session.  
         If this object is set to 'true', cmConfigGuiSessionInactivityTimeout will take effect.
         If this object is set to 'false', cmConfigGuiSessionInactivityTimeout will be ignored.
         This object must be maintained in non-volatile memory.     
         
         NOTE: This object is read-only for initial implementation."                      "Inactivity timeout period for this session.  
         If this object is set to zero, there is no timeout for this session.
         This object must be maintained in non-volatile memory.
         
         NOTE: This object is read-only for initial implementation."                       B"Controls the creation and modification of entries in this table."                       ?"This object is used to control GUI access on the HFC interface. 
          When this object is set to true(1) the GUI is accessible on the 
          HFC address.  This variable should be stored in NV Ram."                      2"This object is used to control GUI access on the LAN interface. 
          When this object is set to true(1) the GUI is accessible on the 
          LAN addresses. This controls access to both the diagnostic and the 
          LAN Side NAT router addresses.  This variable should be stored in NV Ram."                      "This object is used to control GUI access on the WAN-MAN interface. 
          When this object is set to true(1) the GUI is accessible on the 
          WAN-MAN address if the device is in NAPT mode.  This variable should 
          be stored in NV Ram."                      ^"If this is set to true the GUI will show '802.11g only' 
         as an option for wireless operation modes.
         
         This mode is for WiFi testing and correlates to the 
         'Basic Rate Set#2'  It is similiar to '802.11b/g Standard'
         mode in that it uses g protection and normal slot times, however
         it does not allow 802.11b stations to associate.  
         This is opposed to 11g enhanced mode which uses short slot 
         times and may not be compatible with all g hardware.  
         Short slot times is an option in the 802.11g specification.
         "                          v"This object controls the mode that the gateway device operates in.  
         
         If set to cableHome(1), the device operates as a DOCSIS compliant CM 
         with an embedded CableHome-compliant Portal Services Device.
         
         If set to gateway(2), the device operates as a DOCSIS compliant CM 
         with Gateway features that are the same as or similar to
         many of the CableHome features, plus additional Motorola proprietary Gateway features.
         
         If set to docsis(3), the device operates as a DOCSIS compliant CM with a Print Server.
          
         The device MUST automatically reset when this value is changed.
                    
         This object must be maintained in non-volatile memory.
         
          This object is not accessible before CM completes registration except
          in factory mode."                          ?"This object is used to enable the RIP feature of the gateway product.
              When the feature is disabled, the RIP feature will be disable, the Router 
              and CPR Config Download pages will be hidden and MIB will be unavailable. 
              After setting it, reboot the modem is required in order to see the associated 
              page displays or hides properly.
              The default is false"                       ?"This object is used to enable the SMP (aka Heartbeat) feature 
              of the gateway product.
              When the feature is disabled the feature's GUI and MIB will be 
              unavailable. The default is false"                      ?"This object is used to enable the Wireless Registration 
              Detect (WRD) feature of the gateway product.
              When the feature is enabled the wireless interface will 
              be enabled upon WAN connection and disabled upon losing 
              the WAN connection. This can be used for public networks 
              such as hospitality networks to insure clients are only 
              associated with access points that have WAN connectivity."                      ?"This object is only applicable if cmconfigGwRIPFeatureEnable is enabled.
              When this object is set to true, it will enable the Time Warner's Customer 
              Premise Router (CPR) Config Download GUI page and disable the Router 
              Configuration page and vice versa. 
              After setting it, reboot the modem is required in order to see the associated 
              page displays or hides properly.
              The default is false"                      +"This object is only applicable if cmconfigGwRIPFeatureEnable is enabled.
              If set to '0', the RIP Configuration File Download GUI page is disabled.
              If set to '1', the RIP Configuration File Download GUI page is enabled.
              If set to '2', hide both the Router and RIP Configuration File Download GUI pages.
               
              Reboot modem is required after setting in order to see the associated 
              page displays or hides properly.
              
              The default is enabled(1)"                      "This object is to enable/disable the capability to hard reset to default 
          from the switch on the back panel of the modem.
          Set to true(1) to disable hard reset to default, set to false(2) to enable it.
          The default value is false"                          "This value is queried by the Test/Calibration station and 
             has a length of 9 bytes. It consists of Protocol Version 
             (1 byte; value of 0x01) and Device Transaction ID (8 bytes; 
             value from random number generator)."                      $"This value is set by the Test/Calibration station and has four 
             components. It consists of Protocol Version (1 byte; value of 
             0x01), Host Transaction ID (8 bytes), Signature (128 bytes) and 
             Certificate (X.509 Certificate format; variable length)."                               ?"Enables/disables TurboDox operation.  This MIB object may only be set via 
          the configuration file.  Default value is TRUE."                       ?"Changes the TCP session delete timeout value.  This MIB object may only be 
          set via the configuration file.  Default value is 15."                       ?"Changes the TCP slow start timeout value.  This MIB object may only be 
          set via the configuration file.  Default value is 10."                       ?"The value of this object is TurboDox version value.
           If TurboDox feature is not implemented, this object empty instance
           (NULL)."                      ?"All TurboDox objects are read-only while CM is Operational.
           TurboDox parameters can not be changed in run-time. Configuration
           file SNMP settings are only permitted for parametrs modifications.

           This object remove all ports from Aplicatioin level Filter. By
           default all TCP ports are involved into TurboDox processing. After
           appling set to this object to True the selected filters may be
           added using modemCmTurboDoxAddPort object.
           Set to true(1) to reset all Port Filters.
           Set to False(2) do nothing. Always return False(2).
           If TurboDox feature is not implemented, this object has not instance
           (NULL)."                      ?"All TurboDox objects are read-only while CM is Operational.
           TurboDox parameters can not be changed in run-time. Configuration
           file SNMP settings are only permitted for parametrs modifications.

           By default all TCP ports are involved into TurboDox processing.
           After appling set to modemCmTurboRemoveAllPorts object to True
           the selected filters may be added using this object.
           Return last added port.
           If any set was not executed since reboot read value will be 0.
           If TurboDox feature is not implemented, this object has not instance
           (NULL)."                      "This object is used to Enable MSO features for field deployment.
            Set to true(1) to enable MSO features.
            Set to false(2) to disable MSO features.
            This value is also stored into NV and will be operational after
            next reboot."                      0"This object is used to disable the packet cable application.
            Set to true(1) to disable the packetcable application.
            Set to false(2) to to enable the packetcable application.
            This value is also stored into NV and will be operational after
            next reboot."                               j"The Base Compliance class defines those features
            that must be supported by all CM products."                 ?"The Standby Compliance class defines those objects
            that must be supported by all CM products that
            employ a Standby switch."                 ?"The Hybrid Compliance group defines those objects
            that must be supported by all CM products that
            support EuroDOCSIS."                 ?"The DOCSIS 2.0 Compliance group defines those 
            objects that must be supported by all CM products
            that support DOCSIS 2.0."                 ?"The Gateway Compliance group defines those objects
            that must be supported by all CM products that
            support Gateway functionality."                 ?"The TurboDOX Compliance group defines those objects
            that must be supported by all CM products based on
            a TI Chipset that support TurboDOX."                 ?"The Extended Channel Compliance group defines those objects
            that support the storage of extended channel information."                     X"The compliance statement for the Motorola Private 
        Configuration MIB objects."   i"Implementation of this grouping is only Mandatory on CM
        products that employ a standby switch." W"Implementation of this grouping is only Mandatory on
        EuroDOCSIS CM products." _"Implementation of this grouping is only Mandatory on
        DOCSIS 2.0 capable CM products." T"Implementation of this grouping is only Mandatory on
        Gateway CM products." n"Implementation of this grouping is only Mandatory on TI-
        based   CM products that support TurboDOX." q"Implementation of this grouping is only Mandatory on the
        SB4220, SB5100, SB5120, and Gateway products."                