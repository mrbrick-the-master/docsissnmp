                              �"The MIB module to describe generic objects for
                       Ethernet-like network interfaces.

                       The following reference is used throughout this
                       MIB module:

                       [IEEE 802.3 Std] refers to:
                          IEEE Std 802.3, 1998 Edition: 'Information
                          technology - Telecommunications and
                          information exchange between systems -
                          Local and metropolitan area networks -
                          Specific requirements - Part 3: Carrier
                          sense multiple access with collision
                          detection (CSMA/CD) access method and
                          physical layer specifications',
                          September 1998.

                       Of particular interest is Clause 30, '10Mb/s,
                       100Mb/s and 1000Mb/s Management'."b"WG E-mail: hubmib@hprnd.rose.hp.com
             To subscribe: hubmib-request@hprnd.rose.hp.com

                    Chair: Dan Romascanu
                   Postal: Lucent Technologies
                           Atidum Technology Park, Bldg. 3
                           Tel Aviv 61131
                           Israel
                      Tel: +972 3 645 8414
                   E-mail: dromasca@lucent.com

                  Editor: John Flick
                  Postal: Hewlett-Packard Company
                          8000 Foothills Blvd. M/S 5557
                          Roseville, CA 95747-5557
                          USA
                     Tel: +1 916 785 4018
                     Fax: +1 916 785 1199
                  E-mail: johnf@rose.hp.com

                  Editor: Jeffrey Johnson
                  Postal: RedBack Networks
                          2570 North First Street, Suite 410
                          San Jose, CA, 95131
                          USA
                     Tel: +1 408 571 2699
                     Fax: +1 408 571 2698
                  E-Mail: jeff@redbacknetworks.com" "9908240400Z" "9806032150Z" "9402030400Z" �"Updated to include support for 1000 Mb/sec
                        interfaces and full-duplex interfaces.
                        This version published as RFC 2665." �"Updated to include support for 100 Mb/sec
                        interfaces.
                        This version published as RFC 2358." )"Initial version, published as RFC 1650."       -- August 24, 1999
                  �"********* THIS GROUP IS DEPRECATED **********

                       A collection of objects providing information
                       applicable to all ethernet-like network
                       interfaces.

                       This object group has been deprecated and
                       replaced by etherStatsBaseGroup and
                       etherStatsLowSpeedGroup."                 �"A collection of objects providing a histogram
                       of packets successfully transmitted after
                       experiencing exactly N collisions."                �"********* THIS GROUP IS DEPRECATED **********

                       A collection of objects providing information
                       applicable to 100 Mb/sec ethernet-like network
                       interfaces.

                       This object group has been deprecated and
                       replaced by etherStatsBaseGroup and
                       etherStatsHighSpeedGroup."                 �"A collection of objects providing information
                       applicable to all ethernet-like network
                       interfaces."                 �"A collection of objects providing information
                       applicable to ethernet-like network interfaces
                       capable of operating at 10 Mb/s or slower in
                       half-duplex mode."                 �"A collection of objects providing information
                       applicable to ethernet-like network interfaces
                       capable of operating at 100 Mb/s or faster."                 �"A collection of objects providing information
                       about the duplex mode of an ethernet-like
                       network interface."                 �"A collection of objects providing information
                       about the MAC Control sublayer on ethernet-like
                       network interfaces."                 �"A collection of objects providing information
                       about and control of the MAC Control PAUSE
                       function on ethernet-like network interfaces."                    G"******** THIS COMPLIANCE IS DEPRECATED ********

                       The compliance statement for managed network
                       entities which have ethernet-like network
                       interfaces.

                       This compliance is deprecated and replaced by
                       dot3Compliance."   �"This group is optional. It is appropriate
                           for all systems which have the necessary
                           metering. Implementation in such systems is
                           highly recommended."            R"******** THIS COMPLIANCE IS DEPRECATED ********

                       The compliance statement for managed network
                       entities which have 100 Mb/sec ethernet-like
                       network interfaces.

                       This compliance is deprecated and replaced by
                       dot3Compliance."   �"This group is optional. It is appropriate
                           for all systems which have the necessary
                           metering. Implementation in such systems is
                           highly recommended."             �"The compliance statement for managed network
                       entities which have ethernet-like network
                       interfaces."  %"This group is mandatory for all
                           ethernet-like network interfaces which are
                           capable of operating in full-duplex mode.
                           It is highly recommended for all
                           ethernet-like network interfaces." �"This group is mandatory for all
                           ethernet-like network interfaces which are
                           capable of operating at 10 Mb/s or slower in
                           half-duplex mode." �"This group is mandatory for all
                           ethernet-like network interfaces which are
                           capable of operating at 100 Mb/s or faster." �"This group is mandatory for all
                           ethernet-like network interfaces that
                           support the MAC Control sublayer." �"This group is mandatory for all
                           ethernet-like network interfaces that
                           support the MAC Control PAUSE function."u"This group is optional. It is appropriate
                           for all ethernet-like network interfaces
                           which are capable of operating in
                           half-duplex mode and have the necessary
                           metering. Implementation in systems with
                           such interfaces is highly recommended."                     �"Statistics for a collection of ethernet-like
                       interfaces attached to a particular system.
                       There will be one row in this table for each
                       ethernet-like interface in the system."                       Z"Statistics for a particular interface to an
                       ethernet-like medium."                      ."An index value that uniquely identifies an
                       interface to an ethernet-like medium.  The
                       interface identified by a particular value of
                       this index is the same interface as identified
                       by the same value of ifIndex." "RFC 2233, ifIndex"                    ["A count of frames received on a particular
                       interface that are not an integral number of
                       octets in length and do not pass the FCS check.

                       The count represented by an instance of this
                       object is incremented when the alignmentError
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions obtain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       This counter does not increment for 8-bit wide
                       group encoding schemes.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." H"[IEEE 802.3 Std.], 30.3.1.1.7,
                       aAlignmentErrors"                    )"A count of frames received on a particular
                       interface that are an integral number of octets
                       in length but do not pass the FCS check.  This
                       count does not include frames received with
                       frame-too-long or frame-too-short error.

                       The count represented by an instance of this
                       object is incremented when the frameCheckError
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions obtain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       Note:  Coding errors detected by the physical
                       layer for speeds above 10 Mb/s will cause the
                       frame to fail the FCS check.
                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." R"[IEEE 802.3 Std.], 30.3.1.1.6,
                       aFrameCheckSequenceErrors."                    �"A count of successfully transmitted frames on
                       a particular interface for which transmission
                       is inhibited by exactly one collision.

                       A frame that is counted by an instance of this
                       object is also counted by the corresponding
                       instance of either the ifOutUcastPkts,
                       ifOutMulticastPkts, or ifOutBroadcastPkts,
                       and is not counted by the corresponding
                       instance of the dot3StatsMultipleCollisionFrames
                       object.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." O"[IEEE 802.3 Std.], 30.3.1.1.3,
                       aSingleCollisionFrames."                    �"A count of successfully transmitted frames on
                       a particular interface for which transmission
                       is inhibited by more than one collision.

                       A frame that is counted by an instance of this
                       object is also counted by the corresponding
                       instance of either the ifOutUcastPkts,
                       ifOutMulticastPkts, or ifOutBroadcastPkts,
                       and is not counted by the corresponding
                       instance of the dot3StatsSingleCollisionFrames
                       object.
                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." Q"[IEEE 802.3 Std.], 30.3.1.1.4,
                       aMultipleCollisionFrames."                    �"A count of times that the SQE TEST ERROR
                       message is generated by the PLS sublayer for a
                       particular interface. The SQE TEST ERROR
                       is set in accordance with the rules for
                       verification of the SQE detection mechanism in
                       the PLS Carrier Sense Function as described in
                       IEEE Std. 802.3, 1998 Edition, section 7.2.4.6.

                       This counter does not increment on interfaces
                       operating at speeds greater than 10 Mb/s, or on
                       interfaces operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." U"[IEEE 802.3 Std.], 7.2.4.6, also 30.3.2.1.4,
                       aSQETestErrors."                    �"A count of frames for which the first
                       transmission attempt on a particular interface
                       is delayed because the medium is busy.
                       The count represented by an instance of this
                       object does not include frames involved in
                       collisions.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.
                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." U"[IEEE 802.3 Std.], 30.3.1.1.9,
                       aFramesWithDeferredXmissions."                    m"The number of times that a collision is
                       detected on a particular interface later than
                       one slotTime into the transmission of a packet.

                       A (late) collision included in a count
                       represented by an instance of this object is
                       also considered as a (generic) collision for
                       purposes of other collision-related
                       statistics.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." I"[IEEE 802.3 Std.], 30.3.1.1.10,
                       aLateCollisions."                    '"A count of frames for which transmission on a
                       particular interface fails due to excessive
                       collisions.
                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." T"[IEEE 802.3 Std.], 30.3.1.1.11,
                       aFramesAbortedDueToXSColls."                    �"A count of frames for which transmission on a
                       particular interface fails due to an internal
                       MAC sublayer transmit error. A frame is only
                       counted by an instance of this object if it is
                       not counted by the corresponding instance of
                       either the dot3StatsLateCollisions object, the
                       dot3StatsExcessiveCollisions object, or the
                       dot3StatsCarrierSenseErrors object.

                       The precise meaning of the count represented by
                       an instance of this object is implementation-
                       specific.  In particular, an instance of this
                       object may represent a count of transmission
                       errors on a particular interface that are not
                       otherwise counted.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." Y"[IEEE 802.3 Std.], 30.3.1.1.12,
                       aFramesLostDueToIntMACXmitError."                    �"The number of times that the carrier sense
                       condition was lost or never asserted when
                       attempting to transmit a frame on a particular
                       interface.

                       The count represented by an instance of this
                       object is incremented at most once per
                       transmission attempt, even if the carrier sense
                       condition fluctuates during a transmission
                       attempt.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." M"[IEEE 802.3 Std.], 30.3.1.1.13,
                       aCarrierSenseErrors."                    �"A count of frames received on a particular
                       interface that exceed the maximum permitted
                       frame size.

                       The count represented by an instance of this
                       object is incremented when the frameTooLong
                       status is returned by the MAC service to the
                       LLC (or other MAC user). Received frames for
                       which multiple error conditions obtain are,
                       according to the conventions of IEEE 802.3
                       Layer Management, counted exclusively according
                       to the error status presented to the LLC.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." M"[IEEE 802.3 Std.], 30.3.1.1.25,
                       aFrameTooLongErrors."                    �"A count of frames for which reception on a
                       particular interface fails due to an internal
                       MAC sublayer receive error. A frame is only
                       counted by an instance of this object if it is
                       not counted by the corresponding instance of
                       either the dot3StatsFrameTooLongs object, the
                       dot3StatsAlignmentErrors object, or the
                       dot3StatsFCSErrors object.

                       The precise meaning of the count represented by
                       an instance of this object is implementation-
                       specific.  In particular, an instance of this
                       object may represent a count of receive errors
                       on a particular interface that are not
                       otherwise counted.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." X"[IEEE 802.3 Std.], 30.3.1.1.15,
                       aFramesLostDueToIntMACRcvError."                    �"******** THIS OBJECT IS DEPRECATED ********

                       This object contains an OBJECT IDENTIFIER
                       which identifies the chipset used to
                       realize the interface. Ethernet-like
                       interfaces are typically built out of
                       several different chips. The MIB implementor
                       is presented with a decision of which chip
                       to identify via this object. The implementor
                       should identify the chip which is usually
                       called the Medium Access Control chip.
                       If no such chip is easily identifiable,
                       the implementor should identify the chip
                       which actually gathers the transmit
                       and receive statistics and error
                       indications. This would allow a
                       manager station to correlate the
                       statistics and the chip generating
                       them, giving it the ability to take
                       into account any known anomalies
                       in the chip."                      "For an interface operating at 100 Mb/s, the
                       number of times there was an invalid data symbol
                       when a valid carrier was present.

                       For an interface operating in half-duplex mode
                       at 1000 Mb/s, the number of times the receiving
                       media is non-idle (a carrier event) for a period
                       of time equal to or greater than slotTime, and
                       during which there was at least one occurrence
                       of an event that causes the PHY to indicate
                       'Data reception error' or 'carrier extend error'
                       on the GMII.

                       For an interface operating in full-duplex mode
                       at 1000 Mb/s, the number of times the receiving
                       media is non-idle a carrier event) for a period
                       of time equal to or greater than minFrameSize,
                       and during which there was at least one
                       occurrence of an event that causes the PHY to
                       indicate 'Data reception error' on the GMII.

                       The count represented by an instance of this
                       object is incremented at most once per carrier
                       event, even if multiple symbol errors occur
                       during the carrier event.  This count does
                       not increment if a collision is present.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." R"[IEEE 802.3 Std.], 30.3.2.1.5,
                       aSymbolErrorDuringCarrier."                    ^"The current mode of operation of the MAC
                       entity.  'unknown' indicates that the current
                       duplex mode could not be determined.

                       Management control of the duplex mode is
                       accomplished through the MAU MIB.  When
                       an interface does not support autonegotiation,
                       or when autonegotiation is not enabled, the
                       duplex mode is controlled using
                       ifMauDefaultType.  When autonegotiation is
                       supported and enabled, duplex mode is controlled
                       using ifMauAutoNegAdvertisedBits.  In either
                       case, the currently operating duplex mode is
                       reflected both in this object and in ifMauType.

                       Note that this object provides redundant
                       information with ifMauType.  Normally, redundant
                       objects are discouraged.  However, in this
                       instance, it allows a management application to
                       determine the duplex status of an interface
                       without having to know every possible value of
                       ifMauType.  This was felt to be sufficiently
                       valuable to justify the redundancy." G"[IEEE 802.3 Std.], 30.3.1.1.32,
                       aDuplexStatus."                     a"A collection of collision histograms for a
                       particular set of interfaces." J"[IEEE 802.3 Std.], 30.3.1.1.30,
                       aCollisionFrames."                    �"A cell in the histogram of per-frame
                       collisions for a particular interface.  An
                       instance of this object represents the
                       frequency of individual MAC frames for which
                       the transmission (successful or otherwise) on a
                       particular interface is accompanied by a
                       particular number of media collisions."                       �"The number of per-frame media collisions for
                       which a particular collision histogram cell
                       represents the frequency on a particular
                       interface."                      e"A count of individual MAC frames for which the
                       transmission (successful or otherwise) on a
                       particular interface occurs after the
                       frame has experienced exactly the number
                       of collisions in the associated
                       dot3CollCount object.

                       For example, a frame which is transmitted
                       on interface 77 after experiencing
                       exactly 4 collisions would be indicated
                       by incrementing only dot3CollFrequencies.77.4.
                       No other instance of dot3CollFrequencies would
                       be incremented in this example.

                       This counter does not increment when the
                       interface is operating in full-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime."                      �"A table of descriptive and status information
                       about the MAC Control sublayer on the
                       ethernet-like interfaces attached to a
                       particular system.  There will be one row in
                       this table for each ethernet-like interface in
                       the system which implements the MAC Control
                       sublayer.  If some, but not all, of the
                       ethernet-like interfaces in the system implement
                       the MAC Control sublayer, there will be fewer
                       rows in this table than in the dot3StatsTable."                       �"An entry in the table, containing information
                       about the MAC Control sublayer on a single
                       ethernet-like interface."                       e"A list of the possible MAC Control functions
                       implemented for this interface." T"[IEEE 802.3 Std.], 30.3.3.2,
                       aMACControlFunctionsSupported."         X-- SYNTAX      BITS {
