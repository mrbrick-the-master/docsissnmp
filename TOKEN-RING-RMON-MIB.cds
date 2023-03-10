                                               ."A list of ringStation table control entries."                       ?"A list of parameters that set up the discovery of
            stations on a particular interface and the
            collection of statistics about these stations."                      ?"The value of this object uniquely identifies the
            interface on this remote network monitoring device
            from which ringStation data is collected.  The
            interface identified by a particular value of this
            object is the same interface as identified by the
            same value of the ifIndex object, defined in MIB-
            II [3]."                       ?"The number of ringStationEntries in the
            ringStationTable associated with this
            ringStationControlEntry."                       ?"The number of active ringStationEntries in the
            ringStationTable associated with this
            ringStationControlEntry."                       ""The current status of this ring."                       ?"The address of the sender of the last beacon
            frame received by the probe on this ring.  If no
            beacon frames have been received, this object
            shall be equal to six octets of zero."                       ?"The address of the NAUN in the last beacon frame
            received by the probe on this ring.  If no beacon
            frames have been received, this object shall be
            equal to six octets of zero."                       ?"The address of the Active Monitor on this
            segment.  If this address is unknown, this object
            shall be equal to six octets of zero."                       ?"The number of add and delete events in the
            ringStationOrderTable optionally associated with
            this ringStationControlEntry."                       i"The entity that configured this entry and is
            therefore using the resources assigned to it."                       ?"The status of this ringStationControl entry.

            If this object is not equal to valid(1), all
            associated entries in the ringStationTable shall
            be deleted by the agent."                       ?"A list of ring station entries.  An entry will
            exist for each station that is now or has
            previously been detected as physically present on
            this ring."                       ?"A collection of statistics for a particular
            station that has been discovered on a ring
            monitored by this device."                      m"The value of this object uniquely identifies the
            interface on this remote network monitoring device
            on which this station was detected.  The interface
            identified by a particular value of this object is
            the same interface as identified by the same value
            of the ifIndex object, defined in MIB-II [3]."                       '"The physical address of this station."                       G"The physical address of last known NAUN of this
            station."                       )"The status of this station on the ring."                       ?"The value of sysUpTime at the time this station
            last entered the ring.  If the time is unknown,
            this value shall be zero."                       ?"The value of sysUpTime at the time the probe
            detected that this station last exited the ring.
            If the time is unknown, this value shall be zero."                       V"The number of times this station experienced a
            duplicate address error."                       ?"The total number of line errors reported by this
            station in error reporting packets detected by the
            probe."                       ?"The total number of line errors reported in error
            reporting packets sent by the nearest active
            downstream neighbor of this station and detected
            by the probe."                       ?"The total number of adapter internal errors
            reported by this station in error reporting
            packets detected by the probe."                       ?"The total number of burst errors reported by this
            station in error reporting packets detected by the
            probe."                       ?"The total number of burst errors reported in
            error reporting packets sent by the nearest active
            downstream neighbor of this station and detected
            by the probe."                       ?"The total number of AC (Address Copied) errors
            reported in error reporting packets sent by the
            nearest active downstream neighbor of this station
            and detected by the probe."                       ?"The total number of abort delimiters reported by
            this station in error reporting packets detected
            by the probe."                       ?"The total number of lost frame errors reported by
            this station in error reporting packets detected
            by the probe."                       ?"The total number of receive congestion errors
            reported by this station in error reporting
            packets detected by the probe."                       ?"The total number of frame copied errors reported
            by this station in error reporting packets
            detected by the probe."                       ?"The total number of frequency errors reported by
            this station in error reporting packets detected
            by the probe."                       ?"The total number of token errors reported by this
            station in error reporting frames detected by the
            probe."                       `"The total number of beacon frames sent by this
            station and detected by the probe."                       j"The total number of beacon frames detected by the
            probe that name this station as the NAUN."                       ["The number of times the probe detected this
            station inserting onto the ring."                       i"A list of ring station entries for stations in
            the ring poll, ordered by their ring-order."                      	"A collection of statistics for a particular
            station that is active on a ring monitored by this
            device.  This table will contain information for
            every interface that has a
            ringStationControlStatus equal to valid."                      m"The value of this object uniquely identifies the
            interface on this remote network monitoring device
            on which this station was detected.  The interface
            identified by a particular value of this object is
            the same interface as identified by the same value
            of the ifIndex object, defined in MIB-II [3]."                      !"This index denotes the location of this station
            with respect to other stations on the ring.  This
            index is one more than the number of hops
            downstream that this station is from the rmon
            probe.  The rmon probe itself gets the value one."                       '"The physical address of this station."                       D"A list of ring station configuration control
            entries."                       ?"This entry controls active management of stations
            by the probe.  One entry exists in this table for
            each active station in the ringStationTable."                      m"The value of this object uniquely identifies the
            interface on this remote network monitoring device
            on which this station was detected.  The interface
            identified by a particular value of this object is
            the same interface as identified by the same value
            of the ifIndex object, defined in MIB-II [3]."                       '"The physical address of this station."                       ?"Setting this object to `removing(2)' causes a
            Remove Station MAC frame to be sent.  The agent
            will set this object to `stable(1)' after
            processing the request."                       ?"Setting this object to `updating(2)' causes the
            configuration information associate with this
            entry to be updated.  The agent will set this
            object to `stable(1)' after processing the
            request."                       ^"A list of configuration entries for stations on a
            ring monitored by this probe."                       ?"A collection of statistics for a particular
            station that has been discovered on a ring
            monitored by this probe."                      m"The value of this object uniquely identifies the
            interface on this remote network monitoring device
            on which this station was detected.  The interface
            identified by a particular value of this object is
            the same interface as identified by the same value
            of the ifIndex object, defined in MIB-II [3]."                       '"The physical address of this station."                       |"The value of sysUpTime at the time this
            configuration information was last updated
            (completely)."                       1"The assigned physical location of this station."                       )"The microcode EC level of this station."                       V"The low-order 4 octets of the group address
            recognized by this station."                       C"the functional addresses recognized by this
            station."                       ."A list of source routing statistics entries."                       d"A collection of source routing statistics kept
            for a particular Token Ring interface."                      ?"The value of this object uniquely identifies the
            interface on this remote network monitoring device
            on which source routing statistics will be
            detected.  The interface identified by a
            particular value of this object is the same
            interface as identified by the same value of the
            ifIndex object, defined in MIB-II [3]."                      9"The ring number of the ring monitored by this
            entry.  When any object in this entry is created,
            the probe will attempt to discover the ring
            number.  Only after the ring number is discovered
            will this object be created.  After creating an
            object in this entry, the management station
            should poll this object to detect when it is
            created.  Only after this object is created can
            the management station set the
            sourceRoutingStatsStatus entry to valid(1)."                       I"The count of frames sent into this ring from
            another ring."                       G"The count of frames sent from this ring to
            another ring."                       ^"The count of frames sent from another ring,
            through this ring, to another ring."                       W"The total number of good frames received that
            were All Routes Broadcast."                       Y"The total number of good frames received that
            were Single Route Broadcast."                       X"The count of octets in good frames sent into this
            ring from another ring."                       V"The count of octets in good frames sent from this
            ring to another ring."                       h"The count of octets in good frames sent another
            ring, through this ring, to another ring."                       a"The total number of octets in good frames
            received that were All Routes Broadcast."                       c"The total number of octets in good frames
            received that were Single Route Broadcast."                       ?"The total number of frames received who had no
            RIF field (or had a RIF field that only included
            the local ring's number) and were not All Route
            Broadcast Frames."                      ="The total number of frames received whose route
            had 1 hop, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      >"The total number of frames received whose route
            had 2 hops, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      >"The total number of frames received whose route
            had 3 hops, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      >"The total number of frames received whose route
            had 4 hops, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      >"The total number of frames received whose route
            had 5 hops, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      >"The total number of frames received whose route
            had 6 hops, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      >"The total number of frames received whose route
            had 7 hops, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      >"The total number of frames received whose route
            had 8 hops, were not All Route Broadcast Frames,
            and whose source or destination were on this ring
            (i.e. frames that had a RIF field and had this
            ring number in the first or last entry of the RIF
            field)."                      H"The total number of frames received whose route
            had more than 8 hops, were not All Route Broadcast
            Frames, and whose source or destination were on
            this ring (i.e. frames that had a RIF field and
            had this ring number in the first or last entry of
            the RIF field)."                       i"The entity that configured this entry and is
            therefore using the resources assigned to it."                       ."The status of this sourceRoutingStats entry."                                   A"A list of Mac-Layer Token Ring statistics
            entries."                       _"A collection of Mac-Layer statistics kept for a
            particular Token Ring interface."                       ?"The history of which this entry is a part.  The
            history identified by a particular value of this
            index is the same history as identified by the
            same value of historyControlIndex."                      !"An index that uniquely identifies the particular
            Mac-Layer sample this entry represents among all
            Mac-Layer samples associated with the same
            historyControlEntry.  This index starts at 1 and
            increases by one as each new sample is taken."                      ?"The value of sysUpTime at the start of the
            interval over which this sample was measured.  If
            the probe keeps track of the time of day, it
            should start the first sample of the history at a
            time such that when the next hour of the day
            begins, a sample is started at that instant.  Note
            that following this rule may require the probe to
            delay collecting the first sample of the history,
            as each sample must be of the same interval.  Also
            note that the sample which is currently being
            collected is not accessible in this table until
            the end of its interval."                      J"The total number of events in which packets were
            dropped by the probe due to lack of resources
            during this sampling interval.  Note that this
            number is not necessarily the number of packets
            dropped, it is just the number of times this
            condition has been detected."                       ?"The total number of octets of data in MAC packets
            (excluding those that were not good frames)
            received on the network during this sampling
            interval (excluding framing bits but including FCS
            octets)."                       ?"The total number of MAC packets (excluding those
            that were not good frames) received during this
            sampling interval."                      "The total number of times that the ring entered
            the ring purge state from normal ring state during
            this sampling interval.  The ring purge state that
            comes from the claim token or beacon state is not
            counted."                       {"The total number of Ring Purge MAC packets
            detected by the probe during this sampling
            interval."                      ?"The total number of times that the ring enters a
            beaconing state (beaconFrameStreamingState,
            beaconBitStreamingState,
            beaconSetRecoveryModeState, or
            beaconRingSignalLossState) during this sampling
            interval.  Note that a change of the source
            address of the beacon packet does not constitute a
            new beacon event."                       n"The amount of time that the ring has been in the
            beaconing state during this sampling interval."                       j"The total number of beacon MAC packets detected
            by the probe during this sampling interval."                      "The total number of times that the ring enters
            the claim token state from normal ring state or
            ring purge state during this sampling interval.
            The claim token state that comes from the beacon
            state is not counted."                       |"The total number of claim token MAC packets
            detected by the probe during this sampling
            interval."                       d"The total number of NAUN changes detected by the
            probe during this sampling interval."                       ?"The total number of line errors reported in error
            reporting packets detected by the probe during
            this sampling interval."                       ?"The total number of adapter internal errors
            reported in error reporting packets detected by
            the probe during this sampling interval."                       ?"The total number of burst errors reported in
            error reporting packets detected by the probe
            during this sampling interval."                       ?"The total number of AC (Address Copied) errors
            reported in error reporting packets detected by
            the probe during this sampling interval."                       ?"The total number of abort delimiters reported in
            error reporting packets detected by the probe
            during this sampling interval."                       ?"The total number of lost frame errors reported in
            error reporting packets detected by the probe
            during this sampling interval."                       ?"The total number of receive congestion errors
            reported in error reporting packets detected by
            the probe during this sampling interval."                       ?"The total number of frame copied errors reported
            in error reporting packets detected by the probe
            during this sampling interval."                       ?"The total number of frequency errors reported in
            error reporting packets detected by the probe
            during this sampling interval."                       ?"The total number of token errors reported in
            error reporting packets detected by the probe
            during this sampling interval."                       }"The total number of soft error report frames
            detected by the probe during this sampling
            interval."                       h"The total number of ring poll events detected by
            the probe during this sampling interval."                       ?"The maximum number of active stations on the ring
            detected by the probe during this sampling
            interval."                       C"A list of promiscuous Token Ring statistics
            entries."                       a"A collection of promiscuous statistics kept for a
            particular Token Ring interface."                       ?"The history of which this entry is a part.  The
            history identified by a particular value of this
            index is the same history as identified by the
            same value of historyControlIndex."                      "An index that uniquely identifies the particular
            sample this entry represents among all samples
            associated with the same historyControlEntry.
            This index starts at 1 and increases by one as
            each new sample is taken."                      ?"The value of sysUpTime at the start of the
            interval over which this sample was measured.  If
            the probe keeps track of the time of day, it
            should start the first sample of the history at a
            time such that when the next hour of the day
            begins, a sample is started at that instant.  Note
            that following this rule may require the probe to
            delay collecting the first sample of the history,
            as each sample must be of the same interval.  Also
            note that the sample which is currently being
            collected is not accessible in this table until
            the end of its interval."                      J"The total number of events in which packets were
            dropped by the probe due to lack of resources
            during this sampling interval.  Note that this
            number is not necessarily the number of packets
            dropped, it is just the number of times this
            condition has been detected."                       ?"The total number of octets of data in good frames
            received on the network (excluding framing bits
            but including FCS octets) in non-MAC packets
            during this sampling interval."                       ^"The total number of good non-MAC frames received
            during this sampling interval."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were directed
            to an LLC broadcast address (0xFFFFFFFFFFFF or
            0xC000FFFFFFFF)."                       "The total number of good non-MAC frames received
            during this sampling interval that were directed
            to a local or global multicast or functional
            address.  Note that this number does not include
            packets directed to the broadcast address."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between 18
            and 63 octets in length inclusive, excluding
            framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between 64
            and 127 octets in length inclusive, excluding
            framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between
            128 and 255 octets in length inclusive, excluding
            framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between
            256 and 511 octets in length inclusive, excluding
            framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between
            512 and 1023 octets in length inclusive, excluding
            framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between
            1024 and 2047 octets in length inclusive,
            excluding framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between
            2048 and 4095 octets in length inclusive,
            excluding framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between
            4096 and 8191 octets in length inclusive,
            excluding framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were between
            8192 and 18000 octets in length inclusive,
            excluding framing bits but including FCS octets."                       ?"The total number of good non-MAC frames received
            during this sampling interval that were greater
            than 18000 octets in length, excluding framing
            bits but including FCS octets."                           A"A list of Mac-Layer Token Ring statistics
            entries."                       _"A collection of Mac-Layer statistics kept for a
            particular Token Ring interface."                       X"The value of this object uniquely identifies this
            tokenRingMLStats entry."                      U"This object identifies the source of the data
            that this tokenRingMLStats entry is configured to
            analyze.  This source can be any tokenRing
            interface on this device.  In order to identify a
            particular interface, this object shall identify
            the instance of the ifIndex object, defined in
            MIB-II [3], for the desired interface.  For
            example, if an entry were to receive data from
            interface #1, this object would be set to
            ifIndex.1.

            The statistics in this group reflect all error
            reports on the local network segment attached to
            the identified interface.

            This object may not be modified if the associated
            tokenRingMLStatsStatus object is equal to
            valid(1)."                      ?"The total number of events in which packets were
            dropped by the probe due to lack of resources.
            Note that this number is not necessarily the
            number of packets dropped; it is just the number
            of times this condition has been detected.  This
            value is the same as the corresponding
            tokenRingPStatsDropEvents."                       ?"The total number of octets of data in MAC packets
            (excluding those that were not good frames)
            received on the network (excluding framing bits
            but including FCS octets)."                       f"The total number of MAC packets (excluding
            packets that were not good frames) received."                       ?"The total number of times that the ring enters
            the ring purge state from normal ring state.  The
            ring purge state that comes in response to the
            claim token or beacon state is not counted."                       L"The total number of ring purge MAC packets
            detected by probe."                      ?"The total number of times that the ring enters a
            beaconing state (beaconFrameStreamingState,
            beaconBitStreamingState,
            beaconSetRecoveryModeState, or
            beaconRingSignalLossState) from a non-beaconing
            state.  Note that a change of the source address
            of the beacon packet does not constitute a new
            beacon event."                       V"The total amount of time that the ring has been
            in the beaconing state."                       L"The total number of beacon MAC packets detected
            by the probe."                       ?"The total number of times that the ring enters
            the claim token state from normal ring state or
            ring purge state.  The claim token state that
            comes in response to a beacon state is not
            counted."                       Q"The total number of claim token MAC packets
            detected by the probe."                       F"The total number of NAUN changes detected by the
            probe."                       i"The total number of line errors reported in error
            reporting packets detected by the probe."                       ?"The total number of adapter internal errors
            reported in error reporting packets detected by
            the probe."                       j"The total number of burst errors reported in
            error reporting packets detected by the probe."                       ?"The total number of AC (Address Copied)  errors
            reported in error reporting packets detected by
            the probe."                       n"The total number of abort delimiters reported in
            error reporting packets detected by the probe."                       o"The total number of lost frame errors reported in
            error reporting packets detected by the probe."                       ?"The total number of receive congestion errors
            reported in error reporting packets detected by
            the probe."                       q"The total number of frame copied errors reported
            in error reporting packets detected by the probe."                       n"The total number of frequency errors reported in
            error reporting packets detected by the probe."                       j"The total number of token errors reported in
            error reporting packets detected by the probe."                       R"The total number of soft error report frames
            detected by the probe."                       ?"The total number of ring poll events detected by
            the probe (i.e. the number of ring polls initiated
            by the active monitor that were detected)."                       i"The entity that configured this entry and is
            therefore using the resources assigned to it."                       ,"The status of this tokenRingMLStats entry."                       C"A list of promiscuous Token Ring statistics
            entries."                       ?"A collection of promiscuous statistics kept for
            non-MAC packets on a particular Token Ring
            interface."                       W"The value of this object uniquely identifies this
            tokenRingPStats entry."                      U"This object identifies the source of the data
            that this tokenRingPStats entry is configured to
            analyze.  This source can be any tokenRing
            interface on this device.  In order to identify a
            particular interface, this object shall identify
            the instance of the ifIndex object, defined in
            MIB-II [3], for the desired interface.  For
            example, if an entry were to receive data from
            interface #1, this object would be set to
            ifIndex.1.

            The statistics in this group reflect all non-MAC
            packets on the local network segment attached to
            the identified interface.

            This object may not be modified if the associated
            tokenRingPStatsStatus object is equal to
            valid(1)."                      ?"The total number of events in which packets were
            dropped by the probe due to lack of resources.
            Note that this number is not necessarily the
            number of packets dropped; it is just the number
            of times this condition has been detected.  This
            value is the same as the corresponding
            tokenRingMLStatsDropEvents"                       ?"The total number of octets of data in good frames
            received on the network (excluding framing bits
            but including FCS octets) in non-MAC packets."                       M"The total number of non-MAC packets in good
            frames.  received."                       ?"The total number of good non-MAC frames received
            that were directed to an LLC broadcast address
            (0xFFFFFFFFFFFF or 0xC000FFFFFFFF)."                      "The total number of good non-MAC frames received
            that were directed to a local or global multicast
            or functional address.  Note that this number does
            not include packets directed to the broadcast
            address."                       ?"The total number of good non-MAC frames received
            that were between 18 and 63 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 64 and 127 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 128 and 255 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 256 and 511 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 512 and 1023 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 1024 and 2047 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 2048 and 4095 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 4096 and 8191 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were between 8192 and 18000 octets in length
            inclusive, excluding framing bits but including
            FCS octets."                       ?"The total number of good non-MAC frames received
            that were greater than 18000 octets in length,
            excluding framing bits but including FCS octets."                       i"The entity that configured this entry and is
            therefore using the resources assigned to it."                       +"The status of this tokenRingPStats entry."                      