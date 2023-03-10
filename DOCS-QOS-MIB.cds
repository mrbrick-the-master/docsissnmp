     l"The rate of traffic in unit of bits per second.
                     Used to specify traffic rate for QOS."              !"Indicates a direction on an RF MAC interface.

                     The value downstream(1) is from Cable Modem
                     Termination System to Cable Modem.

                     The value upstream(2) is from Cable Modem to
                     Cable Modem Termination System."              p"The scheduling service provided by a CMTS for an
                    upstream service flow. If the parameter is omitted
                    from an upstream QOS Parameter Set, this object takes
                    the value of bestEffort (2). This parameter must be
                    reported as undefined (1) for downstream QOS Parameter
                    Sets."                                                                                                     Z"This is the management information for
         Quality Of Service (QOS) for DOCSIS 1.1.""
         Co-Author: Michael Patrick
         Postal:    Motorola ISG
                    20 Cabot Blvd, MS M4-30
                    Mansfield, MA 02048-1193
                    U.S.A.
         Phone:     +1 508 261 5707
         E-mail:    michael.patrick@motorola.com" "0010180000Z""Published as draft-ietf-ipcdn-qos-mib-04.txt.

        Changes from qos-mib-03 include:
        - Moved six objects from docsQosServiceFlowTable back
          to docsQosParamSetTable.
        - Added five counters to docsQosDynamicServiceStatsTable for
          DCC counts.
        - Removed notApplicable(256) from docsQosParamSetSchedulingType
        - Clarified reported values of docsQosParamSetTable objects.
          The CMTS reports any CMTS-specific default value it is
          using, and unknown or not applicable params are reported as zero.
        - Add docsQosPktClassBitMap
        - Add docsQosParamSetBitMap
        - Restore docsQosParamSetServiceClassName
        - Add 5 objects to docsQosServiceFlowLogTable
        - Add docsQosServiceClassDirection
        "       -- Oct 18, 2000
          ?"This table describes the packet classification
                    configured on the CM or CMTS.
                    The model is that a packet either received
                    as input from an interface or transmitted
                    for output on an interface may be compared
                    against an ordered list of rules pertaining to
                    the packet contents. Each rule is a row of this
                    table. A matching rule provides a service flow
                    id to to which the packet is classified.
                    All rules need to match for a packet to match
                    a classifier.

                    The objects in this row correspond to a set of
                    Classifier Encoding parameters in a DOCSIS
                    MAC management message. The docsQosPktClassBitMap
                    indicates which particular parameters were present
                    in the classifier as signalled in the DOCSIS message.
                    If the referenced parameter was not present
                    in the signalled DOCSIS 1.1 Classifier, the
                    corresponding object in this row reports a
                    value as specified in the DESCRIPTION section.
                    "                       ?"An entry in this table provides a single packet
                     classifier rule. The index ifIndex is an ifType
                     of docsCableMaclayer(127)."                       n"Index assigned to packet classifier entry by
                     the CMTS which is unique per service flow." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.3.2"                     R"Indicates the direction to which the classifier
                     is applied."                      2"The value specifies the order of evaluation
                     of the classifiers.
                     The higher the value the higher the priority.
                     The value of 0 is used as default in
                     provisioned service flows classifiers.
                     The default value of 64 is used for dynamic
                     service flow classifiers.
                     If the referenced parameter is not present
                     in a classifier, this object reports the default value
                     as defined above." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.3.5"                     ?"The low value of a range of TOS byte values.
                     If the referenced parameter is not present
                     in a classifier, this object reports the value of 0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.1"                     ?"The 8-bit high value of a range of TOS byte
                     values.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of 0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.1"                    7"The mask value is bitwise ANDed with TOS byte
                     in an IP packet and this value is used check
                     range checking of TosLow and TosHigh.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of 0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.1"                    ?"This object indicates the value of the IP
                    Protocol field required for IP packets to match
                    this rule.

                    The value 256 matches traffic with any IP Protocol
                    value. The value 257 by convention matches both TCP
                    and UDP.

                    If the referenced parameter is not present
                    in a classifier, this object reports the value of 258." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.2"                    "This object specifies the value of the IP
                     Source Address required for packets to match
                     this rule. An IP packet matches the rule when
                     the packet ip source address bitwise ANDed
                     with the docsQosPktClassIpSourceMask value
                     equals the docsQosPktClassIpSourceAddr value.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of
                     0.0.0.0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.3"                    '"This object specifies which bits of a packet's
                    IP Source Address that are compared to match
                    this rule.
                    An IP packet matches the rule when the packet
                    source address bitwise ANDed with the
                    docsQosPktClassIpSourceMask value equals the
                    docsQosIpPktClassSourceAddr value.

                    If the referenced parameter is not present
                    in a classifier, this object reports the value of
                    0.0.0.0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.4"                    4"This object specifies the value of the IP
                     Destination Address required for packets to
                     match this rule. An IP packet matches the rule
                     when the packet IP destination address
                     bitwise ANDed with the
                     docsQosPktClassIpDestMask value equals the
                     docsQosPktClassIpDestAddr value.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of
                     0.0.0.0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.5"                    -"This object specifies which bits of a packet's
                    IP Destination Address that are compared to
                    match this rule.
                    An IP packet matches the rule when the packet
                    destination address bitwise ANDed with the
                    docsQosPktClassIpDestMask value equals the
                    docsQosPktClassIpDestAddr value.

                    If the referenced parameter is not present
                    in a classifier, this object reports the value of
                    0.0.0.0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.6"                    q"This object specifies the low end inclusive
                     range of TCP/UDP source port numbers to which
                     a packet is compared. This object is irrelevant
                     for non-TCP/UDP IP packets.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of 0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.7"                    ?"This object specifies the high end inclusive
                     range of TCP/UDP source port numbers to which
                     a packet is compared. This object is irrelevant
                     for non-TCP/UDP IP packets.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of
                     65535." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.9"                    +"This object specifies the low end inclusive
                     range of TCP/UDP destination port numbers to
                     which a packet is compared.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of 0." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.9"                    E"This object specifies the high end inclusive
                     range of TCP/UDP destination port numbers to which
                     a packet is compared.

                     If the referenced parameter is not present
                     in a classifier, this object reports the value of
                     65535." ,"SP-RFIv1.1-I05-000714, Appendix C.2.1.5.10"                    ?"An Ethernet packet matches an entry when its
                    destination MAC address bitwise ANDed with
                    docsQosPktClassDestMacMask equals the value of
                    docsQosPktClassDestMacAddr.


                    If the referenced parameter is not present
                    in a classifier, this object reports the value of
                    '000000000000'H.
                    " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.6.1"                    ?"An Ethernet packet matches an entry when its
                    destination MAC address bitwise ANDed with
                    docsQosPktClassDestMacMask equals the value of
                    docsQosPktClassDestMacAddr.

                    If the referenced parameter is not present
                    in a classifier, this object reports the value of
                    '000000000000'H.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.6.1"                    L"An Ethernet packet matches this entry when its
                    source MAC address equals the value of
                    this object.

                    If the referenced parameter is not present
                    in a classifier, this object reports the value of
                    'FFFFFFFFFFFF'H.
                    " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.6.2"                    D"This object indicates the format of the layer 3
                    protocol id in the Ethernet packet. A value of
                    none(0) means that the rule does not use the
                    layer 3 protocol type as a matching criteria.

                    A value of ethertype(1) means that the rule
                    applies only to frames which contains an
                    EtherType value. Ethertype values are contained
                    in packets using the Dec-Intel-Xerox (DIX)
                    encapsulation or the RFC1042 Sub-Network Access
                    Protocol (SNAP) encapsulation formats.

                    A value of dsap(2) means that the rule applies
                    only to frames using the IEEE802.3
                    encapsulation format with a Destination Service
                    Access Point (DSAP) other
                    than 0xAA (which is reserved for SNAP).

                    A value of mac(3) means that the rule applies
                    only to MAC management messages for MAC management
                    messages.

                    A value of all(4) means that the rule matches
                    all Ethernet packets.

                    If the Ethernet frame contains an 802.1P/Q Tag
                    header (i.e. EtherType 0x8100), this object
                    applies to the embedded EtherType field within
                    the 802.1P/Q header.

                    If the referenced parameter is not present
                    in a classifier, this object reports the value of 0.

                    " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.6.3"                    "If docsQosEthPktClassProtocolType is none(0),
                    this object is ignored when considering whether
                    a packet matches the current rule.

                    If dosQosPktClassEnetProtocolType is ethertype(1),
                    this object gives the 16-bit value of the
                    EtherType that the packet must match in order to
                    match the rule.

                    If docsQosPktClassEnetProtocolType is dsap(2), the
                    lower 8 bits of this object's value must match the
                    DSAP byte of the packet in order to match the
                    rule.

                    If docsQosPktClassEnetProtocolType is mac(3), the
                    lower 8 bits of this object value represent a
                    lower bound (inclusive) of MAC management message
                    type codes matched, and the upper 8 bits of this
                    object value represent the upper bound (inclusive)
                    of matched MAC message type codes.  Certain
                    message type codes are excluded from matching, as
                    specified in the reference.

                    If the Ethernet frame contains an 802.1P/Q Tag header
                    (i.e. EtherType 0x8100), this object applies to the
                    embedded EtherType field within the 802.1P/Q header.

                    If the referenced parameter is not present in the
                    classifier, the value of this object is reported as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.6.3"                    ?"This object applies only to Ethernet frames
                    using the 802.1P/Q tag header (indicated with
                    EtherType 0x8100). Such frames include a 16-bit
                    Tag that contains a 3 bit Priority field and
                    a 12 bit VLAN number.

                    Tagged Ethernet packets must have a 3-bit
                    Priority field within the range of
                    docsQosPktClassPriLow and docsQosPktClassPriHigh in
                    order to match this rule.

                    If the referenced parameter is not present in the
                    classifier, the value of this object is reported as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.7.1"                    ?"This object applies only to Ethernet frames
                    using the 802.1P/Qtag header (indicated with
                    EtherType 0x8100). Such frames include a 16-bit
                    Tag that contains a 3 bit Priority field and
                    a 12 bit VLAN number.

                    Tagged Ethernet packets must have a 3-bit
                    Priority field within the range of
                    docsQosPktClassPriLow and
                    docsQosPktClassPriHigh in order to match this
                    rule.

                    If the referenced parameter is not present in the
                    classifier, the value of this object is reported
                    as 7.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.7.1"                    F"This object applies only to Ethernet frames
                    using the 802.1P/Q tag header.

                    If this object's value is nonzero, tagged
                    packets must have a VLAN Identifier that matches
                    the value in order to match the rule.

                    Only the least significant 12 bits of this object's
                    value are valid.

                    If the referenced parameter is not present in the
                    classifier, the value of this object is reported
                    as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.7.2"                    ="This object indicates whether or not the classifier
                    is enabled to classify packets to a Service Flow.

                    If the referenced parameter is not present in the
                    classifier, the value of this object is reported
                    as active(1).
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.1.3.6"                     j"This object counts the number of packets that have
                    been classified using this entry."                      ?"This object indicates which parameter encodings
                    were actually present in the DOCSIS packet classifier
                    encoding signalled in the DOCSIS message that
                    created the classifier.

                    A bit of of this object is set to 1 if the parameter
                    indicated by the comment was present in the classifier
                    encoding, and 0 otherwise.

                    Note that BITS are encoded most significant bit
                    first, so that if e.g. bits 6 and 7 are set, this object
                    is encoded as the octet string '030000'H.
                   "                      L"This table describes the set of DOCSIS 1.1 QOS
                    parameters defined in a managed device.

                    The ifIndex index specifies a DOCSIS MAC Domain.
                    The docsQosServiceFlowId index specifies a particular
                    Service Flow.
                    The docsQosParamSetType index indicates whether
                    the active, admitted, or provisioned QOS Parameter
                    Set is being described by the row.

                    Only the QOS Parameter Sets of Docsis 1.1 service
                    flows are represented in this table.  Docsis 1.0
                    QOS service profiles are not represented in this
                    table.

                    Each row corresponds to a DOCSIS QOS Parameter Set
                    as signaled via DOCSIS MAC management messages.
                    Each object in the row corresponds to one or
                    part of one DOCSIS 1.1 Service Flow Encoding.
                    The docsQosParamSetBitMap object in the row indicates
                    which particular parameters were signalled in
                    the original registration or dynamic service
                    request message that created the QOS Parameter Set.

                    In many cases, even if a QOS Parameter Set parameter
                    was not signalled, the DOCSIS specification calls
                    for a default value to be used. That default value
                    is reported as the value of the corresponding object
                    in this row.

                    Many objects are not applicable depending on
                    the service flow direction or upstream scheduling
                    type.  The object value reported in this case
                    is specified in the DESCRIPTION clause.
                    "                       !"A unique set of QOS parameters."                      G"Refers to the Service Class Name that the
                    parameter set values were derived.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the default
                    value of this object is a zero length string.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.3.4"                    "The relative priority of a service flow.
                    Higher numbers indicate higher priority.
                    This priority should only be used to differentiate
                    service flow with identical parameter sets.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the default
                    value of this object is 0.  If the parameter is
                    not applicable, the reported value is 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.5.2"                    "Maximum sustained traffic rate allowed for this
                    service flow in bits/sec. Must count all MAC frame
                    data PDU from the bytes following the MAC header HCS to
                    the end of the CRC. The number of bytes
                    forwarded is limited during any time interval.
                    The value 0 means no maximum traffic rate is
                    enforced. This object applies to both upstream and
                    downstream service flows.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the default
                    value of this object is 0. If the parameter is
                    not applicable, it is reported as 0.
                    " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.5.3"                    7"Specifies the token bucket size in bytes
                    for this parameter set. The value is calculated
                    from the byte following the MAC header HCS to
                    the end of the CRC. This object is applied in
                    conjunction with docsQosParamSetMaxTrafficRate to
                    calculate maximum sustained traffic rate.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the default
                    value of this object for scheduling types
                    bestEffort (2), nonRealTimePollingService(3),
                    and realTimePollingService(4) is 1522.

                    If this parameter is not applicable, it is reported
                    as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.5.4"                    n"Specifies the guaranteed minimum rate in
                    bits/sec for this parameter set. The value is
                    calculated from the byte following the MAC
                    header HCS to the end of the CRC. The default
                    value of 0 has the meaning that no bandwidth
                    is reserved.
                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the default
                    value of this object is 0. If the parameter
                    is not applicable, it is reported as 0.
                    " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.5.5"                    D"Specifies an assumed minimum packet size in
                    bytes for which the docsQosParamSetMinReservedRate
                    will be provided. The value is calculated from
                    the byte following the MAC header HCS to the
                    end of the CRC.

                    If the referenced parameter is omitted from a
                    DOCSIS QOS parameter set, the default value is
                    CMTS implementation dependent. In this case, the
                    CMTS reports the default value it is using and the
                    CM reports a value of 0. If the referenced
                    parameter is not applicable to the direction or
                    scheduling type of the service flow, both CMTS and
                    CM report this object's value as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.5.6"                     "Specifies the maximum duration in seconds that
                    resources remain unused on an active service
                    flow before CMTS signals that both active and
                    admitted parameters set are null.
                    The default value of 0 signifies an
                    infinite amount of time.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the default
                    value of this object is 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.5.7"                    ?"Specifies the maximum duration in seconds that
                    resources remain in admitted state before
                    resources must be released.
                    The value of 0 signifies an infinite amount
                    of time.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the
                    default value of this object is 200.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.5.8"                    ?"Specifies the maximum concatenated burst in
                    bytes which an upstream  service flow is allowed.
                    The value is calculated from the FC byte of the
                    Concatenation MAC Header to the last CRC byte in
                    of the last concatenated MAC frame, inclusive.
                    The value of 0 specifies no maximum burst.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set, the default
                    value of this object is 0. If the parameter is
                    not applicable, this object's value is reported
                    as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.1"                    ?"Specifies the upstream scheduling service used for
                    upstream service flow.

                    If the referenced parameter is not present in the
                    corresponding DOCSIS QOS Parameter Set of an
                    upstream service flow, the default value of this
                    object is bestEffort(2). For QOS parameter sets of
                    downstream service flows, this object's value is
                    reported as undefined(1).
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.2"                    ?"Specifies the nominal interval in microseconds
                    between successive unicast request
                    opportunities on an upstream service flow.

                    This object applies only to upstream service flows
                    with schedulingType of value
                    nonRealTimePollingService(3),
                    realTimePollingService(4), and
                    unsolictedGrantServiceWithAD(5).  The parameter is
                    mandatory for realTimePollingService(4).  If the
                    parameter is omitted with
                    nonRealTimePollingService(3), the CMTS uses an
                    implementation dependent value.  If the parameter
                    is omitted with unsolictedGrantServiceWithAD(5),
                    the CMTS uses as a default value the value of the
                    Nominal Grant Interval parameter.  In all cases,
                    the CMTS reports the value it is using when the
                    parameter is applicable.  The CM reports the
                    signaled parameter value if it was signaled,
                    and 0 otherwise.

                    If the referenced parameter is not applicable to
                    the direction or scheduling type of the
                    corresponding DOCSIS QOS Parameter Set, both
                    CMTS and CM report this object's value as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.4"                    "Specifies the maximum amount of time in
                    microseconds that the unicast request interval
                    may be delayed from the nominal periodic
                    schedule on an upstream service flow.

                    This parameter is applicable only to upstream
                    service flows with a Schedulingtype of
                    realTimePollingService(4) or
                    unsolictedGrantServiceWithAD(5).

                    If the referenced parameter is applicable but not
                    present in the corresponding DOCSIS QOS Parameter
                    Set, the CMTS uses an implementation dependent
                    value and reports the value it is using.
                    The CM reports a value of 0 in this case.

                    If the parameter is not applicable to the
                    direction or upstream scheduling type of the
                    service flow, both CMTS and CM report this
                    object's value as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.5"                    ?"Specifies the unsolicited grant size in bytes.
                    The grant size includes the entired MAC frame
                    data PDU from the Frame Control byte to end of
                    the MAC frame.

                    The referenced parameter is applicable only
                    for upstream flows with a SchedulingType of
                    of unsolicitedGrantServicewithAD(5) or
                    unsolicitedGrantService(6), and is mandatory
                    when applicable. Both CMTS and CM report
                    the signaled value of the parameter in this
                    case.

                    If the referenced parameter is not applicable to
                    the direction or scheduling type of the
                    corresponding DOCSIS QOS Parameter Set, both
                    CMTS and CM report this object's value as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.6"                    9"Specifies the nominal interval in microseconds
                    between successive data grant opportunities
                    on an upstream service flow.

                    The referenced parameter is applicable only
                    for upstream flows with a SchedulingType of
                    of unsolicitedGrantServicewithAD(5) or
                    unsolicitedGrantService(6), and is mandatory
                    when applicable. Both CMTS and CM report the
                    signaled value of the parameter in this case.

                    If the referenced parameter is not applicable to
                    the direction or scheduling type of the
                    corresponding DOCSIS QOS Parameter Set, both
                    CMTS and CM report this object's value as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.7"                    M"Specifies the maximum amount of time in
                    microseconds that the transmission opportunities
                    may be delayed from the nominal periodic schedule.

                    The referenced parameter is applicable only
                    for upstream flows with a SchedulingType of
                    of unsolicitedGrantServicewithAD(5) or
                    unsolicitedGrantService(6), and is mandatory
                    when applicable. Both CMTS and CM report the
                    signaled value of the parameter in this case.

                    If the referenced parameter is not applicable to
                    the direction or scheduling type of the
                    corresponding DOCSIS QOS Parameter Set, both
                    CMTS and CM report this object's value as 0.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.8"                    $"Specifies the number of data grants per Nominal
                    Grant Interval
                    (docsQosParamSetNomGrantInterval).

                    The referenced parameter is applicable only
                    for upstream flows with a SchedulingType of
                    of unsolicitedGrantServicewithAD(5) or
                    unsolicitedGrantService(6), and is mandatory
                    when applicable. Both CMTS and CM report the
                    signaled value of the parameter in this case.

                    If the referenced parameter is not applicable to
                    the direction or scheduling type of the
                    corresponding DOCSIS QOS Parameter Set, both
                    CMTS and CM report this object's value as 0.
                    " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.9"                    ?"Specifies the AND mask for IP TOS byte for overwriting
                    IP packets TOS value.  The IP packets TOS byte is
                    bitwise ANDed with docsQosParamSetTosAndMask and
                    result is bitwise ORed with docsQosParamSetTosORMask
                    and result is written to IP packet TOS byte.
                    A value of 'FF'H for docsQosParamSetTosAndMask and
                    a value of '00'H for docsQosParamSetTosOrMask means
                    that IP Packet TOS byte is not overwritten.

                    This combination is reported if the referenced
                    parameter is not present in a QOS Parameter Set." ,"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.10"                     ?"Specifies the OR mask for IP TOS byte.
                    See the description of docsQosParamSetTosAndMask
                    for further details." ,"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.10"                    ?"Specifies the maximum latency between the
                    reception of a packet by the CMTS on its NSI
                    and the forwarding of the packet to the RF
                    interface. A value of 0 signifies no maximum
                    latency enforced. This object only applies to
                    downstream service flows.

                    If the referenced parameter is not present in the
                    corresponding downstream DOCSIS QOS Parameter Set,
                    the default value is 0. This parameter is
                    not applicable to upstream DOCSIS QOS Parameter Sets,
                    and its value is reported as 0 in this case.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.7.1"                    ?"Defines the type of the QOS parameter set defined
                    by this row. active(1) indicates the Active QOS
                    parameter set, describing the service currently
                    being provided by the Docsis MAC domain to the
                    service flow. admitted(2) indicates the Admitted
                    QOS Parameter Set, describing services reserved by
                    by the Docsis MAC domain for use by the service flow.
                    provisioned (3) describes the QOS Parameter Set
                    defined in the DOCSIS CM Configuration file for
                    the service flow." "SP-RFIv1.1-I05-000714, 8.1.5"                    ?"Specifies which transmit interval opportunities
                    the CM omits for upstream transmission requests and
                    packet transmissions. This object takes its
                    default value for downstream service flows.

                    Unless otherwise indicated, a bit value of 1 means
                    that a CM must *not* use that opportunity for
                    upstream transmission.

                    Calling bit 0 the least significant bit of the
                    least significant (4th) octet, and increasing
                    bit number with significance, the bit definitions
                    are as defined below:

                    broadcastReqOpp(0):
                         all CMs broadcast request opportunities

                    priorityReqMulticastReq(1):
                         priority request multicast request opportunities
                    reqDataForReq(3):
                         request/data opportunities for requests

                    reqDataForData(4):
                         request/data opportunities for data

                    concatenateData(5):
                         concatenate data

                    fragmentData(6):
                         fragment data

                    suppresspayloadheaders(7):
                         suppress payload headers

                    dropPktsExceedUGSize(8):
                         A value of 1 mean that service flow must drop
                         packet that do not fit in the Unsolicited
                         Grant size

                    If the referenced parameter is not present in
                    a QOS Parameter Set, the value of this object is
                    reported as '00000000'H.
                    " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.6.3"        B-- A 32-bit mask represented most significant byte