--                pause(0)    802.3x flow control
--            }
          �"A count of MAC Control frames received on this
                       interface that contain an opcode that is not
                       supported by this device.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." Q"[IEEE 802.3 Std.], 30.3.3.5,
                       aUnsupportedOpcodesReceived"                    �"A table of descriptive and status information
                       about the MAC Control PAUSE function on the
                       ethernet-like interfaces attached to a
                       particular system. There will be one row in
                       this table for each ethernet-like interface in
                       the system which supports the MAC Control PAUSE
                       function (i.e., the 'pause' bit in the
                       corresponding instance of
                       dot3ControlFunctionsSupported is set).  If some,
                       but not all, of the ethernet-like interfaces in
                       the system implement the MAC Control PAUSE
                       function (for example, if some interfaces only
                       support half-duplex), there will be fewer rows
                       in this table than in the dot3StatsTable."                       �"An entry in the table, containing information
                       about the MAC Control PAUSE function on a single
                       ethernet-like interface."                      Z"This object is used to configure the default
                       administrative PAUSE mode for this interface.

                       This object represents the
                       administratively-configured PAUSE mode for this
                       interface.  If auto-negotiation is not enabled
                       or is not implemented for the active MAU
                       attached to this interface, the value of this
                       object determines the operational PAUSE mode
                       of the interface whenever it is operating in
                       full-duplex mode.  In this case, a set to this
                       object will force the interface into the
                       specified mode.

                       If auto-negotiation is implemented and enabled
                       for the MAU attached to this interface, the
                       PAUSE mode for this interface is determined by
                       auto-negotiation, and the value of this object
                       denotes the mode to which the interface will
                       automatically revert if/when auto-negotiation is
                       later disabled.  Note that when auto-negotiation
                       is running, administrative control of the PAUSE
                       mode may be accomplished using the
                       ifMauAutoNegCapAdvertisedBits object in the
                       MAU-MIB.

                       Note that the value of this object is ignored
                       when the interface is not operating in
                       full-duplex mode.

                       An attempt to set this object to
                       'enabledXmit(2)' or 'enabledRcv(3)' will fail
                       on interfaces that do not support operation
                       at greater than 100 Mb/s."                      j"This object reflects the PAUSE mode currently
                       in use on this interface, as determined by
                       either (1) the result of the auto-negotiation
                       function or (2) if auto-negotiation is not
                       enabled or is not implemented for the active MAU
                       attached to this interface, by the value of
                       dot3PauseAdminMode.  Interfaces operating at
                       100 Mb/s or less will never return
                       'enabledXmit(2)' or 'enabledRcv(3)'.  Interfaces
                       operating in half-duplex mode will always return
                       'disabled(1)'.  Interfaces on which
                       auto-negotiation is enabled but not yet
                       completed should return the value
                       'disabled(1)'."                      )"A count of MAC Control frames received on this
                       interface with an opcode indicating the PAUSE
                       operation.

                       This counter does not increment when the
                       interface is operating in half-duplex mode.
                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." R"[IEEE 802.3 Std.], 30.3.4.3,
                       aPAUSEMACCtrlFramesReceived."                    -"A count of MAC Control frames transmitted on
                       this interface with an opcode indicating the
                       PAUSE operation.

                       This counter does not increment when the
                       interface is operating in half-duplex mode.

                       Discontinuities in the value of this counter can
                       occur at re-initialization of the management
                       system, and at other times as indicated by the
                       value of ifCounterDiscontinuityTime." U"[IEEE 802.3 Std.], 30.3.4.2,
                       aPAUSEMACCtrlFramesTransmitted."                        
