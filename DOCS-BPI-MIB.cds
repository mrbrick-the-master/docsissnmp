                                                                                              7"This is the MIB Module for the DOCSIS Baseline Privacy Interface
(BPI) at cable modems (CMs) and cable modem termination systems
(CMTSs). CableLabs requires the implementation of this MIB in
DOCSIS 1.0 cable modems that implement the Baseline Privacy
Interface, as a prerequisite for DOCSIS 1.0 certification."1"Rich Woundy
              Postal: Cisco Systems
                      250 Apollo Drive
                      Chelmsford, MA 01824 U.S.A.
              Tel: +1 978 244 8000
              E-mail: rwoundy@cisco.com

              IETF IPCDN Working Group
              General Discussion: ipcdn@ietf.org
              Subscribe: http://www.ietf.org/mailman/listinfo/ipcdn
              Archive: ftp://ftp.ietf.org/ietf-mail-archive/ipcdn
              Co-chairs: Richard Woundy, rwoundy@cisco.com
                         Andrew Valentine, a.valentine@eu.hns.com" "200103130000Z" "200011031930Z" "200002161930Z"  "Version published as RFC 3083." ?"Modified by Richard Woundy to fix problems identified by the MIB
doctor. I marked docsBpiCmtsDefaultAuthGraceTime and
docsBpiCmtsDefaultTEKGraceTime as obsolete objects, to prevent OID
reassignment. Several object descriptions were also corrected." ?"Initial version.
CableLabs requires the implementation of this MIB in certified DOCSIS
1.0 cable modems implementing the Baseline Privacy Interface, per
DOCSIS 1.0 engineering change notice oss-n-99027."                       p"This table describes the basic and authorization-related Baseline
Privacy attributes of each CM MAC interface."                       ?"Each entry contains objects describing attributes of one CM MAC
interface. An entry in this table exists for each ifEntry with an
ifType of docsCableMaclayer(127)."                      -"This object identifies whether this CM is provisioned to run
Baseline Privacy. This is analogous to the presence (or absence)
of the Baseline Privacy Configuration Setting option. The status
of each individual SID with respect to Baseline Privacy is
captured in the docsBpiCmTEKPrivacyEnable object." B"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1."                    3"The value of this object is a DER-encoded RSAPublicKey ASN.1 type
string, as defined in the RSA Encryption Standard (PKCS #1) [22],
corresponding to the public key of the CM. The 74, 106, 140, and
270 byte key encoding lengths correspond to 512 bit, 768 bit, 1024
bit, and 2048 public moduli respectively." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.2.4."                     ?"The value of this object is the state of the CM authorization
FSM.  The start state indicates that FSM is in its initial state." C"DOCSIS Baseline Privacy Interface Specification, Section 4.1.2.1."                     Q"The value of this object is the authorization key sequence number
for this FSM." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.2
and 4.2.2.10."                     ?"The value of this object is the actual clock time when the current
authorization for this FSM expires. If the CM does not have an active
authorization, then the value is of the expiration date and time of
the last active authorization." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.2
and 4.2.2.9."                     "Setting this object to TRUE generates a Reauthorize event in the
authorization FSM. Reading this object always returns FALSE." E"DOCSIS Baseline Privacy Interface Specification, Section 4.1.2.3.4."                     ?"The value of this object is the grace time for an authorization key.
A CM is expected to start trying to get a new authorization key
beginning AuthGraceTime seconds before the authorization key actually
expires." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.3."                     ?"The value of this object is the grace time for a TEK.  A CM is
expected to start trying to get a new TEK beginning TEKGraceTime
seconds before the TEK actually expires." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.6."                     9"The value of this object is the Authorize Wait Timeout." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.1."                     F"The value of this object is the Reauthorize Wait Timeout in seconds." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.2."                     F"The value of this object is the Operational Wait Timeout in seconds." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.4."                     @"The value of this object is the Rekey Wait Timeout in seconds." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.5."                     O"The value of this object is the Authorization Reject Wait Timeout in
seconds." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.7."                     i"The value of this object is the count of times the CM has
transmitted an Authorization Request message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.1."                     d"The value of this object is the count of times the CM has
received an Authorization Reply message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.2."                     e"The value of this object is the count of times the CM has
received an Authorization Reject message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.3."                     f"The value of this object is the count of times the CM has
received an Authorization Invalid message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.7."                    "The value of this object is the enumerated description of the
Error-Code in most recent Authorization Reject message received by
the CM.  This has value unknown(2) if the last Error-Code value was
0, and none(1) if no Authorization Reject message has been received
since reboot." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.3
and 4.2.2.16."                     ?"The value of this object is the Display-String in most recent
Authorization Reject message received by the CM.  This is a zero
length string if no Authorization Reject message has been received
since reboot." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.3
and 4.2.2.6."                    "The value of this object is the enumerated description of the
Error-Code in most recent Authorization Invalid message received by
the CM.  This has value unknown(2) if the last Error-Code value was
0, and none(1) if no Authorization Invalid message has been received
since reboot." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.7
and 4.2.2.16."                     ?"The value of this object is the Display-String in most recent
Authorization Invalid message received by the CM.  This is a zero
length string if no Authorization Invalid message has been received
since reboot." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.7
and 4.2.2.6."                     ?"This table describes the attributes of each CM Traffic Encryption Key
(TEK) association. The CM maintains (no more than) one TEK association
per SID per CM MAC interface."                       ?"Each entry contains objects describing the TEK association attributes
of one SID. The CM MUST create one entry per unicast SID, regardless
of whether the SID was obtained from a Registration Response message,
or from an Authorization Reply message."                      f"This object identifies whether this SID is provisioned to run
Baseline Privacy. This is analogous to enabling Baseline Privacy on
a provisioned SID using the Class-of-Service Privacy Enable option.
Baseline Privacy is not effectively enabled for any SID unless
Baseline Privacy is enabled for the CM, which is managed via the
docsBpiCmPrivacyEnable object." B"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.2."                     ?"The value of this object is the state of the indicated TEK FSM.
The start(1) state indicates that FSM is in its initial state." C"DOCSIS Baseline Privacy Interface Specification, Section 4.1.3.1."                     ?"The value of this object is the actual clock time for expiration
of the immediate predecessor of the most recent TEK for this FSM.
If this FSM has only one TEK, then the value is the time of activation
of this FSM." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.5 and
4.2.2.9."                     g"The value of this object is the actual clock time for expiration
of the most recent TEK for this FSM." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.5 and
4.2.2.9."                     ^"The value of this object is the count of times the CM has transmitted
a Key Request message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.4."                     ?"The value of this object is the count of times the CM has received
a Key Reply message, including a message whose authentication failed." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.5."                     ?"The value of this object is the count of times the CM has received
a Key Reject message, including a message whose authentication failed." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.6."                     ?"The value of this object is the count of times the CM has received
a TEK Invalid message, including a message whose authentication failed." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.8."                     q"The value of this object is the count of times an Authorization
Pending (Auth Pend) event occurred in this FSM." E"DOCSIS Baseline Privacy Interface Specification, Section 4.1.3.3.3."                    "The value of this object is the enumerated description of the
Error-Code in most recent Key Reject message received by the CM. This
has value unknown(2) if the last Error-Code value was 0, and none(1)
if no Key Reject message has been received since reboot." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.1.2.6
and 4.2.2.16."                     ?"The value of this object is the Display-String in most recent Key
Reject message received by the CM. This is a zero length string if no
Key Reject message has been received since reboot." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.1.2.6
and 4.2.2.6."                    "The value of this object is the enumerated description of the
Error-Code in most recent TEK Invalid message received by the CM.
This has value unknown(2) if the last Error-Code value was 0, and
none(1) if no TEK Invalid message has been received since reboot." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.1.2.8
and 4.2.2.16."                     ?"The value of this object is the Display-String in most recent TEK
Invalid message received by the CM. This is a zero length string if
no TEK Invalid message has been received since reboot." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.1.2.8
and 4.2.2.6."                         X"This table describes the basic Baseline Privacy attributes of each
CMTS MAC interface."                       ?"Each entry contains objects describing attributes of one CMTS MAC
interface. An entry in this table exists for each ifEntry with an
ifType of docsCableMaclayer(127)."                       l"The value of this object is the default lifetime, in seconds, the
CMTS assigns to a new authorization key." @"DOCSIS Baseline Privacy Interface Specification, Appendix A.2."                     w"The value of this object is the default lifetime, in seconds, the
CMTS assigns to a new Traffic Encryption Key (TEK)." @"DOCSIS Baseline Privacy Interface Specification, Appendix A.2."                     ?"This object was obsoleted because the provisioning system, not the CMTS,
manages the authorization key grace time for DOCSIS CMs."                       ?"This object was obsoleted because the provisioning system, not the CMTS,
manages the Traffic Encryption Key (TEK) grace time for DOCSIS CMs."                       t"The value of this object is the count of times the CMTS has
received an Authorization Request message from any CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.1."                     s"The value of this object is the count of times the CMTS has
transmitted an Authorization Reply message to any CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.2."                     t"The value of this object is the count of times the CMTS has
transmitted an Authorization Reject message to any CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.3."                     u"The value of this object is the count of times the CMTS has
transmitted an Authorization Invalid message to any CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.7."                     ?"This table describes the attributes of each CM authorization
association. The CMTS maintains one authorization association with
each Baseline Privacy-enabled CM on each CMTS MAC interface."                      "Each entry contains objects describing attributes of one
authorization association. The CMTS MUST create one entry per CM per
MAC interface, based on the receipt of an Authorization Request
message, and MUST not delete the entry before the CM authorization
permanently expires."                       l"The value of this object is the physical address of the CM to
which the authorization association applies."                      |"The value of this object is a DER-encoded RSAPublicKey ASN.1 type
string, as defined in the RSA Encryption Standard (PKCS #1) [22],
corresponding to the public key of the CM. The 74, 106, 140, and
270 byte key encoding lengths correspond to 512 bit, 768 bit, 1024
bit, and 2048 public moduli respectively. This is a zero-length
string if the CMTS does not retain the public key." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.2.4."                     P"The value of this object is the authorization key sequence number
for this CM." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.2
and 4.2.2.10."                     ?"The value of this object is the actual clock time when the current
authorization for this CM expires. If this CM does not have an
active authorization, then the value is of the expiration date and
time of the last active authorization." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.2
and 4.2.2.9."                     m"The value of this object is the lifetime, in seconds, the CMTS
assigns to an authorization key for this CM." T"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.2
and Appendix A.2."                     ?"The value of this object is the grace time for the authorization key
in seconds.  The CM is expected to start trying to get a new
authorization key beginning AuthGraceTime seconds before the
authorization key actually expires." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.3."                    "Setting this object to invalidateAuth(2) causes the CMTS to
invalidate the current CM authorization key, but not to transmit an
Authorization Invalid message nor to invalidate unicast TEKs.  Setting
this object to sendAuthInvalid(3) causes the CMTS to invalidate the
current CM authorization key, and to transmit an Authorization Invalid
message to the CM, but not to invalidate unicast TEKs.  Setting this
object to invalidateTeks(4) causes the CMTS to invalidate the current
CM authorization key, to transmit an Authorization Invalid message to
the CM, and to invalidate all unicast TEKs associated with this CM
authorization. Reading this object returns the most-recently-set value
of this object, or returns noResetRequested(1) if the object has not
been set since the last CMTS reboot." `"DOCSIS Baseline Privacy Interface Specification, Sections 4.1.2.3.4,
4.1.2.3.5, and 4.1.3.3.5."                     u"The value of this object is the count of times the CMTS has
received an Authorization Request message from this CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.1."                     t"The value of this object is the count of times the CMTS has
transmitted an Authorization Reply message to this CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.2."                     u"The value of this object is the count of times the CMTS has
transmitted an Authorization Reject message to this CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.3."                     v"The value of this object is the count of times the CMTS has
transmitted an Authorization Invalid message to this CM." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.7."                    "The value of this object is the enumerated description of the
Error-Code in most recent Authorization Reject message transmitted to
the CM.  This has value unknown(2) if the last Error-Code value was
0, and none(1) if no Authorization Reject message has been transmitted
to the CM." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.3
and 4.2.2.16."                     ?"The value of this object is the Display-String in most recent
Authorization Reject message transmitted to the CM.  This is a
zero length string if no Authorization Reject message has been
transmitted to the CM." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.3
and 4.2.2.6."                    "The value of this object is the enumerated description of the
Error-Code in most recent Authorization Invalid message transmitted
to the CM.  This has value unknown(2) if the last Error-Code value was
0, and none(1) if no Authorization Invalid message has been
transmitted to the CM." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.7
and 4.2.2.16."                     ?"The value of this object is the Display-String in most recent
Authorization Invalid message transmitted to the CM.  This is a
zero length string if no Authorization Invalid message has been
transmitted to the CM." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.7
and 4.2.2.6."                     ?"This table describes the attributes of each CM Traffic Encryption
Key (TEK) association. The CMTS maintains one TEK association per BPI
SID on each CMTS MAC interface."                      3"Each entry contains objects describing attributes of one TEK
association on a particular CMTS MAC interface. The CMTS MUST create
one entry per SID per MAC interface, based on the receipt of an
Key Request message, and MUST not delete the entry before the CM
authorization for the SID permanently expires."                       j"The value of this object is the lifetime, in seconds, the CMTS assigns
to keys for this TEK association." T"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.5
and Appendix A.2."                     ?"The value of this object is the grace time for the TEK in seconds.
The CM is expected to start trying to get a new TEK beginning
TEKGraceTime seconds before the TEK actually expires." F"DOCSIS Baseline Privacy Interface Specification, Appendix A.1.1.1.6."                     ?"The value of this object is the actual clock time for expiration
of the immediate predecessor of the most recent TEK for this FSM.
If this FSM has only one TEK, then the value is the time of activation
of this FSM." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.5
and 4.2.2.9."                     g"The value of this object is the actual clock time for expiration
of the most recent TEK for this FSM." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.5
and 4.2.2.9."                    Y"Setting this object to TRUE causes the CMTS to invalidate the current
active TEK(s) (plural due to key transition periods), and to generate
a new TEK for the associated SID; the CMTS MAY also generate an
unsolicited TEK Invalid message, to optimize the TEK synchronization
between the CMTS and the CM. Reading this object always returns
FALSE." E"DOCSIS Baseline Privacy Interface Specification, Section 4.1.3.3.5."                     ]"The value of this object is the count of times the CMTS has
received a Key Request message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.4."                     ^"The value of this object is the count of times the CMTS has
transmitted a Key Reply message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.5."                     _"The value of this object is the count of times the CMTS has
transmitted a Key Reject message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.6."                     `"The value of this object is the count of times the CMTS has
transmitted a TEK Invalid message." C"DOCSIS Baseline Privacy Interface Specification, Section 4.2.1.8."                    '"The value of this object is the enumerated description of the
Error-Code in the most recent Key Reject message sent in response to
a Key Request for this BPI SID. This has value unknown(2) if the last
Error-Code value was 0, and none(1) if no Key Reject message has been
received since reboot." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.6
and 4.2.2.16."                     ?"The value of this object is the Display-String in the most recent
Key Reject message sent in response to a Key Request for this BPI
SID.  This is a zero length string if no Key Reject message has been
received since reboot." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.6
and 4.2.2.6."                    "The value of this object is the enumerated description of the
Error-Code in the most recent TEK Invalid message sent in association
with this BPI SID.  This has value unknown(2) if the last Error-Code
value was 0, and none(1) if no TEK Invalid message has been received
since reboot." Q"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.8
and 4.2.2.16."                     ?"The value of this object is the Display-String in the most recent TEK
Invalid message sent in association with this BPI SID.  This is a zero
length string if no TEK Invalid message has been received since reboot." P"DOCSIS Baseline Privacy Interface Specification, Sections 4.2.1.8
and 4.2.2.6."                         q"This table describes the mapping of IP multicast address prefixes to
multicast SIDs on each CMTS MAC interface."                       ?"Each entry contains objects describing the mapping of one IP
multicast address prefix to one multicast SID on one CMTS MAC
interface. The CMTS uses the mapping when forwarding downstream IP
multicast traffic."                       ?"This object represents the IP multicast address (prefix) to be
mapped by this row, in conjunction with
docsBpiIpMulticastPrefixLength."                      ?"This object represents the IP multicast address prefix length
for this row. The value of this object represents the length in
bits of docsBpiIpMulticastAddress for multicast address
comparisons, using big-endian ordering. An IP multicast address
matches this row if the (docsBpiIpMulticastPrefixLength) most
significant bits of the IP multicast address and of the
(docsBpiIpMulticastAddress) are identical.
This object is similar in usage to an IP address mask. The value
0 corresponds to IP address mask 0.0.0.0, the value 1 corresponds
to IP address mask 128.0.0.0, the value 8 corresponds to IP
address mask 255.0.0.0, and the value 32 corresponds to IP
address mask 255.255.255.255."                       h"This object represents the multicast SID to be used in this
IP multicast address prefix mapping entry."                     ;-- DEFVAL is an unused multicast SID value chosen by CMTS.
 ?"This object controls and reflects the IP multicast address prefix
mapping entry. There is no restriction on the ability to change values
in this row while the row is active."                       ^"This table describes the multicast SID authorization for each
CM on each CMTS MAC interface."                       ?"Each entry contains objects describing the key authorization of one
cable modem for one multicast SID for one CMTS MAC interface."                       ="This object represents the multicast SID for authorization."                       d"This object represents the MAC address of the CM to which the
multicast SID authorization applies."                       ?"This object controls and reflects the CM authorization for each
multicast SID. There is no restriction on the ability to change
values in this row while the row is active."                                   e"This is the compliance statement for devices which implement the
DOCSIS Baseline Privacy Interface."   6"This group is implemented only in CMs, not in CMTSs." 6"This group is implemented only in CMTSs, not in CMs." }"The refined range corresponds to the minimum and maximum values in
operational networks, according to Appendix A.2 in [18]." }"The refined range corresponds to the minimum and maximum values in
operational networks, according to Appendix A.2 in [18]." }"The refined range corresponds to the minimum and maximum values in
operational networks, according to Appendix A.2 in [18]." }"The refined range corresponds to the minimum and maximum values in
operational networks, according to Appendix A.2 in [18]."          *-- relaxation on mandatory range (unnecessary since object is read-only)
-- OBJECT       docsBpiCmtsTEKGraceTime
-- SYNTAX       Integer32 (300..1800)
-- DESCRIPTION
-- "The refined range corresponds to the minimum and maximum values in
-- operational networks, according to Appendix A.2 in [18]."
     @"This collection of objects provides CM BPI status and control."                 B"This collection of objects provides CMTS BPI status and control."                 /"This is a collection of obsolete BPI objects."                                