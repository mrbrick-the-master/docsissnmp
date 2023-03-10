                                                                                                   k"This is the MIB Module for MCNS-compliant cable modems and
             cable-modem termination systems." ?"        Michael StJohns
             Postal: @Home Network
                     425 Broadway
                     Redwood City, CA 94063
                     U.S.A.
             Phone:  +1 650 569 5368
             E-mail: stjohns@corp.home.net" "9908190000Z" ?"Initial Version, published as RFC 2669.
             Modified by Mike StJohns to add/revise filtering, TOS
             support, software version information objects."       -- August 19, 1999
              "Defines the current role of this device.  cm (1) is
             a Cable Modem, cmtsActive(2) is a Cable Modem Termination
             System which is controlling the system of cable modems,
             and cmtsBackup(3) is a CMTS which is currently connected,
             but not controlling the system (not currently used).

             In general, if this device is a 'cm', its role will not
             change during operation or between reboots.  If the
             device is a 'cmts' it may change between cmtsActive and
             cmtsBackup and back again during normal operation.  NB:
             At this time, the DOCSIS standards do not support the
             concept of a backup CMTS, cmtsBackup is included for
             completeness."                       F"The date and time, with optional timezone
             information."                       w"Setting this object to true(1) causes the device to reset.
             Reading this object always returns false(2)."                       3"The manufacturer's serial number for this device."                      s"This object controls operation of the spanning tree
             protocol (as distinguished from transparent bridging).
             If set to stEnabled(1) then the spanning tree protocol
             is enabled, subject to bridging constraints. If
             noStFilterBpdu(2), then spanning tree is not active,
             and Bridge PDUs received are discarded.
             If noStPassBpdu(3) then spanning tree is not active
             and Bridge PDUs are transparently forwarded. Note that
             a device need not implement all of these options,
             but that noStFilterBpdu(2) is required."                      ?"This table controls access to SNMP objects by network
             management stations. If the table is empty, access
             to SNMP objects is unrestricted.  This table exists only
             on SNMPv1 or v2c agents and does not exist on SNMPv3
             agents. See the conformance section for details.
             Specifically, for v3 agents, the appropriate MIBs and
             security models apply in lieu of this table."                      ?"An entry describing  access to SNMP objects by a
             particular network management station. An entry in
             this table is not readable unless the management station
             has read-write permission (either implicit if the table
             is empty, or explicit through an entry in this table.
             Entries are ordered by docsDevNmAccessIndex.  The first
             matching entry (e.g. matching IP address and community
             string) is used to derive access."                       F"Index used to order the application of access
             entries."                       ?"The IP address (or subnet) of the network management
             station. The address 255.255.255.255 is defined to mean
             any NMS. If traps are enabled for this entry, then the
             value must be the address of a specific device."                       ?"The IP subnet mask of the network management stations.
             If traps are enabled for this entry, then the value must
             be 255.255.255.255."                       ?"The community string to be matched for access by this
             entry. If set to a zero length string then any community
             string will match.  When read, this object SHOULD return
             a zero length string."                      ?"Specifies the type of access allowed to this NMS. Setting
             this object to none(1) causes the table entry to be
             destroyed. Read(2) allows access by 'get' and 'get-next'
             PDUs. ReadWrite(3) allows access by 'set' as well.
             RoWithtraps(4), rwWithTraps(5), and trapsOnly(6)
             control distribution of Trap PDUs transmitted by this
             device."                      ?"Specifies the set of interfaces from which requests from
             this NMS will be accepted.
             Each octet within the value of this object specifies a set
             of eight interfaces, with the first octet specifying ports
             1 through 8, the second octet specifying interfaces 9
             through 16, etc.  Within each octet, the most significant
             bit represents the lowest numbered interface, and the least
             significant bit represents the highest numbered interface.
             Thus, each interface is represented by a single bit within
             the value of this object. If that bit has a value of '1'
             then that interface is included in the set.

             Note that entries in this table apply only to link-layer
             interfaces (e.g., Ethernet and CATV MAC). Upstream and
             downstream channel interfaces must not be specified."                     B--         DEFVAL is the bitmask corresponding to all interfaces
)"Controls and reflects the status of rows in this
             table. Rows in this table may be created by either the
             create-and-go or create-and-wait paradigms.  There is no
             restriction on changing values in a row of this table while
             the row is active."                           y"The address of the TFTP server used for software upgrades.
             If the TFTP server is unknown, return 0.0.0.0."                      F"The file name of the software image to be loaded into this
             device. Unless set via SNMP, this is the file name
             specified by the provisioning server that corresponds to
             the software version that is desired for this device.
             If unknown, the string '(unknown)' is returned."                      $"If set to upgradeFromMgt(1), the device will initiate a
             TFTP software image download using docsDevSwFilename.
             After successfully receiving an image, the device will
             set its state to ignoreProvisioningUpgrade(3) and reboot.
             If the download process is interrupted by a reset or
             power failure, the device will load the previous image
             and, after re-initialization, continue to attempt loading
             the image specified in docsDevSwFilename.

             If set to allowProvisioningUpgrade(2), the device will
             use the software version information supplied by the
             provisioning server when next rebooting (this does not
             cause a reboot).

             When set to ignoreProvisioningUpgrade(3), the device
             will disregard software image upgrade information from the
             provisioning server.

             Note that reading this object can return upgradeFromMgt(1).
             This indicates that a software download is currently in
             progress, and that the device will reboot after
             successfully receiving an image.

             At initial startup, this object has the default value of
             allowProvisioningUpgrade(2)."                      n"InProgress(1) indicates that a TFTP download is underway,
             either as a result of a version mismatch at provisioning
             or as a result of a upgradeFromMgt request.
             CompleteFromProvisioning(2) indicates that the last
             software upgrade was a result of version mismatch at
             provisioning. CompleteFromMgt(3) indicates that the last
             software upgrade was a result of setting
             docsDevSwAdminStatus to upgradeFromMgt.
             Failed(4) indicates that the last attempted download
             failed, ordinarily due to TFTP timeout." x"DOCSIS Radio Frequency Interface Specification, Section
             8.2, Downloading Cable Modem Operating Software."                    Z"The software version currently operating in this device.
             This object should be in the syntax used by the individual
             vendor to identify software versions.  Any CM MUST return a
             string descriptive of the current software load.  For a
             CMTS, this object SHOULD contain either a human readable
             representation of the vendor specific designation of the
             software for the chassis, or of the software for the
             control processor. If neither of these is  applicable,
             this MUST contain an empty string."                          ?"If operational(1), the device has completed loading and
             processing of configuration parameters and the CMTS has
             completed the Registration exchange.
             If disabled(2) then the device was administratively
             disabled, possibly by being refused network access in the
             configuration file.
             If waitingForDhcpOffer(3) then a DHCP Discover has been
             transmitted and no offer has yet been received.
             If waitingForDhcpResponse(4) then a DHCP Request has been
             transmitted and no response has yet been received.
             If waitingForTimeServer(5) then a Time Request has been
             transmitted and no response has yet been received.
             If waitingForTftp(6) then a request to the TFTP parameter
             server has been made and no response received.
             If refusedByCmts(7) then the Registration Request/Response
             exchange with the CMTS failed.
             If forwardingDenied(8) then the registration process
             completed, but the network access option in the received
             configuration file prohibits forwarding. " g"DOCSIS Radio Frequency Interface Specification, Figure
             7-1, CM Initialization Overview."                     ?"The IP address of the DHCP server that assigned an IP
             address to this device. Returns 0.0.0.0 if DHCP was not
             used for IP address assignment."                       v"The IP address of the Time server (RFC-868). Returns
             0.0.0.0 if the time server IP address is unknown."                       ?"The IP address of the TFTP server responsible for
             downloading provisioning and configuration parameters
             to this device. Returns 0.0.0.0 if the TFTP server
             address is unknown."                       ?"The name of the device configuration file read from the
             TFTP server. Returns an empty string if the configuration
             file name is unknown."                          )"Setting this object to resetLog(1) empties the event log.
             All data is deleted. Setting it to useDefaultReporting(2)
             returns all event priorities to their factory-default
             reporting. Reading this object always returns
             useDefaultReporting(2)."                       b"The IP address of the Syslog server. If 0.0.0.0, syslog
             transmission is inhibited."                      4"Controls the transmission of traps and syslog messages
             with respect to the trap pacing threshold.
             unconstrained(1) causes traps and syslog messages to be
             transmitted without regard to the threshold settings.
             maintainBelowThreshold(2) causes trap transmission and
             syslog messages to be suppressed if the number of traps
             would otherwise exceed the threshold.
             stopAtThreshold(3) causes trap transmission to cease
             at the threshold, and not resume until directed to do so.
             inhibited(4) causes all trap transmission and syslog
             messages to be suppressed.

             A single event is always treated as a single event for
             threshold counting. That is, an event causing both a trap
             and a syslog message is still treated as a single event.

             Writing to this object resets the thresholding state.

             At initial startup, this object has a default value of
             unconstrained(1)."                      v"If true(1), trap and syslog transmission is currently
             inhibited due to thresholds and/or the current setting of
             docsDevEvThrottleAdminStatus. In addition, this is set to
             true(1) if transmission is inhibited due to no
             syslog (docsDevEvSyslog) or trap (docsDevNmAccessEntry)
             destinations having been set."                      ?"Number of trap/syslog events per docsDevEvThrottleInterval
             to be transmitted before throttling.

             A single event is always treated as a single event for
             threshold counting. That is, an event causing both a trap
             and a syslog message is still treated as a single event.

             At initial startup, this object returns 0."                       u"The interval over which the trap threshold applies.
             At initial startup, this object has a value of 1."                      `"This table allows control of the reporting of event classes.
        For each event priority, a combination of logging and
        reporting mechanisms may be chosen. The mapping of event types
        to priorities is vendor-dependent. Vendors may also choose to
        allow the user to control that mapping through proprietary
        means."                       a"Allows configuration of the reporting mechanisms for a
             particular event priority."                      5"The priority level that is controlled by this
             entry. These are ordered from most (emergency) to least
             (debug) critical.  Each event with a CM or CMTS has a
             particular priority level associated with it (as defined
             by the vendor). During normal operation no event more
             critical than notice(6) should be generated. Events between
             warning and emergency should be generated at appropriate
             levels of problems (e.g. emergency when the box is about to
             crash)."                      ?"Defines the action to be taken on occurrence of this
             event class. Implementations may not necessarily support
             all options for all event classes, but at minimum must
             allow traps and syslogging to be disabled. If the
             local(0) bit is set, then log to the internal log, if the
             traps(1) bit is set, then generate a trap, if the
             syslog(2) bit is set, then send a syslog message
             (assuming the syslog address is set)."                       {"Contains a log of network and device events that may be
             of interest in fault isolation and troubleshooting."                      "Describes a network or device event that may be of
             interest in fault isolation and troubleshooting. Multiple
             sequential identical events are represented by
             incrementing docsDevEvCounts and setting
             docsDevEvLastTime to the current time rather than creating
             multiple rows.

             Entries are created with the first occurrance of an event.
             docsDevEvControl can be used to clear the table.
             Individual events can not be deleted."                      {"Provides relative ordering of the objects in the event
             log. This object will always increase except when
             (a) the log is reset via docsDevEvControl,
             (b) the device reboots and does not implement non-volatile
             storage for this log, or (c) it reaches the value 2^31.
             The next entry for all the above cases is 1."                       '"The time that this entry was created."                       ?"If multiple events are reported via the same entry, the
             time that the last event for this entry occurred,
             otherwise this should have the same value as
             docsDevEvFirstTime. "                       ?"The number of consecutive event instances reported by
             this entry.  This starts at 1 with the creation of this
             row and increments by 1 for each subsequent duplicate
             event."                       ?"The priority level of this event as defined by the
             vendor.  These are ordered from most serious (emergency)
             to least serious (debug)."                       g"For this product, uniquely identifies the type of event
             that is reported by this entry."                       ?"Provides a human-readable description of the event,
             including all relevant context (interface numbers,
             etc.)."                          g"LLC (Link Level Control) filters can be defined on an
             inclusive or exclusive basis: CMs can be configured to
             forward only packets matching a set of layer three
             protocols, or to drop packets matching a set of layer
             three protocols.  Typical use of these filters is to
             filter out possibly harmful (given the context of a large
             metropolitan LAN) protocols.

             If set to discard(1), any L2 packet which does not match at
             least one filter in the docsDevFilterLLCTable will be
             discarded. If set to accept(2), any L2 packet which does not
             match at least one filter in the docsDevFilterLLCTable
             will be accepted for further processing (e.g., bridging).
             At initial system startup, this object returns accept(2)."                      ?"A list of filters to apply to (bridged) LLC
             traffic. The filters in this table are applied to
             incoming traffic on the appropriate interface(s)  prior
             to any further processing (e.g. before handing the packet
             off for level 3 processing, or for bridging).  The
             specific action taken when no filter is matched is
             controlled by docsDevFilterLLCUnmatchedAction."                       o"Describes a single filter to apply to (bridged) LLC traffic
             received on a specified interface. "                       h"Index used for the identification of filters (note that LLC
             filter order is irrelevant)."                       ?"Controls and reflects the status of rows in this
             table. There is no restriction on changing any of the
             associated columns for this row while this object is set
             to active."                      ?"The entry interface to which this filter applies.
             The value corresponds to ifIndex for either a CATV MAC
             or another network interface. If the value is zero, the
             filter applies to all interfaces. In Cable Modems, the
             default value is the customer side interface. In Cable
             Modem Termination Systems, this object has to be
             specified to create a row in this table."                       ?"The format of the value in docsDevFilterLLCProtocol:
             either a two-byte Ethernet Ethertype, or a one-byte
             802.2 SAP value. EtherType(1) also applies to SNAP-
             encapsulated frames."                       ?"The layer three protocol for which this filter applies.
             The protocol value format depends on
             docsDevFilterLLCProtocolType. Note that for SNAP frames,
             etherType filtering is performed rather than DSAP=0xAA."                       5"Counts the number of times this filter was matched."                      7"If set to discard(1), all packets not matching an IP filter
             will be discarded. If set to accept(2), all packets not
             matching an IP filter will be accepted for further
             processing (e.g., bridging).
             At initial system startup, this object returns accept(2)."                      ?"An ordered list of filters or classifiers to apply to
             IP traffic. Filter application is ordered by the filter
             index, rather than by a best match algorithm (Note that
             this implies that the filter table may have gaps in the
             index values). Packets which match no filters will have
             policy 0 in the docsDevFilterPolicyTable applied to them if
             it exists. Otherwise, Packets which match no filters
             are discarded or forwarded according to the setting of
             docsDevFilterIpDefault.

             Any IP packet can theoretically match multiple rows of
             this table.  When considering a packet, the table is
             scanned in row index order (e.g. filter 10 is checked
             before filter 20).  If the packet matches that filter
             (which means that it matches ALL criteria for that row),
             actions appropriate to docsDevFilterIpControl and
             docsDevFilterPolicyId are taken.  If the packet was
             discarded processing is complete.  If
             docsDevFilterIpContinue is set to true, the filter
             comparison continues with the next row in the table
             looking for additional matches.

             If the packet matches no filter in the table, the packet
             is accepted or dropped for further processing based on
             the setting of docsDevFilterIpDefault. If the packet is
             accepted, the actions specified by policy group 0
             (e.g. the rows in docsDevFilterPolicyTable which have a
             value of 0 for docsDevFilterPolicyId) are taken if that
             policy group exists.

             Logically, this table is consulted twice during the
             processing of any IP packet - once upon its acceptance
             from the L2 entity, and once upon its transmission to the
             L2 entity.  In actuality, for cable modems, IP filtering
             is generally the only IP processing done for transit
             traffic.  This means that inbound and outbound filtering
             can generally be done at the same time with one pass
             through the filter table."                      ?"Describes a filter to apply to IP traffic received on a
             specified interface.  All identity objects in this table
             (e.g. source and destination address/mask, protocol,
             source/dest port, TOS/mask, interface and direction) must
             match their respective fields in the packet for any given
             filter to match.

             To create an entry in this table, docsDevFilterIpIfIndex
             must be specified."                       ?"Index used to order the application of filters.
             The filter with the lowest index is always applied
             first."                      ?"Controls and reflects the status of rows in this
             table. Specifying only this object (with the appropriate
             index) on a CM is sufficient to create a filter row which
             matches all inbound packets on the ethernet interface,
             and results in the packets being
             discarded. docsDevFilterIpIfIndex (at least) must be
             specified on a CMTS to create a row.  Creation of the
             rows may be done via either create-and-wait or
             create-and-go, but the filter is not applied until this
             object is set to (or changes to) active. There is no
             restriction in changing any object in a row while this
             object is set to active."                      ?"If set to discard(1), all packets matching this filter
             will be discarded and scanning of the remainder of the
             filter list will be aborted. If set to accept(2), all
             packets matching this filter will be accepted for further
             processing (e.g., bridging). If docsDevFilterIpContinue
             is set to true, see if there are other matches, otherwise
             done. If set to policy (3), execute the policy entries
             matched by docsDevIpFilterPolicyId in
             docsDevIpFilterPolicyTable.

             If is docsDevFilterIpContinue is set to true, continue
             scanning the table for other matches, otherwise done."                      ?"The entry interface to which this filter applies. The
             value corresponds to ifIndex for either a CATV MAC or
             another network interface. If the value is zero, the
             filter applies to all interfaces. Default value in Cable
             Modems is the index of the customer-side (e.g. ethernet)
             interface. In Cable Modem Termination Systems, this
             object MUST be specified to create a row in this table."                       ?"Determines whether the filter is applied to inbound(1)
             traffic, outbound(2) traffic, or traffic in both(3)
             directions."                       ?"If set to true(1), the filter only applies to multicast
             and broadcast traffic. If set to false(2), the filter
             applies to all traffic."                      F"The source IP address, or portion thereof, that is to be
             matched for this filter.  The source address is first
             masked (and'ed) against docsDevFilterIpSmask before being
             compared  to this value.  A value of 0 for this object
             and 0 for the mask matches all IP addresses."                       ?"A bit mask that is to be applied to the source address
             prior to matching. This mask is not necessarily the same
             as a subnet mask, but 1's bits must be leftmost and
             contiguous."                      O"The destination IP address, or portion thereof, that is
             to be matched for this filter. The destination address is
             first masked (and'ed) against docsDevFilterIpDmask before
             being compared  to this value.  A value of 0 for this
             object and 0 for the mask matches all IP addresses."                       ?"A bit mask that is to be applied to the destination
             address prior to matching. This mask is not necessarily
             the same as a subnet mask, but 1's bits must be leftmost
             and contiguous."                       ?"The IP protocol value that is to be matched. For example:
             icmp is 1, tcp is 6, udp is 17. A value of 256 matches
             ANY protocol."                       ?"If docsDevFilterIpProtocol is udp or tcp, this is the
             inclusive lower bound of the transport-layer source port
             range that is to be matched, otherwise it is ignored
             during matching."                       ?"If docsDevFilterIpProtocol is udp or tcp, this is the
             inclusive upper bound of the transport-layer source port
             range that is to be matched, otherwise it is ignored
             during matching."                       ?"If docsDevFilterIpProtocol is udp or tcp, this is the
             inclusive lower bound of the transport-layer destination
             port range that is to be matched, otherwise it is ignored
             during matching."                       ?"If docsDevFilterIpProtocol is udp or tcp, this is the
             inclusive upper bound of the transport-layer destination
             port range that is to be matched, otherwise it is ignored
             during matching."                       ?"Counts the number of times this filter was matched.
             This object is initialized to 0 at boot, or at row
             creation, and is reset only upon reboot."                       ?"This is the value to be matched to the packet's
             TOS (Type of Service) value (after the TOS value
             is AND'd with docsDevFilterIpTosMask).  A value for this
             object of 0 and a mask of 0 matches all TOS values."                       Q"The mask to be applied to the packet's TOS value before
             matching."                       ?"If this value is set to true, and docsDevFilterIpControl
             is anything but discard (1), continue scanning and
             applying policies."                      ?"This object points to an entry in docsDevFilterPolicyTable.
             If docsDevFilterIpControl is set to policy (3), execute
             all matching policies in docsDevFilterPolicyTable.
             If no matching policy exists, treat as if
             docsDevFilterIpControl were set to accept (1).
             If this object is set to the value of 0, there is no
             matching policy, and docsDevFilterPolicyTable MUST NOT be
             consulted."                      ?"A Table which maps between a policy group ID and a set of
             policies to be applied.  All rows with the same
             docsDevFilterPolicyId are part of the same policy group
             and are applied in the order in which they are in this
             table.

             docsDevFilterPolicyTable exists to allow multiple policy
             actions to be applied to any given classified packet. The
             policy actions are applied in index order For example:

             Index   ID    Type    Action
              1      1      TOS     1
              9      5      TOS     1
              12     1      IPSEC   3

             This says that a packet which matches a filter with
             policy id 1, first has TOS policy 1 applied (which might
             set the TOS bits to enable a higher priority), and next
             has the IPSEC policy 3 applied (which may result in the
             packet being dumped into a secure VPN to a remote
             encryptor).

             Policy ID 0 is reserved for default actions and is
             applied only to packets which match no filters in
             docsDevIpFilterTable."                       ?"An entry in the docsDevFilterPolicyTable. Entries are
             created by Network Management. To create an entry,
             docsDevFilterPolicyId and docsDevFilterPolicyAction
             must be specified."                       "Index value for the table."                      q"Policy ID for this entry. A policy ID can apply to
              multiple rows of this table, all relevant policies are
              executed. Policy 0 (if populated) is applied to all
              packets which do not match any of the filters. N.B. If
              docsDevFilterIpPolicyId is set to 0, it DOES NOT match
              policy 0 of this table. "                       /"Object used to create an entry in this table."                      ?"This object points to a row in an applicable filter policy
             table.  Currently, the only standard policy table is
             docsDevFilterTosTable. Per the textual convention, this
             object points to the first accessible object in the row.
             E.g. to point to a row in docsDevFilterTosTable with an
             index of 21, the value of this object would be the object
             identifier docsDevTosStatus.21.

             Vendors must adhere to the same convention when adding
             vendor specific policy table extensions.

             The default upon row creation is a null pointer which
             results in no policy action being taken."                      -"Table used to describe Type of Service (TOS) bits
             processing.

             This table is an adjunct to the docsDevFilterIpTable, and
             the docsDevFilterPolicy table.  Entries in the latter
             table can point to specific rows in this (and other)
             tables and cause specific actions to be taken.  This table
             permits the manipulation of the value of the Type of
             Service bits in the IP header of the matched packet as
             follows:
             Set the tosBits of the packet to
                (tosBits & docsDevFilterTosAndMask) |
                                                 docsDevFilterTosOrMask

             This construct allows you to do a clear and set of all
             the TOS bits in a flexible manner."                       "A TOS policy entry."                       ?"The unique index for this row.  There are no ordering
             requirements for this table and any valid index may be
             specified."                      ?"The object used to create and delete entries in this
             table. A row created by specifying just this object
             results in a row which specifies no change to the TOS
             bits.   A row may be created using either the create-and-go
             or create-and-wait paradigms. There is no restriction on
             the ability to change values in this row while the row is
             active."                       K"This value is bitwise AND'd with the matched  packet's
        TOS bits."                       r"After bitwise AND'ing with the above bits, the packet's
             TOS bits are bitwise OR'd with these bits."                          ?"This object controls the population of docsDevFilterCpeTable.
             If set to none, the filters must be set manually.
             If set to any, the CM wiretaps the packets originating
             from the ethernet and enrolls up to docsDevCpeIpMax
             addresses based on the source IP addresses of those
             packets. At initial system startup, default value for this
             object is any(2)."                      J"This object controls the maximum number of CPEs allowed to
             connect behind this device. If set to zero, any number of
             CPEs may connect up to the maximum permitted for the device.
             If set to -1, no filtering is done on CPE source addresses,
             and no entries are made in the docsDevFilterCpeTable. If an
             attempt is made to set this to a number greater than that
             permitted for the device, it is set to that maximum.
             At iniitial system startup, default value for this object
             is 1."                      M"This table lists the IP addresses seen (or permitted)  as
             source addresses in packets originating from the customer
             interface on this device. In addition, this table can be
             provisioned with the specific addresses permitted for the
             CPEs via the normal row creation mechanisms."                      ?"An entry in the docsDevFilterCpeTable. There is one entry
             for each IP CPE seen or provisioned. If docsDevCpeIpMax
             is set to -1, this table is ignored, otherwise: Upon receipt
             of an IP  packet from the customer interface of the CM, the
             source IP address is checked against this table. If the
             address is in the table, packet processing continues.
             If the address is not in the table, but docsDevCpeEnroll
             is set to any and the table size is less than
             docsDevCpeIpMax, the address is added to the table and
             packet processing continues. Otherwise, the packet is
             dropped.

             The filtering actions specified by this table occur after
             any LLC filtering (docsDevFilterLLCTable), but prior
             to any IP filtering (docsDevFilterIpTable,
             docsDevNmAccessTable)."                       -"The IP address to which this entry applies."                      B"This object describes how this entry was created. If the
             value is manual(2), this row was created by a network
             management action (either configuration, or SNMP set).
             If set to learned(3), then it was found via
             looking at the source IP address of a received packet."                       ?"Standard object to manipulate rows. To create a row in this
             table, you only need to specify this object. Management
             stations SHOULD use the create-and-go mechanism for
             creating rows in this table."                                   L"A collection of objects providing device status and
             control."                 O"A collection of objects for controlling access to SNMP
             objects."                 K"A collection of objects for controlling software
             downloads."                 S"A collection of objects providing status about server
             provisioning."                 K"A collection of objects used to control and monitor
             events."                 V"A collection of objects to specify filters at link layer
             and IP layer."                 ?"A collection of objects used to control the number
             and specific values of IP addresses allowed for
             associated Customer Premises Equipment (CPE)."                     c"The compliance statement for MCNS Cable Modems and
             Cable Modem Termination Systems."   W"Mandatory in Cable Modems, optional in Cable Modem
             Termination Systems." W"Mandatory in Cable Modems, optional in Cable Modem
             Termination Systems." W"Mandatory in Cable Modems, optional in Cable Modem
             Termination Systems."r"This group is only implemented in devices which do not
             implement SNMPv3 User Security Model.  It SHOULD NOT be
             implemented by SNMPv3 conformant devices.

             For devices which do not implement SNMPv3 or later, this
             group is Mandatory in Cable Modems and is optional
             in Cable Modem Termination Systems." y"This group is implemented only in Cable Modems and is
             not implemented in Cable Modem Termination Systems." i"This group is Mandatory in Cable Modems and  optional in
             Cable Modem Termination Systems." ?"This group is Mandatory in Cable Modems, and is
             not implemented in Cable Modem Termination Systems.  A
             similar capability for CMTS devices may be proposed later
             after study." s"It is compliant to implement this object as read-only.
             Devices need only support noStFilterBpdu(2)." k"It is compliant to implement this object as read-only.
              Devices need only support local(0)."                