1-- File: RMON2-MIB.my (RFC 2021)
-- Changes:
--      Added import for BITS
--      Changed access of object netDefaultGateway from
--          read-create to read-write. (object is a scalar)
--
-- Problems:
--      1) The following rows do not have a consistent indexing scheme
--         as required by RFC 1902, section 7.8.1: protocolDistStatsEntry,
--         addressMapEntry, nlHostEntry, nlMatrixSDEntry, nlMatrixDSEntry,
--         alHostEntry, alMatrixSDEntry, alMatrixDSEntry, and usrHistoryEntry.
--
-- dperkins@snmpinfo.com: 19-apr-1998
  	?"To be used for the index to a table.  Allows an application
        to download only those rows changed since a particular time.
        A row is considered changed if the value of any object in the
        row changes or if the row is created or deleted.

        When sysUpTime is equal to zero, this table shall be empty.

        One entry exists for each past value of sysUpTime, except that
        the whole table is purged should sysUpTime wrap.

        As this basic row is updated new conceptual rows are created
        (which still share the now updated object values with all
        other instances).  The number of instances which are created
        is determined by the value of sysUpTime at which the basic row
        was last updated.  One instance will exist for each value of
        sysUpTime at the last update time for the row.  A new
        timeMark instance is created for each new sysUpTime value.
        Each new conceptual row will be associated with the timeMark
        instance which was created at the value of sysUpTime with
        which the conceptual row is to be associated.

        By definition all conceptual rows were updated at or after
        time zero and so at least one conceptual row (associated with
        timeMark.0) must exist for each underlying (basic) row.

        See the appendix for further discussion of this variable.

        Consider the following fooTable:

        fooTable ...
        INDEX { fooTimeMark, fooIndex }

        FooEntry {
           fooTimeMark  TimeFilter
           fooIndex     INTEGER,
           fooCounts    Counter
        }

        Should there be two basic rows in this table (fooIndex == 1,
        fooIndex == 2) and row 1 was updated most recently at time 6,
        while row 2 was updated most recently at time 8, and both rows
        had been updated on several earlier occasions such that the
        current values were 5 and 9 respectively then the following
        fooCounts instances would exist.

        fooCounts.0.1  5
        fooCounts.0.2  9
        fooCounts.1.1  5
        fooCounts.1.2  9
        fooCounts.2.1  5
        fooCounts.2.2  9
        fooCounts.3.1  5
        fooCounts.3.2  9
        fooCounts.4.1  5
        fooCounts.4.2  9
        fooCounts.5.1  5
        fooCounts.5.2  9
        fooCounts.6.1  5
        fooCounts.6.2  9
        fooCounts.7.2  9    -- note that row 1 doesn't exist for
        fooCounts.8.2  9    -- times 7 and 8"              
