                                               t"The MIB module for managing IP and ICMP implementations,
            but excluding their management of IP routes.""        Keith McCloghrie

             Postal: Cisco Systems, Inc.
                     170 West Tasman Drive
                     San Jose, CA  95134-1706
                     US

             Phone:  +1 408 526 5260
             Email:  kzm@cisco.com" "9103310000Z" K"The initial revision of this MIB module was part of MIB-
            II."                       O"The compliance statement for SNMPv2 entities which
            implement IP."                   "The ip group of objects providing for basic management of
            IP entities, exclusive of the management of IP routes."                 6"The icmp group of objects providing ICMP statistics."                    *"The indication of whether this entity is acting as an IP
            router in respect to the forwarding of datagrams received
            by, but not addressed to, this entity.  IP routers forward
            datagrams.  IP hosts do not (except those source-routed via
            the host)."                       ?"The default value inserted into the Time-To-Live field of
            the IP header of datagrams originated at this entity,
            whenever a TTL value is not supplied by the transport layer
            protocol."                       o"The total number of input datagrams received from
            interfaces, including those received in error."                      "The number of input datagrams discarded due to errors in
            their IP headers, including bad checksums, version number
            mismatch, other format errors, time-to-live exceeded, errors
            discovered in processing their IP options, etc."                      "The number of input datagrams discarded because the IP
            address in their IP header's destination field was not a
            valid address to be received at this entity.  This count
            includes invalid addresses (e.g., 0.0.0.0) and addresses of
            unsupported Classes (e.g., Class E).  For entities which are
            not IP routers and therefore do not forward datagrams, this
            counter includes datagrams discarded because the destination
            address was not a local address."                      ?"The number of input datagrams for which this entity was not
            their final IP destination, as a result of which an attempt
            was made to find a route to forward them to that final
            destination.  In entities which do not act as IP routers,
            this counter will include only those packets which were
            Source-Routed via this entity, and the Source-Route option
            processing was successful."                       ?"The number of locally-addressed datagrams received
            successfully but discarded because of an unknown or
            unsupported protocol."                      <"The number of input IP datagrams for which no problems were
            encountered to prevent their continued processing, but which
            were discarded (e.g., for lack of buffer space).  Note that
            this counter does not include any datagrams discarded while
            awaiting re-assembly."                       p"The total number of input datagrams successfully delivered
            to IP user-protocols (including ICMP)."                       ?"The total number of IP datagrams which local IP user-
            protocols (including ICMP) supplied to IP in requests for
            transmission.  Note that this counter does not include any
            datagrams counted in ipForwDatagrams."                      ?"The number of output IP datagrams for which no problem was
            encountered to prevent their transmission to their
            destination, but which were discarded (e.g., for lack of
            buffer space).  Note that this counter would include
            datagrams counted in ipForwDatagrams if any such packets met
            this (discretionary) discard criterion."                      ?"The number of IP datagrams discarded because no route could
            be found to transmit them to their destination.  Note that
            this counter includes any packets counted in ipForwDatagrams
            which meet this `no-route' criterion.  Note that this
            includes any datagrams which a host cannot route because all
            of its default routers are down."                       ?"The maximum number of seconds which received fragments are
            held while they are awaiting reassembly at this entity."                       a"The number of IP fragments received which needed to be
            reassembled at this entity."                       7"The number of IP datagrams successfully re-assembled."                      ?"The number of failures detected by the IP re-assembly
            algorithm (for whatever reason: timed out, errors, etc).
            Note that this is not necessarily a count of discarded IP
            fragments since some algorithms (notably the algorithm in
            RFC 815) can lose track of the number of fragments by





            combining them as they are received."                       `"The number of IP datagrams that have been successfully
            fragmented at this entity."                       ?"The number of IP datagrams that have been discarded because
            they needed to be fragmented at this entity but could not
            be, e.g., because their Don't Fragment flag was set."                       x"The number of IP datagram fragments that have been
            generated as a result of fragmentation at this entity."                       Z"The table of addressing information relevant to this
            entity's IP addresses."                       Z"The addressing information for one of this entity's IP





            addresses."                       T"The IP address to which this entry's addressing information
            pertains."                      "The index value which uniquely identifies the interface to
            which this entry is applicable.  The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of RFC 1573's ifIndex."                       ?"The subnet mask associated with the IP address of this
            entry.  The value of the mask is an IP address with all the
            network bits set to 1 and all the hosts bits set to 0."                      ?"The value of the least-significant bit in the IP broadcast





            address used for sending datagrams on the (logical)
            interface associated with the IP address of this entry.  For
            example, when the Internet standard all-ones broadcast
            address is used, the value will be 1.  This value applies to
            both the subnet and network broadcasts addresses used by the
            entity on this (logical) interface."                       ?"The size of the largest IP datagram which this entity can
            re-assemble from incoming IP fragmented datagrams received
            on this interface."                       i"The IP Address Translation table used for mapping from IP
            addresses to physical addresses."                       S"Each entry contains one IpAddress to `physical' address
            equivalence."                       ?"The interface on which this entry's equivalence is
            effective.  The interface identified by a particular value
            of this index is the same interface as identified by the
            same value of RFC 1573's ifIndex."                       )"The media-dependent `physical' address."                       U"The IpAddress corresponding to the media-dependent
            `physical' address."                      "The type of mapping.





            Setting this object to the value invalid(2) has the effect
            of invalidating the corresponding entry in the
            ipNetToMediaTable.  That is, it effectively disassociates
            the interface identified with said entry from the mapping
            identified with said entry.  It is an implementation-
            specific matter as to whether the agent removes an
            invalidated entry from the table.  Accordingly, management
            stations must be prepared to receive tabular information
            from agents that corresponds to entries not currently in
            use.  Proper interpretation of such entries requires
            examination of the relevant ipNetToMediaType object."                       ?"The number of routing entries which were chosen to be
            discarded even though they are valid.  One possible reason
            for discarding such an entry could be to free-up buffer
            space for other routing entries."                           ?"The total number of ICMP messages which the entity
            received.  Note that this counter includes all those counted
            by icmpInErrors."                       ?"The number of ICMP messages which the entity received but
            determined as having ICMP-specific errors (bad ICMP
            checksums, bad length, etc.)."                       L"The number of ICMP Destination Unreachable messages
            received."                       5"The number of ICMP Time Exceeded messages received."                       9"The number of ICMP Parameter Problem messages received."                       5"The number of ICMP Source Quench messages received."                       0"The number of ICMP Redirect messages received."                       6"The number of ICMP Echo (request) messages received."                       2"The number of ICMP Echo Reply messages received."                       ;"The number of ICMP Timestamp (request) messages received."                       7"The number of ICMP Timestamp Reply messages received."                       <"The number of ICMP Address Mask Request messages received."                       :"The number of ICMP Address Mask Reply messages received."                       ?"The total number of ICMP messages which this entity
            attempted to send.  Note that this counter includes all
            those counted by icmpOutErrors."                      ?"The number of ICMP messages which this entity did not send
            due to problems discovered within ICMP such as a lack of
            buffers.  This value should not include errors discovered
            outside the ICMP layer such as the inability of IP to route
            the resultant datagram.  In some implementations there may
            be no types of error which contribute to this counter's
            value."                       ;"The number of ICMP Destination Unreachable messages sent."                       1"The number of ICMP Time Exceeded messages sent."                       5"The number of ICMP Parameter Problem messages sent."                       1"The number of ICMP Source Quench messages sent."                       ?"The number of ICMP Redirect messages sent.  For a host,
            this object will always be zero, since hosts do not send
            redirects."                       2"The number of ICMP Echo (request) messages sent."                       ."The number of ICMP Echo Reply messages sent."                       7"The number of ICMP Timestamp (request) messages sent."                       3"The number of ICMP Timestamp Reply messages sent."                       8"The number of ICMP Address Mask Request messages sent."                       6"The number of ICMP Address Mask Reply messages sent."                          