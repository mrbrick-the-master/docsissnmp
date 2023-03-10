     F"An X509 digital certificate encoded as an ASN.1 DER
        object."                                                                                     ?"This is the MIB Module for the DOCSIS Baseline Privacy
        Plus Interface (BPI+) at cable modems (CMs) and cable modem
        termination systems (CMTSs).""---------------------------------------
                   Stuart M. Green
                   Postal:
                   Arris Interactive / Nortel Networks
                   6 Riverside Drive
                   Andover, MA 01810
                   U.S.A.
                   Tel:    +1 978 946 4664
                   Fax:    +1 978 946 4800
                   E-mail: stu.green@ne.arris-i.com
                   ---------------------------------------
                   Kaz Ozawa
                   Postal:
                   Cable Television Laboratories
                   400 Centennial Parkway
                   Louisville, CO 80027
                   U.S.A.
                   Tel:    +1 303 661 3860
                   Fax:    +1 303 661 9199
                   E-mail: k.ozawa@cablelabs.com
                   ---------------------------------------
                   Rich Woundy (BPI MIB)
                   Postal:
                   Cisco Systems
                   300 Apollo Drive
                   Chelmsford, MA 01824
                   U.S.A.
                   Tel:    +1 978 244 8545
                   Fax:    +1 978 244 8917
                   E-mail: rwoundy@cisco.com

           IETF IPCDN Working Group
           General Discussion: ipcdn@ietf.org
           Subscribe: http://www.ietf.org/mailman/listinfo/ipcdn
           Archive: ftp://ftp.ietf.org/ietf-mail-archive/ipcdn
           Co-chairs: Richard Woundy, rwoundy@cisco.com
                      Andrew Valentine, a.valentine@eu.hns.com" "200104170000Z" "200011171930Z" ?"Modified CM and CMTS IP Multicast table indexing in
            preparation for IPV6.  Obsoleted grace time objects
            from the CMTS portion of the MIB." t"Replaced DisplayString type with SnmpAdminString type.
            Several object descriptions were also changed."                       ?"This table describes the basic and authorization
        related   Baseline Privacy Plus attributes of each CM MAC
        interface."                       ?"Each entry contains objects describing attributes of
        one CM MAC interface. An entry in this table exists for each
        ifEntry with an ifType of docsCableMaclayer(127)."                       ^"This object identifies whether this CM is
        provisioned to run Baseline Privacy Plus." P"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1."                    o"The value of this object is a DER-encoded
        RSAPublicKey ASN.1 type string, as defined in the RSA
        Encryption Standard (PKCS #1) [10], corresponding to the
        public key of the CM. The 74, 106, 140, 204, and 270 byte key
        encoding lengths correspond to 512 bit, 768 bit, 1024 bit,
        1536 bit, and 2048 public moduli respectively." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.4."                     ?"The value of this object is the state of the CM
        authorization FSM.  The start state indicates that FSM is in
        its initial state." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.1.2.1."                     f"The value of this object is the most recent
        authorization key sequence number for this FSM." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.2 and 4.2.2.10."                    "The value of this object is the actual clock time for
        expiration of the immediate predecessor of the most recent
        authorization key for this FSM.  If this FSM has only one
        authorization key, then the value is the time of activation
        of this FSM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.2 and 4.2.2.9."                     ~"The value of this object is the actual clock time for
        expiration of the most recent authorization key for this FSM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.2 and 4.2.2.9."                     ?"Setting this object to TRUE generates a Reauthorize
        event in the authorization FSM. Reading this object always
        returns FALSE." S"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.1.2.3.4."                     ?"The value of this object is the grace time for an
        authorization key.  A CM is expected to start trying to get a
        new authorization key beginning AuthGraceTime seconds before
        the authorization key actually expires." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.3."                     ?"The value of this object is the grace time for
        the TEK in seconds.  The CM is expected to start trying to
        acquire a new TEK beginning TEK GraceTime seconds before
        the expiration of the most recent TEK." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.6."                     B"The value of this object is the Authorize Wait
        Timeout." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.1."                     O"The value of this object is the Reauthorize Wait
        Timeout in seconds." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.2."                     O"The value of this object is the Operational Wait
        Timeout in seconds." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.4."                     I"The value of this object is the Rekey Wait Timeout
        in seconds." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.5."                     X"The value of this object is the Authorization Reject
        Wait Timeout in seconds." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.7."                     ?"The value of this object is the retransmission
        interval, in seconds, of SA Map Requests from the MAP Wait
        state." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.8."                     Y"The value of this object is the maximum number of
        Map Request retries allowed." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.9."                     w"The value of this object is the count of times the CM
        has transmitted an Authentication Information message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.9."                     r"The value of this object is the count of times the CM
        has transmitted an Authorization Request message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.1."                     m"The value of this object is the count of times the CM
        has received an Authorization Reply message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.2."                     n"The value of this object is the count of times the CM
        has received an Authorization Reject message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.3."                     o"The value of this object is the count of times the CM
        has received an Authorization Invalid message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.7."                    <"The value of this object is the enumerated
        description of the Error-Code in most recent Authorization
        Reject message received by the CM.  This has value unknown(2)
        if the last Error-Code value was 0, and none(1) if no
        Authorization Reject message has been received since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.3 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        most recent Authorization Reject message received by the CM.
        This is a zero length string if no Authorization Reject
        message has been received since reboot." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.3 and 4.2.2.6."                    >"The value of this object is the enumerated
        description of the Error-Code in most recent Authorization
        Invalid message received by the CM.  This has value unknown(2)
        if the last Error-Code value was 0, and none(1) if no
        Authorization Invalid message has been received since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.7 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        most recent Authorization Invalid message received by the CM.
        This is a zero length string if no Authorization Invalid
        message has been received since reboot." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.7 and 4.2.2.6."                     ?"This table describes the attributes of each CM
        Traffic Encryption Key(TEK) association. The CM maintains (no
        more than) one TEK association per SAID per CM MAC interface."                      R"Each entry contains objects describing the TEK
        association attributes of one SAID. The CM MUST create one
        entry per SAID, regardless of whether the SAID was obtained
        from a Registration Response message, from an Authorization
        Reply message, or from any dynamic SAID establishment
        mechanisms."                       Q"The value of this object is the DOCSIS Security
        Association ID (SAID)." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.12."                     H"The value of this object is the type of security
        association." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 2.1.3."                     T"The value of this object is the data encryption
        algorithm being utilized." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                     X"The value of this object is the data authentication
        algorithm being utilized." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                     ?"The value of this object is the state of the
        indicated TEK FSM.  The start(1) state indicates that FSM is
        in its initial state." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.1.3.1."                     `"The value of this object is the most recent TEK
        key sequence number for this TEK FSM." `"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.2.10 and 4.2.2.13."                     ?"The value of this object is the actual clock time for
        expiration of the immediate predecessor of the most recent TEK
        for this FSM.  If this FSM has only one TEK, then the value is
        the time of activation of this FSM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.5 and 4.2.2.9."                     p"The value of this object is the actual clock time for
        expiration of the most recent TEK for this FSM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.5 and 4.2.2.9."                     g"The value of this object is the count of times the CM
        has transmitted a Key Request message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.4."                     ?"The value of this object is the count of times the CM
        has received a Key Reply message, including a message whose
        authentication failed." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.5."                     ?"The value of this object is the count of times the CM
        has received a Key Reject message, including a message whose
        authentication failed." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.6."                     ?"The value of this object is the count of times the CM
        has received a TEK Invalid message, including a message whose
        authentication failed." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.8."                     z"The value of this object is the count of times an
        Authorization Pending (Auth Pend) event occurred in this FSM." S"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.1.3.3.3."                    '"The value of this object is the enumerated
        description of the Error-Code in most recent Key Reject
        message received by the CM. This has value unknown(2) if the
        last Error-Code value was 0, and none(1) if no Key Reject
        message has been received since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.1.2.6 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        most recent Key Reject message received by the CM. This is a
        zero length string if no Key Reject message has been received
        since reboot." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.1.2.6 and 4.2.2.6."                    +"The value of this object is the enumerated
        description of the Error-Code in most recent TEK Invalid
        message received by the CM.  This has value unknown(2) if the
        last Error-Code value was 0, and  none(1) if no TEK Invalid
        message has been received since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.1.2.8 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        most recent TEK Invalid message received by the CM. This is a
        zero length string if no TEK Invalid message has been received
        since reboot." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.1.2.8 and 4.2.2.6."                         ?"This table maps multicast IP addresses to SAIDs.
        It is intended to map multicast IP addresses associated
        with SA MAP Request messages."                       ?"Each entry contains objects describing the mapping of
        one multicast IP address to one SAID, as well as
        associated state, message counters, and error information."                       "The index of this row."                       I"The type of internet address for
        docsBpi2CmIpMulticastAddress."                       H"This object represents the IP multicast address
        to be mapped." M"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 5.4."                     ?"This object represents the SAID to which the IP
        multicast address has been mapped.  If no SA Map Reply has
        been received for the IP address, this object should have the
        value 0." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.12."                     U"The value of this object is the state of the SA
        Mapping   FSM for this IP." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 5.3.1."                     w"The value of this object is the count of times the
        CM has transmitted an SA Map Request message for this IP." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.10."                     r"The value of this object is the count of times the
        CM has received an SA Map Reply message for this IP." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.11."                     s"The value of this object is the count of times the
        CM has received an SA MAP Reject message for this IP." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.12."                    X"The value of this object is the enumerated
        description of the Error-Code in the most recent SA Map
        Reject message sent in response to an SA Map Request for this
        IP.  It has value unknown(2) if the last Error-Code value
        was 0, and none(1) if no SA MAP Reject message has been
        received since reboot." `"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.12 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        the most recent SA Map Reject message sent in response to an
        SA Map Request for this IP.  It is a zero length string if
        no SA Map Reject message has been received since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.12 and 4.2.2.6."                         h"This table describes the Baseline Privacy Plus
        device certificates for each CM MAC interface."                       ?"Each entry contains the device certificates of
        one CM MAC interface. An entry in this table exists for each
        ifEntry with an ifType of docsCableMaclayer(127)."                       ?"The X509 DER-encoded cable modem certificate.
        Note:  This object can be set only when the value is the null
        string.  Once the object contains the certificate, its access
        MUST be read-only." M"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.1."                     b"The X509 DER-encoded manufacturer certificate which
        signed the cable modem certificate." M"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.1."                     t"This table describes the Baseline Privacy Plus
        cryptographic suite capabilites for each CM MAC interface."                       U"Each entry contains a cryptographic suite pair
        which this CM MAC supports."                       *"The index for a cryptographic suite row."                       m"The value of this object is the data encryption
        algorithm for this cryptographic suite capability." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                     q"The value of this object is the data authentication
        algorithm for this cryptographic suite capability." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                         a"This table describes the basic Baseline Privacy
        attributes of each CMTS MAC interface."                       ?"Each entry contains objects describing attributes of
        one CMTS MAC interface.  An entry in this table exists for
        each ifEntry with an ifType of docsCableMaclayer(127)."                       u"The value of this object is the default lifetime, in
        seconds, the CMTS assigns to a new authorization key." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.2."                     ?"The value of this object is the default lifetime, in
        seconds, the CMTS assigns to a new Traffic Encryption Key
        (TEK)." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.2."                     ?"This object determines the default trust of all (new)
        self-signed manufacturer certificates obtained after setting
        the object." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.1"                    ?"Setting this object to TRUE causes all certificates
        obtained thereafter to have their validity periods (and their
        chain's validity periods) checked against the current time of
        day.  A FALSE setting will cause all certificates obtained
        thereafter to not have their validity periods (nor their
        chain's validity periods) checked against the current time of
        day." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.2"                     ?"The value of this object is the count of times the
        CMTS has received an Authentication Information message from
        any CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.9."                     ?"The value of this object is the count of times the
        CMTS has received an Authorization Request message from any
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.1."                     ?"The value of this object is the count of times the
        CMTS has transmitted an Authorization Reply message to any
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.2."                     ?"The value of this object is the count of times the
        CMTS has transmitted an Authorization Reject message to any
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.3."                     ?"The value of this object is the count of times the
        CMTS has transmitted an Authorization Invalid message to any
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.7."                     v"The value of this object is the count of times the
        CMTS has received an SA Map Request message from any CM." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.10."                     u"The value of this object is the count of times the
        CMTS has transmitted an SA Map Reply message to any CM." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.11."                     v"The value of this object is the count of times the
        CMTS has transmitted an SA Map Reject message to any CM." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.12."                     ?"This table describes the attributes of each CM
        authorization association. The CMTS maintains one
        authorization association with each Baseline Privacy-enabled
        CM on each CMTS MAC interface."                      ;"Each entry contains objects describing attributes of
        one authorization association. The CMTS MUST create one entry
        per CM per MAC interface, based on the receipt of an
        Authorization Request message, and MUST not delete the entry
        before the CM authorization permanently expires."                       u"The value of this object is the physical address of
        the CM to which the authorization association applies."                       j"The value of this object is the version of Baseline
        Privacy   for which this CM has registered."                      ?"The value of this object is a DER-encoded
        RSAPublicKey ASN.1 type string, as defined in the RSA
        Encryption Standard (PKCS #1) [10], corresponding to the
        public key of the CM. The 74, 106, 140, 204, and 270 byte key
        encoding lengths correspond to 512 bit, 768 bit, 1024 bit,
        1536 bit, and 2048 public moduli respectively. This is a
        zero-length string if the CMTS does not retain the public
        key." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.4."                     e"The value of this object is the most recent
        authorization key sequence number for this CM." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.2 and 4.2.2.10."                    ?"The value of this object is the actual clock time
        for expiration of the immediate predecessor of the most
        recent authorization key for this FSM. If this FSM has only
        one authorization key, then the value is the time of
        activation of this FSM.
        Note: For CMs running in BPI mode, implementation of this
        object is optional and MAY vary." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.2 and 4.2.2.9."                     ?"The value of this object is the actual clock time
        for expiration of the most recent authorization key for this
        FSM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.2 and 4.2.2.9."                     v"The value of this object is the lifetime, in seconds,
        the CMTS assigns to an authorization key for this CM." b"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.2 and Appendix A.2."                    X"The value of this object is the grace time for the
        authorization key in seconds.  The CM is expected to start
        trying to get a new authorization key beginning AuthGraceTime
        seconds before the authorization key actually expires.
        Note: Tracking this value is optional on certain CMTS
        implementations." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.3."                    ?"Setting this object to invalidateAuth(2) causes the
        CMTS to invalidate the current CM authorization key(s), but
        not to transmit an Authorization Invalid message nor to
        invalidate unicast TEKs.  Setting this object to
        sendAuthInvalid(3) causes the CMTS to invalidate the current
        CM authorization key(s), and to transmit an Authorization
        Invalid message to the CM, but not to invalidate unicast TEKs.
        Setting this object to invalidateTeks(4) causes the CMTS to
        invalidate the current CM authorization key(s), to transmit an
        Authorization Invalid message to the CM, and to invalidate all
        unicast TEKs associated with this CM authorization. Reading
        this object returns the most-recently-set value of this
        object, or returns noResetRequested(1) if the object has not
        been set since the last CMTS reboot." n"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.1.2.3.4, 4.1.2.3.5, and 4.1.3.3.5."                     ?"The value of this object is the count of times the
        CMTS has received an Authentication Information message from
        this CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.9."                     ?"The value of this object is the count of times the
        CMTS has received an Authorization Request message from this
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.1."                     ?"The value of this object is the count of times the
        CMTS has transmitted an Authorization Reply message to this
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.2."                     ?"The value of this object is the count of times the
        CMTS has transmitted an Authorization Reject message to this
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.3."                     ?"The value of this object is the count of times the
        CMTS has transmitted an Authorization Invalid message to this
        CM." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.7."                    H"The value of this object is the enumerated
        description of the Error-Code in most recent Authorization
        Reject message transmitted to the CM.  This has value
        unknown(2) if the last Error-Code value was 0, and none(1) if
        no Authorization Reject message has been transmitted to the
        CM." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.3 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        most recent Authorization Reject message transmitted to the
        CM.  This is a zero length string if no Authorization Reject
        message has been transmitted to the CM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.3 and 4.2.2.6."                    J"The value of this object is the enumerated
        description of the Error-Code in most recent Authorization
        Invalid message transmitted to the CM.  This has value
        unknown(2) if the last Error-Code value was 0, and none(1) if
        no Authorization Invalid message has been transmitted to the
        CM." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.7 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        most recent Authorization Invalid message transmitted to the
        CM.  This is a zero length string if no Authorization Invalid
        message has been transmitted to the CM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.7 and 4.2.2.6."                     S"The value of this object is the Primary Security
        Association identifier." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 2.1.3."                    "Contains the reason why a CM's certificate is deemed
        valid or invalid.
             Return unknown if the CM is running BPI mode.
             ValidCmChained means the certificate is valid because
        it chains to a valid certificate.
             ValidCmTrusted means the certificate is valid because
        it has been provisioned (in the docsBpi2CmtsProvisionedCmCert
        table) to be trusted.
             InvalidCmUntrusted means the certificate is invalid
        because it has been provisioned (in the
        docsBpi2CmtsProvisionedCmCert table) to be untrusted.
             InvalidCAUntrusted means the certificate is invalid
        because   it chains to an untrusted certificate.
             InvalidCmOther and InvalidCAOther refer to errors in
        parsing, validity periods, etc, which are attributable to the
        cm certificate or its chain respectively; additional
        information may be found in docsBpi2AuthRejectErrorString for
        these types of errors." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.2."                     ?"The X509 CM Certificate sent as part of a BPKM
        Authorization Request.
        Note: The NULL string must be returned if the entire
        certificate is not retained in the CMTS." M"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.2."                     ?"This table describes the attributes of each
        Traffic Encryption Key (TEK) association. The CMTS maintains
        one TEK association per SAID on each CMTS MAC interface."                      a"Each entry contains objects describing attributes of
        one TEK association on a particular CMTS MAC interface. The
        CMTS MUST create one entry per SAID per MAC interface,
        based on the receipt of a Key Request message, and MUST not
        delete the entry before the CM authorization for the SAID
        permanently expires."                       Q"The value of this object is the DOCSIS Security
        Association ID (SAID)." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.12."                     ?"The value of this object is the type of security
        association.  Dynamic does not apply to CMs running in
        BPI mode." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 2.1.3."                     T"The value of this object is the data encryption
        algorithm being utilized." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                     X"The value of this object is the data authentication
        algorithm being utilized." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                     s"The value of this object is the lifetime, in
        seconds, the CMTS assigns to keys for this TEK association." b"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.5 and Appendix A.2."                    1"The value of this object is the grace time for
        the TEK in seconds.  The CM is expected to start trying to
        acquire a new TEK beginning TEK GraceTime seconds before
        the TEK actually expires.
        Note: The value of this object is vendor specific for
        multicast TEKs." T"DOCSIS Baseline Privacy Plus Interface Specification,
        Appendix A.1.1.1.6."                     ]"The value of this object is the most recent TEK
        key sequence number for this SAID." `"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.2.10 and 4.2.2.13."                     ?"The value of this object is the actual clock time
        for expiration of the immediate predecessor of the most
        recent TEK for this FSM. If this FSM has only one TEK, then
        the value is the time of activation of this FSM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.5 and 4.2.2.9."                     p"The value of this object is the actual clock time
        for expiration of the most recent TEK for this FSM." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.5 and 4.2.2.9."                    ?"Setting this object to TRUE causes the CMTS to
        invalidate the current active TEK(s) (plural due to key
        transition periods), and to generate a new TEK for the
        associated SAID; the CMTS MAY also generate an unsolicited
        TEK Invalid message, to optimize the TEK synchronization
        between the CMTS and the CM. Reading this object always
        returns   FALSE." S"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.1.3.3.5."                     f"The value of this object is the count of times the
        CMTS has received a Key Request message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.4."                     g"The value of this object is the count of times the
        CMTS has transmitted a Key Reply message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.5."                     h"The value of this object is the count of times the
        CMTS has transmitted a Key Reject message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.6."                     i"The value of this object is the count of times the
        CMTS has transmitted a TEK Invalid message." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.8."                    Q"The value of this object is the enumerated
        description of the Error-Code in the most recent Key Reject
        message sent in response to a Key Request for this SAID.
        This has value unknown(2) if the last Error-Code value
        was 0, and none(1) if no Key Reject message has been received
        since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.6 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        the most recent Key Reject message sent in response to a Key
        Request for this SAID. This is a zero length string if no
        Key Reject message has been received since reboot." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.6 and 4.2.2.6."                    >"The value of this object is the enumerated
        description of the Error-Code in the most recent TEK Invalid
        message sent in association with this SAID.  This has value
        unknown(2) if the last Error-Code value was 0, and none(1) if
        no TEK Invalid message has been received since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.8 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        the most recent TEK Invalid message sent in association with
        this SAID.  This is a zero length string if no TEK Invalid
        message has been received since reboot." ^"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.8 and 4.2.2.6."                         2"This table maps multicast IP addresses to SAIDs."                       ?"Each entry contains objects describing the mapping of
        a set of multicast IP address and mask to one SAID, as well as
        associated message counters and error information."                       "The index of this row."                       K"The type of internet address for
        docsBpi2CmtsIpMulticastAddress."                       ?"This object represents the IP multicast address
        to be mapped, in conjunction with
        docsBpi2CmtsIpMulticastMask."                       H"The type of internet address for
        docsBpi2CmtsIpMulticastMask."                      "This object represents the IP multicast address mask
        for this row.
        An IP multicast address matches this row if it is
        equivalent to the logical AND of
        docsBpi2CmtsIpMulticastAddr with
        docsBpi2CmtsIpMulticastMask."                       k"This object represents the multicast SAID to be
        used in this IP multicast address mapping entry."                       ?"The value of this object is the type of security
        association.  Dynamic does not apply to CMs running in
        BPI mode." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 2.1.3."                     T"The value of this object is the data encryption
        algorithm being utilized." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                     X"The value of this object is the data authentication
        algorithm being utilized." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.2.20."                     v"The value of this object is the count of times the
        CMTS has received an SA Map Request message for this IP." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.10."                     w"The value of this object is the count of times the
        CMTS has transmitted an SA Map Reply message for this IP." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.11."                     x"The value of this object is the count of times the
        CMTS has transmitted an SA Map Reject message for this IP." R"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 4.2.1.12."                    W"The value of this object is the enumerated
        description of the Error-Code in the most recent SA Map
        Reject message sent in response to a SA Map Request for this
        IP.  It has value unknown(2) if the last Error-Code value
        was 0, and none(1) if no SA MAP Reject message has been
        received since reboot." `"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.12 and 4.2.2.15."                     ?"The value of this object is the Display-String in
        the most recent SA Map Reject message sent in response to an
        SA Map Request for this IP.  It is a zero length string if
        no SA Map Reject message has been received since reboot." _"DOCSIS Baseline Privacy Plus Interface Specification,
        Sections 4.2.1.12 and 4.2.2.6."                     ?"This object controls and reflects the IP multicast
        address mapping entry.  There is no restriction on the ability
        to change values in this row while the row is active.
        Inactive rows need not be timed out."                       h"This table describes the multicast SAID
        authorization for each CM on each CMTS MAC interface."                       ?"Each entry contains objects describing the key
        authorization of one cable modem for one multicast SAID
        for one CMTS MAC interface."                       G"This object represents the multicast SAID for
        authorization."                       n"This object represents the MAC address of the CM
        to which the multicast SAID authorization applies."                       ?"This object controls and reflects the CM
        authorization for each multicast SAID.  There is no
        restriction on the ability to change values in this row
        while the row is active.  Inactive rows need not be
        timed out."                          ;"A table of CM certificate trust entries provisioned
        to the CMTS.  The trust object for a certificate in this table
        has an overriding effect on the validity object of a
        certificate in the authorization table, as long as the
        entire contents of the two certificates are identical."                       B"An entry in the CMTS' provisioned CM certificate
        table."                       "The index of this row."                       ?"Trust state for the provisioned CM certificate entry.
        Note: Setting this object need only override the validity of
        CM certificates sent in future authorization requests;
        instantaneous effect need not occur." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.1."                     ?"This object indicates how the certificate reached the
        CMTS.  Other means it originated from a source not identified
        above." O"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.1."                     ?"    Standard RowStatus object except:
        a) if a row has ever been activated,
        a set to docsBpi2CmtsProvisionedCmCert need not succeed,
        b) inactive rows need not be timed out."                       ?"An X509 DER-encoded certificate authority
        certificate.
        Note: The NULL string must be returned, on reads, if the
        entire certificate is not retained in the CMTS." M"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.2."                     Y"The table of known certificate authority certificates
        acquired by this device."                       @"A row in the Certificate Authority certificate
        table."                       "The index for this row."                      ?"The subject name exactly as it is encoded in the
        X509 certificate.
        The organizationName portion of the certificate's subject
        name must be present.  All other fields are optional.  Any
        optional field present must be prepended with CR (carriage
        return) LF (line feed) ASCII characters.
        Ordering of fields present must conform to:

        organizationName
        CR LF
        countryName
        CR LF
        stateOrProvinceName
        CR LF
        localityName
        CR LF
        organizationalUnitName
        CR LF
        organizationalUnitName=<Manufacturing Location>
        CR LF
        commonName
        " N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.2.4"                    ?"The issuer name exactly as it is encoded in the
        X509 certificate.
        The commonName portion of the certificate's issuer
        name must be present.  All other fields are optional.  Any
        optional field present must be prepended with CR (carriage
        return) LF (line feed) ASCII characters.
        Ordering of fields present must conform to:

        commonName
        CR LF
        countryName
        CR LF
        stateOrProvinceName
        CR LF
        localityName
        CR LF
        organizationName
        CR LF
        organizationalUnitName
        CR LF
        organizationalUnitName=<Manufacturing Location>
        " N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.2.4"                     N"This CA certificate's serial number represented as
        an octet string." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.2.2"                    ?"This object controls the trust status of this
        certificate.  Root certificates must be given root trust;
        manufacturer certificates must not be given root trust.
        Trust on root certificates must not change.
        Note: Setting this object need only affect the validity of
        CM certificates sent in future authorization requests;
        instantaneous effect need not occur." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.1"                     ?"This object indicates how the certificate reached
        the CMTS.  Other means it originated from a source not
        identified above." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.1"                    "    Standard RowStatus objects except:
        a) if a row has ever been activated,
        a set to docsBpi2CmtsCACert need not succeed,
        b) inactive rows need not be timed out,
        c) if a row has ever been activated, a destroy setting need
        not succeed."                      g"An X509 DER-encoded certificate authority
        certificate.
        To help identify certificates, either this object or
        docsBpi2CmtsCACertThumbprint must be returned by a CMTS for
        self-signed CA certificates.

        Note: The NULL string must be returned, on reads, if the
        entire certificate is not retained in the CMTS." M"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.2."                    ,"The SHA-1 hash of a CA certificate.
        To help identify certificates, either this object or
        docsBpi2CmtsCACert must be returned by a CMTS for
        self-signed CA certificates.

        Note: The NULL string must be returned if this object is
        not supported by the CMTS." N"DOCSIS Baseline Privacy Plus Interface Specification,
        Section 9.4.3"                         ?"The value indicates the result of the latest config
        file CVC verification, SNMP CVC verification, or code file
        verification." ["DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.3.2 & D.3.5.1."                     ?"The value of this object indicates the additional
        information to the status code.  The value will include
        the error code and error description which will be defined
        separately." X"DOCSIS Baseline Privacy Plus Interface Specification,
        Section TBD (see D.3.7)"                     R"The value of this object is the device manufacturer's
        organizationName." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.2.2."                     ?"The value of this object is the device manufacturer's
        current codeAccessStart value referenced to Greenwich Mean
        Time (GMT)." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.2.2."                     ?"The value of this object is the device manufacturer's
        current cvcAccessStart value referenced to Greenwich Mean
        Time (GMT)." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.2.2."                     ?"The value of this object is the Co-Signer's
        organizationName.  The value is a zero length string if
        the co-signer is not specified." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.2.2."                     ?"The value of this object is the Co-Signer's current
        codeAccessStart value referenced to Greenwich Mean
        Time (GMT).  If docsBpi2CodeCoSignerOrgName is a zero
        length string, the value of this object is meaningless." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.2.2."                     ?"The value of this object is the Co-Signer's current
        cvcAccessStart value referenced to Greenwich Mean
        Time (GMT).  If docsBpi2CodeCoSignerOrgName is a zero
        length string, the value of this object is meaningless." Q"DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.2.2."                    -"Setting a CVC to this object triggers the device
        to verify the CVC and update the cvcAccessStart value.
        If the device is not enabled to upgrade codefiles, or
        the CVC verification fails, the CVC will be rejected.
        Reading this object always returns the null string." S"DOCSIS Baseline Privacy Plus Interface Specification,
        Section D.3.3.2.2."                                 n"This is the compliance statement for devices which
        implement the DOCSIS Baseline Privacy Interface."   6"This group is implemented only in CMs, not in CMTSs." 6"This group is implemented only in CMTSs, not in CMs." 9"This group is required in CMs and is optional in CMTSs." ?"The refined range corresponds to the minimum and maximum
        values in operational networks, according to Appendix A.2 in
        [7]." ?"The refined range corresponds to the minimum and maximum
        values in operational networks, according to Appendix A.2 in
        [7]." ?"The refined range corresponds to the minimum and maximum
        values in operational networks, according to Appendix A.2 in
        [7]." ?"The refined range corresponds to the minimum and maximum
        values in operational networks, according to Appendix A.2 in
        [7]." K"An implementation is only required to support IPv4
           addresses." K"An implementation is only required to support IPv4
           addresses." K"An implementation is only required to support IPv4
           addresses." K"An implementation is only required to support IPv4
           addresses." K"An implementation is only required to support IPv4
           addresses." K"An implementation is only required to support IPv4
           addresses."                 J"This collection of objects provides CM BPI+ status and
        control."                 L"This collection of objects provides CMTS BPI+ status and
        control."                 V"This collection of objects provide authenticated software
        download support."                 0"This is a collection of obsolete BPI+ objects."                            