                                                                           W"This module defines proprietary MIB variables for the SURFboard line of cable modems." �"Carolyn Huynh or Tom Beifuss
Postal: 6450 Sequence Dr.
San Diego, CA 92121
Tel: +1 619 404-3503 or 404-2643
Fax: +1 619 404-3480
E-mail: cahuynh@gi.com or tbeifuss@gi.com" "200408160000Z" �"Edited by Kevin Marez
- Revised MIB descriptions to include the following information:
Storage, Modification, Default Value and Reset To Factory behavior. "                   �"This object allows the retrieval of BPI Authorization
        Wait Time out defined in TFTP config.
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI Reauthorization
        Wait Time out defined in TFTP config.
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI Authorization
        Grace Time out defined in TFTP config.
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI Operational
        Wait Time out defined in TFTP config.
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI Rekey
        Wait Time out defined in TFTP config.
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI TEK  
        Grace Time out defined in TFTP config.
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI Authorization
        Reject Wait Time out defined in TFTP config.
        0 value means that it's NOT defined in TFTP Config file."                          '"This object allows to retrieve DS Freq from TFTP
        config file to be used by the CM.  It's an override for the
        channel selected during scanning.  This is the center freq
        of the downstream channel in Hz. 
        0 value means that it's NOT defined in TFTP Config file"                      �"This object allows to retrieve Upstream Channel
        ID from TFTP config file to be used by the CM. The CM MUST
        listen on the defined downstream channel until an upstream
        channel description message with this ID is found. It's an
        override for the channel selected during initialization.
        0 means either it's NOT defined or it's defined and CM has
        to switch to TELCO Mode."                       �"This object allows to retrieve network access  
        control object from TFTP config file.  If the value field is
        a 1 this CM is allowed access to the network;  if a 0 it is not."                      1"This object allows the retrieval of the software upgrade
        filename. The file can have a full directory-path name.  The
        file is expected to reside on a TFTP server identified in a
        configuration setting option.  Blank value means that is NOT
        defined in TFTP config file."                      "This object allows the retrieval of the total number of
        SNMP Write Access Control values defined in TFTP Config file. 
        Since SNMP Write Access Ctrl sizes are undetermined, it can
        grow very large, we don't want to display on SNMP agent."                       �"This object allows the retrieval of the total number of  
        SNMP MIB Control Objects.  Since SNMP MIB control object sizes are 
        undetermined, it can grow very large, we don't want to display 
        on SNMP agent."                       �"This object allows the retrieval of the vendor ID defined
        in TFTP Config file.  It contains the Vendor ID of the sender.
        0 value means that it's NOT defined in TFTP Config file."                      �"This object allows the retrieval of the vendor Specific
        objects defined in TFTP Config file.  This setting MAY appear multiple 
        times and/or the same Vendor ID MAY appear multiple times.
        Configuration with vendor A specific fields
        VSIF(43) + num bytes in VSIF
        8(Vendor ID type) + 3 (len field) + Vendor ID of Vendor A
        Vendor A Specific Type #1 + len of the field + Value #1
        Vendor A Specific Type #2 + len of the field + Value #2."                      ."This object allows the retrieval of the  modem Capabilities
        configuration setting.  It consists of 1 or more set of the
        following TLV Concatenation Support fields.
        Concatenation Support
        ---------------------
        Type  Len   On/Off.
        1     1     1 or 0"                       �"This object allows the retrieval of the Modem IP Address
        defined in TFTP Config file.  It informs the CMTS of the
        provisioned IP address of the cable modem.
        0 value means that it's NOT defined in TFTP Config file."                       m"This objects retrieves the total number of
        CPE Ethernet MAC addresses provided by TFTP config file"                      0"This object allows the retrieval of CPE Ethernet
        MAC addresses.  This object configures the CM with the
        Ethernet MAC address of a CPE device and may be repeated
        to configure any number of CPE device addresses.
        0 value means that it's NOT defined in TFTP Config file."                      Y"This object allows the retrieval of TELCO settings
        defined in TFTP config.  This configuration setting describes
        parameters which are specific to telephone return systems.
        It's composed from a number of encapsulated type/length/value
        fields.
        0 value means that it's NOT defined in TFTP Config file."                      "This object allows the retrieval of SNMP IP Address
        defined in TFTP config.   This is the IP address of the SNMP
        Manager.   The CM uses this address to report a problem with
        the cable network.
        0 value means that it's NOT defined in TFTP Config file."                      "This object allows the retrieval of BPI Max CPEs
        defined in TFTP config. This shows max CPEs that can connect
        through a CM during the time between startup and hard reset
        of the modem.
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI TFTP Server
        Time Stamp in seconds define in TFTP config.   
        0 value means that it's NOT defined in TFTP Config file."                       �"This object allows the retrieval of BPI TFTP Server
        Provisioned Modem Address.
        0 value means that it's NOT defined in TFTP Config file."                       �"Controls whether the SNMP Code download parameters in flash
             are reset.
             Setting to true(1) causes the flash parameters to be reset"                       �"Controls whether the multicast promiscuous mode is enabled.
             Setting to true(1) allows modem to pass multicast traffic without
             filtering.  The default value is false(2)."                      )"Controls whether upstream packet concatenation is enabled. 
             Setting to True(1) enables the concatenation.  The default
             value is True(1).
 		Storage:  Permanent and Dynamic Non-Vol
		Modification:  Factory and User Config
		Reset To Factory Defaults:  Default Value"                      "This table allows to retrieve all parameters
        associated with a class of service (COS).  A single COS   
        configuration setting is used to define the parameters
        for a single service class.  Multiple class definitions use
        multiple class of service."                       �"This is the class of service entry of the
       following parameters: class ID, max DS rate, max US rate,
       US channel priority, min US data rate, max US channel
       transmit burst setting, and COS privacy enable."                      "This object allows the retrieval of the class ID from TFTP
    config file.  The value of the field specifies the identifier for
    the class of service to which the encapsulated string applies.
    0 value means that it's NOT defined in TFTP Config file."                      �"This object allows the retrieval of max DS rate
    from the TFTP config file. 
    For a single SID modem, the value of this field specifies the 
    maximum downstream rate in bits per second that the CMTS is 
    permitted to forward to CPE unicast MAC addresses learned or 
    configured as mapping to the registering modem.
    For a multiple SID modem, the aggregate value of these fields 
    specifies the maximum downstream rate in bits per second that
    the CMTS is permitted to forward to CPE unicast MAC addresses 
    learned or configured as mapping to the registering modem.
    0 value means that it's NOT defined in TFTP Config file."                      ."This object allows the retrieval of the max US
    rate value from the TFTP config file.
    The value of this field specifies the maximum upstream rate in
    bits per second that the CM is permitted to forward to the RF
    network.
    0 value means that it's NOT defined in TFTP Config file."                      Z"This object allows the retrieval of US 
    channel priority value from TFTP config file.
    The value of the field specifies the relative priority assigned 
    to this service class for data transmission in the upstream 
    channel.  Higher numbers indicate higher priority.
    0 value means that it's NOT defined in TFTP Config file."                      ="This object allows the retrieval of the guaranteed minimum
    upstream channel data rate from TFTP config file.
    The value of the field specifies the data rate in bit/sec which
    will be guaranteed to this service class on the upstream channel.
    0 value means that it's NOT defined in TFTP Config file."                      Y"This object allows the retrieval of the max upstream
    channel transmit burst value from the TFTP config file.  
    The value of the field specifies the maximum transmit burst (in bytes)
    which this service class is allowed on the upstream channel.   
    0 value means there is no limit or it's NOT defined in TFTP config
    file."                       �"This object allows the retrieval of Class-of-Service
    privacy enable from TFTP config file.  This configuration 
    setting enables(1)/disables(0) Baseline Privacy on a provisioned
    CoS."                              