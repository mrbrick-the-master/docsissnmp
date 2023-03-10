    V"This TC describes an object that counts events with the
        following semantics: objects of this type will be set to
        zero(0) on creation and will thereafter count appropriate
        events, wrapping back to zero(0) when the value 2^32 is
        reached.

        Provided that an application discovers the new object within
        the minimum time to wrap, it can use the initial value as a
        delta since it last polled the table of which this object is
        part.  It is important for a management station to be aware of
        this minimum time and the actual time between polls, and to
        discard data if the actual time is too long or there is no
        defined minimum time.

        Typically, this TC is used in tables where the INDEX space is
        constantly changing and/or the TimeFilter mechanism is in use."                                                                                                            #"This is the MIB Module for DOCSIS-compliant cable modems



             and cable-modem termination systems.

             Copyright (C) The IETF Trust (2006).  This version
             of this MIB module was published in RFC 4639; for full
             legal notices see the RFC itself."|"        Rich Woundy
             Postal: Comcast Cable
                     27 Industrial Avenue
                     Chelmsford, MA 01824 U.S.A.
             Phone:  +1 978 244 4010
             E-mail: richard_woundy@cable.comcast.com

                     Kevin Marez
             Postal: Motorola Corporation
                     6450 Sequence Drive
                     San Diego, CA 92121 U.S.A.
             Phone:  +1 858 404 3785
             E-mail: kevin.marez@motorola.com

             IETF IPCDN Working Group
             General Discussion: ipcdn@ietf.org
             Subscribe: http://www.ietf.org/mailman/listinfo/ipcdn
             Archive: ftp://ftp.ietf.org/ietf-mail-archive/ipcdn
             Co-chairs: Richard Woundy,
                        richard_woundy@cable.comcast.com
                        Jean-Francois Mule,
                        jf.mule@cablelabs.com" "200612200000Z" "199908190000Z"k"Second version, published as RFC 4639.

             Modifications to this MIB module since RFC 2669 include:
             - Deprecation of the docsDevFilter group in favor of the
               DiffServ MIB groups, to enable support for IPv6
               filtering and DiffServ Code Point (DSCP) marking.
             - Deprecation of the docsDevCpeGroup in favor of the
               docsDevCpeInetGroup, to enable support of IPv6.
             - Addition of various InetAddress objects to enable
               support of IPv6.
             - Deprecation of docsDevNmAccessTable in favor of SNMP
               Coexistence and SNMPv3 -- yet adding
               docsDevNmAccessTrapVersion and clarifying
               docsDevNmAccessIp for current use of this table,
             - Addition of docsDevIgmpModeControl for management and
               control of the IGMP mode of operation,
             - Addition of docsDevMaxCpe for management of the
               maxmium number of CPEs permitted access through a
               cable modem,
             - Addition of docsDevSwServerTransportProtocol, and
               modifications to docsDevSoftware object DESCRIPTIONS,
               to enable software downloads via either TFTP or HTTP,
             - Replacement of docsDevEvThrottleInhibited with
               docsDevEvThrottleThresholdExceeded to simplify
               event threshold management,
             - Modification of docsDevEvReporting to enable local
               logging to the internal volatile log, and not to the
               internal non-volatile log,
             - Modification of the compliance statement to make the
               docsDevCpe objects optional
             - Created placeholders for two OIDs in the
               docsDevFilterPolicyTable that were never used
             - Modified the DESCRIPTION of
               docsDevSwServerTransportProtocol and
               docsDevSwServerAddressType to address the
               dependence between each object
             - Added a reference to docsDevServerConfigTftpAddress
             - Clarified the scope of notifications that are covered
               by docsDevEvThrottleThreshold
             - Clarified an error condition that could occur when



               doing a SET to docsDevEvReporting
             - Defined each of the enumerated types for both
               docsDevEvLevel and docsDevEvPriority
             - Added UNITS clause to docsDevFilterLLCMatches,
               docsDevFilterIpMatches, docsDevMaxCpe,
               docsDevEvThrottleThreshold and docsDevEvCounts.
             - Added REFERENCE clause to docsDevFilterIpProtocol
             - Modified DESCRIPTION of docsDevCpeInetAddr to be
               more protocol-neutral
             - Removed the enumerated value (1) from both
               docsDevCpeInetSource and docsDevCpeSource
             - Covered additional read-write and read-create objects
               in the Security Considerations section
             - Modified the default value of docsDevNmAccessIpMask
               to be consistent with OSSI specification
             - Modified the SYNTAX of docsDevNmAccessCommunity and
               docsDevNmAccessInterfaces in the Conformance
               Statement section
             - Added SYNTAX clause to docsDevEvReporting in the
               Conformance Statement section
             - Modified SYNTAX clause of docsDevEvReporting to
               move new enumerated type to byte boundary
             - Added references to DOCSIS 2.0 specifications to
               multiple objects
             - Clarified non-persistency across reboots for
               all tables
             - Clarified functionality of docsDevSw objects as
               they relate to docsDevSwOperStatus
             - Clarified enumerated types (9) and (10) for
               docsDevServerBootState
             - Defined the state of unknown(0) for the following
               objects:  docsDevServerDhcpAddressType,
               docsDevServerTimeAddressType,
               docsDevServerConfigTftpAddressType and
               docsDevServerConfigTftpAddressType
             - Modified the value in docsDevFilterIpDaddr to be
               consistent with the SYNTAX
             - Specified which rows could be modified in an
               active row for docsDevFilterPolicyStatus
             - Defined the term 'manually' in docsDevCpeEnroll
             - Clarified the description for
               docsDevFilterTosOrMask
             - Covered the case of a non-existent row for
               docsDevFilterPolicyPtr
             - Added DEFVAL clauses for multiple objects
             - Replaced docsDevNotification OBJECT IDENTIFIER
               with docsDevNotifications to address possible
               compatibility issues



             - Added support for the usage of RFC 3413 and RFC 3014
               as event notification mechanisms
             - Removed docsDevFilterPolicyObsoleteGroup
             - Added stdInterface(9) type to docsDevEvReporting to
               support the usage of RFC3413 and RFC3014
             - Modified DESCRIPTION for docsDevMaxCpe" )"Initial version, published as RFC 2669."       -- December 20, 2006
              ?"Defines the current role of this device.  cm(1) is a
             Cable Modem, cmtsActive(2) is a Cable Modem Termination
             System that is controlling the system of cable modems,
             and cmtsBackup(3) is a CMTS that is currently connected
             but is not controlling the system (not currently used).

             In general, if this device is a 'cm', its role will not
             change during operation or between reboots.  If the
             device is a 'cmts' it may change between cmtsActive and
             cmtsBackup and back again during normal operation.  NB:
             At this time, the DOCSIS standards do not support the
             concept of a backup CMTS, but cmtsBackup is included for
             completeness."                      ?"The current date and time, with time zone information
             (if known).

             If the real data and time cannot be determined, this
             shall represent elapsed time from boot relative to
             the standard epoch '1970-1-1,0:0:0.0'.  In other
             words, if this agent has been up for 3 minutes and
             not been able to determine what the actual date and
             time are, this object will return the value
             '1970-1-1,0:03:0.0'."                       w"Setting this object to true(1) causes the device to
             reset.  Reading this object always returns false(2)."                       3"The manufacturer's serial number for this device."                      s"This object controls operation of the spanning tree
             protocol (as distinguished from transparent bridging).

             If set to stEnabled(1), then the spanning tree protocol
             is enabled, subject to bridging constraints.



             If noStFilterBpdu(2), then spanning tree is not active,
             and Bridge PDUs received are discarded.

             If noStPassBpdu(3), then spanning tree is not active,
             and Bridge PDUs are transparently forwarded.

             Note that a device need not implement all of these
             options, but that noStFilterBpdu(2) is required."                      %"This object controls the IGMP mode of operation for
             the CM or CMTS.  In passive mode, the device forwards
             IGMP between interfaces as based on knowledge of
             Multicast Session activity on the subscriber side
             interface and the rules defined in the DOCSIS RFI
             specification.  In active mode, the device terminates
             at and initiates IGMP through its interfaces as based
             on the knowledge of Multicast Session activity on the
             subscriber side interface." l"DOCSIS RFI 1.1 Specification, Section 3.3.1. and
             DOCSIS RFI 2.0 Specification, Section 5.3.1."                    V"The maximum number of CPEs that can be granted access
             through a CM during a CM epoch.  This value can be
             obtained from the CM configuration file; however,
             it may be adjusted by the CM according to hardware or
             software limitations that have been imposed on the
             implementation." ?"DOCSIS RFI 1.0 Specification, Appendix C.7.20., and



             DOCSIS RFI 1.1 Specification, Appendix C.1.1.7. and
             DOCSIS RFI 2.0 Specification, Appendix C.1.1.7."                    "This table controls access to SNMP objects by network
             management stations.  If the table is empty, access to
             SNMP objects is unrestricted.  The objects in this table
             MUST NOT persist across reboots.  The objects in this
             table are only accessible from cable devices that are
             not capable of operating in SNMP Coexistence mode
             (RFC 3584) or in SNMPv3 mode (RFC 3410).
             See the conformance section for
             details.  Note that some devices are required by other
             specifications (e.g., the DOCSIS OSSIv1.1 specification)
             to support the legacy SNMPv1/v2c docsDevNmAccess mode
             for backward compatibility.

             This table is deprecated.  Instead, use the SNMP
             coexistence MIBs from RFC 3584, the TARGET and
             NOTIFICATION MIBs from RFC 3413, and
             the View-Based Access Control Model (VACM) MIBs for
             all SNMP protocol versions from RFC 3415."                      ?"An entry describing access to SNMP objects by a
             particular network management station.  An entry in
             this table is not readable unless the management station
             has read-write permission (either implicit if the table
             is empty, or explicit through an entry in this table).
             Entries are ordered by docsDevNmAccessIndex.  The first



             matching entry (e.g., matching IP address and community
             string) is used to derive access."                       E"Index used to order the application of access
             entries."                      v"The IP address (or subnet) of the network management
             station.  The address 0.0.0.0 is defined to mean
             any Network Management Station (NMS).  If traps are
             enabled for this entry, then the value must be the
             address of a specific device.  Implementations MAY
             recognize 255.255.255.255 as equivalent to 0.0.0.0."                       ?"The IP subnet mask of the network management stations.
             If traps are enabled for this entry, then the value must
             be 0.0.0.0.  Implementations MAY recognize
             255.255.255.255 as equivalent to 0.0.0.0."                       ?"The community string to be matched for access by this
             entry.  If set to a zero-length string, then any
             community string will match.  When read, this object
             SHOULD return a zero-length string."                      ?"Specifies the type of access allowed to this NMS.
             Setting this object to none(1) causes the table entry
             to be destroyed.  Read(2) allows access by 'get' and
             'get-next' PDUs.  ReadWrite(3) allows access by 'set' as
             well.  RoWithtraps(4), rwWithTraps(5), and trapsOnly(6)
             control distribution of Trap PDUs transmitted by this
             device."                      ?"Specifies the set of interfaces from which requests from
             this NMS will be accepted.  Each octet within
             the value of this object specifies a set of eight



             interfaces, the first octet specifying ports 1
             through 8, the second octet specifying interfaces 9
             through 16, etc.  Within each octet, the most
             significant bit represents the lowest numbered
             interface, and the least significant bit represents the
             highest numbered interface.  Thus, each interface is
             represented by a single bit within the value of this
             object.  If that bit has a value of '1' then that
             interface is included in the set.

             Note that entries in this table apply only to link-layer
             interfaces (e.g., Ethernet and CATV MAC).  Bits
             representing upstream and downstream channel interfaces
             MUST NOT be set to '1'.

             Note that if bits corresponding to non-existing
             interfaces are set, the result is implementation
             specific.

             Note that according to the DOCSIS OSSIv1.1
             specification, when ifIndex '1' is included in the
             set, then this row applies to all CPE
             (customer-facing) interfaces.

             The size of this object is the minimum required to
             represent all configured interfaces for this device."                      O"Controls and reflects the status of rows in this
             table.  Rows in this table may be created by either the
             create-and-go or create-and-wait paradigm.  There is no
             restriction on changing values in a row of this table
             while the row is active.

             The following objects MUST have valid values before this
             object can be set to active: docsDevNmAccessIp,
             docsDevNmAccessStatus, docsDevNmAccessIpMask,
             docsDevNmAccessCommunity, docsDevNmAccessControl, and
             docsDevNmAccessInterfaces."                      B"Specifies the TRAP version that is sent to this NMS.
             Setting this object to disableSNMPv2trap (1) causes the
             trap in SNMPv1 format to be sent to a particular NMS.
             Setting this object to enableSNMPv2trap (2) causes the
             trap in SNMPv2 format be sent to a particular NMS."                          k"The address of the TFTP server used for software
             upgrades.  If the TFTP server is unknown or is a
             non-IPv4 address, return 0.0.0.0.

             This object is deprecated.  See docsDevSwServerAddress
             for its replacement.  This object will have its value
             modified, given a valid SET to docsDevSwServerAddress."                      "The filename of the software image to be downloaded via
             TFTP, or the abs_path (as defined in RFC 2616) of the
             software image to be downloaded via HTTP.

             Unless set via SNMP, this is the filename or abs_path
             specified by the provisioning server during the boot
             process that corresponds to the software version that



             is desired for this device.

             If unknown, the value of this object is the zero-length
             string."                      ?"If set to upgradeFromMgt(1), the device will initiate a
             TFTP or HTTP software image download.  After
             successfully receiving an image, the device will set
             its state to ignoreProvisioningUpgrade(3) and reboot.
             If the download process is interrupted (e.g., by a reset
             or power failure), the device will load the previous
             image and, after re-initialization, continue to attempt
             loading the image specified in docsDevSwFilename.

             If set to allowProvisioningUpgrade(2), the device will
             use the software version information supplied by the
             provisioning server when next rebooting (this does not
             cause a reboot).

             When set to ignoreProvisioningUpgrade(3), the device
             will disregard software image upgrade information
             from the provisioning server.

             Note that reading this object can return
             upgradeFromMgt(1).  This indicates that a software
             download is currently in progress, and that the device
             will reboot after successfully receiving an image."                      ?"InProgress(1) indicates that a TFTP or HTTP download is
             underway, either as a result of a version mismatch at
             provisioning or as a result of a upgradeFromMgt request.
             No other docsDevSw* objects can be modified in
             this state.

             CompleteFromProvisioning(2) indicates that the last
             software upgrade was a result of version mismatch at
             provisioning.

             CompleteFromMgt(3) indicates that the last software
             upgrade was a result of setting docsDevSwAdminStatus to
             upgradeFromMgt.

             Failed(4) indicates that the last attempted download
             failed, ordinarily due to TFTP or HTTP timeout." ?"DOCSIS RFI 1.0 Specification, Section 8.2., and
             DOCSIS RFI 1.1 Specification, Section 10.1. and
             DOCSIS RFI 2.0 Specification, Section 12.1."                    U"The software version currently operating in this device.
             This string's syntax is that used by the
             individual vendor to identify software versions.
             For a CM, this string will describe the current
             software load.  For a CMTS, this object SHOULD contain
             a human-readable representation either of the vendor
             specific designation of the software for the chassis,
             or of the software for the control processor.  If
             neither of these is applicable, the value MUST be a
             zero-length string."                      "The type of address of the TFTP or HTTP server used for



             software upgrades.

             If docsDevSwServerTransportProtocol is currently set to
             tftp(1), attempting to set this object to dns(16) MUST
             result in an error."                      "The address of the TFTP or HTTP server used for software
             upgrades.

             If the TFTP/HTTP server is unknown, return the zero-
             length address string (see the TextualConvention).

             If docsDevSwServer is also implemented in this agent,
             this object is tied to it.  A set of this object to an
             IPv4 address will result in also setting the value of
             docsDevSwServer to that address.  If this object is set
             to an IPv6 address, docsDevSwServer is set to 0.0.0.0.
             If docsDevSwServer is set, this object is also set to
             that value.  Note that if both are set in the same
             action, the order of which one sets the other is
             undefined."                      "This object specifies the transport protocol (TFTP or
             HTTP) to be used for software upgrades.

             If the value of this object is tftp(1), then the cable
             device uses TFTP (RFC 1350) read request packets to
             download the docsDevSwFilename from the
             docsDevSwServerAddress in octet mode.

             If the value of this object is http(2), then the cable
             device uses HTTP 1.0 (RFC 1945) or HTTP 1.1 (RFC 2616)
             GET requests sent to host docsDevSwServerAddress to



             download the software image from path docsDevSwFilename.

             If docsDevSwServerAddressType is currently set to
             dns(16), attempting to set this object to tftp(1) MUST
             result in an error."                          )"If operational(1), the device has completed loading and
             processing of configuration parameters, and the CMTS has
             completed the Registration exchange.

             If disabled(2), then the device was administratively
             disabled, possibly by being refused network access in
             the configuration file.

             If waitingForDhcpOffer(3), then a Dynamic Host
             Configuration Protocol (DHCP) Discover has been
             transmitted, and no offer has yet been received.

             If waitingForDhcpResponse(4), then a DHCP Request has
             been transmitted, and no response has yet been received.

             If waitingForTimeServer(5), then a Time Request has been
             transmitted, and no response has yet been received.



             If waitingForTftp(6), then a request to the TFTP
             parameter server has been made, and no response
             received.

             If refusedByCmts(7), then the Registration
             Request/Response exchange with the CMTS failed.

             If forwardingDenied(8), then the registration process
             was completed, but the network access option in the
             received configuration file prohibits forwarding.

             If other(9), then the registration process reached a
             point that does not fall into one of the above
             categories.

             If unknown(10), then the device has not yet begun the
             registration process or is in some other indeterminate
             state." ?"DOCSIS RFI 1.0 Specification, Figure 7-1, and
             DOCSIS RFI 1.1 Specification, Figure 9-1 and
             DOCSIS RFI 2.0 Specification, Figure 11-1."                    J"The IP address of the DHCP server that assigned an IP
             address to this device.  Returns 0.0.0.0 if DHCP is not
             used for IP address assignment, or if this agent is
             not assigned an IPv4 address.

             This object is deprecated and is replaced by
             docsDevServerDhcpAddress."                      "The IP address of the Time server (RFC 0868).  Returns
             0.0.0.0 if the time server IP address is unknown, or if
             the time server is not an IPv4 server.

             This object is deprecated and is replaced by



             docsDevServerTimeAddress."                      Z"The IP address of the TFTP server responsible for
             downloading provisioning and configuration parameters
             to this device.  Returns 0.0.0.0 if the TFTP server
             address is unknown or is not an IPv4 address.

             This object is deprecated and is replaced by
             docsDevServerConfigTftpAddress."                       ?"The name of the device configuration file read from
             the TFTP server.  Returns a zero-length string if
             the configuration file name is unknown."                       ?"The type of address of docsDevServerDhcpAddress.  If
             DHCP was not used, this value should return
             unknown(0)."                       ?"The internet address of the DHCP server that assigned
             an IP address to this device.  Returns the zero length
             octet string if DHCP was not used for IP address
             assignment."                       ?"The type of address of docsDevServerTimeAddress.  If
             no time server exists, this value should return
             unknown(0)."                      +"The Internet address of the RFC 868 Time server,
             as provided by DHCP option 4.

             Note that if multiple values are provided to the
             CM in DHCP option 4, the value of this MIB object
             MUST be the Time server address from which the Time
             of Day reference was acquired as based on the DOCSIS
             RFI specification.  During the period of time where
             the Time of Day have not been acquired, the Time
             server address reported by the CM may report the
             first address value in the DHCP option value or the
             last server address the CM attempted to get the Time
             of day value.

             Returns the zero-length octet string if the time server
             IP address is not provisioned." m"DOCSIS RFI 1.1 Specification, Section 9.2.7. and
             DOCSIS RFI 2.0 Specification, Section 11.2.7."                     ?"The type of address of docsDevServerConfigTftpAddress.
             If no TFTP server exists, this value should return
             unknown(0)."                      G"The internet address of the TFTP server responsible for
             downloading provisioning and configuration parameters
             to this device.  Returns the zero-length octet string if
             the config server address is unknown.  There are certain
             security risks that are involved with using TFTP." "RFC 3617, Section 5"                        ("Setting this object to resetLog(1) empties the event
             log.  All data is deleted.  Setting it to
             useDefaultReporting(2) returns all event priorities to
             their factory-default reporting.  Reading this object
             always returns useDefaultReporting(2)."                      "The IP address of the Syslog server.  If 0.0.0.0, either
             syslog transmission is inhibited, or the Syslog server
             address is not an IPv4 address.

             This object is deprecated and is replaced by
             docsDevEvSyslogAddress."                      ?"Controls the transmission of traps and syslog messages
             with respect to the trap pacing threshold.

             unconstrained(1) causes traps and syslog messages to be
             transmitted without regard to the threshold settings.

             maintainBelowThreshold(2) causes trap transmission and
             syslog messages to be suppressed if the number of traps
             would otherwise exceed the threshold.

             stopAtThreshold(3) causes trap transmission to cease at
             the threshold and not to resume until directed to do so.

             inhibited(4) causes all trap transmission and syslog
             messages to be suppressed.

             A single event is always treated as a single event for
             threshold counting.  That is, an event causing both a
             trap and a syslog message is still treated as a single
             event.

             Writing to this object resets the thresholding state."                      ?"If true(1), trap and syslog transmission is currently
             inhibited due to thresholds and/or the current setting
             of docsDevEvThrottleAdminStatus.  In addition, this is
             true(1) when transmission is inhibited because no
             syslog (docsDevEvSyslog) or trap (docsDevNmAccessEntry)
             destinations have been set.

             This object is deprecated and is replaced by
             docsDevEvThrottleThresholdExceeded."                      ?"Number of events per docsDevEvThrottleInterval permitted
             before throttling is to occur.

             A single event, whether the notification could result in
             messages transmitted using syslog, SNMP, or both
             protocols, and regardless of the number of destinations,
             (including zero) is always treated as a single event for
             threshold counting.  For example, an event causing both
             a trap and a syslog message is still treated as a single
             event.

             All system notifications that occur within the device
             should be taken into consideration when calculating
             and monitoring the threshold."                       J"The interval over which docsDevEvThrottleThreshold
             applies."                      "This table allows control of the reporting of event
             classes.  For each event priority, a combination of



             logging and reporting mechanisms may be chosen.  The
             mapping of event types to priorities is
             vendor dependent.  Vendors may also choose to allow
             the user to control that mapping through proprietary
             means.  Table entries MUST persist across reboots for
             CMTS devices and MUST NOT persist across reboots for CM
             devices."                       `"Allows configuration of the reporting mechanisms for a
             particular event priority."                      S"The priority level that is controlled by this
             entry.  These are ordered from most (emergency) to least
             (debug) critical.  Each event with a CM or CMTS has a
             particular priority level associated with it (as defined
             by the vendor).

             emergency(1) events indicate vendor-specific fatal
             hardware or software errors that prevent normal system
             operation.




             alert(2) events indicate a serious failure that causes
             the reporting system to reboot but is not caused by
             hardware or software malfunctioning.

             critical(3) events indicate a serious failure that
             requires attention and prevents the device from
             transmitting data but that could be recovered without
             rebooting the system.

             error(4) and warning(5) events indicate that a failure
             occurred that could interrupt the normal data flow but
             that does not cause the device to re-register.

             notice(6) and information(7) events indicate a
             milestone or checkpoint in normal operation that could
             be of particular importance for troubleshooting.

             debug(8) events are reserved for vendor-specific
             events.

             During normal operation, no event more
             critical than notice(6) should be generated.  Events
             between warning and emergency should be generated at
             appropriate levels of problems (e.g., emergency when the
             box is about to crash)."                      Z"Defines the action to be taken on occurrence of this
             event class.  Implementations may not necessarily
             support all options for all event classes but at
             minimum must allow traps and syslogging to be
             disabled.




             If the local(0) bit is set, then log to the internal
             log and update non-volatile store, for backward
             compatibility with the original RFC 2669 definition.
             If the traps(1) bit is set, then generate
             an SNMP trap; if the syslog(2) bit is set, then
             send a syslog message (assuming that the syslog address
             is set).  If the localVolatile(8) bit is set, then
             log to the internal log without updating non-volatile
             store.  If the stdInterface(9) bit is set, then the
             agent ignores all other bits except the local(0),
             syslog(2), and localVolatile(8) bits.  Setting the
             stdInterface(9) bit indicates that RFC3413 and
             RFC3014 are being used to control event reporting
             mechanisms."                       ?"Contains a log of network and device events that may be
             of interest in fault isolation and troubleshooting.
             If the local(0) bit is set in docsDevEvReporting,
             entries in this table MUST persist across reboots."                      "Describes a network or device event that may be of
             interest in fault isolation and troubleshooting.
             Multiple sequential identical events are represented by
             incrementing docsDevEvCounts and setting
             docsDevEvLastTime to the current time rather than
             creating multiple rows.

             Entries are created with the first occurrence of an
             event.  docsDevEvControl can be used to clear the
             table.  Individual events cannot be deleted."                      ?"Provides relative ordering of the objects in the event
             log.  This object will always increase except when
             (a) the log is reset via docsDevEvControl,
             (b) the device reboots and does not implement
             non-volatile storage for this log, or (c) it reaches
             the value 2^31.  The next entry for all the above
             cases is 1."                       O"The value of docsDevDateTime at the time this entry was
             created."                      Y"When an entry reports only one event, this object will
             have the same value as the corresponding instance of
             docsDevEvFirstTime.  When an entry reports multiple
             events, this object will record the value that
             docsDevDateTime had when the most recent event for this
             entry occurred."                       ?"The number of consecutive event instances reported by
             this entry.  This starts at 1 with the creation of this
             row and increments by 1 for each subsequent duplicate
             event."                      ?"The priority level of this event, as defined by the
             vendor.  These are ordered from most serious (emergency)
             to least serious (debug).

             emergency(1) events indicate vendor-specific fatal
             hardware or software errors that prevent normal system
             operation.

             alert(2) events indicate a serious failure that causes
             the reporting system to reboot but that is not caused by
             hardware or software malfunctioning.

             critical(3) events indicate a serious failure that
             requires attention and prevents the device from
             transmitting data but that could be recovered without
             rebooting the system.

             error(4) and warning(5) events indicate that a failure
             occurred that could interrupt the normal data flow but
             that does not cause the device to re-register.

             notice(6) and information(7) events indicate a
             milestone or checkpoint in normal operation that could
             be of particular importance for troubleshooting.

             debug(8) events are reserved for vendor-specific



             events.

             During normal operation, no event more
             critical than notice(6) should be generated.  Events
             between warning and emergency should be generated at
             appropriate levels of problems (e.g., emergency when the
             box is about to crash)."                       f"For this product, uniquely identifies the type of event
             that is reported by this entry." d"DOCSIS OSSI 1.1 Specification, Appendix H and
             DOCSIS OSSI 2.0 Specification, Annex D."                     ?"Provides a human-readable description of the event,
             including all relevant context (interface numbers,
             etc.)."                       ?"The type of address of docsDevEvSyslogAddress.  If
             no syslog server exists, this value should return
             unknown(0)."                      K"The Internet address of the Syslog server, as provided
             by DHCP option 7 or set via SNMP management.  If the
             address of the server is set to the zero-length
             string, the 0.0.0.0 IPv4 address, or the 0: IPv6
             address, Syslog transmission is inhibited.

             Note that if multiple values are provided to the CM in
             DHCP option 7, the value of this MIB object MUST be the
             first Syslog server address received.

             By default at agent boot, this object returns the zero
             length string."                       ?"If true(1), trap and syslog transmission is currently
             inhibited due to exceeding the trap/syslog event
             threshold in the current interval."                          ?"LLC (Link Level Control) filters can be defined on an
             inclusive or exclusive basis: CMs can be configured to
             forward only packets matching a set of layer three
             protocols, or to drop packets matching a set of layer
             three protocols.  Typical use of these filters is to



             filter out possibly harmful (given the context of a
             large metropolitan LAN) protocols.

             If set to discard(1), any L2 packet that does not match
             at least one filter in the docsDevFilterLLCTable will be
             discarded.  If set to accept(2), any L2 packet that
             does not match at least one filter in the
             docsDevFilterLLCTable will be accepted for further
             processing (e.g., bridging).  In other words, if the
             packet does not match an entry in the table, it takes
             this action; if it does match an entry in the table, it
             takes the opposite of this action."                      "A list of filters to apply to (bridged) LLC
             traffic.  The filters in this table are applied to
             incoming traffic on the appropriate interface(s)  prior
             to any further processing (e.g., before the packet
             is handed off for level 3 processing, or for bridging).
             The specific action taken when no filter is matched is
             controlled by docsDevFilterLLCUnmatchedAction.  Table
             entries MUST NOT persist across reboots for any device."                       n"Describes a single filter to apply to (bridged) LLC
             traffic received on a specified interface. "                       g"Index used for the identification of filters (note that
             LLC filter order is irrelevant)."                      A"Controls and reflects the status of rows in this
             table.  There is no restriction on changing any of the
             associated columns for this row while this object is set
             to active.

             Specifying only this object (with the
             appropriate index) on a CM is sufficient to create a
             filter row that matches all inbound packets on the
             ethernet interface and results in the packets being
             discarded.  docsDevFilterLLCIfIndex (at least) must be
             specified on a CMTS to create a row."                      s"The entry interface to which this filter applies.  The
             value corresponds to ifIndex for either a CATV MAC or
             another network interface.  If the value is zero, the
             filter applies to all interfaces.  In Cable Modems, the
             default value is the customer side interface(s).  In
             CMTSs, this object has to be specified to
             create a row in this table.

             Note that according to the DOCSIS OSSIv1.1
             specification, ifIndex '1' in the CM means that this
             row applies to all Cable Modem-to-CPE Interfaces
             (CMCI)." r"DOCSIS OSSI 1.1 Specification, Section 3.3.4.1. and
             DOCSIS OSSI 2.0 Specification, Section 6.3.4.1."                    !"The format of the value in docsDevFilterLLCProtocol:
             either a two-byte Ethernet Ethertype, or a one-byte
             802.2 Service Access Point (SAP) value.  ethertype(1)
             also applies to Standard Network Access Protocol
             (SNAP) encapsulated frames."                      ("The layer-three protocol for which this filter applies.
             The protocol value format depends on
             docsDevFilterLLCProtocolType.  Note that for SNAP
             frames, ethertype filtering is performed rather than
             Destination Service Access Point (DSAP) =0xAA."                       5"Counts the number of times this filter was matched."                      ?"The default behavior for (bridged) packets that do not
             match IP filters (or Internet filters, if implemented)
             is defined by docsDevFilterIpDefault.

             If set to discard(1), all packets not matching an IP
             filter in docsDevFilterIpTable will be discarded.  If
             set to accept(2), all packets not matching an IP filter
             or an Internet filter will be accepted for further
             processing (e.g., bridging)."                      <"An ordered list of filters or classifiers to apply to
             IP traffic.  Filter application is ordered by the filter
             index, rather than by a best match algorithm (note that
             this implies that the filter table may have gaps in the
             index values).  Packets that match no filters will have
             policy 0 in the docsDevFilterPolicyTable applied to
             them, if it exists.  Otherwise, Packets that match no
             filters are discarded or forwarded according to the
             setting of docsDevFilterIpDefault.

             Any IP packet can theoretically match multiple rows of
             this table.  When considering a packet, the table is
             scanned in row index order (e.g., filter 10 is checked
             before filter 20).  If the packet matches that filter
             (which means that it matches ALL criteria for that row),
             actions appropriate to docsDevFilterIpControl and
             docsDevFilterPolicyId are taken.  If the packet was
             discarded processing is complete.  If
             docsDevFilterIpContinue is set to true, the filter
             comparison continues with the next row in the table,
             looking for additional matches.

             If the packet matches no filter in the table, the packet
             is accepted or dropped for further processing
             according to the setting of docsDevFilterIpDefault.
             If the packet is accepted, the actions specified by
             policy group 0 (e.g., the rows in
             docsDevFilterPolicyTable that have a value of 0 for
             docsDevFilterPolicyId) are taken, if that policy



             group exists.

             Logically, this table is consulted twice during the
             processing of any IP packet: once upon its acceptance
             from the L2 entity, and once upon its transmission to
             the L2 entity.  In actuality, for cable modems, IP
             filtering is generally the only IP processing done for
             transit traffic.  This means that inbound and outbound
             filtering can generally be done at the same time with
             one pass through the filter table.

             The objects in this table are only accessible from cable
             devices that are not operating in DiffServ MIB mode
             (RFC 3289).  See the conformance section for details.

             Note that some devices are required by other
             specifications (e.g., the DOCSIS OSSIv1.1 specification)
             to support the legacy SNMPv1/v2c docsDevFilter mode
             for backward compatibility.

             Table entries MUST NOT persist across reboots for any
             device.

             This table is deprecated.  Instead, use the DiffServ MIB
             from RFC 3289."                      ?"Describes a filter to apply to IP traffic received on a
             specified interface.  All identity objects in this table
             (e.g., source and destination address/mask, protocol,
             source/dest port, TOS/mask, interface and direction)
             must match their respective fields in the packet for
             any given filter to match.

             To create an entry in this table, docsDevFilterIpIfIndex
             must be specified."                       ?"Index used to order the application of filters.
             The filter with the lowest index is always applied
             first."                      ?"Controls and reflects the status of rows in this
             table.  Specifying only this object (with the
             appropriate index) on a CM is sufficient to create a
             filter row that matches all inbound packets on the
             ethernet interface and results in the packets being
             discarded.  docsDevFilterIpIfIndex (at least) must be
             specified on a CMTS to create a row.  Creation of the
             rows may be done via either create-and-wait or
             create-and-go, but the filter is not applied until this
             object is set to (or changes to) active.  There is no
             restriction in changing any object in a row while this
             object is set to active."                      ?"If set to discard(1), all packets matching this filter
             will be discarded, and scanning of the remainder of the
             filter list will be aborted.  If set to accept(2), all
             packets matching this filter will be accepted for
             further processing (e.g., bridging).  If
             docsDevFilterIpContinue is set to true, see if there
             are other matches; otherwise, done.  If set to
             policy (3), execute the policy entries
             matched by docsDevFilterIpPolicyId in
             docsDevFilterPolicyTable.

             If docsDevFilterIpContinue is set to true, continue
             scanning the table for other matches; otherwise, done."                      ?"The entry interface to which this filter applies.  The
             value corresponds to ifIndex for either a CATV MAC or
             another interface.  If the value is zero, the
             filter applies to all interfaces.  Default value in CMs
             is the index of the customer-side (e.g., ethernet)
             interface(s).  In CMTSes, this object MUST be
             specified to create a row in this table.

             Note that according to the DOCSIS OSSIv1.1
             specification, ifIndex '1' in the Cable Modem means
             that this row applies to all CMCI (customer-facing)
             interfaces." r"DOCSIS OSSI 1.1 Specification, Section 3.3.4.1. and
             DOCSIS OSSI 2.0 Specification, Section 6.3.4.1."                     ?"Determines whether the filter is applied to inbound(1)
             traffic, outbound(2) traffic, or traffic in both(3)
             directions."                       ?"If set to true(1), the filter only applies to multicast
             and broadcast traffic.  If set to false(2), the filter
             applies to all traffic."                      @"The source IP address, or portion thereof, that is to be
             matched for this filter.  The source address is first
             masked (ANDed) against docsDevFilterIpSmask before
             being compared to this value.  A value of 0 for this
             object and 0 for the mask matches all IP addresses."                       ?"A bit mask that is to be applied to the source address
             prior to matching.  This mask is not necessarily the
             same as a subnet mask, but 1s bits must be leftmost and
             contiguous."                      e"The destination IP address, or portion thereof, that is
             to be matched for this filter.  The destination address
             is first masked (ANDed) against docsDevFilterIpDmask
             before being compared to this value.  A value of
             00000000 for this object and 00000000 for the mask
             matches all IP addresses."                       ?"A bit mask that is to be applied to the destination
             address prior to matching.  This mask is not necessarily
             the same as a subnet mask, but 1s bits MUST be leftmost
             and contiguous."                       ?"The IP protocol value that is to be matched.  For
             example, icmp is 1, tcp is 6, and udp is 17.  A value of
             256 matches ANY protocol." +"www.iana.org/assignments/protocol-numbers"                     ?"This is the inclusive lower bound of the transport-layer
             source port range that is to be matched.  If the IP
             protocol of the packet is neither UDP nor TCP, this



             object is ignored during matching." '"www.iana.org/assignments/port-numbers"                     ?"This is the inclusive upper bound of the transport-layer
             source port range that is to be matched.  If the IP
             protocol of the packet is neither UDP nor TCP, this
             object is ignored during matching." '"www.iana.org/assignments/port-numbers"                     ?"This is the inclusive lower bound of the transport-layer
             destination port range that is to be matched.  If the IP
             protocol of the packet is neither UDP nor TCP, this
             object is ignored during matching." '"www.iana.org/assignments/port-numbers"                     ?"This is the inclusive upper bound of the transport-layer
             destination port range that is to be matched.  If the IP
             protocol of the packet is neither UDP nor TCP, this
             object is ignored during matching." '"www.iana.org/assignments/port-numbers"                     ?"Counts the number of times this filter was matched.
             This object is initialized to 0 at boot, or at row
             creation, and is reset only upon reboot."                       ?"This is the value to be matched to the packet's
             TOS (Type of Service) value (after the TOS value
             is ANDed with docsDevFilterIpTosMask).  A value for this
             object of 0 and a mask of 0 matches all TOS values."                       P"The mask to be applied to the packet's TOS value before
             matching."                       ?"If this value is set to true and docsDevFilterIpControl
             is anything but discard (1), continue scanning and
             applying policies.  See Section 3.3.3 for more
             details."                      ?"This object points to an entry in
             docsDevFilterPolicyTable.  If docsDevFilterIpControl



             is set to policy (3), execute all matching policies
             in docsDevFilterPolicyTable.  If no matching policy
             exists, treat as if docsDevFilterIpControl were set
             to accept (1).  If this object is set to the value of
             0, there is no matching policy, and
             docsDevFilterPolicyTable MUST NOT be consulted."                      ?"A Table that maps between a policy group ID and a set
             of pointers to policies to be applied.  All rows with
             the same docsDevFilterPolicyId are part of the same
             group of policy pointers and are applied in the order
             in this table.  docsDevFilterPolicyTable exists to
             allow multiple policy actions (referenced by policy
             pointers) to be applied to any given classified packet.
             The policy actions are applied in index order.
             For example:

             Index   ID    Type    Action
              1      1      TOS     1
              9      5      TOS     1
              12     1      IPSEC   3

             This says that a packet that matches a filter with
             policy id 1 first has TOS policy 1 applied (which might
             set the TOS bits to enable a higher priority) and next
             has the IPSEC policy 3 applied (which may result in the
             packets being dumped into a secure VPN to a remote
             encryptor).

             Policy ID 0 is reserved for default actions and is
             applied only to packets that match no filters in
             docsDevFilterIpTable.

             Table entries MUST NOT persist across reboots for any
             device.

             This table is deprecated.  Instead, use the DiffServ MIB



             from RFC 3289."                       ?"An entry in the docsDevFilterPolicyTable.  Entries are
             created by Network Management.  To create an entry,
             docsDevFilterPolicyId MUST be specified."                       "Index value for the table."                      k"Policy ID for this entry.  If a policy ID can apply to
             multiple rows of this table, all relevant policies are
             executed.  Policy 0 (if populated) is applied to all
             packets that do not match any of the filters.  N.B. If
             docsDevFilterIpPolicyId is set to 0, it DOES NOT match
             policy 0 of this table."                      /"Object used to create an entry in this table.  There is
             no restriction in changing any object in a row while
             this object is set to active.
             The following object MUST have a valid value before this
             object can be set to active:  docsDevFilterPolicyPtr."                      G"This object points to a row in an applicable filter
             policy table.  Currently, the only standard policy
             table is docsDevFilterTosTable.

             Per the textual convention, this object points to the
             first accessible object in the row; e.g., to point to a
             row in docsDevFilterTosTable with an index of 21, the
             value of this object would be the object identifier
             docsDevTosStatus.21.

             Vendors are recommended to adhere to the same convention
             when adding vendor-specific policy table extensions.

             If this pointer references an empty or non-existent
             row, then no policy action is taken.

             The default upon row creation is a null pointer that
             results in no policy action being taken."                      ?"Table used to describe Type of Service (TOS) bits



             processing.

             This table is an adjunct to the docsDevFilterIpTable
             and the docsDevFilterPolicy table.  Entries in the
             latter table can point to specific rows in this (and
             other) tables and cause specific actions to be taken.
             This table permits the manipulation of the value of the
             Type of Service bits in the IP header of the matched
             packet as follows:

             Set the tosBits of the packet to
                (tosBits & docsDevFilterTosAndMask) |
                docsDevFilterTosOrMask

             This construct allows you to do a clear and set of all
             the TOS bits in a flexible manner.

             Table entries MUST NOT persist across reboots for any
             device.

             This table is deprecated.  Instead, use the DiffServ MIB
             from RFC 3289."                       "A TOS policy entry."                       ?"The unique index for this row.  There are no ordering
             requirements for this table, and any valid index may be
             specified."                      ?"The object used to create and delete entries in this
             table.  A row created by specifying just this object
             results in a row that specifies no change to the TOS
             bits.  A row may be created using either the
             create-and-go or create-and-wait paradigms.  There is
             no restriction on the ability to change values in this
             row while the row is active."                       N"This value is bitwise ANDed with the matched packet's
             TOS bits."                       ?"This value is bitwise ORed with the result from the
             AND procedure (tosBits & docsDevFilterTosAndMask).
             The result then replaces the packet's TOS bits."                          ?"This object controls the population of
             docsDevFilterCpeTable.
             If set to none, the filters must be set manually
             by a network management action (either configuration
             or SNMP set).
             If set to any, the CM wiretaps the packets originating
             from the ethernet and enrolls up to docsDevCpeIpMax
             addresses as based on the source IPv4 or v6 addresses of
             those packets."                      "This object controls the maximum number of CPEs allowed
             to be learned behind this device.  If set to zero, any
             number of CPEs may connect up to the maximum permitted
             for the device.
             If set to -1, no filtering is done on CPE source
             addresses, and no entries are made in the
             docsDevFilterCpeTable via learning.  If an attempt is
             made to set this to a number greater than that
             permitted for the device, it is set to that maximum."                      "This table lists the IPv4 addresses seen (or permitted)
             as source addresses in packets originating from the
             customer interface on this device.  In addition, this
             table can be provisioned with the specific addresses
             permitted for the CPEs via the normal row creation
             mechanisms.  Table entries MUST NOT persist across
             reboots for any device.

             N.B.  Management action can add entries in this table
             and in docsDevCpeIpTable past the value of



             docsDevCpeIpMax.  docsDevCpeIpMax ONLY restricts the
             ability of the CM to add learned addresses
             automatically.

             This table is deprecated and is replaced by
             docsDevCpeInetTable."                      ?"An entry in the docsDevFilterCpeTable.  There is one
             entry for each IPv4 CPE seen or provisioned.  If
             docsDevCpeIpMax is set to -1, this table is ignored;
             otherwise, upon receipt of an IP packet from the
             customer interface of the CM, the source IP address is
             checked against this table.  If the address is in the
             table, packet processing continues.  If the address is
             not in the table but docsDevCpeEnroll is set to any
             and the sum of the table sizes of docsDevCpeTable and
             docsDevCpeInetTable is less than docsDevCpeIpMax, the
             address is added to the table, and packet processing
             continues.  Otherwise, the packet is dropped.

             The filtering actions specified by this table occur
             after any LLC filtering (docsDevFilterLLCTable), but
             prior to any IP filtering (docsDevFilterIpTable,
             docsDevNmAccessTable)."                       ?"The IPv4 address to which this entry applies.

             N.B.  Attempts to set all zeros or all ones address
             values MUST be rejected."                      ?"This object describes how this entry was created.  If
             the value is manual(2), this row was created by a
             network management action (either configuration or
             SNMP set).  If set to learned(3), then it was found via
             looking at the source IPv4 address of a received packet.
             The value other(1) is used for any entries that do not
             meet manual(2) or learned(3) criteria."                       ?"Standard object to manipulate rows.  To create a row in
             this table, one only needs to specify this object.
             Management stations SHOULD use the create-and-go
             mechanism for creating rows in this table."                      1"This table lists the IP addresses seen (or permitted) as
             source addresses in packets originating from the
             customer interface on this device.  In addition, this
             table can be provisioned with the specific addresses
             permitted for the CPEs via the normal row creation
             mechanisms.



             N.B.  Management action can add entries in this table
             and in docsDevCpeIpTable past the value of
             docsDevCpeIpMax.  docsDevCpeIpMax ONLY restricts the
             ability of the CM to add learned addresses
             automatically.

             Table entries MUST NOT persist across reboots for any
             device.

             This table exactly mirrors docsDevCpeTable and applies
             to IPv4 and IPv6 addresses."                      Y"An entry in the docsDevFilterCpeInetTable.  There is one
             entry for each IP CPE seen or provisioned.  If
             docsDevCpeIpMax is set to -1, this table is ignored;
             otherwise, upon receipt of an IP packet from the
             customer interface of the CM, the source IP address is
             checked against this table.  If the address is in the
             table, packet processing continues.  If the address is
             not in the table but docsDevCpeEnroll is set to any and
             the sum of the table sizes for docsDevCpeTable and
             docsDevCpeInetTable is less than docsDevCpeIpMax, the
             address is added to the table, and packet processing
             continues.  Otherwise, the packet is dropped.

             The filtering actions specified by this table occur
             after any LLC filtering (docsDevFilterLLCTable), but
             prior to any IP filtering (docsDevFilterIpTable,
             docsDevNmAccessTable).

             When an agent (cable modem) restarts, then all
             dynamically created rows are lost."                       5"The type of internet address of docsDevCpeInetAddr."                      ?"The Internet address to which this entry applies.

             Implementors need to be aware that if the size of
             docsDevCpeInetAddr exceeds 114 octets OIDs of
             instances of columns in this row will have more
             than 128 sub-identifiers and cannot be accessed
             using SNMPv1, SNMPv2c, or SNMPv3.  Only unicast
             address are allowed for this object."                      L"This object describes how this entry was created.  If
             the value is manual(2), this row was created by a
             network management action (either configuration or
             SNMP set).  If set to learned(3), then it was found
             via looking at the source IP address of a received
             packet."                       ?"Standard object to manipulate rows.  To create a row in
             this table, one only needs to specify this object.
             Management stations SHOULD use the create-and-go
             mechanism for creating rows in this table."                                       K"A collection of objects providing device status and
             control."                 ?"A collection of objects for controlling access to SNMP
             objects on cable devices.

             This group has been deprecated because all the
             objects have been deprecated in favor of SNMPv3 and
             Coexistence MIBs."                ?"A collection of objects for controlling software
             downloads.

             This group has been deprecated and replaced by
             docsDevSoftwareGroupV2.  Object docsDevSwServer
             has been replaced by docsDevSwServerAddressType
             and docsDevSwServerAddress, and
             docsDevSwServerTransportProtocol has been added to
             support TFTP and HTTP firmware downloads."                "A collection of objects providing status about server
             provisioning.

             This group has been deprecated and replaced by
             docsDevServerGroupV2.  The objects docsDevServerDhcp,
             docsDevServerTime, and docsDevServerTftp have
             been replaced by docsDevServerDhcpAddressType,
             docsDevServerDhcpAddress, docsDevServerTimeAddressType,
             docsDevServerTimeAddress,
             docsDevServerConfigTftpAddressType, and
             docsDevServerConfigTftpAddress."                ?"A collection of objects used to control and monitor
             events.

             This group has been deprecated and replaced by
             docsDevEventGroupV2.  The object docsDevEvSyslog has



             been replaced by docsDevEvSyslogAddressType and
             docsDevEvSyslogAddress, and docsDevEvThrottleInhibited
             has been replaced by
             docsDevEvThrottleThresholdExceeded."                 ?"A collection of objects to specify filters at the link
             layer and IPv4 layer.

             This group has been deprecated and replaced by various
             groups from the DiffServ MIB."                ?"A collection of objects used to control the number
             and specific values of IPv4 addresses allowed for
             associated Customer Premises Equipment (CPE).

             This group has been deprecated and replaced by
             docsDevInetCpeGroup.  The object docsDevCpeSource has
             been replaced by docsDevCpeInetSource, and
             docsDevCpeStatus has been replaced by
             docsDevCpeInetRowStatus."                     r"The RFC 2669 compliance statement for MCNS/DOCSIS
             Cable Modems and Cable Modem Termination Systems."   V"Mandatory in Cable Modems, optional in Cable Modem
             Termination Systems." V"Mandatory in Cable Modems, optional in Cable Modem
             Termination Systems." V"Mandatory in Cable Modems, optional in Cable Modem
             Termination Systems."s"This group is only implemented in devices that do not
             implement the SNMPv3 User Security Model.  It SHOULD NOT
             be implemented by devices that conform to SNMPv3.

             For devices that do not implement SNMPv3 or later, this
             group is Mandatory in Cable Modems and is optional
             in Cable Modem Termination Systems." y"This group is implemented only in Cable Modems, and is
             not implemented in Cable Modem Termination Systems." g"This group is Mandatory in Cable Modems and optional in
             Cable Modem Termination Systems." r"This group is Mandatory in Cable Modems, and is
             not implemented in Cable Modem Termination Systems." r"It is compliant to implement this object as read-only.
             Devices need only support noStFilterBpdu(2)." c"It is compliant to recognize the IP address
             255.255.255.255 as referring to any NMS." ?"It is compliant to implement this object as read-only.
              Devices need only support local(0).  An agent need not
              enforce that trap or syslog logging be accompanied
              by local(0) or localVolatile(3) logging."                 H"An object providing cable device IGMP status and
             control."                 s"An object providing management of the maximum number of
             CPEs permitted access through a cable modem."                ?"An object, in addition to the objects in
             docsDevNmAccessGroup, for controlling access to
             SNMP objects on cable devices.

             This group is included in this MIB due to existing
             implementations of docsDevNmAccessTrapVersion in
             DOCSIS cable modems.

             This group has been deprecated because the object has
             been deprecated in favor of SNMPv3 and Coexistence
             MIBs."                 u"A collection of objects for controlling software
             downloads.  This group replaces docsDevSoftwareGroup."                 {"A collection of objects providing status about server
             provisioning.  This group replaces docsDevServerGroup."                8"A collection of objects used to control and monitor
             events.  This group replaces docsDevEventGroup.
             The event reporting mechanism, and more specifically
             docsDevEvReporting, can be used to take advantage of
             the event reporting features of RFC3413 and RFC3014."                 8"A collection of objects to specify link layer filters."                 ?"A collection of objects used to control the number
             and specific values of Internet (e.g., IPv4 and IPv6)
             addresses allowed for associated Customer Premises
             Equipment (CPE)."                     ?"The compliance statement for DOCSIS Cable Modems.

              This compliance statement applies to implementations
              of DOCSIS versions that are not IPv6 capable."   K"Support for createAndWait and notInService is not
              required." K"Support for createAndWait and notInService is not
              required." K"Support for createAndWait and notInService is not
              required." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." K"Support for createAndWait and notInService is not
              required." O"An implementation is only required to support
              volatile storage." O"An implementation is only required to support
              volatile storage." O"An implementation is only required to support
              volatile storage." O"An implementation is only required to support
              volatile storage." O"An implementation is only required to support
              volatile storage." O"An implementation is only required to support
              volatile storage." O"An implementation is only required to support
              volatile storage." ?"This object is only used to provide packet
              filtering.  Implementations need not support other
              values of this enumeration." )"This group is optional in Cable Modems." 8"It is compliant to implement this object as read-only." s"It is compliant to implement this object as read-only.
              Devices need only support noStFilterBpdu(2)." l"It is compliant to implement this object as read-only.
              Devices need only support passive(1)." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." j"It is compliant to implement this object as read-only.
              Devices need only support local(0)." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." \"An implementation is only required to support TFTP
              software image downloads."             ?"The compliance statement for DOCSIS Cable Modem
              Termination Systems.

              This compliance statement applies to implementations
              of DOCSIS versions that are not IPv6 capable."   ."Optional in Cable Modem Termination Systems." ."Optional in Cable Modem Termination Systems." U"This group MUST NOT be implemented in Cable Modem
             Termination Systems." ."Optional in Cable Modem Termination Systems." U"This group MUST NOT be implemented in Cable Modem
             Termination Systems." ."Optional in Cable Modem Termination Systems." ?"This group MUST NOT be implemented in Cable Modem
             Termination Systems.  See the Subscriber Management
             MIB for similar CMTS capability." ?"This group MUST NOT be implemented in Cable Modem
             Termination Systems.  See the Subscriber Management
             MIB for similar CMTS capability." 8"It is compliant to implement this object as read-only." s"It is compliant to implement this object as read-only.
              Devices need only support noStFilterBpdu(2)." l"It is compliant to implement this object as read-only.
              Devices need only support passive(1)." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." j"It is compliant to implement this object as read-only.
              Devices need only support local(0)." M"An implementation is only required to support IPv4
              addresses." M"An implementation is only required to support IPv4
              addresses." \"An implementation is only required to support TFTP
              software image downloads."                