-- first. The 32 bit integer represented in this manner
-- equals the binary value of the referenced integer
-- parameter of the DOCSIS RFI specification.
-- The BITS syntax is not used in order to avoid
-- the confusion caused by different bit numbering
-- conventions.
          ?"This object indicates the set of QOS Parameter
                    Set parameters actually signaled in the
                    DOCSIS registration or dynamic service request
                    message that created the QOS Parameter Set.
                    A bit is set to 1 when the parameter described
                    by the indicated reference section is present
                    in the original request.

                    Note that when Service Class names are expanded,
                    the registration or dynamic response message may
                    contain parameters as expanded by the CMTS based
                    on a stored service class. These expanded
                    parameters are *not* indicated by a 1 bit in this
                    object.

                    Note that even though some QOS Parameter Set
                    parameters may not be signalled in a message
                    (so that the paramater's bit in this object is 0)
                    the DOCSIS specification calls for default
                    values to be used. These default values are
                    reported as the corresponding object's value in
                    the row.

                    Note that BITS objects are encoded most
                    significant bit first. For example, if bits
                    1 and 16 are set, the value of this object
                    is the octet string '400080'H.

                   "       R-- Each bit corresponds to a parameter
-- from SP-RFI-v1.1-I05-000714, Appendix C
               e"This table describes the set of Docsis-QOS
                     Service Flows in a managed device. "                       ?"Describes a service flow.
                     An entry in the table exists for each
                     Service Flow ID. The ifIndex is an
                     ifType of docsCableMaclayer(127)."                       ."An index assigned to a service flow by CMTS." +"SP-RFIv1.1-I05-000714, Appendix C.2.2.3.2"                    U"Service Identifier (SID) assigned to an
                    admitted or active service flow. This object
                    reports a value of 0 if a Service Id is not
                    associated with the service flow. Only active
                    or admitted upstream service flows will have a
                    Service Id (SID)." +"SP-RFIv1.1-I05-000714, Appendix C.2.2.3.3"                     $"The direction of the service flow." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.1/2"                    "Object reflects whether service flow is the primary
                    or a secondary service flow.

                    A primary service flow is the default service flow
                    for otherwise unclassified traffic and all MAC
                    messages." %"SP-RFIv1.1-I05-000714, Section 8.1 "                     n"This table describes statistics associated with the
                     Service Flows in a managed device. "                       ?"Describes a set of service flow statistics.
                     An entry in the table exists for each
                     Service Flow ID. The ifIndex is an
                     ifType of docsCableMaclayer(127)."                       4"The number of packet counted on this service flow."                       i"The number of octets counted on this service flow
                    after payload header suppression."                       O"The value of sysUpTime when the service flow
                    was created."                       3"The total time that service flow has been active."                       Y"The number of packet with unknown payload header
                    suppression index."                       ?"The number of packets dropped due to policing of
                    the service flow, especially to limit the maximum
                    rate of the flow."                       ?"The number of packet delayed due to policing of
                    the service flow, especially to limit the maximum
                    rate of the flow."                       ?"This table describes statistics associated with
                     upstream service flows. All counted frames must
                     be received without an FCS error."                       ?"Describes a set of upstream service flow statistics.
                     An entry in the table exists for each
                     upstream Service Flow in a managed device.
                     The ifIndex is an ifType of docsCableMaclayer(127)."                       ^"Identifies a service id for an admitted or active
                    upstream service flow."                       ?"The number of fragmentation headers received on an
                    upstream  service flow, regardless of whether
                    the fragment was correctly reassembled into a
                    valid packet. "                       p"The number of upstream fragments discarded and not
                    assembled into a valid upstream packet."                       _"The number of concatenation headers received on an
                    upstream service flow."                       v"This table describes statistics associated with the
                     Dynamic Service Flows in a managed device. "                      i"Describes a set of dynamic service flow statistics.
                     Two entries exist for each Docsis mac layer
                     interface for the upstream and downstream direction.
                     On the CMTS, the downstream direction row indicates
                     messages transmitted or transactions originated
                     by the CMTS. The upstream direction row indicates
                     messages received or transaction originated by the
                     CM. On the CM, the downstream direction row
                     indicates messages received or transactions
                     originated by the CMTS. The upstream direction
                     row indicates messages transmitted by the CM or
                     transactions originated by the CM.
                     The ifIndex is an ifType of docsCableMaclayer(127)."                       "The direction of interface."                       1"The number of Dynamic Service Addition Requests"                       2"The number of Dynamic Service Addition Responses"                       :"The number of Dynamic Service Addition Acknowledgements."                       /"The number of Dynamic Service Change Requests"                       0"The number of Dynamic Service Change Responses"                       7"The number of Dynamic Service Change Acknowlegements."                       /"The number of Dynamic Service Delete Requests"                       0"The number of Dynamic Service Delete Responses"                       U"The number of successful Dynamic Service Addition
                    transactions."                       Q"The number of failed Dynamic Service Addition
                    transactions."                       S"The number of successful Dynamic Service Change
                    transactions."                       O"The number of failed Dynamic Service Change
                    transactions."                       S"The number of successful Dynamic Service Delete
                    transactions."                       O"The number of failed Dynamic Service Delete
                    transactions."                       ?"The number of Dynamic Channel Change Request messages
        traversing an interface. This count is nonzero only on
        downstream direction rows."                       ?"The number of Dynamic Channel Change Response messages
        traversing an interface. This count is nonzero only on upstream
        direction rows."                       ?"The number of Dynamic Channel Change Acknowledgement
        messages traversing an interface. This count is nonzero only
        on downstream direction rows."                       ?"The number of successful Dynamic Channel Change
        transactions. This count is nonzero only on downstream direction
        rows."                       ?"The number of failed Dynamic Channel Change
        transactions. This count is nonzero only on downstream direction
        rows."                       g"This table contains a log of the disconnected
                     Service Flows in a managed device."                       T"The information regarding a single disconnected
                     service flow."                       )"Unique index for a logged service flow."                       t"The ifIndex of ifType docsCableMacLayter(127)
                     on the CMTS where the service flow was present."                       5"The index assigned to the service flow by the CMTS."                       \"The MAC address for the cable modem associated with
                     the service flow."                       j"The number of packets counted on this service flow
                    after payload header suppression."                       i"The number of octets counted on this service flow
                    after payload header suppression."                       O"The value of sysUpTime when the service flow
                    was deleted."                       O"The value of sysUpTime when the service flow
                    was created."                       ."The total time that service flow was active."                       T"The value of docsQosServiceFlowDirection
                    for the service flow."                       R"The value of docsQosServiceFlowPrimary for the
                    service flow."                       ?"The value of docsQosParamSetServiceClassName for
                    the provisioned QOS Parameter Set of the
                    service flow."                       `"The final value of docsQosServiceFlowPolicedDropPkts
                    for the service flow."                       a"The final value of docsQosServiceFlowPolicedDelayPkts
                    for the service flow."                       ?"Setting this object to the value destroy(6) removes
                    this entry from the table.
                    Reading this object return the value active(1)."                       ]"This table describes the set of Docsis-QOS
                     Service Classes in a CMTS. "                      ?"A provisioned service class on a CMTS.
                Each entry defines a template for certain
                DOCSIS QOS Parameter Set values. When a CM
                creates or modifies an Admitted QOS Parameter Set for a
                Service Flow, it may reference a Service Class
                Name instead of providing explicit QOS Parameter
                Set values. In this case, the CMTS populates
                the QOS Parameter Set with the applicable
                corresponding values from the named Service Class.
                Subsequent changes to a Service Class row do *not*
                affect the QOS Parameter Set values of any service flows
                already admitted.

                A service class template applies to only
                a single direction, as indicated in the
                docsQosServiceClassDirection object.
                "                      "Service Class Name. DOCSIS specifies that the
                    maximum size is 15 printable ASCII characters with
                    a terminating zero. The terminating zero is not
                    represented in this DisplayString syntax object.
                   " +"SP-RFIv1.1-I05-000714, Appendix C.2.2.3.4"                     ."Used to create or delete rows in this table."                       '"Template for docsQosParamSetPriority."                       -"Template for docsQosParamSetMaxTrafficRate."                       ."Template for docsQosParamSetMaxTrafficBurst."                       ."Template for docsQosParamSEtMinReservedRate."                       -"Template for docsQosParamSetMinReservedPkt."                       -"Template for docsQosParamSetMaxConcatBurst."                       ."Template for docsQosParamSetNomPollInterval."                       ,"Template for docsQosParamSetTolPollJitter."                       1"Template for docsQosParamSetUnsolicitGrantSize."                       /"Template for docsQosParamSetNomGrantInterval."                       -"Template for docsQosParamSetTolGrantJitter."                       0"Template for docsQosParamSetGrantsPerInterval."                       ."Template for docsQosParamSetClassMaxLatency." +"SP-RFIv1.1-I05-000714, Appendix C.2.2.7.1"                     /"Template for docsQosServiceFlowActiveTimeout."                       1"Template for docsQosServiceFlowAdmittedTimeout."                       0"Template for docsQosServiceFlowSchedulingType."                       /"Template for docsQosServiceFlowRequestPolicy."                     -- no bits are set
 ,"Template for docsQosServiceFlowTosAndMask."                       +"Template for docsQosServiceFlowTosOrMask."                       s"Specifies whether the service class template
                    applies to upstream or downstream service flows."                      -"This table describes the set of Docsis-QOS
                    Service Class Policies.

                    This table is an adjunct to the
                    docsDevFilterPolicy table.  Entries in
                    docsDevFilterPolicy table can  point to
                    specific rows in this table.

                    This table permits mapping a packet to a service
                    class name of an active service flow so long as
                    a classifier does not exist at a higher
                    priority.
                   " '"SP-RFIv1.1-I05-000714, Appendix E.2.1"                     $"A service class name policy entry."                       N"Index value to uniquely identify an entry in
                    this table."                       ?"Service Class Name to identify the name of the
                    service class flow to which the packet should be
                    directed." '"SP-RFIv1.1-I05-000714, Appendix E.2.1"                     G"Service Class Policy rule priority for the
                    entry." +"SP-RFIv1.1-I05-000714, Appendix C.2.1.3.5"                     ?"Used to create or delete rows in this table.
                    This object should not be deleted if it is
                    reference by an entry in docsDevFilterPolicy.
                    The reference should be deleted first."                       V"This table describes set of payload header
                     suppression entries."                      }"A payload header suppression entry.
                     The ifIndex is an ifType of docsCableMaclayer(127).
                     The index docsQosServiceFlowId selects one
                     service flow from the cable MAC layer interface.
                     The docsQosPktClassId index matches an
                     index of the docsQosPktClassTable.
                    "                      A"Payload header suppression field defines the
                    bytes of the header which must be
                    suppressed/restored by the sending/receiving
                    device.

                    The number of octets in this object should be
                    the same as the value of docsQosPHSSize." ,"SP-RFIv1.1-I05-000714, Appendix C.2.2.10.1"                    ?"Payload header suppression mask defines the
                    bit mask which used in combination with the
                    docsQosPHSField defines which bytes in header
                    must be suppressed/restored by the sending or
                    receiving device.

                    Each bit of this bit mask corresponds to a byte
                    in the docsQosPHSField, with the least
                    significant  bit corresponding to first byte of
                    the docsQosPHSField.

                    Each bit of the bit mask specifies whether of
                    not the corresponding byte should be suppressed
                    in the packet. A bit value of '1' indicates that
                    the byte should be suppressed by the sending
                    device and restored by the receiving device.
                    A bit value of '0' indicates that
                    the byte should not be suppressed by the sending
                    device or restored by the receiving device.

                    If the bit mask does not contain a bit for each
                    byte in the docsQosPHSField then the bit mask is
                    extended with bit values of '1' to be the
                    necessary length." ,"SP-RFIv1.1-I05-000714, Appendix C.2.2.10.3"                    "Payload header suppression size specifies the
                    number of bytes in the header to be suppressed
                    and restored.

                    The value of this object must match the number
                    of bytes in the docsQosPHSField." ,"SP-RFIv1.1-I05-000714, Appendix C.2.2.10.4"                     ?"Payload header suppression verification value of
                    'true' the sender must verify docsQosPHSField
                    is the same as what is contained in the packet
                    to be suppressed." ,"SP-RFIv1.1-I05-000714, Appendix C.2.2.10.5"                     q"Payload header suppression index uniquely
                    references the PHS rule for a given service flow." ,"SP-RFIv1.1-I05-000714, Appendix C.2.2.10.2"                    "This table provide for referencing the service flows
                     associated with a particular cable modem. This allows
                     for indexing into other docsQos tables that are
                     indexed by docsQosServiceFlowId and ifIndex."                       `"An entry is created by CMTS for each service flow
                     connected to this CMTS."                       ("The MAC address for the referenced CM."                       ."An index assigned to a service flow by CMTS."                       v"The ifIndex of ifType docsCableMacLayter(127)
                     on the CMTS that is connected to the Cable Modem."                                   a"Group of objects implemented in both Cable Modems and
         Cable Modem Termination Systems."                 x"Group of objects implemenent in both Cable Modems and
         Cable Modem Termination Systems for QOS parameter sets."                 :"Mandatory group of objects implemented only in the CMTS."                 ?"Group of objects implemented in both Cable Modems and
         Cable Modem Termination Systems when supporting policy based
         service flows."                O"The docsQosServiceClassTable objects. If a CMTS implements
         expansion of Service Class Names in a QOS Parameter Set,
         this group is mandatory on the CMTS. If the CMTS does not
         support Service Class Names, this group may be unimplemented
         in the CMTS. This group is not implemented on the CM.
        "                     ?"The compliance statement for MCNS Cable Modems and
         Cable Modem Termination Systems that implement DOCSIS
         Service Flows."   |"This group is mandatory for only Cable Modem Termination
             Systems (CMTS) and not implemented for Cable Modems." ?"This group is mandatory for Cable Modem Termination
             Systems (CMTS) and Cable Modems. Cable modems only implement
             objects in this group as read-only."."This group is optional for Cable Modem Termination
             Systems (CMTS) and Cable Modems. This group only needs to
             be implement if policy based service flow classification
             is implemented. See docsDevPolicyTable in
             DOCS-CABLE-DEVICE-MIB for more details. " 1"The docsQosServiceClassTable group of objects. " y"This object only needs to be implemented in entries
             that are classifying packets and not policing packets."                        