"The Time-Domain Reflectometry (TDR) test is
                       specific to ethernet-like interfaces of type
                       10Base5 and 10Base2.  The TDR value may be
                       useful in determining the approximate distance
                       to a cable fault.  It is advisable to repeat
                       this test to check for a consistent resulting
                       TDR value, to verify that there is a fault.

                       A TDR test returns as its result the time
                       interval, measured in 10 MHz ticks or 100 nsec
                       units, between the start of TDR test
                       transmission and the subsequent detection of a
                       collision or deassertion of carrier.  On
                       successful completion of a TDR test, the result
                       is stored as the value of an appropriate
                       instance of an appropriate vendor specific MIB
                       object, and the OBJECT IDENTIFIER of that
                       instance is stored in the appropriate instance
                       of the appropriate test result code object
                       (thereby indicating where the result has been
                       stored)."              y"This test configures the MAC chip and executes
                       an internal loopback test of memory, data paths,
                       and the MAC chip logic.  This loopback test can
                       only be executed if the interface is offline.
                       Once the test has completed, the MAC chip should
                       be reinitialized for network operation, but it
                       should remain offline.

                       If an error occurs during a test, the
                       appropriate test result object will be set
                       to indicate a failure.  The two OBJECT
                       IDENTIFIER values dot3ErrorInitError and
                       dot3ErrorLoopbackError may be used to provided
                       more information as values for an appropriate
                       test result code object."                   ("Couldn't initialize MAC chip for test."               a"Expected data not received (or not received
                       correctly) in loopback test."                      