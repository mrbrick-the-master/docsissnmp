                                                               p"This MIB module defines objects to help support coexistence
             between SNMPv1, SNMPv2c, and SNMPv3.""WG-email:   snmpv3@lists.tislabs.com
                  Subscribe:  majordomo@lists.tislabs.com
                              In msg body:  subscribe snmpv3

                  Chair:      Russ Mundy
                              TIS Labs at Network Associates
                  Postal:     3060 Washington Rd
                              Glenwood MD 21738
                              USA
                  Email:      mundy@tislabs.com
                  Phone:      +1-301-854-6889






                  Co-editor:  Rob Frye
                              CoSine Communications
                  Postal:     1200 Bridge Parkway
                              Redwood City, CA 94065
                              USA
                  E-mail:     rfrye@cosinecom.com
                  Phone:      +1 703 725 1130

                  Co-editor:  David B. Levi
                              Nortel Networks
                  Postal:     3505 Kesterwood Drive
                              Knoxville, TN 37918
                  E-mail:     dlevi@nortelnetworks.com
                  Phone:      +1 423 686 0432

                  Co-editor:  Shawn A. Routhier
                              Integrated Systems Inc.
                  Postal:     333 North Ave 4th Floor
                              Wakefield, MA 01880
                  E-mail:     sar@epilogue.com
                  Phone:      +1 781 245 0804

                  Co-editor:  Bert Wijnen
                              Lucent Technologies
                  Postal:     Schagen 33
                              3461 GL Linschoten
                              Netherlands
                  Email:      bwijnen@lucent.com
                  Phone:      +31-348-407-775
                 " "200003060000Z" "199905130000Z" %"This version published as RFC 2576." "The Initial Revision"       -- 6 Mar 2000, midnight
           o"The table of community strings configured in the SNMP
         engine's Local Configuration Datastore (LCD)."                       2"Information about a particular community string."                       0"The unique index value of a row in this table."                       Z"The community string for which a row in this table
         represents a configuration."                       ?"A human readable string representing the corresponding
         value of snmpCommunityName in a Security Model
         independent format."                      T"The contextEngineID indicating the location of the
         context in which management information is accessed
         when using the community string specified by the
         corresponding instance of snmpCommunityName.

         The default value is the snmpEngineID of the entity in
         which this object is instantiated."                       ?"The context in which management information is accessed
         when using the community string specified by the corresponding
         instance of snmpCommunityName."                     -- the empty string
?"This object specifies a set of transport endpoints
         from which a command responder application will accept
         management requests.  If a management request containing
         this community is received on a transport endpoint other
         than the transport endpoints identified by this object,
         the request is deemed unauthentic.

         The transports identified by this object are specified





         in the snmpTargetAddrTable.  Entries in that table
         whose snmpTargetAddrTagList contains this tag value
         are identified.

         If the value of this object has zero-length, transport
         endpoints are not checked when authenticating messages
         containing this community string."                     -- the empty string
 ?"The storage type for this conceptual row in the
         snmpCommunityTable.  Conceptual rows having the value
         'permanent' need not allow write-access to any
         columnar object in the row."                      ?"The status of this conceptual row in the snmpCommunityTable.

         An entry in this table is not qualified for activation
         until instances of all corresponding columns have been
         initialized, either through default values, or through
         Set operations.  The snmpCommunityName and
         snmpCommunitySecurityName objects must be explicitly set.

         There is no restriction on setting columns in this table
         when the value of snmpCommunityStatus is active(1)."                      ?"The table of mask and mms values associated with the





         snmpTargetAddrTable.

         The snmpTargetAddrExtTable augments the
         snmpTargetAddrTable with a transport address mask value
         and a maximum message size value.  The transport address
         mask allows entries in the snmpTargetAddrTable to define
         a set of addresses instead of just a single address.
         The maximum message size value allows the maximum
         message size of another SNMP entity to be configured for
         use in SNMPv1 (and SNMPv2c) transactions, where the
         message format does not specify a maximum message size."                       4"Information about a particular mask and mms value."                      ?"The mask value associated with an entry in the
         snmpTargetAddrTable.  The value of this object must
         have the same length as the corresponding instance of
         snmpTargetAddrTAddress, or must have length 0.  An
         attempt to set it to any other value will result in
         an inconsistentValue error.

         The value of this object allows an entry in the
         snmpTargetAddrTable to specify multiple addresses.
         The mask value is used to select which bits of
         a transport address must match bits of the corresponding
         instance of snmpTargetAddrTAddress, in order for the
         transport address to match a particular entry in the
         snmpTargetAddrTable.  Bits which are 1 in the mask
         value indicate bits in the transport address which
         must match bits in the snmpTargetAddrTAddress value.





         Bits which are 0 in the mask indicate bits in the
         transport address which need not match.  If the
         length of the mask is 0, the mask should be treated
         as if all its bits were 1 and its length were equal
         to the length of the corresponding value of
         snmpTargetAddrTable.

         This object may not be modified while the value of the
         corresponding instance of snmpTargetAddrRowStatus is
         active(1).  An attempt to set this object in this case
         will result in an inconsistentValue error."                       _"The maximum message size value associated with an entry
         in the snmpTargetAddrTable."                      G"The value of the agent-addr field of a Trap PDU which
         is forwarded by a proxy forwarder application using
         an SNMP version other than SNMPv1.  The value of this
         object SHOULD contain the value of the agent-addr field
         from the original Trap PDU as generated by an SNMPv1
         agent."                      ?"The value of the community string field of an SNMPv1
         message containing a Trap PDU which is forwarded by a
         a proxy forwarder application using an SNMP version
         other than SNMPv1.  The value of this object SHOULD
         contain the value of the community string field from
         the original SNMPv1 message containing a Trap PDU as
         generated by an SNMPv1 agent."                               ]"The compliance statement for SNMP engines which
         implement the SNMP-COMMUNITY-MIB."   "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required." "Write access is not required."             ?"The compliance statement for SNMP engines which
         contain a proxy forwarding application which is
         capable of forwarding SNMPv1 traps using SNMPv2c
         or SNMPv3."                   t"A collection of objects providing for configuration
         of community strings for SNMPv1 (and SNMPv2c) usage."                 ?"Objects which are used by proxy forwarding applications
         when translating traps between SNMP versions.  These are
         used to preserve SNMPv1-specific information when





         translating to SNMPv2c or SNMPv3."                        