u"This data type is used to communicate with a modem or a
        serial data switch.  A ControlString contains embedded
        commands to control how the device will interact with the
        remote device through the serial interface.  Commands are
        represented as two character sequences beginning with
        the `^' character.

        The following commands are recognized by the device (note
        that command characters are case sensitive):

           ^s  Send string that follows which is terminated by the
               next command or the end of string.
           ^c  Delay for the number of seconds that follows.  Toss
               out any data received rather than storing it in a
               buffer for parsing.
           ^t  Set timeout to the value represented by the decimal
               digits that follow.  The default timeout is 20
               seconds. Note that this timeout may be overridden
               by a smaller serialTimeout configured for the
               associated serial interface (see serialConfigTable).
           ^w  Wait for the reply string that follows which is
               terminated by the next command or the end of string.
               Partial and case insensitive matching is applied, ie.
               if the reply string (any case combination) is found
               anywhere in the received string, then the a match is
               found.  If the current timeout elapses without a match,
               then the remaining control string is ignored.
           ^!  The ^ character.
           ^d  Delay the number of seconds specified by the decimal
               digits that follow.
           ^b  Send break for the number of milliseconds specified by
               the decimal digits that follow.  If no digits follow,
               break will be enforced for 250 milliseconds by default.

        The following ASCII control characters may be inserted into
        the `^s' send string or the `^w' reply string:

           ^@    0x00
           ^A    0x01
            ..
           ^M    0x0D
            ..
           ^Z    0x1A
           ^[    0x1B
           ^    0x1C
           ^]    0x1D
           ^^    0x1E
           ^_    0x1F

        Binary data may also be inserted into the data stream.  The
        control sequence for each byte of binary data is ^0x##, where
        ## is the hexadecimal representation of the data byte.  Two
        ASCII characters (0-9, a-f, A-F) must follow the `^0x'
        control prefix.  For example, `^0x0D^0x0A' is interpreted as a
        carriage return followed by a line feed."              ?"Identifies the source of the data that the associated
        function is configured to analyze. This source can be any
        interface on this device.

        In order to identify a particular interface, this
        object shall identify the instance of the ifIndex
        object, defined in [3,5], for the desired interface.

        For example, if an entry were to receive data from
        interface #1, this object would be set to ifIndex.1."              %"This TC describes an object that stores the last time its
        entry was created.

        This can be used for polling applications to determine that an
        entry has been deleted and re-created between polls, causing
        an otherwise undetectable discontinuity in the data."              d"This TC describes an object which counts events with the
        following semantics: objects of this type will be set to
        zero(0) on creation and will thereafter count appropriate
        events, wrapping back to zero(0) when the value 2^32 is
        reached.

        Provided that an application discovers the new object within
        the minimum time to wrap it can use the initial value as a
        delta since it last polled the table of which this object is
        part.  It is important for a management station to be aware of
        this minimum time and the actual time between polls, and to
        discard data if the actual time is too long or there is no
        defined minimum time.

        Typically this TC is used in tables where the INDEX space is
        constantly changing and/or the TimeFilter mechanism is in use."                                                                 ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last activated.
        This can be used by the management station to ensure that the
        table has not been deleted and recreated between polls."                       ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last activated.
        This can be used by the management station to ensure that the
        table has not been deleted and recreated between polls."                                   ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last
        activated. This can be used by the management station to
        ensure that the table has not been deleted and recreated
        between polls."                               ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last
        activated. This can be used by the management station to
        ensure that the table has not been deleted and recreated
        between polls."                       W"Provides a variable-length packet filter feature to the
        RMON-1 filter table."                       W"Provides a variable-length packet filter feature to the
        RMON-1 filter table."                      v"When this object is set to a non-zero value, the filter that
        it is associated with performs the following operations on
        every packet:

        1) - If the packet doesn't match the protocol directory entry
             identified by this object, discard the packet and exit
             (i.e., discard the packet if it is not of the identified
             protocol).
        2) - If the associated filterProtocolDirLocalIndex is non-zero
             and the packet doesn't match the protocol directory
             entry identified by that object, discard the packet and
             exit
        3) - If the packet matches, perform the regular filter
             algorithm as if the beginning of this named protocol is
             the beginning of the packet, potentially applying the
             filterOffset value to move further into the packet."                       ?"When this object is set to a non-zero value, the filter that
        it is associated with will discard the packet if the packet
        doesn't match this protocol directory entry."                           ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                               ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last
        activated. This can be used by the management station to
        ensure that the table has not been deleted and recreated
        between polls."                           ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last
        activated. This can be used by the management station to
        ensure that the table has not been deleted and recreated
        between polls."                       ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last activated.
        This can be used by the management station to ensure that the
        table has not been deleted and recreated between polls."                       ."Contains the RMON-2 augmentations to RMON-1."                       ."Contains the RMON-2 augmentations to RMON-1."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last activated.
        This can be used by the management station to ensure that the
        table has not been deleted and recreated between polls."                                                               ?"The MIB module for managing remote monitoring
         device implementations. This MIB module
         augments the original RMON MIB as specified in
         RFC 1757."O"Steve Waldbusser   (WG Editor)
         Postal: International Network Services
         650 Castro Street, Suite 260
         Mountain View, CA 94041
         Phone:  +1 415 254 4251
         Email:  waldbusser@ins.com


         Andy Bierman   (WG Chair)
         Phone:  +1 805 648 2028
         Email:  abierman@west.net"                  "The value of sysUpTime at the time the protocol directory
        was last modified, either through insertions or deletions,
        or through modifications of either the
        protocolDirAddressMapConfig, protocolDirHostConfig, or
        protocolDirMatrixConfig."                      ?"This table lists the protocols that this agent has the
        capability to decode and count.  There is one entry in this
        table for each such protocol.  These protocols represent
        different network layer, transport layer, and higher-layer
        protocols.  The agent should boot up with this table
        preconfigured with those protocols that it knows about and
        wishes to monitor.  Implementations are strongly encouraged to
        support protocols higher than the network layer (at least for
        the protocol distribution group), even for implementations
        that don't support the application layer groups."                      i"A conceptual row in the protocolDirTable.

         An example of the indexing of this entry is
         protocolDirLocalIndex.8.0.0.0.1.0.0.8.0.2.0.0, which is the
         encoding of a length of 8, followed by 8 subids encoding the
         protocolDirID of 1.2048, followed by a length of 2 and the
         2 subids encoding zero-valued parameters."                      }"A unique identifier for a particular protocol.  Standard
        identifiers will be defined in a manner such that they
        can often be used as specifications for new protocols - i.e.
        a tree-structured assignment mechanism that matches the
        protocol encapsulation `tree' and which has algorithmic
        assignment mechanisms for certain subtrees. See RFC XXX for
        more details.

        Despite the algorithmic mechanism, the probe will only place
        entries in here for those protocols it chooses to collect.  In
        other words, it need not populate this table with all of the
        possible ethernet protocol types, nor need it create them on
        the fly when it sees them.  Whether or not it does these
        things is a matter of product definition (cost/benefit,
        usability), and is up to the designer of the product.

        If an entry is written to this table with a protocolDirID that
        the agent doesn't understand, either directly or
        algorithmically, the SET request will be rejected with an
        inconsistentName or badValue (for SNMPv1) error."                      ?"A set of parameters for the associated protocolDirID.
        See the associated RMON2 Protocol Identifiers document
        for a description of the possible parameters. There
        will be one octet in this string for each sub-identifier in
        the protocolDirID, and the parameters will appear here in the
        same order as the associated sub-identifiers appear in the
        protocolDirID.

        Every node in the protocolDirID tree has a different, optional
        set of parameters defined (that is, the definition of
        parameters for a node is optional).  The proper parameter
        value for each node is included in this string.  Note that the
        inclusion of a parameter value in this string for each node is
        not optional - what is optional is that a node may have no
        parameters defined, in which case the parameter field for that
        node will be zero."                      ?"The locally arbitrary, but unique identifier associated
        with this protocolDir entry.

        The value for each supported protocol must remain constant at
        least from one re-initialization of the entity's network
        management system to the next re-initialization, except that
        if a protocol is deleted and re-created, it must be re-created
        with a new value that has not been used since the last
        re-initialization.

        The specific value is meaningful only within a given SNMP
        entity. A protocolDirLocalIndex must not be re-used until the
        next agent-restart in the event the protocol directory entry
        is deleted."                      e"A textual description of the protocol encapsulation.
        A probe may choose to describe only a subset of the
        entire encapsulation (e.g. only the highest layer).

        This object is intended for human consumption only.

        This object may not be modified if the associated
        protocolDirStatus object is equal to active(1)."                      	"This object describes 2 attributes of this protocol
         directory entry.

         The presence or absence of the `extensible' bit describes
         whether or not this protocol directory entry can be extended
         by the user by creating protocol directory entries which are
         children of this protocol.

         An example of an entry that will often allow extensibility is
         `ip.udp'.  The probe may automatically populate some children
         of this node such as `ip.udp.snmp' and `ip.udp.dns'.
         A probe administrator or user may also populate additional
         children via remote SNMP requests that create entries in this
         table.  When a child node is added for a protocol for which the
         probe has no built in support, extending a parent node (for
         which the probe does have built in support),
         that child node is not extendible.  This is termed `limited
         extensibility'.

         When a child node is added through this extensibility
         mechanism, the values of protocolDirLocalIndex and
         protocolDirType shall be assigned by the agent.

         The other objects in the entry will be assigned by the
         manager who is creating the new entry.

         This object also describes whether or not this agent can
         recognize addresses for this protocol, should it be a network
         level protocol.  That is, while a probe may be able to
         recognize packets of a particular network layer protocol and
         count them, it takes additional logic to be able to recognize
         the addresses in this protocol and to populate network layer
         or application layer tables with the addresses in this
         protocol.  If this bit is set, the agent will recognize
         network layer addresses for this protoocl and populate the
         network and application layer host and matrix tables with
         these protocols.

         Note that when an entry is created, the agent will supply
         values for the bits that match the capabilities of the agent
         with respect to this protocol.  Note that since row creations
         usually exercise the limited extensibility feature, these
         bits will usually be set to zero."                      P"This object describes and configures the probe's support for
        address mapping for this protocol.  When the probe creates
        entries in this table for all protocols that it understands,
        it will set the entry to notSupported(1) if it doesn't have
        the capability to perform address mapping for the protocol or
        if this protocol is not a network-layer protocol.  When
        an entry is created in this table by a management operation as
        part of the limited extensibility feature, the probe must set
        this value to notSupported(1), because limited extensibility
        of the protocolDirTable does not extend to interpreting
        addresses of the extended protocols.

        If the value of this object is notSupported(1), the probe
        will not perform address mapping for this protocol and
        shall not allow this object to be changed to any other value.
        If the value of this object is supportedOn(3), the probe
        supports address mapping for this protocol and is configured
        to perform address mapping for this protocol for all
        addressMappingControlEntries and all interfaces.
        If the value of this object is supportedOff(2), the probe
        supports address mapping for this protocol but is configured
        to not perform address mapping for this protocol for any
        addressMappingControlEntries and all interfaces.
        Whenever this value changes from supportedOn(3) to
        supportedOff(2), the probe shall delete all related entries in
        the addressMappingTable."                      ?"This object describes and configures the probe's support for
        the network layer and application layer host tables for this
        protocol.  When the probe creates entries in this table for
        all protocols that it understands, it will set the entry to
        notSupported(1) if it doesn't have the capability to track the
        nlHostTable for this protocol or if the alHostTable is
        implemented but doesn't have the capability to track this
        protocol.  Note that if the alHostTable is implemented, the
        probe may only support a protocol if it is supported in both
        the nlHostTable and the alHostTable.

        If the associated protocolDirType object has the
        addressRecognitionCapable bit set, then this is a network
        layer protocol for which the probe recognizes addresses, and
        thus the probe will populate the nlHostTable and alHostTable
        with addresses it discovers for this protocol.

        If the value of this object is notSupported(1), the probe
        will not track the nlHostTable or alHostTable for this
        protocol and shall not allow this object to be changed to any
        other value. If the value of this object is supportedOn(3),
        the probe supports tracking of the nlHostTable and alHostTable
        for this protocol and is configured to track both tables
        for this protocol for all control entries and all interfaces.
        If the value of this object is supportedOff(2), the probe
        supports tracking of the nlHostTable and alHostTable for this
        protocol but is configured to not track these tables
        for any control entries or interfaces.
        Whenever this value changes from supportedOn(3) to
        supportedOff(2), the probe shall delete all related entries in
        the nlHostTable and alHostTable.

        Note that since each alHostEntry references 2 protocol
        directory entries, one for the network address and one for the
        type of the highest protocol recognized, that an entry will
        only be created in that table if this value is supportedOn(3)
        for both protocols."                      	|"This object describes and configures the probe's support for
        the network layer and application layer matrix tables for this
        protocol.  When the probe creates entries in this table for
        all protocols that it understands, it will set the entry to
        notSupported(1) if it doesn't have the capability to track the
        nlMatrixTables for this protocol or if the alMatrixTables are
        implemented but don't have the capability to track this
        protocol.  Note that if the alMatrix tables are implemented,
        the probe may only support a protocol if it is supported in
        the the both of the nlMatrixTables and both of the
        alMatrixTables.

        If the associated protocolDirType object has the
        addressRecognitionCapable bit set, then this is a network
        layer protocol for which the probe recognizes addresses, and
        thus the probe will populate both of the nlMatrixTables and
        both of the alMatrixTables with addresses it discovers for
        this protocol.

        If the value of this object is notSupported(1), the probe
        will not track either of the nlMatrixTables or the
        alMatrixTables for this protocol and shall not allow this
        object to be changed to any other value. If the value of this
        object is supportedOn(3), the probe supports tracking of both
        of the nlMatrixTables and (if implemented) both of the
        alMatrixTables for this protocol and is configured to track
        these tables for this protocol for all control entries and all
        interfaces. If the value of this object is supportedOff(2),
        the probe supports tracking of both of the nlMatrixTables and
        (if implemented) both of the alMatrixTables for this protocol
        but is configured to not track these tables for this
        protocol for any control entries or interfaces.
        Whenever this value changes from supportedOn(3) to
        supportedOff(2), the probe shall delete all related entries in
        the nlMatrixTables and the alMatrixTables.

        Note that since each alMatrixEntry references 2 protocol
        directory entries, one for the network address and one for the
        type of the highest protocol recognized, that an entry will
        only be created in that table if this value is supportedOn(3)
        for both protocols."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      ?"The status of this protocol directory entry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all associated
        entries in the nlHostTable, nlMatrixSDTable, nlMatrixDSTable,
        alHostTable, alMatrixSDTable, and alMatrixDSTable shall be
        deleted."                          ?"Controls the setup of protocol type distribution statistics
        tables.

        Implementations are encouraged to add an entry per monitored
        interface upon initialization so that a default collection
        of protocol statistics is available.

        Rationale:
        This table controls collection of very basic statistics
        for any or all of the protocols detected on a given interface.
        An NMS can use this table to quickly determine bandwidth
        allocation utilized by different protocols.

        A media-specific statistics collection could also
        be configured (e.g. etherStats, trPStats) to easily obtain
        total frame, octet, and droppedEvents for the same
        interface."                       ?"A conceptual row in the protocolDistControlTable.

         An example of the indexing of this entry is
         protocolDistControlDroppedFrames.7"                       3"A unique index for this protocolDistControlEntry."                      G"The source of data for the this protocol distribution.

        The statistics in this group reflect all packets
        on the local network segment attached to the
        identified interface.

        This object may not be modified if the associated
        protocolDistControlStatus object is equal to active(1)."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       ?"The value of sysUpTime when this control entry was last
        activated. This can be used by the management station to
        ensure that the table has not been deleted and recreated
        between polls."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      "The status of this row.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all associated
        entries in the protocolDistStatsTable shall be deleted."                      ?"An entry is made in this table for every protocol in the
        protocolDirTable which has been seen in at least one packet.
        Counters are updated in this table for every protocol type
        that is encountered when parsing a packet, but no counters are
        updated for packets with MAC-layer errors.

        Note that if a protocolDirEntry is deleted, all associated
        entries in this table are removed."                      "A conceptual row in the protocolDistStatsTable.

        The index is composed of the protocolDistControlIndex of the
        associated protocolDistControlEntry followed by the
        protocolDirLocalIndex of the associated protocol that this
        entry represents.  In other words, the index identifies the
        protocol distribution an entry is a part of as well as the
        particular protocol that it represents.

        An example of the indexing of this entry is
        protocolDistStatsPkts.1.18"                      "The number of packets without errors received of this
        protocol type.  Note that this is the number of link-layer
        packets, so if a single network-layer packet is fragmented
        into several link-layer frames, this counter is incremented
        several times."                      ?"The number of octets in packets received of this protocol
        type since it was added to the protocolDistStatsTable
        (excluding framing bits but including FCS octets), except for
        those octets in packets that contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                          O"The number of times an address mapping entry has been
        inserted into the addressMapTable.  If an entry is inserted,
        then deleted, and then inserted, this counter will be
        incremented by 2.

        Note that the table size can be determined by subtracting
        addressMapDeletes from addressMapInserts."                      ^"The number of times an address mapping entry has been
        deleted from the addressMapTable (for any reason).  If
        an entry is deleted, then inserted, and then deleted, this
        counter will be incremented by 2.

        Note that the table size can be determined by subtracting
        addressMapDeletes from addressMapInserts."                      "The maximum number of entries that are desired in the
        addressMapTable. The probe will not create more than
        this number of entries in the table, but may choose to create
        fewer entries in this table for any reason including the lack
        of resources.

        If this object is set to a value less than the current number
        of entries, enough entries are chosen in an
        implementation-dependent manner and deleted so that the number
        of entries in the table equals the value of this object.

        If this value is set to -1, the probe may create any number
        of entries in this table.

        This object may be used to control how resources are allocated
        on the probe for the various RMON functions."                      e"A table to control the collection of network layer address to
        physical address to interface mappings.

        Note that this is not like the typical RMON
        controlTable and dataTable in which each entry creates
        its own data table.  Each entry in this table enables the
        discovery of addresses on a new interface and the placement
        of address mappings into the central addressMapTable.

        Implementations are encouraged to add an entry per monitored
        interface upon initialization so that a default collection
        of address mappings is available."                       ?"A conceptual row in the addressMapControlTable.
        An example of the indexing of this entry is
        addressMapControlDroppedFrames.1"                       >"A unique index for this entry in the addressMapControlTable."                       5"The source of data for this addressMapControlEntry."                      J"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      &"The status of this addressMap control entry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all associated
        entries in the addressMapTable shall be deleted."                      1"A table of network layer address to physical address to
        interface mappings.

        The probe will add entries to this table based on the source
        MAC and network addresses seen in packets without MAC-level
        errors. The probe will populate this table for all protocols
        in the protocol directory table whose value of
        protocolDirAddressMapConfig is equal to supportedOn(3), and
        will delete any entries whose protocolDirEntry is deleted or
        has a protocolDirAddressMapConfig value of supportedOff(2)."                      ("A conceptual row in the addressMapTable.
        The protocolDirLocalIndex in the index identifies the network
        layer protocol of the addressMapNetworkAddress.
        An example of the indexing of this entry is
        addressMapSource.783495.18.4.128.2.6.6.11.1.3.6.1.2.1.2.2.1.1.1"                       e"A TimeFilter for this entry.  See the TimeFilter textual
        convention to see how this works."                      ?"The network address for this relation.

        This is represented as an octet string with
        specific semantics and length as identified
        by the protocolDirLocalIndex component of the
        index.

        For example, if the protocolDirLocalIndex indicates an
        encapsulation of ip, this object is encoded as a length
        octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      ?"The interface or port on which the associated network
        address was most recently seen.

        If this address mapping was discovered on an interface, this
        object shall identify the instance of the ifIndex
        object, defined in [3,5], for the desired interface.
        For example, if an entry were to receive data from
        interface #1, this object would be set to ifIndex.1.

        If this address mapping was discovered on a port, this
        object shall identify the instance of the rptrGroupPortIndex
        object, defined in [RFC1516], for the desired port.
        For example, if an entry were to receive data from
        group #1, port #1, this object would be set to
        rptrGroupPortIndex.1.1.

        Note that while the dataSource associated with this entry
        may only point to index objects, this object may at times
        point to repeater port objects. This situation occurs when
        the dataSource points to an interface which is a locally
        attached repeater and the agent has additional information
        about the source port of traffic seen on that repeater."                      ?"The last source physical address on which the associated
        network address was seen.  If the protocol of the associated
        network address was encapsulated inside of a network-level or
        higher protocol, this will be the address of the next-lower
        protocol with the addressRecognitionCapable bit enabled and
        will be formatted as specified for that protocol."                       ?"The value of sysUpTime at the time this entry was last
        created or the values of the physical address changed.

        This can be used to help detect duplicate address problems, in
        which case this object will be updated frequently."                          +"A list of higher layer (i.e. non-MAC) host table control entries.

        These entries will enable the collection of the network and
        application level host tables indexed by network addresses.
        Both the network and application level host tables are
        controlled by this table is so that they will both be created
        and deleted at the same time, further increasing the ease with
        which they can be implemented as a single datastore (note that
        if an implementation stores application layer host records in
        memory, it can derive network layer host records from them).

        Entries in the nlHostTable will be created on behalf of each
        entry in this table. Additionally, if this probe implements
        the alHostTable, entries in the alHostTable will be created on
        behalf of each entry in this table.

        Implementations are encouraged to add an entry per monitored
        interface upon initialization so that a default collection
        of host statistics is available."                       ?"A conceptual row in the hlHostControlTable.

        An example of the indexing of this entry is
        hlHostControlNlDroppedFrames.1"                      E"An index that uniquely identifies an entry in the
        hlHostControlTable.  Each such entry defines
        a function that discovers hosts on a particular
        interface and places statistics about them in the
        nlHostTable, and optionally in the alHostTable, on
        behalf of this hlHostControlEntry."                      ="The source of data for the associated host tables.

        The statistics in this group reflect all packets
        on the local network segment attached to the
        identified interface.

        This object may not be modified if the associated
        hlHostControlStatus object is equal to active(1)."                      ?"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for the associated
        nlHost entries for whatever reason.  Most often, this event
        occurs when the probe is out of some resources and decides to
        shed load from this collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that if the nlHostTable is inactive because no protocols
        are enabled in the protocol directory, this value should be 0.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                      ?"The number of times an nlHost entry has been
        inserted into the nlHost table.  If an entry is inserted, then
        deleted, and then inserted, this counter will be incremented
        by 2.

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the table size can be determined by subtracting
        hlHostControlNlDeletes from hlHostControlNlInserts."                      ?"The number of times an nlHost entry has been
        deleted from the nlHost table (for any reason).  If an entry
        is deleted, then inserted, and then deleted, this counter will
        be incremented by 2.

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the table size can be determined by subtracting
        hlHostControlNlDeletes from hlHostControlNlInserts."                      ?"The maximum number of entries that are desired in the
        nlHostTable on behalf of this control entry. The probe will
        not create more than this number of associated entries in the
        table, but may choose to create fewer entries in this table
        for any reason including the lack of resources.

        If this object is set to a value less than the current number
        of entries, enough entries are chosen in an
        implementation-dependent manner and deleted so that the number
        of entries in the table equals the value of this object.

        If this value is set to -1, the probe may create any number
        of entries in this table.  If the associated
        hlHostControlStatus object is equal to `active', this
        object may not be modified.

        This object may be used to control how resources are allocated
        on the probe for the various RMON functions."                      "The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for the associated
        alHost entries for whatever reason.  Most often, this event
        occurs when the probe is out of some resources and decides to
        shed load from this collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that if the alHostTable is not implemented or is inactive
        because no protocols are enabled in the protocol directory,
        this value should be 0.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                      ?"The number of times an alHost entry has been
        inserted into the alHost table.  If an entry is inserted, then
        deleted, and then inserted, this counter will be incremented
        by 2.

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the table size can be determined by subtracting
        hlHostControlAlDeletes from hlHostControlAlInserts."                      ?"The number of times an alHost entry has been
        deleted from the alHost table (for any reason).  If an entry
        is deleted, then inserted, and then deleted, this counter will
        be incremented by 2.

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the table size can be determined by subtracting
        hlHostControlAlDeletes from hlHostControlAlInserts."                      ?"The maximum number of entries that are desired in the alHost
        table on behalf of this control entry. The probe will not
        create more than this number of associated entries in the
        table, but may choose to create fewer entries in this table
        for any reason including the lack of resources.

        If this object is set to a value less than the current number
        of entries, enough entries are chosen in an
        implementation-dependent manner and deleted so that the number
        of entries in the table equals the value of this object.

        If this value is set to -1, the probe may create any number
        of entries in this table.  If the associated
        hlHostControlStatus object is equal to `active', this
        object may not be modified.

        This object may be used to control how resources are allocated
        on the probe for the various RMON functions."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      ,"The status of this hlHostControlEntry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all associated
        entries in the nlHostTable and alHostTable shall be deleted."                      ?"A collection of statistics for a particular network layer
        address that has been discovered on an interface of this
        device.

        The probe will populate this table for all network layer
        protocols in the protocol directory table whose value of
        protocolDirHostConfig is equal to supportedOn(3), and
        will delete any entries whose protocolDirEntry is deleted or
        has a protocolDirHostConfig value of supportedOff(2).

        The probe will add to this table all addresses seen
        as the source or destination address in all packets with no
        MAC errors, and will increment octet and packet counts in the
        table for all packets with no MAC errors."                      ?"A conceptual row in the nlHostTable.

        The hlHostControlIndex value in the index identifies the
        hlHostControlEntry on whose behalf this entry was created.
        The protocolDirLocalIndex value in the index identifies the
        network layer protocol of the nlHostAddress.

        An example of the indexing of this entry is
        nlHostOutPkts.1.783495.18.4.128.2.6.6."                       e"A TimeFilter for this entry.  See the TimeFilter textual
        convention to see how this works."                      ?"The network address for this nlHostEntry.

        This is represented as an octet string with
        specific semantics and length as identified
        by the protocolDirLocalIndex component of the index.

        For example, if the protocolDirLocalIndex indicates an
        encapsulation of ip, this object is encoded as a length
        octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      ?"The number of packets without errors transmitted to
        this address since it was added to the nlHostTable.  Note that
        this is the number of link-layer packets, so if a single
        network-layer packet is fragmented into several link-layer
        frames, this counter is incremented several times."                      ?"The number of packets without errors transmitted by
        this address since it was added to the nlHostTable.  Note that
        this is the number of link-layer packets, so if a single
        network-layer packet is fragmented into several link-layer
        frames, this counter is incremented several times."                      ?"The number of octets transmitted to this address
        since it was added to the nlHostTable (excluding
        framing bits but including FCS octets), excluding
        those octets in packets that contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                      ?"The number of octets transmitted by this address
        since it was added to the nlHostTable (excluding
        framing bits but including FCS octets), excluding
        those octets in packets that contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                      ?"The number of packets without errors transmitted by this
        address that were directed to any MAC broadcast addresses
        or to any MAC multicast addresses since this host was
        added to the nlHostTable. Note that this is the number of
        link-layer packets, so if a single network-layer packet is
        fragmented into several link-layer frames, this counter is
        incremented several times."                       ?"The value of sysUpTime when this entry was last activated.
        This can be used by the management station to ensure that the
        entry has not been deleted and recreated between polls."                          ?"A list of higher layer (i.e. non-MAC) matrix control entries.

        These entries will enable the collection of the network and
        application level matrix tables containing conversation
        statistics indexed by pairs of network addresses.
        Both the network and application level matrix tables are
        controlled by this table is so that they will both be created
        and deleted at the same time, further increasing the ease with
        which they can be implemented as a single datastore (note that
        if an implementation stores application layer matrix records
        in memory, it can derive network layer matrix records from
        them).

        Entries in the nlMatrixSDTable and nlMatrixDSTable will be
        created on behalf of each entry in this table.  Additionally,
        if this probe implements the alMatrix tables, entries in the
        alMatrix tables will be created on behalf of each entry in
        this table."                       ?"A conceptual row in the hlMatrixControlTable.

        An example of indexing of this entry is
        hlMatrixControlNlDroppedFrames.1"                      ?"An index that uniquely identifies an entry in the
        hlMatrixControlTable.  Each such entry defines
        a function that discovers conversations on a particular
        interface and places statistics about them in the
        nlMatrixSDTable and the nlMatrixDSTable, and optionally the
        alMatrixSDTable and alMatrixDSTable, on behalf of this
        hlMatrixControlEntry."                      E"The source of the data for the associated matrix tables.

        The statistics in this group reflect all packets
        on the local network segment attached to the
        identified interface.

        This object may not be modified if the associated
        hlMatrixControlStatus object is equal to active(1)."                      ?"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that if the nlMatrixTables are inactive because no
        protocols are enabled in the protocol directory, this value
        should be 0.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                      
"The number of times an nlMatrix entry has been
        inserted into the nlMatrix tables.  If an entry is inserted,
        then deleted, and then inserted, this counter will be
        incremented by 2.  The addition of a conversation into both
        the nlMatrixSDTable and nlMatrixDSTable shall be counted as
        two insertions (even though every addition into one table must
        be accompanied by an insertion into the other).

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the sum of then nlMatrixSDTable and nlMatrixDSTable
        sizes can be determined by subtracting
        hlMatrixControlNlDeletes from hlMatrixControlNlInserts."                      ?"The number of times an nlMatrix entry has been
        deleted from the nlMatrix tables (for any reason).  If an
        entry is deleted, then inserted, and then deleted, this
        counter will be incremented by 2.  The deletion of a
        conversation from both the nlMatrixSDTable and nlMatrixDSTable
        shall be counted as two deletions (even though every deletion
        from one table must be accompanied by a deletion from the
        other).

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the table size can be determined by subtracting
        hlMatrixControlNlDeletes from hlMatrixControlNlInserts."                      ?"The maximum number of entries that are desired in the
        nlMatrix tables on behalf of this control entry. The probe
        will not create more than this number of associated entries in
        the table, but may choose to create fewer entries in this
        table for any reason including the lack of resources.

        If this object is set to a value less than the current number
        of entries, enough entries are chosen in an
        implementation-dependent manner and deleted so that the number
        of entries in the table equals the value of this object.

        If this value is set to -1, the probe may create any number
        of entries in this table.  If the associated
        hlMatrixControlStatus object is equal to `active', this
        object may not be modified.

        This object may be used to control how resources are allocated
        on the probe for the various RMON functions."                      ?"The total number of frames which were received by the probe
        and therefore not accounted for in the *StatsDropEvents, but
        for which the probe chose not to count for this entry for
        whatever reason.  Most often, this event occurs when the probe
        is out of some resources and decides to shed load from this
        collection.

        This count does not include packets that were not counted
        because they had MAC-layer errors.

        Note that if the alMatrixTables are not implemented or are
        inactive because no protocols are enabled in the protocol
        directory, this value should be 0.

        Note that, unlike the dropEvents counter, this number is the
        exact number of frames dropped."                      ?"The number of times an alMatrix entry has been
        inserted into the alMatrix tables.  If an entry is inserted,
        then deleted, and then inserted, this counter will be
        incremented by 2.  The addition of a conversation into both
        the alMatrixSDTable and alMatrixDSTable shall be counted as
        two insertions (even though every addition into one table must
        be accompanied by an insertion into the other).

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the table size can be determined by subtracting
        hlMatrixControlAlDeletes from hlMatrixControlAlInserts."                      ?"The number of times an alMatrix entry has been
        deleted from the alMatrix tables.  If an entry is deleted,
        then inserted, and then deleted, this counter will be
        incremented by 2.  The deletion of a conversation from both
        the alMatrixSDTable and alMatrixDSTable shall be counted as
        two deletions (even though every deletion from one table must
        be accompanied by a deletion from the other).

        To allow for efficient implementation strategies, agents may
        delay updating this object for short periods of time.  For
        example, an implementation strategy may allow internal
        data structures to differ from those visible via SNMP for
        short periods of time.  This counter may reflect the internal
        data structures for those short periods of time.

        Note that the table size can be determined by subtracting
        hlMatrixControlAlDeletes from hlMatrixControlAlInserts."                      ?"The maximum number of entries that are desired in the
        alMatrix tables on behalf of this control entry. The probe
        will not create more than this number of associated entries in
        the table, but may choose to create fewer entries in this
        table for any reason including the lack of resources.

        If this object is set to a value less than the current number
        of entries, enough entries are chosen in an
        implementation-dependent manner and deleted so that the number
        of entries in the table equals the value of this object.

        If this value is set to -1, the probe may create any number
        of entries in this table.  If the associated
        hlMatrixControlStatus object is equal to `active', this
        object may not be modified.

        This object may be used to control how resources are allocated
        on the probe for the various RMON functions."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      |"The status of this hlMatrixControlEntry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all
        associated entries in the nlMatrixSDTable,
        nlMatrixDSTable, alMatrixSDTable, and the alMatrixDSTable
        shall be deleted by the agent."                      #"A list of traffic matrix entries which collect statistics for
        conversations between two network-level addresses.  This table
        is indexed first by the source address and then by the
        destination address to make it convenient to collect all
        conversations from a particular address.

        The probe will populate this table for all network layer
        protocols in the protocol directory table whose value of
        protocolDirMatrixConfig is equal to supportedOn(3), and
        will delete any entries whose protocolDirEntry is deleted or
        has a protocolDirMatrixConfig value of supportedOff(2).

        The probe will add to this table all pairs of addresses
        seen in all packets with no MAC errors, and will increment
        octet and packet counts in the table for all packets with no
        MAC errors.

        Further, this table will only contain entries that have a
        corresponding entry in the nlMatrixDSTable with the same
        source address and destination address."                      ?"A conceptual row in the nlMatrixSDTable.

        The hlMatrixControlIndex value in the index identifies the
        hlMatrixControlEntry on whose behalf this entry was created.
        The protocolDirLocalIndex value in the index identifies the
        network layer protocol of the nlMatrixSDSourceAddress and
        nlMatrixSDDestAddress.

        An example of the indexing of this table is
        nlMatrixSDPkts.1.783495.18.4.128.2.6.6.4.128.2.6.7"                       e"A TimeFilter for this entry.  See the TimeFilter textual
        convention to see how this works."                      ?"The network source address for this nlMatrixSDEntry.

        This is represented as an octet string with
        specific semantics and length as identified
        by the protocolDirLocalIndex component of the index.

        For example, if the protocolDirLocalIndex indicates an
        encapsulation of ip, this object is encoded as a length
        octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      ?"The network destination address for this
        nlMatrixSDEntry.

        This is represented as an octet string with
        specific semantics and length as identified
        by the protocolDirLocalIndex component of the index.

        For example, if the protocolDirLocalIndex indicates an
        encapsulation of ip, this object is encoded as a length
        octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      w"The number of packets without errors transmitted from the
        source address to the destination address since this entry was
        added to the nlMatrixSDTable.  Note that this is the number of
        link-layer packets, so if a single network-layer packet is
        fragmented into several link-layer frames, this counter is
        incremented several times."                      ?"The number of octets transmitted from the source address to
        the destination address since this entry was added to the
        nlMatrixSDTable (excluding framing bits but
        including FCS octets), excluding those octets in packets that
        contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                       ?"The value of sysUpTime when this entry was last activated.
        This can be used by the management station to ensure that the
        entry has not been deleted and recreated between polls."                      !"A list of traffic matrix entries which collect statistics for
        conversations between two network-level addresses.  This table
        is indexed first by the destination address and then by the
        source address to make it convenient to collect all
        conversations to a particular address.

        The probe will populate this table for all network layer
        protocols in the protocol directory table whose value of
        protocolDirMatrixConfig is equal to supportedOn(3), and
        will delete any entries whose protocolDirEntry is deleted or
        has a protocolDirMatrixConfig value of supportedOff(2).

        The probe will add to this table all pairs of addresses
        seen in all packets with no MAC errors, and will increment
        octet and packet counts in the table for all packets with no
        MAC errors.

        Further, this table will only contain entries that have a
        corresponding entry in the nlMatrixSDTable with the same
        source address and destination address."                      ?"A conceptual row in the nlMatrixDSTable.

        The hlMatrixControlIndex value in the index identifies the
        hlMatrixControlEntry on whose behalf this entry was created.
        The protocolDirLocalIndex value in the index identifies the
        network layer protocol of the nlMatrixDSSourceAddress and
        nlMatrixDSDestAddress.

        An example of the indexing of this table is
        nlMatrixDSPkts.1.783495.18.4.128.2.6.7.4.128.2.6.6"                       e"A TimeFilter for this entry.  See the TimeFilter textual
        convention to see how this works."                      ?"The network source address for this nlMatrixDSEntry.

        This is represented as an octet string with
        specific semantics and length as identified
        by the protocolDirLocalIndex component of the index.

        For example, if the protocolDirLocalIndex indicates an
        encapsulation of ip, this object is encoded as a length
        octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      ?"The network destination address for this
        nlMatrixDSEntry.

        This is represented as an octet string with
        specific semantics and length as identified
        by the protocolDirLocalIndex component of the index.

        For example, if the protocolDirLocalIndex indicates an
        encapsulation of ip, this object is encoded as a length
        octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      w"The number of packets without errors transmitted from the
        source address to the destination address since this entry was
        added to the nlMatrixDSTable.  Note that this is the number of
        link-layer packets, so if a single network-layer packet is
        fragmented into several link-layer frames, this counter is
        incremented several times."                      ?"The number of octets transmitted from the source address
        to the destination address since this entry was added to the
        nlMatrixDSTable (excluding framing bits but
        including FCS octets), excluding those octets in packets that
        contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                       ?"The value of sysUpTime when this entry was last activated.
        This can be used by the management station to ensure that the
        entry has not been deleted and recreated between polls."                       ?"A set of parameters that control the creation of a
        report of the top N matrix entries according to
        a selected metric."                       ?"A conceptual row in the nlMatrixTopNControlTable.

        An example of the indexing of this table is
        nlMatrixTopNControlDuration.3"                       ?"An index that uniquely identifies an entry
        in the nlMatrixTopNControlTable.  Each such
        entry defines one top N report prepared for
        one interface."                      ?"The nlMatrix[SD/DS] table for which a top N report will be
        prepared on behalf of this entry.  The nlMatrix[SD/DS] table
        is identified by the value of the hlMatrixControlIndex
        for that table - that value is used here to identify the
        particular table.

        This object may not be modified if the associated
        nlMatrixTopNControlStatus object is equal to active(1)."                       ?"The variable for each nlMatrix[SD/DS] entry that the
        nlMatrixTopNEntries are sorted by.

        This object may not be modified if the associated
        nlMatrixTopNControlStatus object is equal to active(1)."                      P"The number of seconds left in the report currently
        being collected.  When this object is modified by
        the management station, a new collection is started,
        possibly aborting a currently running report.  The
        new value is used as the requested duration of this
        report, and is immediately loaded into the associated
        nlMatrixTopNControlDuration object.
        When the report finishes, the probe will automatically
        start another collection with the same initial value
        of nlMatrixTopNControlTimeRemaining.  Thus the management
        station may simply read the resulting reports repeatedly,
        checking the startTime and duration each time to ensure that a
        report was not missed or that the report parameters were not
        changed.

        While the value of this object is non-zero, it decrements
        by one per second until it reaches zero.  At the time
        that this object decrements to zero, the report is made
        accessible in the nlMatrixTopNTable, overwriting any report
        that may be there.

        When this object is modified by the management station, any
        associated entries in the nlMatrixTopNTable shall be deleted.

        (Note that this is a different algorithm than the one used in
        the hostTopNTable)."                       ?"The number of reports that have been generated by this entry."                      ?"The number of seconds that this report has collected
        during the last sampling interval.

        When the associated nlMatrixTopNControlTimeRemaining object is
        set, this object shall be set by the probe to the
        same value and shall not be modified until the next
        time the nlMatrixTopNControlTimeRemaining is set.
        This value shall be zero if no reports have been
        requested for this nlMatrixTopNControlEntry."                      ."The maximum number of matrix entries requested for this report.

        When this object is created or modified, the probe
        should set nlMatrixTopNControlGrantedSize as closely to this
        object as is possible for the particular probe
        implementation and available resources."                      ?"The maximum number of matrix entries in this report.

        When the associated nlMatrixTopNControlRequestedSize object is
        created or modified, the probe should set this
        object as closely to the requested value as is
        possible for the particular implementation and
        available resources. The probe must not lower this
        value except as a result of a set to the associated
        nlMatrixTopNControlRequestedSize object.

        If the value of nlMatrixTopNControlRateBase is equal to
        nlMatrixTopNPkts, when the next topN report is generated,
        matrix entries with the highest value of nlMatrixTopNPktRate
        shall be placed in this table in decreasing order of this rate
        until there is no more room or until there are no more
        matrix entries.

        If the value of nlMatrixTopNControlRateBase is equal to
        nlMatrixTopNOctets, when the next topN report is generated,
        matrix entries with the highest value of nlMatrixTopNOctetRate
        shall be placed in this table in decreasing order of this rate
        until there is no more room or until there are no more
        matrix entries.

        It is an implementation-specific matter how entries with the
        same value of nlMatrixTopNPktRate or nlMatrixTopNOctetRate are
        sorted.  It is also an implementation-specific matter as to
        whether or not zero-valued entries are available."                      ?"The value of sysUpTime when this top N report was
        last started.  In other words, this is the time that
        the associated nlMatrixTopNControlTimeRemaining object was
        modified to start the requested report or the time
        the report was last automatically (re)started.

        This object may be used by the management station to
        determine if a report was missed or not."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      >"The status of this nlMatrixTopNControlEntry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all
        associated entries in the nlMatrixTopNTable shall be deleted
        by the agent."                       ?"A set of statistics for those network layer matrix entries
        that have counted the highest number of octets or packets."                      ""A conceptual row in the nlMatrixTopNTable.

        The nlMatrixTopNControlIndex value in the index identifies the
        nlMatrixTopNControlEntry on whose behalf this entry was
        created.

        An example of the indexing of this table is
        nlMatrixTopNPktRate.3.10"                      4"An index that uniquely identifies an entry in
        the nlMatrixTopNTable among those in the same report.

        This index is between 1 and N, where N is the
        number of entries in this report.

        If the value of nlMatrixTopNControlRateBase is equal to
        nlMatrixTopNPkts, increasing values of nlMatrixTopNIndex shall
        be assigned to entries with decreasing values of
        nlMatrixTopNPktRate until index N is assigned or there are no
        more nlMatrixTopNEntries.

        If the value of nlMatrixTopNControlRateBase is equal to
        nlMatrixTopNOctets, increasing values of nlMatrixTopNIndex
        shall be assigned to entries with decreasing values of
        nlMatrixTopNOctetRate until index N is assigned or there are
        no more nlMatrixTopNEntries."                       c"The protocolDirLocalIndex of the network layer protocol of
        this entry's network address."                      ?"The network layer address of the source host in this
        conversation.

        This is represented as an octet string with
        specific semantics and length as identified
        by the associated nlMatrixTopNProtocolDirLocalIndex.

        For example, if the protocolDirLocalIndex indicates an
        encapsulation of ip, this object is encoded as a length
        octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      ?"The network layer address of the destination host in this
        conversation.

        This is represented as an octet string with
        specific semantics and length as identified
        by the associated nlMatrixTopNProtocolDirLocalIndex.

        For example, if the nlMatrixTopNProtocolDirLocalIndex
        indicates an encapsulation of ip, this object is encoded as a
        length octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      F"The number of packets seen from the source host
        to the destination host during this sampling interval, counted
        using the rules for counting the nlMatrixSDPkts object.
        If the value of nlMatrixTopNControlRateBase is
        nlMatrixTopNPkts, this variable will be used to sort this
        report."                      ?"The number of packets seen from the destination host to the
        source host during this sampling interval, counted
        using the rules for counting the nlMatrixSDPkts object (note
        that the corresponding nlMatrixSDPkts object selected is the
        one whose source address is equal to nlMatrixTopNDestAddress
        and whose destination address is equal to
        nlMatrixTopNSourceAddress.)

        Note that if the value of nlMatrixTopNControlRateBase is equal
        to nlMatrixTopNPkts, the sort of topN entries is based
        entirely on nlMatrixTopNPktRate, and not on the value of this
        object."                      J"The number of octets seen from the source host
        to the destination host during this sampling interval, counted
        using the rules for counting the nlMatrixSDOctets object.  If
        the value of nlMatrixTopNControlRateBase is
        nlMatrixTopNOctets, this variable will be used to sort this
        report."                      ?"The number of octets seen from the destination host to the
        source host during this sampling interval, counted
        using the rules for counting the nlMatrixDSOctets object (note
        that the corresponding nlMatrixSDOctets object selected is the
        one whose source address is equal to nlMatrixTopNDestAddress
        and whose destination address is equal to
        nlMatrixTopNSourceAddress.)

        Note that if the value of nlMatrixTopNControlRateBase is equal
        to nlMatrixTopNOctets, the sort of topN entries is based
        entirely on nlMatrixTopNOctetRate, and not on the value of
        this object."                          ?"A collection of statistics for a particular protocol from a
        particular network address that has been discovered on an
        interface of this device.

        The probe will populate this table for all protocols in the
        protocol directory table whose value of
        protocolDirHostConfig is equal to supportedOn(3), and
        will delete any entries whose protocolDirEntry is deleted or
        has a protocolDirHostConfig value of supportedOff(2).

        The probe will add to this table all addresses
        seen as the source or destination address in all packets with
        no MAC errors, and will increment octet and packet counts in
        the table for all packets with no MAC errors.  Further,
        entries will only be added to this table if their address
        exists in the nlHostTable and will be deleted from this table
        if their address is deleted from the nlHostTable."                      z"A conceptual row in the alHostTable.

        The hlHostControlIndex value in the index identifies the
        hlHostControlEntry on whose behalf this entry was created.
        The first protocolDirLocalIndex value in the index identifies
        the network layer protocol of the address.
        The nlHostAddress value in the index identifies the network
        layer address of this entry.
        The second protocolDirLocalIndex value in the index identifies
        the protocol that is counted by this entry.

        An example of the indexing in this entry is
        alHostOutPkts.1.783495.18.4.128.2.6.6.34"                       e"A TimeFilter for this entry.  See the TimeFilter textual
        convention to see how this works."                      ^"The number of packets of this protocol type without errors
        transmitted to this address since it was added to the
        alHostTable.  Note that this is the number of link-layer
        packets, so if a single network-layer packet is fragmented
        into several link-layer frames, this counter is incremented
        several times."                      ^"The number of packets of this protocol type without errors
        transmitted by this address since it was added to the
        alHostTable.  Note that this is the number of link-layer
        packets, so if a single network-layer packet is fragmented
        into several link-layer frames, this counter is incremented
        several times."                      ?"The number of octets transmitted to this address
        of this protocol type since it was added to the
        alHostTable (excluding framing bits but including
        FCS octets), excluding those octets in packets that
        contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                      ?"The number of octets transmitted by this address
        of this protocol type since it was added to the
        alHostTable (excluding framing bits but including
        FCS octets), excluding those octets in packets that
        contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                       ?"The value of sysUpTime when this entry was last activated.
        This can be used by the management station to ensure that the
        entry has not been deleted and recreated between polls."                          y"A list of application traffic matrix entries which collect
        statistics for conversations of a particular protocol between
        two network-level addresses.  This table is indexed first by
        the source address and then by the destination address to make
        it convenient to collect all statistics from a particular
        address.

        The probe will populate this table for all protocols in the
        protocol directory table whose value of
        protocolDirMatrixConfig is equal to supportedOn(3), and
        will delete any entries whose protocolDirEntry is deleted or
        has a protocolDirMatrixConfig value of supportedOff(2).

        The probe will add to this table all pairs of addresses for
        all protocols seen in all packets with no MAC errors, and will
        increment octet and packet counts in the table for all packets
        with no MAC errors.  Further, entries will only be added to
        this table if their address pair exists in the nlMatrixSDTable
        and will be deleted from this table if the address pair is
        deleted from the nlMatrixSDTable."                      ?"A conceptual row in the alMatrixSDTable.

        The hlMatrixControlIndex value in the index identifies the
        hlMatrixControlEntry on whose behalf this entry was created.
        The first protocolDirLocalIndex value in the index identifies
        the network layer protocol of the nlMatrixSDSourceAddress and
        nlMatrixSDDestAddress.
        The nlMatrixSDSourceAddress value in the index identifies the
        network layer address of the source host in this conversation.
        The nlMatrixSDDestAddress value in the index identifies the
        network layer address of the destination host in this
        conversation.
        The second protocolDirLocalIndex value in the index identifies
        the protocol that is counted by this entry.

        An example of the indexing of this entry is
        alMatrixSDPkts.1.783495.18.4.128.2.6.6.4.128.2.6.7.34"                       e"A TimeFilter for this entry.  See the TimeFilter textual
        convention to see how this works."                      ?"The number of packets of this protocol type without errors
        transmitted from the source address to the destination address
        since this entry was added to the alMatrixSDTable.  Note that
        this is the number of link-layer packets, so if a single
        network-layer packet is fragmented into several link-layer
        frames, this counter is incremented several times."                      ?"The number of octets in packets of this protocol type
        transmitted from the source address to the destination address
        since this entry was added to the alMatrixSDTable (excluding
        framing bits but including FCS octets), excluding those octets
        in packets that contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                       ?"The value of sysUpTime when this entry was last activated.
        This can be used by the management station to ensure that the
        entry has not been deleted and recreated between polls."                      w"A list of application traffic matrix entries which collect
        statistics for conversations of a particular protocol between
        two network-level addresses.  This table is indexed first by
        the destination address and then by the source address to make
        it convenient to collect all statistics to a particular
        address.

        The probe will populate this table for all protocols in the
        protocol directory table whose value of
        protocolDirMatrixConfig is equal to supportedOn(3), and
        will delete any entries whose protocolDirEntry is deleted or
        has a protocolDirMatrixConfig value of supportedOff(2).

        The probe will add to this table all pairs of addresses for
        all protocols seen in all packets with no MAC errors, and will
        increment octet and packet counts in the table for all packets
        with no MAC errors.  Further, entries will only be added to
        this table if their address pair exists in the nlMatrixDSTable
        and will be deleted from this table if the address pair is
        deleted from the nlMatrixDSTable."                      ?"A conceptual row in the alMatrixDSTable.

        The hlMatrixControlIndex value in the index identifies the
        hlMatrixControlEntry on whose behalf this entry was created.
        The first protocolDirLocalIndex value in the index identifies
        the network layer protocol of the alMatrixDSSourceAddress and
        alMatrixDSDestAddress.

        The nlMatrixDSDestAddress value in the index identifies the
        network layer address of the destination host in this
        conversation.
        The nlMatrixDSSourceAddress value in the index identifies the
        network layer address of the source host in this conversation.
        The second protocolDirLocalIndex value in the index identifies
        the protocol that is counted by this entry.

        An example of the indexing of this entry is
        alMatrixDSPkts.1.783495.18.4.128.2.6.7.4.128.2.6.6.34"                       e"A TimeFilter for this entry.  See the TimeFilter textual
        convention to see how this works."                      ?"The number of packets of this protocol type without errors
        transmitted from the source address to the destination address
        since this entry was added to the alMatrixDSTable.  Note that
        this is the number of link-layer packets, so if a single
        network-layer packet is fragmented into several link-layer
        frames, this counter is incremented several times."                      ?"The number of octets in packets of this protocol type
        transmitted from the source address to the destination address
        since this entry was added to the alMatrixDSTable (excluding
        framing bits but including FCS octets), excluding those octets
        in packets that contained errors.

        Note this doesn't count just those octets in the particular
        protocol frames, but includes the entire packet that contained
        the protocol."                       ?"The value of sysUpTime when this entry was last activated.
        This can be used by the management station to ensure that the
        entry has not been deleted and recreated between polls."                       ?"A set of parameters that control the creation of a
        report of the top N matrix entries according to
        a selected metric."                       ?"A conceptual row in the alMatrixTopNControlTable.

        An example of the indexing of this table is
        alMatrixTopNControlDuration.3"                       ?"An index that uniquely identifies an entry
        in the alMatrixTopNControlTable.  Each such
        entry defines one top N report prepared for
        one interface."                      ?"The alMatrix[SD/DS] table for which a top N report will be
        prepared on behalf of this entry.  The alMatrix[SD/DS] table
        is identified by the value of the hlMatrixControlIndex
        for that table - that value is used here to identify the
        particular table.

        This object may not be modified if the associated
        alMatrixTopNControlStatus object is equal to active(1)."                      k"The variable for each alMatrix[SD/DS] entry that the
        alMatrixTopNEntries are sorted by, as well as the
        selector of the view of the matrix table that will be
        used.

        The values alMatrixTopNTerminalsPkts and
        alMatrixTopNTerminalsOctets cause collection only from
        protocols that have no child protocols that are counted.  The
        values alMatrixTopNAllPkts and alMatrixTopNAllOctets cause
        collection from all alMatrix entries.

        This object may not be modified if the associated
        alMatrixTopNControlStatus object is equal to active(1)."                      P"The number of seconds left in the report currently
        being collected.  When this object is modified by
        the management station, a new collection is started,
        possibly aborting a currently running report.  The
        new value is used as the requested duration of this
        report, and is immediately loaded into the associated
        alMatrixTopNControlDuration object.
        When the report finishes, the probe will automatically
        start another collection with the same initial value
        of alMatrixTopNControlTimeRemaining.  Thus the management
        station may simply read the resulting reports repeatedly,
        checking the startTime and duration each time to ensure that a
        report was not missed or that the report parameters were not
        changed.

        While the value of this object is non-zero, it decrements
        by one per second until it reaches zero.  At the time
        that this object decrements to zero, the report is made
        accessible in the alMatrixTopNTable, overwriting any report
        that may be there.

        When this object is modified by the management station, any
        associated entries in the alMatrixTopNTable shall be deleted.

        (Note that this is a different algorithm than the one used in
        the hostTopNTable)."                       ?"The number of reports that have been generated by this entry."                      ?"The number of seconds that this report has collected
        during the last sampling interval.

        When the associated alMatrixTopNControlTimeRemaining object
        is set, this object shall be set by the probe to the
        same value and shall not be modified until the next
        time the alMatrixTopNControlTimeRemaining is set.

        This value shall be zero if no reports have been
        requested for this alMatrixTopNControlEntry."                      ."The maximum number of matrix entries requested for this report.

        When this object is created or modified, the probe
        should set alMatrixTopNControlGrantedSize as closely to this
        object as is possible for the particular probe
        implementation and available resources."                      "The maximum number of matrix entries in this report.

        When the associated alMatrixTopNControlRequestedSize object
        is created or modified, the probe should set this
        object as closely to the requested value as is
        possible for the particular implementation and
        available resources. The probe must not lower this
        value except as a result of a set to the associated
        alMatrixTopNControlRequestedSize object.

        If the value of alMatrixTopNControlRateBase is equal to
        alMatrixTopNTerminalsPkts or alMatrixTopNAllPkts, when the
        next topN report is generated, matrix entries with the highest
        value of alMatrixTopNPktRate shall be placed in this table in
        decreasing order of this rate until there is no more room or
        until there are no more matrix entries.

        If the value of alMatrixTopNControlRateBase is equal to
        alMatrixTopNTerminalsOctets or alMatrixTopNAllOctets, when the
        next topN report is generated, matrix entries with the highest
        value of alMatrixTopNOctetRate shall be placed in this table
        in decreasing order of this rate until there is no more room
        or until there are no more matrix entries.

        It is an implementation-specific matter how entries with the
        same value of alMatrixTopNPktRate or alMatrixTopNOctetRate are
        sorted.  It is also an implementation-specific matter as to
        whether or not zero-valued entries are available."                      ?"The value of sysUpTime when this top N report was
        last started.  In other words, this is the time that
        the associated alMatrixTopNControlTimeRemaining object
        was modified to start the requested report or the time
        the report was last automatically (re)started.

        This object may be used by the management station to
        determine if a report was missed or not."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      >"The status of this alMatrixTopNControlEntry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all
        associated entries in the alMatrixTopNTable shall be
        deleted by the agent."                       ?"A set of statistics for those application layer matrix
        entries that have counted the highest number of octets or
        packets."                      ""A conceptual row in the alMatrixTopNTable.

        The alMatrixTopNControlIndex value in the index identifies
        the alMatrixTopNControlEntry on whose behalf this entry was
        created.

        An example of the indexing of this table is
        alMatrixTopNPktRate.3.10"                      t"An index that uniquely identifies an entry in
        the alMatrixTopNTable among those in the same report.
        This index is between 1 and N, where N is the
        number of entries in this report.

        If the value of alMatrixTopNControlRateBase is equal to
        alMatrixTopNTerminalsPkts or alMatrixTopNAllPkts, increasing
        values of alMatrixTopNIndex shall be assigned to entries with
        decreasing values of alMatrixTopNPktRate until index N is
        assigned or there are no more alMatrixTopNEntries.

        If the value of alMatrixTopNControlRateBase is equal to
        alMatrixTopNTerminalsOctets or alMatrixTopNAllOctets,
        increasing values of alMatrixTopNIndex shall be assigned to
        entries with decreasing values of alMatrixTopNOctetRate until
        index N is assigned or there are no more alMatrixTopNEntries."                       c"The protocolDirLocalIndex of the network layer protocol of
        this entry's network address."                      ?"The network layer address of the source host in this
        conversation.
        This is represented as an octet string with
        specific semantics and length as identified
        by the associated alMatrixTopNProtocolDirLocalIndex.

        For example, if the alMatrixTopNProtocolDirLocalIndex
        indicates an encapsulation of ip, this object is encoded as a
        length octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                      ?"The network layer address of the destination host in this
        conversation.

        This is represented as an octet string with
        specific semantics and length as identified
        by the associated alMatrixTopNProtocolDirLocalIndex.

        For example, if the alMatrixTopNProtocolDirLocalIndex
        indicates an encapsulation of ip, this object is encoded as a
        length octet of 4, followed by the 4 octets of the ip address,
        in network byte order."                       8"The type of the protocol counted by this matrix entry."                      ?"The number of packets seen of this protocol from the source
        host to the destination host during this sampling interval,
        counted using the rules for counting the alMatrixSDPkts
        object.

        If the value of alMatrixTopNControlRateBase is
        alMatrixTopNTerminalsPkts or alMatrixTopNAllPkts, this
        variable will be used to sort this report."                      ?"The number of packets seen of this protocol from the
        destination host to the source host during this sampling
        interval, counted using the rules for counting the
        alMatrixDSPkts object  (note that the corresponding
        alMatrixSDPkts object selected is the one whose source address
        is equal to alMatrixTopNDestAddress and whose destination
        address is equal to alMatrixTopNSourceAddress.)

        Note that if the value of alMatrixTopNControlRateBase is equal
        to alMatrixTopNTerminalsPkts or alMatrixTopNAllPkts, the sort
        of topN entries is based entirely on alMatrixTopNPktRate, and
        not on the value of this object."                      ?"The number of octets seen of this protocol from the source
        host to the destination host during this sampling interval,
        counted using the rules for counting the alMatrixSDOctets
        object.

        If the value of alMatrixTopNControlRateBase is
        alMatrixTopNTerminalsOctets or alMatrixTopNAllOctets, this
        variable will be used to sort this report."                      ?"The number of octets seen of this protocol from the
        destination host to the source host during this sampling
        interval, counted using the rules for counting the
        alMatrixDSOctets object  (note that the corresponding
        alMatrixSDOctets object selected is the one whose source
        address is equal to alMatrixTopNDestAddress and whose
        destination address is equal to alMatrixTopNSourceAddress.)

        Note that if the value of alMatrixTopNControlRateBase is equal
        to alMatrixTopNTerminalsOctets or alMatrixTopNAllOctets, the
        sort of topN entries is based entirely on
        alMatrixTopNOctetRate, and not on the value of this object."                           2"A list of data-collection configuration entries."                      "A list of parameters that set up a group of user-defined
        MIB objects to be sampled periodically (called a
        bucket-group).

        For example, an instance of usrHistoryControlInterval
        might be named usrHistoryControlInterval.1"                       ?"An index that uniquely identifies an entry in the
        usrHistoryControlTable.  Each such entry defines a
        set of samples at a particular interval for a specified
        set of MIB instances available from the managed system."                      "The number of MIB objects to be collected
        in the portion of usrHistoryTable associated with this
        usrHistoryControlEntry.

        This object may not be modified if the associated instance
        of usrHistoryControlStatus is equal to active(1)."                      ?"The requested number of discrete time intervals
        over which data is to be saved in the part of the
        usrHistoryTable associated with this usrHistoryControlEntry.

        When this object is created or modified, the probe
        should set usrHistoryControlBucketsGranted as closely to
        this object as is possible for the particular probe
        implementation and available resources."                      ?"The number of discrete sampling intervals
        over which data shall be saved in the part of
        the usrHistoryTable associated with this
        usrHistoryControlEntry.

        When the associated usrHistoryControlBucketsRequested
        object is created or modified, the probe should set
        this object as closely to the requested value as is
        possible for the particular  probe implementation and
        available resources.  The probe must not lower this
        value except as a result of a modification to the associated
        usrHistoryControlBucketsRequested object.

        The associated usrHistoryControlBucketsRequested object
        should be set before or at the same time as this object
        to allow the probe to accurately estimate the resources
        required for this usrHistoryControlEntry.

        There will be times when the actual number of buckets
        associated with this entry is less than the value of
        this object.  In this case, at the end of each sampling
        interval, a new bucket will be added to the usrHistoryTable.

        When the number of buckets reaches the value of this object
        and a new bucket is to be added to the usrHistoryTable,
        the oldest bucket associated with this usrHistoryControlEntry
        shall be deleted by the agent so that the new bucket can be
        added.

        When the value of this object changes to a value less than
        the current value, entries are deleted from the
        usrHistoryTable associated with this usrHistoryControlEntry.
        Enough of the oldest of these entries shall be deleted by the
        agent so that their number remains less than or equal to the
        new value of this object.

        When the value of this object changes to a value greater
        than the current value, the number of associated usrHistory
        entries may be allowed to grow."                      ?"The interval in seconds over which the data is
        sampled for each bucket in the part of the usrHistory
        table associated with this usrHistoryControlEntry.

        Because the counters in a bucket may overflow at their
        maximum value with no indication, a prudent manager will
        take into account the possibility of overflow in any of
        the associated counters. It is important to consider the
        minimum time in which any counter could overflow on a
        particular media type and set the usrHistoryControlInterval
        object to a value less than this interval.

        This object may not be modified if the associated
        usrHistoryControlStatus object is equal to active(1)."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      ,"The status of this variable history control entry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value.

        If this object is not equal to active(1), all associated
        entries in the usrHistoryTable shall be deleted."                       2"A list of data-collection configuration entries."                      ?"A list of MIB instances to be sampled periodically.

        Entries in this table are created when an associated
        usrHistoryControlObjects object is created.

        The usrHistoryControlIndex value in the index is
        that of the associated usrHistoryControlEntry.

        For example, an instance of usrHistoryObjectVariable might be
        usrHistoryObjectVariable.1.3"                       ?"An index used to uniquely identify an entry in the
        usrHistoryObject table.  Each such entry defines a
        MIB instance to be collected periodically."                      >"The object identifier of the particular variable to be
        sampled.

        Only variables that resolve to an ASN.1 primitive type of
        Integer32 (Integer32, Counter, Gauge, or TimeTicks) may be
        sampled.

        Because SNMP access control is articulated entirely in terms
        of the contents of MIB views, no access control mechanism
        exists that can restrict the value of this object to identify
        only those objects that exist in a particular MIB view.
        Because there is thus no acceptable means of restricting the
        read access that could be obtained through the user history
        mechanism, the probe must only grant write access to this
        object in those views that have read access to all objects on
        the probe.

        During a set operation, if the supplied variable name is not
        available in the selected MIB view, a badValue error must be
        returned.

        This object may not be modified if the associated
        usrHistoryControlStatus object is equal to active(1)."                      ?"The method of sampling the selected variable for storage in
        the usrHistoryTable.

        If the value of this object is absoluteValue(1), the value of
        the selected variable will be copied directly into the history
        bucket.

        If the value of this object is deltaValue(2), the value of the
        selected variable at the last sample will be subtracted from
        the current value, and the difference will be stored in the
        history bucket. If the associated usrHistoryObjectVariable
        instance could not be obtained at the previous sample
        interval, then a delta sample is not possible, and the value
        of the associated usrHistoryValStatus object for this interval
        will be valueNotAvailable(1).

        This object may not be modified if the associated
        usrHistoryControlStatus object is equal to active(1)."                       )"A list of user defined history entries."                      ?"A historical sample of user-defined variables.  This sample
        is associated with the usrHistoryControlEntry which set up the
        parameters for a regular collection of these samples.

        The usrHistoryControlIndex value in the index identifies the
        usrHistoryControlEntry on whose behalf this entry was created.

        The usrHistoryObjectIndex value in the index identifies the
        usrHistoryObjectEntry on whose behalf this entry was created.

        For example, an instance of usrHistoryAbsValue, which represents
        the 14th sample of a variable collected as specified by
        usrHistoryControlEntry.1 and usrHistoryObjectEntry.1.5,
        would be named usrHistoryAbsValue.1.14.5"                       ?"An index that uniquely identifies the particular sample this
        entry represents among all samples associated with the same
        usrHistoryControlEntry. This index starts at 1 and increases
        by one as each new sample is taken."                      |"The value of sysUpTime at the start of the interval over
        which this sample was measured.  If the probe keeps track of
        the time of day, it should start the first sample of the
        history at a time such that when the next hour of the day
        begins, a sample is started at that instant.

        Note that following this rule may require the probe to delay
        collecting the first sample of the history, as each sample
        must be of the same interval. Also note that the sample which
        is currently being collected is not accessible in this table
        until the end of its interval."                       a"The value of sysUpTime at the end of the interval over which
        this sample was measured."                      ?"The absolute value (i.e. unsigned value) of the
        user-specified statistic during the last sampling period. The
        value during the current sampling period is not made available
        until the period is completed.

        To obtain the true value for this sampling interval, the
        associated instance of usrHistoryValStatus must be checked,
        and usrHistoryAbsValue adjusted as necessary.

        If the MIB instance could not be accessed during the sampling
        interval, then this object will have a value of zero and the
        associated instance of usrHistoryValStatus will be set to
        'valueNotAvailable(1)'."                      ?"This object indicates the validity and sign of the data in
        the associated instance of usrHistoryAbsValue.

        If the MIB instance could not be accessed during the sampling
        interval, then 'valueNotAvailable(1)' will be returned.

        If the sample is valid and actual value of the sample is
        greater than or equal to zero then 'valuePositive(2)' is
        returned.

        If the sample is valid and the actual value of the sample is
        less than zero, 'valueNegative(3)' will be returned. The
        associated instance of usrHistoryAbsValue should be multiplied
        by -1 to obtain the true sample value."                           b"An indication of the RMON MIB groups supported
        on at least one interface by this probe."                       q"The software revision of this device.  This string will have
        a zero length if the revision is unknown."                       q"The hardware revision of this device.  This string will have
        a zero length if the revision is unknown."                      e"Probe's current date and time.

         field  octets  contents                  range
         -----  ------  --------                  -----
           1      1-2   year                      0..65536
           2       3    month                     1..12
           3       4    day                       1..31
           4       5    hour                      0..23
           5       6    minutes                   0..59
           6       7    seconds                   0..60
                         (use 60 for leap-second)
           7       8    deci-seconds              0..9
           8       9    direction from UTC        '+' / '-'
           9      10    hours from UTC            0..11
          10      11    minutes from UTC          0..59

         For example, Tuesday May 26, 1992 at 1:30:15 PM
         EDT would be displayed as:

                     1992-5-26,13:30:15.0,-4:0

         Note that if only local time is known, then
         timezone information (fields 8-10) is not
         present, and if no time information is known, the null
         string is returned."                      ?"Setting this object to warmBoot(2) causes the device to
        restart the application software with current configuration
        parameters saved in non-volatile memory.  Setting this
        object to coldBoot(3) causes the device to reinitialize
        configuration parameters in non-volatile memory to default
        values and restart the application software.  When the device
        is running normally, this variable has a value of
        running(1)."                       ?"The file name to be downloaded from the TFTP server when a
        download is next requested via this MIB.  This value is set to
        the zero length string when no file name has been specified."                       ?"The IP address of the TFTP server that contains the boot
        image to load when a download is next requested via this MIB.
        This value is set to `0.0.0.0' when no IP address has been
        specified."                      @"When this object is set to downloadToRAM(2) or
        downloadToPROM(3), the device will discontinue its
        normal operation and begin download of the image specified
        by probeDownloadFile from the server specified by
        probeDownloadTFTPServer using the TFTP protocol.  If
        downloadToRAM(2) is specified, the new image is copied
        to RAM only (the old image remains unaltered in the flash
        EPROM).  If downloadToPROM(3) is specified
        the new image is written to the flash EPROM
        memory after its checksum has been verified to be correct.
        When the download process is completed, the device will
        warm boot to restart the newly loaded application.
        When the device is not downloading, this object will have
        a value of notDownloading(1)."                       ?"The status of the last download procedure, if any.  This
        object will have a value of downloadStatusUnknown(2) if no
        download process has been performed."                       ?"A table of serial interface configuration entries.  This data
        will be stored in non-volatile memory and preserved across
        probe resets or power loss."                      "A set of configuration parameters for a particular
        serial interface on this device. If the device has no serial
        interfaces, this table is empty.

        The index is composed of the ifIndex assigned to this serial
        line interface."                       N"The type of incoming connection to expect on this serial
        interface."                       S"The type of data link encapsulation to be used on this
        serial interface."                      ?"This timeout value is used when the Management Station has
        initiated the conversation over the serial link. This variable
        represents the number of seconds of inactivity allowed before
        terminating the connection on this serial interface. Use the
        serialDialoutTimeout in the case where the probe has initiated
        the connection for the purpose of sending a trap."                      ?"A control string which controls how a modem attached to this
        serial interface should be initialized.  The initialization
        is performed once during startup and again after each
        connection is terminated if the associated serialMode has the
        value of modem(2).

        A control string that is appropriate for a wide variety of
        modems is: '^s^MATE0Q0V1X4 S0=1 S2=43^M'."                      K"A control string which specifies how to disconnect a modem
         connection on this serial interface.  This object is only
         meaningful if the associated serialMode has the value
         of modem(2).
         A control string that is appropriate for a wide variety of
         modems is: '^d2^s+++^d2^sATH0^M^d2'."                      ?"An ASCII string containing substrings that describe the
        expected modem connection response code and associated bps
        rate.  The substrings are delimited by the first character
        in the string, for example:
           /CONNECT/300/CONNECT 1200/1200/CONNECT 2400/2400/
           CONNECT 4800/4800/CONNECT 9600/9600
        will be interpreted as:
            response code    bps rate
            CONNECT            300
            CONNECT 1200      1200
            CONNECT 2400      2400
            CONNECT 4800      4800
            CONNECT 9600      9600
        The agent will use the information in this string to adjust
        the bps rate of this serial interface once a modem connection
        is established.

        A value that is appropriate for a wide variety of modems is:
        '/CONNECT/300/CONNECT 1200/1200/CONNECT 2400/2400/
         CONNECT 4800/4800/CONNECT 9600/9600/CONNECT 14400/14400/
        CONNECT 19200/19200/CONNECT 38400/38400/'."                      ?"An ASCII string containing response codes that may be
        generated by a modem to report the reason why a connection
        attempt has failed.  The response codes are delimited by
        the first character in the string, for example:
           /NO CARRIER/BUSY/NO DIALTONE/NO ANSWER/ERROR/
        If one of these response codes is received via this serial
        interface while attempting to make a modem connection,
        the agent will issue the hang up command as specified by
        serialModemHangUpString.

        A value that is appropriate for a wide variety of modems is:
        '/NO CARRIER/BUSY/NO DIALTONE/NO ANSWER/ERROR/'."                      '"This timeout value is used when the probe initiates the
        serial connection with the intention of contacting a
        management station. This variable represents the number
        of seconds of inactivity allowed before terminating the
        connection on this serial interface."                       ?"The status of this serialConfigEntry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value."                       "A table of netConfigEntries."                      "A set of configuration parameters for a particular
        network interface on this device. If the device has no network
        interface, this table is empty.

        The index is composed of the ifIndex assigned to the
        corresponding interface."                      p"The IP address of this Net interface.  The default value
        for this object is 0.0.0.0.  If either the netConfigIPAddress
        or netConfigSubnetMask are 0.0.0.0, then when the device
        boots, it may use BOOTP to try to figure out what these
        values should be. If BOOTP fails, before the device
        can talk on the network, this value must be configured
        (e.g., through a terminal attached to the device). If BOOTP is
        used, care should be taken to not send BOOTP broadcasts too
        frequently and to eventually send very infrequently if no
        replies are received."                      q"The subnet mask of this Net interface.  The default value
        for this object is 0.0.0.0.  If either the netConfigIPAddress
        or netConfigSubnetMask are 0.0.0.0, then when the device
        boots, it may use BOOTP to try to figure out what these
        values should be. If BOOTP fails, before the device
        can talk on the network, this value must be configured
        (e.g., through a terminal attached to the device). If BOOTP is
        used, care should be taken to not send BOOTP broadcasts too
        frequently and to eventually send very infrequently if no
        replies are received."                       ?"The status of this netConfigEntry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value."                       z"The IP Address of the default gateway.  If this value is
        undefined or unknown, it shall have the value 0.0.0.0."           --    MAX-ACCESS read-create
           %"A list of trap destination entries."                       b"This entry includes a destination IP address to which to send
        traps for this community."                       6"A value that uniquely identifies this trapDestEntry."                      "A community to which this destination address belongs.
        This entry is associated with any eventEntries in the RMON
        MIB whose value of eventCommunity is equal to the value of
        this object.  Every time an associated event entry sends a
        trap due to an event, that trap will be sent to each
        address in the trapDestTable with a trapDestCommunity equal to
        eventCommunity.

        This object may not be modified if the associated
        trapDestStatus object is equal to active(1)."                       ,"The protocol with which to send this trap."                      )"The address to send traps on behalf of this entry.

        If the associated trapDestProtocol object is equal to ip(1),
        the encoding of this object is the same as the snmpUDPAddress
        textual convention in [RFC1906]:
          -- for a SnmpUDPAddress of length 6:
          --
          -- octets   contents        encoding
          --  1-4     IP-address      network-byte order
          --  5-6     UDP-port        network-byte order

        If the associated trapDestProtocol object is equal to ipx(2),
        the encoding of this object is the same as the snmpIPXAddress
        textual convention in [RFC1906]:
          -- for a SnmpIPXAddress of length 12:
          --
          -- octets   contents            encoding
          --  1-4     network-number      network-byte order
          --  5-10    physical-address    network-byte order
          -- 11-12    socket-number       network-byte order

        This object may not be modified if the associated
        trapDestStatus object is equal to active(1)."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                       ?"The status of this trap destination entry.

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value."                       $"A list of serialConnectionEntries."                       3"Configuration for a SLIP link over a serial line."                       H"A value that uniquely identifies this serialConnection
        entry."                       ?"The IP Address that can be reached at the other end of this
        serial connection.
        This object may not be modified if the associated
        serialConnectStatus object is equal to active(1)."                      "The type of outgoing connection to make.  If this object
        has the value direct(1), then a direct serial connection
        is assumed.  If this object has the value modem(2),
        then serialConnectDialString will be used to make a modem
        connection.  If this object has the value switch(3),
        then serialConnectSwitchConnectSeq will be used to establish
        the connection over a serial data switch, and
        serialConnectSwitchDisconnectSeq will be used to terminate
        the connection.  If this object has the value
        modem-switch(4), then a modem connection will be made first
        followed by the switch connection.

        This object may not be modified if the associated
        serialConnectStatus object is equal to active(1)."                      "A control string which specifies how to dial the phone
        number in order to establish a modem connection.  The
        string should include dialing prefix and suffix.  For
        example: ``^s^MATD9,888-1234^M'' will instruct the Probe
        to send a carriage return followed by the dialing prefix
        ``ATD'', the phone number ``9,888-1234'', and a carriage
        return as the dialing suffix.
        This object may not be modified if the associated
        serialConnectStatus object is equal to active(1)."                       ?"A control string which specifies how to establish a
        data switch connection.
        This object may not be modified if the associated
        serialConnectStatus object is equal to active(1)."                       ?"A control string which specifies how to terminate a
        data switch connection.
        This object may not be modified if the associated
        serialConnectStatus object is equal to active(1)."                       ?"A control string which specifies how to reset a data
        switch in the event of a timeout.
        This object may not be modified if the associated
        serialConnectStatus object is equal to active(1)."                       e"The entity that configured this entry and is
        therefore using the resources assigned to it."                      ?"The status of this serialConnectionEntry.

        If the manager attempts to set this object to active(1) when
        the serialConnectType is set to modem(2) or modem-switch(4)
        and the serialConnectDialString is a zero-length string or
        cannot be correctly parsed as a ConnectString, the set
        request will be rejected with badValue(3).

        If the manager attempts to set this object to active(1) when
        the serialConnectType is set to switch(3) or modem-switch(4)
        and the serialConnectSwitchConnectSeq,
        the serialConnectSwitchDisconnectSeq, or
        the serialConnectSwitchResetSeq are zero-length strings
        or cannot be correctly parsed as ConnectStrings, the set
        request will be rejected with badValue(3).

        An entry may not exist in the active state unless all
        objects in the entry have an appropriate value."                               F"Describes the requirements for conformance to
        the RMON2 MIB"   `"The rmon1EnhancementGroup is mandatory for systems which
            implement RMON [RFC1757]"             k"Describes the requirements for conformance to
        the RMON2 MIB with Application Layer Enhancements."   `"The rmon1EnhancementGroup is mandatory for systems which
            implement RMON [RFC1757]"                 ?"Lists the inventory of protocols the probe has the capability
        of monitoring and allows the addition, deletion, and
        configuration of entries in this list."                 y"Collects the relative amounts of octets and packets for the
        different protocols detected on a network segment."                 {"Lists MAC address to network address bindings discovered by
        the probe and what interface they were last seen on."                0"Counts the amount of traffic sent from and to each network
        address discovered by the probe. Note that while the
        hlHostControlTable also has objects that control an optional
        alHostTable, implementation of the alHostTable is not required
        to fully implement this group."                ;"Counts the amount of traffic sent between each pair of
        network addresses discovered by the probe. Note that while the
        hlMatrixControlTable also has objects that control optional
        alMatrixTables, implementation of the alMatrixTables is not
        required to fully implement this group."                 ?"Counts the amount of traffic, by protocol, sent from and to
        each network address discovered by the probe. Implementation
        of this group requires implementation of the Network Layer
        Host Group."                 ?"Counts the amount of traffic, by protocol, sent between each
        pair of network addresses discovered by the
        probe. Implementation of this group requires implementation of
        the Network Layer Matrix Group."                 x"The usrHistoryGroup provides user-defined collection of
        historical information from MIB objects on the probe."                 }"This group describes various operating parameters of the
        probe as well as controlling the local time of the probe."                 ^"This group controls the configuration of various operating
        parameters of the probe."                 U"This group adds some enhancements to RMON-1 that help
        management stations."                 U"This group adds some enhancements to RMON-1 that help
        management stations."                 U"This group adds some enhancements to RMON-1 that help
        management stations."                                    