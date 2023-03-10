                                                               ?"This MIB module supplies the basic management objects 
            for event reporting
            
            Acknowledgements:
            Rick Vetter    -  Motorola
            Eugene Nechamkin   -  Broadcom"&"       Matt Osman
            Postal: Cable Television Laboratories, Inc.
            400 Centennial Parkway
            Louisville, Colorado 80027-1266
            U.S.A.
            Phone:  +1 303-661-9100
            Fax:    +1 303-661-9199
            E-mail: m.osman@cablelabs.com"       -- 10/18/02
          E"This object defines actions related to the event log 
             configuration. Setting this object to resetLog(1) empties 
             the event log.
             All event log data is deleted. Setting it to setDefault(2)
             restores all event priorities to their factory-default
		 reporting parameters."                       ?"This object reflects the state of the device as modified in 
             pktcDevEvControl. Processing indicates that a state change
             is underway. This object reflects the state of the device."                       j"The type of Internet address of the Syslog server.
             Not all address types may be supported."                      t"The IP address of the Syslog server. If 0.0.0.0, 
             syslog transmission is inhibited. The use of FQDNs is 
             syntactically allowed but it is discouraged for syslog
             servers since not resolving them in a timely manner
             may leave the device without access to the Syslog
             daemon during critical network events."                       b"The UDP port number the syslog device is using to send
          requests to the syslog server."                          W"This table allows control of the reporting of event classes.
        For each event priority, a combination of logging and
        reporting mechanisms may be chosen. The mapping of event types
        to priorities is vendor-dependent. Vendors may also choose to
        allow the user to control that mapping through proprietary means."                       ?"Allows configuration of the reporting mechanisms for a
             programmable event, including level, report type, and text."                       ?"ID for a specific programmable event to which the priority and 
        display string are matched. These Event Ids are vendor specific 
        or in the case of PacketCable events defined in pkt-tr-memevent-
        id-v01-001128."                       ?"Provides the IANA enterprise number of the device manufacturer 
        for proprietary events, and the CableLabs IANA enterprise number 
        for PacketCable specified events."                      ?"The priority level that is controlled by this entry. These 
         are ordered from most (critical) to least (information) critical.
         Each event has a particular priority level associated with it 
         (as defined by the vendor). The levels are described as:

             critical(1)  A service-affecting condition that requires 
                           immediate corrective action.
             major(2)  A service-affecting condition that requires urgent 
                        corrective action.
             minor(3)  A non-service-affecting fault condition which 
                        warrants corrective action in order to avoid a more 
                        serious fault.
             warning(4)  A potential or impending condition which can lead 
                          to a fault;  diagnostic action is suggested.
             information(5)  Normal event meant to convey information."                      ?"Defines the action to be taken on occurrence of this
             event class. Implementations may not necessarily support
             all options for all event classes, but at minimum must
             allow traps and syslogging to be disabled. If the
             local(0) bit is set, then log to the internal log, if the
             traps(1) bit is set, then generate a trap, if the
             syslog(2) bit is set, then send a syslog message
             (assuming the syslog address is set)
             inform(3) bit is set, then generate an inform, if the 
             none(4) bit is set, then this event is not generated."                     --      DEFVAL { local }
 f"Programmable event display string providing a human-readable
             description of the event."                      W"This table allows control of the reporting of event classes.
        For each event priority, a combination of logging and
        reporting mechanisms may be chosen. The mapping of event types
        to priorities is vendor-dependent. Vendors may also choose to
        allow the user to control that mapping through proprietary means."                       u"Allows configuration of the reporting mechanisms for a
             fixed event, including level, and report type."                       ?"ID for a specific fixed event to which the priority 
             and display string are matched. These Event Ids are 
             vendor specific or in the case of PacketCable events 
             defined in pkt-tr-memevent-id-v01-001128."                       ?"Provides the IANA enterprise number of the device manufacturer for 
          proprietary events, and the CableLabs IANA enterprise number for 
          PacketCable specified events."                      ?"The priority level that is controlled by this entry. 
             These are ordered from most (critical) to least (information) 
             critical.  Each event has a particular priority level 
             associated with it (as defined by the vendor). The levels are 
             described as:

             critical(1)  A service-affecting condition that requires 
                           immediate corrective action.
             major(2)  A service-affecting condition that requires urgent 
                        corrective action.
             minor(3)  A non-service-affecting fault condition which warrants 
                        corrective action in order to avoid a more serious fault.
             warning(4)  A potential or impending condition which can lead to 
                          a fault;  diagnostic action is suggested.
             information(5)  Normal event meant to convey information."                      ?"Defines the action to be taken on occurrence of this 
               event class. Implementations may not necessarily support 
               all options for all event classes, but at minimum must allow 
               traps and syslogging to be disabled. If the local(0) bit is 
               set, then log to the internal log, if the traps(1) bit is set, 
               then generate a trap, if the syslog(2) bit is set, then send 
               a syslog message (assuming the syslog address is set) inform(3) 
               bit is set, then generate an inform, if the none(4) bit is set, 
               then this event is not generated."                     --   DEFVAL { local }
 _"Fixed event display string providing a human-readable
             description of the event."                          F"Controls the transmission of traps and syslog messages
             with respect to the trap pacing threshold.
             throttlingInhibited(1) causes traps and syslog messages to be
             transmitted without regard to the threshold settings.
             dynamicThresholding(2) causes trap transmission and
             syslog messages to be suppressed if the number of traps
             would otherwise exceed the threshold.
             manualThresholding(3) causes trap transmission to cease
             at the threshold, and not resume until directed to do so.
             eventsInhibited(4) causes all trap transmission and syslog
             messages to be suppressed.

             A single event is always treated as a single event for
             threshold counting. That is, an event causing both a trap
             and a syslog message is still treated as a single event.

             Writing to this object resets the thresholding state.

             At initial startup, this object has a default value of
             throttlingInhibited(1)."                      ?"If true(1), trap/inform and syslog transmission is currently
             inhibited due to thresholds and/or the current setting of
             pktcDevEvThrottleAdminStatus. In addition, this is set to
             true(1) if transmission is inhibited due to no
             syslog (pktcDevEvSyslogAddress) or trap/inform
             (pktcMtaDevSnmpEntity)
             destinations having been set."                      ?"Number of trap/syslog events per pktcDevEvThrottleInterval
             to be transmitted before throttling.

             A single event is always treated as a single event for
             Threshold counting. That is, an event causing both a 
             trap/inform and a syslog message is still treated as 
             a single event.

             At initial startup, this object returns 2."                       y"The interval over which the throttle threshold applies.
             At initial startup, this object has a value of 1."                           {"Contains a log of network and device events that may be
             of interest in fault isolation and troubleshooting."                      /"Describes a network or device event that may be of
             interest in fault isolation and troubleshooting.
             Entries are created with the first occurrence of an event.
             pktcDevEvControl can be used to clear the table.
             Individual events can not be deleted."                      ?"Provides relative ordering of the objects in the event
            log. This object will always increase except when
            (a) the log is reset via pktcDevEvControl,
            (b) the device reboots and does not implement non-volatile
            storage for this log, or (c) it reaches the value 2^31.
            The next entry for all the above cases is 1. This also serves as
            a indicator of event sequence."                       _"Provides a human-readable description of the 
             time at which the event occurred."                       ?"The priority level of this event as defined by the
             vendor.  These are ordered from most serious (critical)
             to least serious (debug)."                       ?"Provides the IANA enterprise number of the device manufacturer for 
          proprietary events, and the CableLabs IANA enterprise number for 
          PacketCable specified events."                       ?"ID for a specific event to which the priority and display 
          string are matched. These Event Ids are vendor specific or 
          in the case of PacketCable events defined in pkt-tr-memevent-
          id-v01-001128."                       ?"Provides a human-readable description of the event,
             including all relevant context (interface numbers,
             etc.)."                       >"Provides the MAC address of the device generating the event."                      "This is the endpoint identifier followed by the FQDN/IP Address
             of the device. This is in the form - AALN/X:FQDN/IP Address.
             If the event is not specific to an endpoint, then the contents
             is just the FQDN/IP address."                           |"Integer value starting at one that increases by one
             for each event generated. Used for sequencing of events."                       _"Provides a human-readable description of the time at 
             which the event occurred."                       ?"The priority level of this event as defined by the
             vendor.  These are ordered from most serious (critical)
             to least serious (debug)."                       ?"Provides the IANA enterprise number of the device 
             manufacturer for proprietary events, and the CableLabs
             IANA enterprise number for 
             PacketCable specified events."                       ?"ID for a specific event to which the priority and 
            display string are matched. These Event Ids are vendor 
            specific or in the case of PacketCable events defined 
            in pkt-tr-memevent-id-v01-001128."                       ?"Provides a human-readable description of the event,
             including all relevant context (interface numbers,
             etc.)."                       O"Provides the MAC address of the device generating 
               the event."                      3"This is the endpoint identifier followed by the FQDN/IP 
               Address of the device. in the case of the , this is in 
               the form - AALN/X:FQDN/IP Address. If the event is not 
               specific to an endpoint, then the contents is just the 
               FQDN/IP address."                               "Inform for event reporting "                 " Trap for event reporting "                         ]"The compliance statement for devices that implement 
             Event reporting feature."             -- units of conformance
     -"Group of objects for PacketCable Event MIB."                 H"These notifications deal with change in status of 
       MTA Device."                        