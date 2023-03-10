     -"Indicates the DOCSIS Upstream Channel Type."               ?"This data type represents power levels that are normally
             expressed in dB. Units are in tenths of a dB;
             for example, 5.1 dB will be represented as 51."               ?"Indicates the DOCSIS Upstream Channel Type Status. 
                        The shared channel indicator type is not valid, since
                        this type is used to specifically identify PHY mode."               ?"This data type represents power levels that are normally
             expressed in dBmV. Units are in tenths of a dBmV;
             for example, 5.1 dBmV will be represented as 51."               )"Indicates the quality of service level."               &"Indicates the DOCSIS version number."                                                                                                                             ?"This is the MIB Module for DOCSIS 2.0 compliant Radio
             Frequency (RF) interfaces in Cable Modems (CM) and
             Cable Modem Termination Systems (CMTS)."?"        David Raftus
             Postal: Imedia Semiconductor       
                     340 Terry Fox Drive, Suite 202
                     Ottawa Ontario
                     Canada
             Phone:  +1 613 592 1052 ext.222
             E-mail: david.raftus@imedia.com           

             IETF IPCDN Working Group
             General Discussion: ipcdn@ietf.org
             Subscribe: http://www.ietf.org/mailman/listinfo/ipcdn
             Archive: ftp://ftp.ietf.org/ietf-mail-archive/ipcdn
             Co-chairs: Richard Woundy, RWoundy@broadband.att.com
                        Jean-Francois Mule, jf.mule@cablelabs.com" "200212200000Z" "199908190000Z"?"pre-RFC draft v5: 
             Modified by David Raftus to add channel utilization related objects,
             upstream channel equalization related objects, a cmts upstream minislot
             counter table, a cmts downstream byte counter table, 64 bit versions of
             existing 32 bit docsIfSigQTable objects, and perform some editorial   
             adjustments.
             pre-RFC draft v4:
             Modified by David Raftus to fix docsIfUpChannelWidth range 
             in  compliance statements to accommodate 6.4Mhz channel at 
             5.12 Msymbol/sec. Also adjusted description of 
             docsIfUpChannelStatus to use correct rowStatus terminology.
             pre-RFC draft v3:
             Modified by David Raftus to add new textual convention
             describing upstream modulation status. Also clarified
             some object descriptions, fixed error in
             docsIfSignalQualityEntry, fixed upstreamTable compliance
             statements.
             pre-RFC draft v2:
             Modified by David Raftus to add capability to adjust
             and verify upstream channel parameters as a group.
             Also adjusted syntax and clarified descriptions of
             selected objects.
             pre-RFC draft v1:
             Modified by Aviv Goren and David Raftus to accommodate 
             Docsis 2.0 Advanced Phy capabilities, as well as to
             incorporate objects from the docsIfExt mib.
             Modified by Rich Woundy to use IPv6-friendly
             address objects, to accommodate EuroDOCSIS, and
             to correct the SYNTAX of various objects."s"Initial Version, published as RFC 2670.
             Modified by Mike StJohns to fix problems identified by
             the first pass of the MIB doctor.  Of special note,
             docsIfRangingResp and docsIfCmtsInsertionInterval were
             obsoleted and replaced by other objects with the same
             functionality, but more appropriate SYNTAX."       -- December 20, 2002
               ]"This table describes the attributes of downstream
             channels (frequency bands)." ;"Document [25] from References, Table 6-12 and Table 6-13."                     ?"An entry provides a list of attributes for a single
             Downstream channel.
             An entry in this table exists for each ifEntry with an
             ifType of docsCableDownstream(128)."                      B"The Cable Modem Termination System (CMTS) identification
             of the downstream channel within this particular MAC
             interface. If the interface is down, the object returns
             the most current value. If the downstream channel ID is
             unknown, this object returns a value of 0."                      ?"The center of the downstream frequency associated with
             this channel. This object will return the current tuner
             frequency. If a CMTS provides IF output, this object
             will return 0, unless this CMTS is in control of the
             final downstream RF frequency.  See the associated
             compliance object for a description of valid frequencies
             that may be written to this object." 2"Document [25] from References, Tables 4-1, 6-14."                    5"The bandwidth of this downstream channel. Most
             implementations are expected to support a channel width
             of 6 MHz (North America) and/or 8 MHz (Europe).  See the
             associated compliance object for a description of the
             valid channel widths for this object." ,"Document [25] from References, Table 6-14."                    ?"The modulation type associated with this downstream
             channel. If the interface is down, this object either
             returns the configured value (CMTS), the most current
             value (CM), or the value of unknown(1).  See the
             associated conformance object for write conditions and
             limitations. See the reference for specifics on the
             modulation profiles implied by qam64 and qam256." ,"Document [25] from References, Table 6-14."                    U"The Forward Error Correction (FEC) interleaving used
             for this downstream channel.
             Values are defined as follows:
             taps8Increment16(3):   protection 5.9/4.1 usec,
                                    latency .22/.15 msec
             taps16Increment8(4):   protection 12/8.2 usec,
                                    latency .48/.33 msec
             taps32Increment4(5):   protection 24/16 usec,
                                    latency .98/.68 msec
             taps64Increment2(6):   protection 47/33 usec,
                                    latency 2/1.4 msec
             taps128Increment1(7):  protection 95/66 usec,
                                    latency 4/2.8 msec
             taps12increment17(8):  protection 18/14 usec,
                                    latency 0.43/0.32 msec
                                    taps12increment17 is implemented in 
                                    conformance with EuroDOCSIS document
                                    'Adapted MIB-definitions - and a 
                                    clarification for MPEG-related issues - for 
                                    EuroDOCSIS cable modem systems' by tComLabs
                                    and should only be used for a EuroDOCSIS MAC 
                                    interface.   

             If the interface is down, this object either returns
             the configured value (CMTS), the most current value (CM),
             or the value of unknown(1).
             The value of other(2) is returned if the interleave
             is known but not defined in the above list.
             See the associated conformance object for write
             conditions and limitations. See the reference for the FEC
             configuration described by the setting of this object." ,"Document [25] from References, Table 6-13."                    	"At the CMTS, the operational transmit power. At the CM,
             the received power level. May be set to zero at the CM
             if power level measurement is not supported.
             If the interface is down, this object either returns
             the configured value (CMTS), the most current value (CM)
             or the value of 0. See the associated conformance object
             for write conditions and limitations. See the reference
             for recommended and required power levels." +"Document [25] from References,Table 6-15."                    W"The value of this object indicates the conformance of
             the implementation to important regional cable standards.
             annexA : Annex A from ITU-J83 is used.
             annexB : Annex B from ITU-J83 is used.
             annexC : Annex C from ITU-J83 is used. 
             AnnexB is used for DOCSIS implementations" ,"Document [28] from References, Section 2.2"                     R"This table describes the attributes of attached upstream
             channels."                      s"List of attributes for a single upstream channel. For
             Docsis 2.0 CMTSs, an entry in this table exists for 
             each ifEntry with an ifType of docsCableUpstreamChannel (205).
             For Docsis 1.x CM/CMTSs and Docsis 2.0 CMs, an entry in this table exists 
             for each ifEntry with an ifType of docsCableUpstreamInterface (129)."                       2"The CMTS identification of the upstream channel."                      k"The center of the frequency band associated with this
             upstream interface. This object returns 0 if the frequency
             is undefined or unknown. Minimum permitted upstream
             frequency is 5,000,000 Hz for current technology.  See
             the associated conformance object for write conditions
             and limitations." +"Document [25] from References, Table 4-2."                    0"The bandwidth of this upstream interface. This object
             returns 0 if the interface width is undefined or unknown.
             Minimum permitted interface width is 200,000 Hz currently.
             See the associated conformance object for write conditions
             and limitations." ,"Document [25] from References, Table 6-12."                    "An entry identical to the docsIfModIndex in the
             docsIfCmtsModulationTable that describes this channel.
             This channel is further instantiated there by a grouping
             of interval usage codes which together fully describe the
             channel modulation. This object returns 0 if the
             docsIfCmtsModulationTable entry does not exist or
             docsIfCmtsModulationTable is empty. See
             the associated conformance object for write conditions
             and limitations." ,"Document [25] from References, Table 8-19."                    W"Applicable to TDMA and ATDMA channel types only.
             The number of 6.25 microsecond ticks in each upstream mini-
             slot. Returns zero if the value is undefined, unknown or in
             case of an SCDMA channel.
             See the associated conformance object for write
             conditions and limitations. " 1"Document [25] from References, Section 8.1.2.4."                    ?"At the CM, a measure of the current round trip time obtained from the
             ranging offset (initial ranging offset + ranging offset adjustments).
             At the CMTS, the maximum of timing offset, among all the CMs that 
             are/were present on the channel, taking into account all ( initial + 
             periodic )timing offset corrections that were sent for each of the CMs.
             Generally, these measurements are positive, but if the 
             measurements are negative, the value of this object is zero. Used for 
             timing of CM upstream transmissions to ensure synchronized arrivals at 
             the CMTS. Units are in terms of (6.25 microseconds/64)." 0"Document [25] from References, Section 6.2.18."                    H"The initial random backoff window to use when retrying
             Ranging Requests. Expressed as a power of 2. A value of 16
             at the CMTS indicates that a proprietary adaptive retry
             mechanism is to be used. See the associated conformance
             object for write conditions and limitations." /"Document [25] from References, Section 8.3.4."                    F"The final random backoff window to use when retrying
             Ranging Requests. Expressed as a power of 2. A value of 16
             at the CMTS indicates that a proprietary adaptive retry
             mechanism is to be used. See the associated conformance
             object for write conditions and limitations." /"Document [25] from References, Section 8.3.4."                    E"The initial random backoff window to use when retrying
             transmissions. Expressed as a power of 2. A value of 16
             at the CMTS indicates that a proprietary adaptive retry
             mechanism is to be used. See the associated conformance
             object for write conditions and limitations." /"Document [25] from References, Section 8.3.4."                    C"The final random backoff window to use when retrying
             transmissions. Expressed as a power of 2. A value of 16
             at the CMTS indicates that a proprietary adaptive retry
             mechanism is to be used. See the associated conformance
             object for write conditions and limitations." /"Document [25] from References, Section 8.3.4."                     ?"Applicable for SCDMA channel types only.
             Number of active codes. Returns zero for
             Non-SCDMA channel types. Note that legal 
             values from 64..128 MUST be non-prime." 4"Document [25] from References, Section 6.2.11.2.1."                     ?"Applicable for SCDMA channel types only.
             The number of SCDMA codes per mini-slot.
             Returns zero if the value is undefined, unknown or in
             case of a TDMA or ATDMA channel." 4"Document [25] from References, Section 6.2.11.2.1."                     ?"Applicable for SCDMA channel types only.
             SCDMA Frame size in units of spreading intervals. 
             This value returns zero for non SCDMA Profiles." 1" Document [25] from References, Section 6.2.12."                     ?"Applicable for SCDMA channel types only.
             15 bit seed used for code hopping sequence initialization.
             Returns zero for non-SCDMA channel types." 2"Document [25] from References, Section 6.2.14.1."                     ?"Defines the Upstream channel type.
             Given the channel type, other channel attributes can be checked
             for value validity at the time of entry creation and update." /"Document [25] from References, Section 6.2.1."                    ?"Intended for use when a temporary inactive upstream table row is
             created for the purpose of manipulating SCDMA parameters for an
             active row. Refer to the descriptions of docsIfUpChannelStatus 
             and docsIfUpChannelUpdate for details of this procedure.
             This object contains the ifIndex value of the active upstream
             row whose SCDMA parameters are to be adjusted.
             Although this object was created to facilitate SCDMA parameter
             adjustment, it may also be used at the vendor's discretion for
             non-SCDMA parameter adjustment.
             This object must contain a value of zero for active upstream rows."                      ?"Used to perform the transfer of adjusted SCDMA parameters from the
             temporary upstream row to the active upstream row indicated by the
             docsIfUpChannelCloneFrom object. The transfer is initiated through 
             an SNMP SET of TRUE to this object. The SNMP SET will fail with a
             GEN_ERROR (snmpv1) or COMMIT_FAILED_ERROR (snmpv2c/v3) if the adjusted
             SCDMA parameter values are not compatible with each other.
             Although this object was created to facilitate SCDMA parameter
             adjustment, it may also be used at the vendor's discretion for
             non-SCDMA parameter adjustment.
             An SNMP GET of this object always returns FALSE."                      ?"This object is generally intended to be used for the creation of
             a temporary inactive upstream row for the purpose of adjusting
             the SCDMA channel parameters of an active upstream row. 
             The recommended procedure is:
             1) Create an inactive row through an SNMP SET using createAndWait(5).
                Use an ifIndex value outside the operational range of the system.
             2) Set the docsIfUpChannelCloneFrom field to the ifIndex value of
                the active row whose SCDMA parameters require adjustment.
             3) Adjust the SCDMA parameter values using the new temporary inactive
                row.
             4) Update the active row by setting object docsIfUpChannelUpdate to
                TRUE. This SET will fail if the adjusted SCDMA parameters are not
                compatible with each other.
             5) Delete the temporary row through an SNMP SET using DELETE.

             The following restrictions apply to this object:
             1) This object must contain a value of active(1) for active rows.
             2) Temporary inactive rows must be created using createAndWait(5).
             3) The only possible status change of a row created using 
                createAndWait(5) (ie notInService(2)) is to destroy(6).
                These temporary rows must never become active.
             4) A status transition from active (1) to destroy (6) is not
                permitted. Entries with docsIfUpChannelStatus set to active(1) 
                are logically linked to a physical interface, not temporarily 
                created to clone parameters. The Interface MIB (RFC 2863)
                ifAdminStatus should be used to take an Upstream Channel offline.

             Although this object was created to facilitate SCDMA parameter
             adjustment, it may also be used at the vendor's discretion for
             non-SCDMA parameter adjustment."                       ?"At the CMTS, used to enable or disable pre-equalization on the
       upstream channel represented by this table instance. 
       At the CM, this object is read-only and reflects the status of 
       pre-equalization as represented in the RNG-RSP."                       5"Describes the attributes for each class of service."                      R"Describes the attributes for a single class of service.

             If implemented as read-create in the Cable Modem
             Termination System, creation of entries in this table is
             controlled by the value of docsIfCmtsQosProfilePermissions.

             If implemented as read-only, entries are created based
             on information in REG-REQ MAC messages received from
             Cable Modems (Cable Modem Termination System
             implementation), or based on information extracted from
             the TFTP option file (Cable Modem implementation).
             In the Cable Modem Termination system, read-only entries
             are removed if no longer referenced by
             docsIfCmtsServiceTable.

             An entry in this table must not be removed while it is
             referenced by an entry in docsIfCmServiceTable (Cable Modem)
             or docsIfCmtsServiceTable (Cable Modem Termination System).

             An entry in this table should not be changeable while
             it is referenced by an entry in docsIfCmtsServiceTable.

             If this table is created automatically, there should only
             be a single entry for each Class of Service. Multiple
             entries with the same Class of Service parameters are not
             recommended."                       _"The index value that uniquely identifies an entry
             in the docsIfQosProfileTable."                      #"A relative priority assigned to this service when
             allocating bandwidth. Zero indicates lowest priority
             and seven indicates highest priority.
             Interpretation of priority is device-specific.
             MUST NOT be changed while this row is active." 2"Document [25] from References, Appendix C.1.1.4."                     ?"The maximum upstream bandwidth, in bits per second,
             allowed for a service with this service class.
             Zero if there is no restriction of upstream bandwidth.
             MUST NOT be changed while this row is active." 2"Document [25] from References, Appendix C.1.1.4."                     ?"Minimum guaranteed upstream bandwidth, in bits per second,
             allowed for a service with this service class.
             MUST NOT be changed while this row is active." 2"Document [25] from References, Appendix C.1.1.4."                     ?"The maximum downstream bandwidth, in bits per second,
             allowed for a service with this service class.
             Zero if there is no restriction of downstream bandwidth.
             MUST NOT be changed while this row is active." 2"Document [25] from References, Appendix C.1.1.4."                    ?"The maximum number of mini-slots that may be requested
             for a single upstream transmission.
             A value of zero means there is no limit.
             MUST NOT be changed while this row is active.
             This object has been deprecated and replaced by 
             docsIfQosProfMaxTransmitBurst, to fix a mismatch
             of the units and value range with respect to the DOCSIS
             Maximum Upstream Channel Transmit Burst Configuration
             Setting." )"Document [25] from References, C.1.1.4."                     ?"Indicates whether Baseline Privacy is enabled for this
             service class.
             MUST NOT be changed while this row is active."                      ."This is object is to used to create or delete rows in
             this table.  This object MUST NOT be changed from active
             while the row is referenced by the any entry in either
             docsIfCmServiceTable (on the CM), or the
             docsIfCmtsServiceTable (on the CMTS)."                      ("The maximum number of bytes that may be requested for a 
             single upstream transmission. A value of zero means there 
             is no limit. Note: This value does not include any 
             physical layer overhead.
             MUST NOT be changed while this row is active." 2"Document [25] from References, Appendix C.1.1.4."                     ?"At the CM, describes the PHY signal quality of downstream
             channels. At the CMTS, describes the PHY signal quality of
             upstream channels. At the CMTS, this table may exclude
             contention intervals."                      ?"At the CM, describes the PHY characteristics of a
             downstream channel. At the CMTS, describes the PHY signal
             quality of an upstream channel.
             An entry in this table exists for each ifEntry with an
             ifType of docsCableUpstreamChannel(205) for Cable Modem Termination
             Systems and docsCableDownstream(128) for Cable Modems."                       z"true(1) if this CMTS includes contention intervals in
             the counters in this table. Always false(2) for CMs." <"Document [25] from References,
             Section 9.4.1"                     ?"Codewords received on this channel without error.
             This includes all codewords, whether or not they
             were part of frames destined for this device." /"Document [25] from References, Section 6.2.5."                     ?"Codewords received on this channel with correctable
             errors. This includes all codewords, whether or not
             they were part of frames destined for this device." /"Document [25] from References, Section 6.2.5."                     ?"Codewords received on this channel with uncorrectable
             errors. This includes all codewords, whether or not
             they were part of frames destined for this device." /"Document [25] from References, Section 6.2.5."                     ?"Signal/Noise ratio as perceived for this channel.
             At the CM, describes the Signal/Noise of the downstream
             channel.  At the CMTS, describes the average Signal/Noise
             of the upstream channel." 3"Document [25] from References, Tables 4-1 and 4-2"                    ?"Total microreflections including in-channel response
             as perceived on this interface, measured in dBc below
             the signal level.
             This object is not assumed to return an absolutely
             accurate value, but should give a rough indication
             of microreflections received on this interface.
             It is up to the implementer to provide information
             as accurate as possible." 3"Document [25] from References, Tables 4-1 and 4-2"                    5"At the CM, returns the equalization data for the downstream
             channel. At the CMTS, returns the average equalization
             data for the upstream channel. Returns an empty string
             if the value is unknown or if there is no equalization
             data available or defined." ,"Document [25] from References, Table 8-21."                     ?"Codewords received on this channel without error.
             This includes all codewords, whether or not they
             were part of frames destined for this device.
             This is the 64 bit version of docsIfSigQUnerroreds." /"Document [25] from References, Section 6.2.5."                     ?"Codewords received on this channel with correctable
             errors. This includes all codewords, whether or not
             they were part of frames destined for this device.
             This is the 64 bit version of docsIfSigQCorrecteds." /"Document [25] from References, Section 6.2.5."                     "Codewords received on this channel with uncorrectable
             errors. This includes all codewords, whether or not
             they were part of frames destined for this device.
             This is the 64 bit version of docsIfSigQUncorrectables." /"Document [25] from References, Section 6.2.5."                     ?"Indication of the DOCSIS capability of the device. 
                 This object mirrors docsIfDocsisCapability from the
                 DocsIfExt mib." )"Document [25] from References, Annex G."                         t"Describes the attributes of each CM MAC interface,
             extending the information available from ifEntry."                       ?"An entry containing objects describing attributes of
             each MAC entry, extending the information in ifEntry.
             An entry in this table exists for each ifEntry with an
             ifType of docsCableMaclayer(127)."                       ?"Identifies the CMTS that is believed to control this MAC
             domain. At the CM, this will be the source address from
             SYNC, MAP, and other MAC-layer messages. If the CMTS is
             unknown, returns 00-00-00-00-00-00." /"Document [25] from References, Section 8.2.2."                    ?"Identifies the capabilities of the MAC implementation
             at this interface. Note that packet transmission is
             always supported. Therefore, there is no specific bit
             required to explicitly indicate this capability.
             Note that BITS objects are encoded most significant bit
             first. For example, if bit 1 is set, the value of this
             object is the octet string '40'H."                       -"Waiting time for a Ranging Response packet." /"Document [25] from References, Section 9.1.6."                     -"Waiting time for a Ranging Response packet." G"Document [25] from References,
             Section 9.1.6, timer T3."                     ^"This table maintains a number of status objects
             and counters for Cable Modems."                       ?"A set of status objects and counters for a single MAC
             layer instance in a Cable Modem.
             An entry in this table exists for each ifEntry with an
             ifType of docsCableMaclayer(127)."                      ?"Current Cable Modem connectivity state, as specified
             in the RF Interface Specification. Interpretations for
             state values 1-12 are clearly outlined in the Document [25]
             reference given below.
             As stated in the description for object docsIfCmtsCmStatusValue,
             accessDenied(13)indicates the CMTS has sent a Registration
             Aborted message to the CM." l"Document [25] from References, Section 11.2.
             Document [26] from References, Section 6.3.4.2."                    "Status code for this Cable Modem as defined in the
             RF Interface Specification. The status code consists
             of a single character indicating error groups, followed
             by a two- or three-digit number indicating the status
             condition." ,"Document [26] from References, Appendix F."                     Q"The operational transmit power for the attached upstream
             channel." 0"Document [25] from References, Section 6.2.18."                     ="Number of times the CM reset or initialized this interface."                       X"Number of times the CM lost synchronization with
             the downstream channel." /"Document [25] from References, Section 8.3.2."                     7"Number of times the CM received invalid MAP messages." /"Document [25] from References, Section 8.3.4."                     7"Number of times the CM received invalid UCD messages." /"Document [25] from References, Section 8.3.3."                     R"Number of times the CM received invalid ranging response
             messages." /"Document [25] from References, Section 8.3.6."                     W"Number of times the CM received invalid registration
             response messages." /"Document [25] from References, Section 8.3.8."                     /"Number of times counter T1 expired in the CM." ,"Document [25] from References, Figure 9-2."                     /"Number of times counter T2 expired in the CM." ,"Document [25] from References, Figure 9-2."                     /"Number of times counter T3 expired in the CM." ,"Document [25] from References, Figure 9-2."                     /"Number of times counter T4 expired in the CM." ,"Document [25] from References, Figure 9-2."                     L"Number of times the ranging process was aborted
             by the CMTS." /"Document [25] from References, Section 9.3.3."                    ?"Indication whether the device has registered using 1.0 Class of
              Service or 1.1 Quality of Service.
              An unregistered CM should indicate 1.1 QOS for a 
              docsIfDocsisBaseCapability value of Docsis 1.1/2.0. An unregistered
		  CM should indicate 1.0 COS for a docsIfDocsisBaseCapability value 
              of Docsis 1.0.
              This object mirrors docsIfCmDocsisOperMode from the docsIfExt mib." )"Document [25] from References, Annex G."                     ?"Indicates modulation type status currently used by the CM.
              Since this object specifically identifies PHY mode, the shared
              upstream channel type is not permitted." /"Document [25] from References, Section 6.2.1."                    C"Pre-equalization data for this CM after convolution with 
             data indicated in the RNG-RSP.
             Returns an empty string if the value is unknown or if there 
             is no equalization data available or defined. The value should 
             be formatted as defined in the following REFERENCE." -"Document [25] from References, Figure 8-23."                     P"Describes the attributes of each upstream service queue
             on a CM."                       ?"Describes the attributes of an upstream bandwidth service
             queue.
             An entry in this table exists for each Service ID.
             The primary index is an ifIndex with an ifType of
             docsCableMaclayer(127)."                      K"Identifies a service queue for upstream bandwidth. The
             attributes of this service queue are shared between the
             CM and the CMTS. The CMTS allocates upstream bandwidth
             to this service queue based on requests from the CM and
             on the class of service associated with this queue."                      "The index in docsIfQosProfileTable describing the quality
             of service attributes associated with this particular
             service. If no associated entry in docsIfQosProfileTable
             exists, this object returns a value of zero."                      ?"The number of upstream mini-slots which have been used to
             transmit data PDUs in immediate (contention) mode. This
             includes only those PDUs that are presumed to have
             arrived at the headend (i.e., those which were explicitly
             acknowledged.) It does not include retransmission attempts
             or mini-slots used by Requests." -"Document [25] from References, Section 9.4."                     ?"The number of upstream mini-slots which have been used to
             transmit data PDUs in dedicated mode (i.e., as a result
             of a unicast Data Grant)." -"Document [25] from References, Section 9.4."                     ?"The number of attempts to transmit data PDUs containing
             requests for acknowledgment that did not result in
             acknowledgment." -"Document [25] from References, Section 9.4."                     n"The number of data PDUs transmission failures due to
             excessive retries without acknowledgment." -"Document [25] from References, Section 9.4."                     m"The number of attempts to transmit bandwidth requests
             which did not result in acknowledgment." -"Document [25] from References, Section 9.4."                     r"The number of requests for bandwidth which failed due to
             excessive retries without acknowledgment." -"Document [25] from References, Section 9.4."                    ?"The number of upstream mini-slots which have been used to
             transmit data PDUs in immediate (contention) mode. This
             includes only those PDUs that are presumed to have
             arrived at the headend (i.e., those which were explicitly
             acknowledged.) It does not include retransmission attempts
             or mini-slots used by Requests." -"Document [25] from References, Section 9.4."                     ?"The number of upstream mini-slots which have been used to
             transmit data PDUs in dedicated mode (i.e., as a result
             of a unicast Data Grant)." -"Document [25] from References, Section 9.4."                         ?"Describes the attributes of each CMTS MAC interface,
             extending the information available from ifEntry.
             Mandatory for all CMTS devices."                       ?"An entry containing objects describing attributes of each
             MAC entry, extending the information in ifEntry.
             An entry in this table exists for each ifEntry with an
             ifType of docsCableMaclayer(127)."                      ?"Identifies the capabilities of the CMTS MAC
             implementation at this interface. Note that packet
             transmission is always supported. Therefore, there
             is no specific bit required to explicitly indicate
             this capability.
             Note that BITS objects are encoded most significant bit
             first. For example, if bit 1 is set, the value of this
             object is the octet string '40'H."                       e"The interval between CMTS transmission of successive SYNC
             messages at this interface." -"Document [25] from References, Section 9.3."                     ?"The interval between CMTS transmission of successive
             Upstream Channel Descriptor messages for each upstream
             channel at this interface." ,"Document [25] from References, Section 9.3"                     T"The maximum number of service IDs that may be
             simultaneously active."                      ?"The amount of time to elapse between each broadcast
             station maintenance grant. Broadcast station maintenance
             grants are used to allow new cable modems to join the
             network. Zero indicates that a vendor-specific algorithm
             is used instead of a fixed time. Maximum amount of time
             permitted by the specification is 2 seconds." )"Document [25] from References, Annex B."                     ?"The maximum number of attempts to make on invitations
             for ranging requests. A value of zero means the system
             should attempt to range forever." ;"Document [25] from References, Section 9.3.3 and Annex B."                    ?"The amount of time to elapse between each broadcast
             station maintenance grant. Broadcast station maintenance
             grants are used to allow new cable modems to join the
             network. Zero indicates that a vendor-specific algorithm
             is used instead of a fixed time. Maximum amount of time
             permitted by the specification is 2 seconds." )"Document [25] from References, Annex B."                     `"For the MAC layer, this group maintains a number of
             status objects and counters."                       ?"Status entry for a single MAC layer.
             An entry in this table exists for each ifEntry with an
             ifType of docsCableMaclayer(127)."                       W"This object counts invalid RNG-REQ messages received on
             this interface." /"Document [25] from References, Section 8.3.5."                     ]"This object counts ranging attempts that were explicitly
             aborted by the CMTS." /"Document [25] from References, Section 8.3.6."                     ?"This object counts invalid REG-REQ messages received on
             this interface. That is, syntax, out of range parameters,
             or erroneous requests." /"Document [25] from References, Section 8.3.7."                     ?"This object counts failed registration attempts. Included are
            docsIfCmtsStatusInvalidRegReqs, authentication and class of 
            service failures." /"Document [25] from References, Section 8.3.7."                     \"This object counts invalid data request messages
             received on this interface."                       \"This object counts the number of times counter T5
             expired on this interface." ,"Document [25] from References, Figure 9-2."                     e"A set of objects in the CMTS, maintained for each
             Cable Modem connected to this CMTS."                       ?"Status information for a single Cable Modem.
             An entry in this table exists for each Cable Modem
             that is connected to the CMTS implementing this table."                       ?"Index value to uniquely identify an entry in this table.
             For an individual Cable Modem, this index value should
             not change during CMTS uptime."                       ?"MAC address of this Cable Modem. If the Cable Modem has
             multiple MAC addresses, this is the MAC address associated
             with the Cable interface." /"Document [25] from References, Section 8.2.2."                    "IP address of this Cable Modem. If the Cable Modem has no
             IP address assigned, or the IP address is unknown, this
             object returns a value of 0.0.0.0. If the Cable Modem has
             multiple IP addresses, this object returns the IP address
             associated with the Cable interface.
             This object has been deprecated and replaced by
             docsIfCmtsCmStatusInetAddressType and
             docsIfCmtsCmStatusInetAddress, to enable IPv6 addressing
             in the future."                       ?"IfIndex of the downstream channel this CM is connected
             to. If the downstream channel is unknown, this object
             returns a value of zero."                       ?"IfIndex of the upstream channel this CM is connected
             to. If the upstream channel is unknown, this object
             returns a value of zero."                       ?"The receive power as perceived for upstream data from
             this Cable Modem.
             If the receive power is unknown, this object returns
             a value of zero." ,"Document [25] from References, Table 6-11."                    !"A measure of the current round trip time for this CM.
             Used for timing of CM upstream transmissions to ensure
             synchronized arrivals at the CMTS. Units are in terms
             of 6.25 microseconds/(64*256). Returns zero if the value
             is unknown." 0"Document [25] from References, Section 6.2.18."                     ?"Equalization data for this CM. Returns an empty string
             if the value is unknown or if there is no equalization
             data available or defined." -"Document [25] from References, Figure 8-23."                    ?"Current Cable Modem connectivity state, as specified
             in the RF Interface Specification. Returned status
             information is the CM status as assumed by the CMTS,
             and indicates the following events:
             other(1)
                Any state other than below.
             ranging(2)
                The CMTS has received an Initial Ranging Request
                message from the CM, and the ranging process is not
                yet complete.
             rangingAborted(3)
                The CMTS has sent a Ranging Abort message to the CM.
             rangingComplete(4)
                The CMTS has sent a Ranging Complete message to the CM.
             ipComplete(5)
                The CMTS has received a DHCP reply message and forwarded
                it to the CM.
             registrationComplete(6)
                The CMTS has sent a Registration Response message to
                the CM.
             accessDenied(7)
                The CMTS has sent a Registration Aborted message
                to the CM.
             operational(8)
                If Baseline Privacy is enabled for the CM, the CMTS has 
                completed Baseline Privacy initialization. If Baseline 
                Privacy is not enabled, equivalent to registrationComplete.
             The CMTS only needs to report states it is able to detect." ."Document [25] from References, Section 11.2."                     9"Codewords received without error from this Cable Modem." /"Document [25] from References, Section 6.2.5."                     Q"Codewords received with correctable errors from this
             Cable Modem." /"Document [25] from References, Section 6.2.5."                     S"Codewords received with uncorrectable errors from this
             Cable Modem." /"Document [25] from References, Section 6.2.5."                     ?"Signal/Noise ratio as perceived for upstream data from
             this Cable Modem.
             If the Signal/Noise is unknown, this object returns
             a value of zero." 4"Document [25] from References, Tables 4-1 and 4-2."                    ?"Total microreflections including in-channel response
             as perceived on this interface, measured in dBc below
             the signal level.
             This object is not assumed to return an absolutely
             accurate value, but should give a rough indication
             of microreflections received on this interface.
             It is up to the implementer to provide information
             as accurate as possible." 3"Document [25] from References, Tables 4-1 and 4-2"                     9"Codewords received without error from this Cable Modem." /"Document [25] from References, Section 6.2.5."                     Q"Codewords received with correctable errors from this
             Cable Modem." /"Document [25] from References, Section 6.2.5."                     S"Codewords received with uncorrectable errors from this
             Cable Modem." /"Document [25] from References, Section 6.2.5."                     ?" Indication whether the CM has registered using 1.0 Class of
                 Service or 1.1 Quality of Service.
                 This object mirrors docsIfCmtsCmStatusDocsisMode from the 
                 docsIfExt mib." )"Document [25] from References, Annex G."                    "Indicates modulation type currently used by the CM. Since
              this object specifically identifies PHY mode, the shared
              type is not permitted. If the upstream channel is unknown, 
              this object returns a value of zero." ,"Document [25] from References, Table 8-19."                     ?"The type of internet address of
                docsIfCmtsCmStatusInetAddress. If the cable modem
                Internet address is unassigned or unknown, then the
                value of this object is unknown(0)."                      ?"Internet address of this Cable Modem. If the Cable Modem
                has no Internet address assigned, or the Internet address
                is unknown, the value of this object is the empty string.
                If the Cable Modem has multiple Internet addresses, this
                object returns the Internet address associated with the
                Cable (i.e. RF MAC) interface."                       h"Describes the attributes of upstream service queues
             in a Cable Modem Termination System."                      ?"Describes the attributes of a single upstream bandwidth
             service queue.
             Entries in this table exist for each ifEntry with an
             ifType of docsCableMaclayer(127), and for each service
             queue (Service ID) within this MAC layer.
             Entries in this table are created with the creation of
             individual Service IDs by the MAC layer and removed
             when a Service ID is removed."                      |"Identifies a service queue for upstream bandwidth. The
             attributes of this service queue are shared between the
             Cable Modem and the Cable Modem Termination System.
             The CMTS allocates upstream bandwidth to this service
             queue based on requests from the CM and on the class of
             service associated with this queue."                      ?"Pointer to an entry in docsIfCmtsCmStatusTable identifying
             the Cable Modem using this Service Queue. If multiple
             Cable Modems are using this Service Queue, the value of
             this object is zero.
             This object has been deprecated and replaced by
             docsIfCmtsServiceNewCmStatusIndex, to fix a mismatch
             of the value range with respect to docsIfCmtsCmStatusIndex
             (1..2147483647)."                       t"Allows a service class for a particular modem to be
             suppressed, (re-)enabled, or deleted altogether."                       ?"The index in docsIfQosProfileTable describing the quality
             of service attributes associated with this particular
             service. If no associated docsIfQosProfileTable entry
             exists, this object returns a value of zero."                       5"The value of sysUpTime when this entry was created."                       ?"The cumulative number of Packet Data octets received
             on this Service ID. The count does not include the
             size of the Cable MAC header"                       Y"The cumulative number of Packet Data packets received
             on this Service ID."                      "Pointer (via docsIfCmtsCmStatusIndex) to an entry in
             docsIfCmtsCmStatusTable identifying the Cable Modem
             using this Service Queue. If multiple Cable Modems are
             using this Service Queue, the value of this object is
             zero."                       ]"Describes a modulation profile associated with one or more
             upstream channels."                      ?"Describes a modulation profile for an Interval Usage Code
             for one or more upstream channels.
             Entries in this table are created by the operator. Initial
             default entries may be created at system initialization
             time. No individual objects have to be specified in order
             to create an entry in this table.
             Note that some objects do not have DEFVALs, but do have
             calculated defaults and need not be specified during row
             creation.
             There is no restriction on the changing of values in this
             table while their associated rows are active."                       ?"An index into the Channel Modulation table representing
              a group of Interval Usage Codes, all associated with the
              same channel."                       ?"An index into the Channel Modulation table which, when
             grouped with other Interval Usage Codes, fully
             instantiate all modulation sets for a given upstream
             channel." ,"Document [25] from References, Table 8-20."                     9"Controls and reflects the status of rows in this table."                      R"The modulation type used on this channel. Returns
             other(1) if the modulation type is neither 
             qpsk, qam16, qam8, qam32, qam64 or qam128.
             Type qam128 is used for SCDMA channels only.
             See the reference for the modulation profiles
             implied by different modulation types." ,"Document [25] from References, Table 8-19."                     ?"The preamble length for this modulation profile in bits.
             Default value is the minimum needed by the implementation
             at the CMTS for the given modulation profile." ,"Document [25] from References, Table 8-19."                     W"Specifies whether or not differential encoding is used
             on this channel." ,"Document [25] from References, Table 8-19."                     ?"The number of correctable errored bytes (t) used in
             forward error correction code. The value of 0 indicates
             no correction is employed. The number of check bytes
             appended will be twice this value." ,"Document [25] from References, Table 8-19."                     ?"The number of data bytes (k) in the forward error
             correction codeword.
             This object is not used if docsIfCmtsModFECErrorCorrection
             is zero." ,"Document [25] from References, Table 8-19."                     5"The 15 bit seed value for the scrambler polynomial." ,"Document [25] from References, Table 8-19."                    ("The maximum number of mini-slots that can be transmitted
             during this channel's burst time. Returns zero if the
             burst length is bounded by the allocation MAP rather than
             this profile.
             Default value is 0 except for shortData, where it is 8." ,"Document [25] from References, Table 8-19."                     ?"The number of symbol-times which must follow the end of
             this channel's burst. Default value is the minimum time
             needed by the implementation for this modulation profile." ,"Document [25] from References, Table 8-19."                     2"Indicates if the last FEC codeword is truncated." ,"Document [25] from References, Table 8-19."                     )"Indicates if the scrambler is employed." ,"Document [25] from References, Table 8-19."                     w" ATDMA Byte Interleaver Depth (Ir). This object returns 1 for                    
              non ATDMA profiles. " ,"Document [25] from References, Table 8-19."                     k" ATDMA Byte Interleaver Block size (Br). This object returns 
              zero for non ATDMA profiles " ,"Document [25] from References, Table 8-19."                     %"Preamble type for DOCSIS 2.0 bursts" ,"Document [25] from References, Table 8-19."                     j" Trellis Code Modulation (TCM) On/Off. This value returns false for 
              non S-CDMA profiles." ,"Document [25] from References, Table 8-19."                     a" S-CDMA Interleaver step size. This value returns zero 
              for non S-CDMA profiles." ,"Document [25] from References, Table 8-19."                     ?" S-CDMA spreader. This value returns false for non S-CDMA
              profiles. Default value for IUC 3 and 4 is OFF, for 
              all other IUCs it is ON." ,"Document [25] from References, Table 8-19."                     Z" S-CDMA sub-frame size. This value returns zero 
              for non S-CDMA profiles." ,"Document [25] from References, Table 8-19."                     B"Describes the modulation channel type for this modulation entry." ,"Document [25] from References, Table 8-19."                    ?"This object specifies permitted methods of creating
             entries in docsIfQosProfileTable.
             CreateByManagement(0) is set if entries can be created
             using SNMP. UpdateByManagement(1) is set if updating
             entries using SNMP is permitted. CreateByModems(2)
             is set if entries can be created based on information
             in REG-REQ MAC messages received from Cable Modems.
             Information in this object is only applicable if
             docsIfQosProfileTable is implemented as read-create.
             Otherwise, this object is implemented as read-only
             and returns CreateByModems(2).
             Either CreateByManagement(0) or CreateByModems(1)
             must be set when writing to this object.
             Note that BITS objects are encoded most significant bit
             first. For example, if bit 2 is set, the value of this
             object is the octet string '20'H."                      ?"This is a table to provide a quick access index into the
             docsIfCmtsCmStatusTable. There is exactly one row in this
             table for each row in the docsIfCmtsCmStatusTable. In
             general, the management station should use this table only
             to get a pointer into the docsIfCmtsCmStatusTable (which
             corresponds to the CM's RF interface MAC address), and
             should not iterate (e.g. GetNext through) this table."                       ?"A row in the docsIfCmtsMacToCmTable.
             An entry in this table exists for each Cable Modem
             that is connected to the CMTS implementing this table."                       ?"The RF side MAC address for the referenced CM. (E.g. the
             interface on the CM that has docsCableMacLayer(127) as
             its ifType."                       ?"An row index into docsIfCmtsCmStatusTable. When queried
             with the correct instance value (e.g. a CM's MAC address),
             returns the index in docsIfCmtsCmStatusTable which
             represents that CM."                      #"The time interval in seconds over which the channel utilization
             index is calculated. All upstream/downstream channels use the
             same docsIfCmtsChannelUtilizationInterval. 
             Setting a value of zero disables utilization reporting.
             A channel utilization index is calculated over a fixed window
             applying to the most recent docsIfCmtsChannelUtilizationInterval.
             It would therefore be prudent to use a relatively short
             docsIfCmtsChannelUtilizationInterval."                       f"Reports utilization statistics for attached upstream and
             downstream physical channels."                      "Utilization statistics for a single upstream or downstream
             physical channel. An entry exists in this table for each
             ifEntry with an ifType equal to docsCableDownstreamInterface
             (128) or docsCableUpstreamInterface (129)."                       ?"The secondary index into this table. Indicates the IANA
              interface type associated with this physical channel. Only
              docsCableDownstreamInterface (128) and
              docsCableUpstreamInterface (129) are valid."                       m"The tertiary index into this table. Indicates the CMTS
              identifier for this physical channel."                      M"The calculated and truncated utilization index for this
              physical upstream or downstream channel, accurate as of 
              the most recent docsIfCmtsChannelUtilizationInterval.

              Upstream Channel Utilization Index:
              The upstream channel utilization index is expressed as a 
              percentage of minislots utilized on the physical channel, regardless 
              of burst type. For an Initial Maintenance region, the minislots 
              for the complete region are considered utilized if the CMTS 
              received an upstream burst within the region from any CM on the 
              physical channel.  For contention REQ and REQ/DATA regions, the    
              minislots for a transmission opportunity within the region are 
              considered utilized if the CMTS received an upstream burst within 
              the opportunity from any CM on the physical channel. For all other 
              regions, utilized minislots are those in which the CMTS granted
              bandwidth to any unicast SID on the physical channel.

              For an upstream interface that has multiple logical upstream 
              channels enabled, the utilization index is a weighted sum of 
              utilization indices for the logical channels. The weight for 
              each utilization index is the percentage of upstream minislots 
              allocated for the corresponding logical channel.
              Example: 
              If 75% of bandwidth is allocated to the first logical channel 
              and 25% to the second, and the utilization indices for each are 
              60 and 40 respectively, the utilization index for the upstream 
              physical channel is (60 * 0.75) + (40 * 0.25) = 55. This figure 
              applies to the most recent utilization interval. 

              Downstream Channel Utilization Index:
              The downstream channel utilization index is a percentage expressing 
              the ratio between bytes used to transmit data versus the total number 
              of bytes transmitted in the raw bandwidth of the MPEG channel. As
              with the upstream utilization index, the calculated value represents 
              the most recent utilization interval.
              Formula:
              Downstream utilization index = 
              (100 * (data bytes / raw bytes)) = 
              (100 * ((raw bytes - stuffed bytes) / raw bytes))
              
              Definitions:
              Data bytes: Number of bytes transmitted as data in the                            
                          docsIfCmtsChannelUtilizationInterval. 
              Stuffed bytes: Number of filler bytes transmitted as non-data in the 
                             DocsIfCmtsChannelUtilizationInterval.
              Raw bandwidth: Total number of bytes available for transmitting data,
                             not including bytes used for headers and other overhead.
              Raw bytes: (raw bandwidth * docsIfCmtsChannelUtilizationInterval)."                       |"This table is implemented at the CMTS to collect downstream
             channel statistics for utilization calculations."                       ?"An entry provides a list of traffic counters for a single
             downstream channel.
             An entry in this table exists for each ifEntry with an
             ifType of docsCableDownstream(128)."                      B"The Cable Modem Termination System (CMTS) identification
             of the downstream channel within this particular MAC
             interface. If the interface is down, the object returns
             the most current value. If the downstream channel ID is
             unknown, this object returns a value of 0."                      y"At the CMTS, the total number of bytes in the Payload portion
             of MPEG Packets (ie. not including MPEG header or pointer_field)
             transported by this downstream channel since CMTS initialization.
             This is the 32 bit version of docsIfCmtsDownChnlCtrExtTotalBytes,
             included to provide back compatibility with SNMPv1 managers."                      ?"At the CMTS, the total number of DOCSIS data bytes transported
             by this downstream channel since CMTS initialization. The number
             of data bytes is defined as the total number of bytes transported
             in DOCSIS payloads minus the number of stuff bytes transported in
             DOCSIS payloads.
             This is the 32 bit version of docsIfCmtsDownChnlCtrExtUsedBytes,
             included to provide back compatibility with SNMPv1 managers."                      h"At the CMTS, the total number of bytes in the Payload portion
             of MPEG Packets (ie. not including MPEG header or pointer_field)
             transported by this downstream channel since CMTS initialization.
             This is the 64 bit version of docsIfCmtsDownChnlCtrTotalBytes, and
             will not be accessible to SNMPv1 managers."                      ?"At the CMTS, the total number of DOCSIS data bytes transported
             by this downstream channel since CMTS initialization. The number
             of data bytes is defined as the total number of bytes transported
             in DOCSIS payloads minus the number of stuff bytes transported in
             DOCSIS payloads.
             This is the 64 bit version of docsIfCmtsDownChnlCtrUsedBytes, and
             will not be accessible to SNMPv1 managers."                       ?"This table is implemented at the CMTS to provide upstream
             channel statistics appropriate for channel utilization
             calculations."                      d"List of traffic statistics for a single upstream channel.
             For Docsis 2.0 CMTSs, an entry in this table exists for 
             each ifEntry with an ifType of docsCableUpstreamChannel (205).
             For Docsis 1.x CMTSs, an entry in this table exists for each
             ifEntry with an ifType of docsCableUpstreamInterface (129)."                       2"The CMTS identification of the upstream channel."                      ?"Current count, from CMTS initialization, of all minislots
             defined for this upstream logical channel. This count includes
             all IUCs and SIDs, even those allocated to the NULL SID for
             a 2.0 logical channel which is inactive.
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtTotalMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is mandatory."                      ?"Current count, from CMTS initialization, of unicast granted
             minislots on the upstream logical channel, regardless of burst
             type. Unicast granted minislots are those in which the CMTS
             assigned bandwidth to any unicast SID on the logical channel.
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtUcastGrantedMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is mandatory."                      ?"Current count, from CMTS initialization, of contention minislots
             defined for this upstream logical channel. This count includes
             all minislots assigned to a broadcast or multicast SID on the
             logical channel. 
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtTotalCntnMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is mandatory."                       "Current count, from CMTS initialization, of contention minislots
             utilized on the upstream logical channel. For contention regions,
             utilized minislots are those in which the CMTS correctly received
             an upstream burst from any CM on the upstream logical channel.
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtUsedCntnMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is mandatory."                      ?"Current count, from CMTS initialization, of all minislots
             defined for this upstream logical channel. This count includes
             all IUCs and SIDs, even those allocated to the NULL SID for
             a 2.0 logical channel which is inactive.
             This is the 64 bit version of docsIfCmtsUpChnlCtrTotalMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is mandatory."                      ?"Current count, from CMTS initialization, of unicast granted
             minislots on the upstream logical channel, regardless of burst
             type. Unicast granted minislots are those in which the CMTS
             assigned bandwidth to any unicast SID on the logical channel.
             This is the 64 bit version of docsIfCmtsUpChnlCtrUcastGrantedMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is mandatory."                      ?"Current count, from CMTS initialization, of contention minislots
             defined for this upstream logical channel. This count includes
             all minislots assigned to a broadcast or multicast SID on the
             logical channel. 
             This is the 64 bit version of docsIfCmtsUpChnlCtrTotalCntnMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is mandatory."                      ?"Current count, from CMTS initialization, of contention minislots
             utilized on the upstream logical channel. For contention regions,
             utilized minislots are those in which the CMTS correctly received
             an upstream burst from any CM on the upstream logical channel.
             This is the 64 bit version of docsIfCmtsUpChnlCtrUsedCntnMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is mandatory."                      C"Current count, from CMTS initialization, of contention minislots 
             subjected to collisions on the upstream logical channel. For 
             contention regions, these are the minislots applicable to bursts 
             that the CMTS detected, but could not correctly receive.  
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtCollCntnMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             a value of zero is returned."                      -"Current count, from CMTS initialization, of contention request
             minislots defined for this upstream logical channel. This count 
             includes all minislots for IUC1 assigned to a broadcast or multicast 
             SID on the logical channel. 
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtTotalCntnReqMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      8"Current count, from CMTS initialization, of contention request
             minislots utilized on this upstream logical channel. This count 
             includes all contention minislots for IUC1 applicable to bursts
             that the CMTS correctly received.             
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtUsedCntnReqMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      Y"Current count, from CMTS initialization, of contention request
             minislots subjected to collisions on this upstream logical channel.  
             This includes all contention minislots for IUC1 applicable to bursts
             that the CMTS detected, but could not correctly receive.             
             This is the 32 bit version of docsIfCmtsUpChnlCtrExtCollCntnReqMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      D"Current count, from CMTS initialization, of contention request
             data minislots defined for this upstream logical channel. This count 
             includes all minislots for IUC2 assigned to a broadcast or multicast 
             SID on the logical channel. 
             This is the 32 bit version of
             docsIfCmtsUpChnlCtrExtTotalCntnReqDataMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      K"Current count, from CMTS initialization, of contention request
             data minislots utilized on this upstream logical channel. This  
             includes all contention minislots for IUC2 applicable to bursts
             that the CMTS correctly received.             
             This is the 32 bit version of 
             docsIfCmtsUpChnlCtrExtUsedCntnReqDataMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      q"Current count, from CMTS initialization, of contention request
             data minislots subjected to collisions on this upstream logical 
             channel. This includes all contention minislots for IUC2 applicable 
             to bursts that the CMTS detected, but could not correctly receive.             
             This is the 32 bit version of 
             docsIfCmtsUpChnlCtrExtCollCntnReqDataMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      G"Current count, from CMTS initialization, of contention initial
             maintenance minislots defined for this upstream logical channel. 
             This includes all minislots for IUC3 assigned to a broadcast or 
             multicast SID on the logical channel. 
             This is the 32 bit version of
             docsIfCmtsUpChnlCtrExtTotalCntnInitMaintMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      U"Current count, from CMTS initialization, of contention initial
             maintenance minislots utilized on this upstream logical channel.   
             This includes all contention minislots for IUC3 applicable to bursts
             that the CMTS correctly received.             
             This is the 32 bit version of 
             docsIfCmtsUpChnlCtrExtUsedCntnInitMaintMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      ?"Current count, from CMTS initialization, of contention initial
             maintenance minislots subjected to collisions on this upstream 
             logical channel. This includes all contention minislots for IUC3
             applicable to bursts that the CMTS detected, but could not correctly
             receive.             
             This is the 32 bit version of 
             docsIfCmtsUpChnlCtrExtCollCntnInitMaintMslots,
             and is included for back compatibility with SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      ""Current count, from CMTS initialization, of collision contention 
             minislots on the upstream logical channel. For contention regions,
             these are the minislots applicable to bursts that the CMTS detected,  
             but could not correctly receive.
             This is the 64 bit version of docsIfCmtsUpChnlCtrCollCntnMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             a value of zero is returned."                      "Current count, from CMTS initialization, of contention request
             minislots defined for this upstream logical channel. This count 
             includes all minislots for IUC1 assigned to a broadcast or multicast 
             SID on the logical channel. 
             This is the 64 bit version of docsIfCmtsUpChnlCtrTotalCntnReqMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      '"Current count, from CMTS initialization, of contention request
             minislots utilized on this upstream logical channel. This count 
             includes all contention minislots for IUC1 applicable to bursts
             that the CMTS correctly received.             
             This is the 64 bit version of docsIfCmtsUpChnlCtrUsedCntnReqMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      F"Current count, from CMTS initialization, of contention request
             minislots subjected to collisions on this upstream logical channel.
             This includes all contention minislots for IUC1 applicable to bursts
             that the CMTS detected, but could not correctly receive.             
             This is the 64 bit version of docsIfCmtsUpChnlCtrCollCntnReqMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      %"Current count, from CMTS initialization, of contention request
             data minislots defined for this upstream logical channel. This count 
             includes all minislots for IUC2 assigned to a broadcast or multicast 
             SID on the logical channel. 
             This is the 64 bit version of docsIfCmtsUpChnlCtrTotalCntnReqDataMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      +"Current count, from CMTS initialization, of contention request
             data minislots utilized on this upstream logical channel. This  
             includes all contention minislots for IUC2 applicable to bursts
             that the CMTS correctly received.             
             This is the 64 bit version of docsIfCmtsUpChnlCtrUsedCntnReqDataMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      Q"Current count, from CMTS initialization, of contention request
             data minislots subjected to collisions on this upstream logical 
             channel. This includes all contention minislots for IUC2 applicable 
             to bursts that the CMTS detected, but could not correctly receive.             
             This is the 64 bit version of docsIfCmtsUpChnlCtrCollCntnReqDataMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      2"Current count, from CMTS initialization, of initial maintenance
             minislots defined for this upstream logical channel. This count 
             includes all minislots for IUC3 assigned to a broadcast or multicast 
             SID on the logical channel. 
             This is the 64 bit version of 
             docsIfCmtsUpChnlCtrTotalCntnInitMaintMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      )"Current count, from CMTS initialization, of initial maintenance
             minislots utilized on this upstream logical channel. This  
             includes all contention minislots for IUC3 applicable to bursts
             that the CMTS correctly received.             
             This is the 64 bit version of docsIfCmtsUpChnlCtrUsedCntnInitMaintMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                      g"Current count, from CMTS initialization, of contention initial
             maintenance minislots subjected to collisions on this upstream 
             logical channel. This includes all contention minislots for IUC3
             applicable to bursts that the CMTS detected, but could not correctly
             receive.             
             This is the 64 bit version of docsIfCmtsUpChnlCtrCollCntnInitMaintMslots,
             and will not be accessible to SNMPv1 managers.
             Support for this object is optional. If the object is not supported,
             A value of zero is returned."                                   u"The compliance statement for devices that implement
             MCNS/DOCSIS compliant Radio Frequency Interfaces."   g"This group is implemented only in Cable Modems, not in
             Cable Modem Termination Systems." g"This group is implemented only in Cable Modem Termination
             Systems, not in Cable Modems."="Read-write in Cable Modem Termination Systems,
             read-only in Cable Modems.
             A range of 54MHz to 860MHz is appropriate for a cable
             plant using a North American Sub-Split channel plan.
             The spectrum range has been expanded to accommodate
             a lower edge of 47MHz and an upper edge of 862MHz
             for some European channel plans.
             If DOCSIS is extended to cover other types of channel
             plans (and frequency allocations) this object will be
             modified accordingly."?"It is conformant to implement this object as read-only.
             In Cable Modems, this object is always implemented as
             read-only.  The value of 6 MHz is appropriate for cable
             plants running under NTSC (National Television
             Standards Committee) standards.  The value of 8 MHz is
             appropriate for cable plants running under ETSI
             standards.  For other regional standards, this
             object will be modified accordingly." Y"Read-write in Cable Modem Termination Systems,
             read-only in Cable Modems." Y"Read-write in Cable Modem Termination Systems,
             read-only in Cable Modems." Y"Read-write in Cable Modem Termination Systems,
             read-only in Cable Modems.""Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems.
             A range of 5MHz to 42MHz is appropriate for a cable
             plant using a North American Sub-Split channel plan.
             The spectrum range has been expanded to accommodate
             an upper edge of 65MHz for some European channel plans.
             If DOCSIS is extended to cover other types of channel
             plans (and frequency allocations) this object will
             be modified accordingly."?"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems. The above value is appropriate
             for cable plants running under  NTSC (National Television
             Standards Committee) standards.  If DOCSIS is extended to
             work with other standard (e.g. European standards), this
             object will be modified accordingly." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems."?"This object is always read-only in Cable Modems. The number of active
 codes when SCDMA is in use must range from 64 to 128, and must be a non-
 Prime value. Providing this range allows for the following features and
 capabilities:
 1) Power management in S-CDMA spreader-on frames (with a 3 dB spread)
 2) Avoidance of code 0
 3) Flexible minislot sizes with and without the use of code 0" Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." 2"This object is always read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." Z"Read-create in Cable Modem Termination Systems,
             read-only in Cable Modems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." ?"This object is always read-only in Cable Modems.
             It is compliant to implement this object as read-only
             in Cable Modem Termination Systems." 8"It is compliant to implement this object as read-only." 8"It is compliant to implement this object as read-only." 8"It is compliant to implement this object as read-only." 8"It is compliant to implement this object as read-only." 8"It is compliant to implement this object as read-only." 8"It is compliant to implement this object as read-only."                 f"Group of objects implemented in both Cable Modems and
             Cable Modem Termination Systems."                 /"Group of objects implemented in Cable Modems."                 P"Group of objects implemented in Cable Modem Termination
             Systems."                 "Group of objects obsoleted."                 "Group of objects deprecated."                        