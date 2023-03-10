   U"DOCSIS Baseline Privacy Plus Interface 
            specification, Section 4.2.2.24"x"The value of this object is the type of security  
            association. The values of the named-numbers are associated 
            with the BPKM SA-Type attributes:  
            'primary' corresponds to code '1', 'static' to code '2' 
            'dynamic' to code '3'. 
            'none' value must only be used if the SA type has yet 
            to be determined. "             ?" DOCSIS Baseline Privacy Plus Interface 
                  specification, Section 2.1.3 BPI+ Security  
                  Associations" v"Security Association identifier (SAId). The value  
                 zero indicates the SAId is yet to be determined"               J"An X509 digital certificate encoded as an ASN.1 DER 
            object."             ?" DOCSIS Baseline Privacy Plus Interface 
                  specification, Section 2.1.3 BPI+ Security  
                  Associations" ("Security Association identifier (SAId)"                                                                                    ~"This is the MIB module for the DOCSIS Baseline  
                 Privacy Plus Interface (BPI+) at cable modems (CMs)  
                 and cable modem termination systems (CMTSs). 
     
                 Copyright (C) The Internet Society (2003). This 
                 version of this MIB module is part of RFC XXXX; see 
                 the RFC itself for full legal notices."	\"--------------------------------------- 
                       Stuart M. Green 
                       Postal: 
                       ADC Telecommunications, Inc. 
                       Mailstop 1641 
                       8 Technology Drive 
                       Westborough, MA  01581 
                       U.S.A. 
                       Tel:    +1 508 870 2554 
                       E-mail: stuart.green@adc.com 
                       --------------------------------------- 
                       Kaz Ozawa 
                       Cable Modem & Network Dept. 
                       Server & Network Div. 
                       TOSHIBA CORPORATION  
  
  

  
                       Digital Media Network Company 
                       1-1, Shibaura 1-Chome 
                       Minato-ku, Tokyo 105-8001 
                       Japan 
                       Phone: +81-3-3457-2726 
                       FAX: +81-3-5444-9359 
                       Email: Kazuyoshi.Ozawa@toshiba.co.jp 
                       --------------------------------------- 
                       Alexander Katsnelson 
                       Postal: 
                       Cable Television Laboratories, Inc. 
                       400 Centennial Parkway 
                       Louisville, CO 80027-1266 
                       U.S.A. 
                       Tel:    +1 303 661 9100 
                       Fax:    +1 303 661 9199 
                       E-mail: a.katsnelson@cablelabs.com 
                       --------------------------------------- 
                       Eduardo Cardona 
                       Postal: 
                       Cable Television Laboratories, Inc. 
                       400 Centennial Parkway 
                       Louisville, CO 80027-1266 
                       U.S.A. 
                       Tel:    +1 303 664 8114 
                       Fax:    +1 303 661 9199 
                       E-mail: e.cardona@cablelabs.com 
                       --------------------------------------- 
     
               IETF IPCDN Working Group 
               General Discussion: ipcdn@ietf.org 
               Subscribe: http://www.ietf.org/mailman/listinfo/ipcdn 
               Archive: ftp://ftp.ietf.org/ietf-mail-archive/ipcdn 
               Co-chairs: Richard Woundy, rwoundy@cisco.com 
                          Jean-Francois Mule, jfm@cablelabs.com" "200310270000Z" d"Initial version of the IETF BPI+ MIB module. 
                 This version published as RFC XXXX."             r-- Note to RFC editor:  
-- RFC editor to assign yy 
-- in draft08 was  ::= { docsIfMib 6 } 
-- Delete this note 
         ?"This table describes the basic and authorization 
            related Baseline Privacy Plus attributes of each CM MAC 
            interface."                       ?"Each entry contains objects describing attributes of 
            one CM MAC interface. An entry in this table exists for 
            each ifEntry with an ifType of docsCableMaclayer(127)."                       b"This object identifies whether this CM is 
            provisioned to run Baseline Privacy Plus." T"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1."                    "The value of this object is a DER-encoded 
            RSAPublicKey ASN.1 type string, as defined in the RSA 
            Encryption Standard (PKCS #1) , corresponding to the 
            public key of the CM. The 74, 106, 140, 204, and 270 byte 
            key encoding lengths correspond to 512 bit, 768 bit, 1024 
            bit, 1536 bit, and 2048 public moduli respectively." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.4."                     ?"The value of this object is the state of the CM 
            authorization FSM.  The start state indicates that FSM is 
            in its initial state." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.1.2.1."                     j"The value of this object is the most recent 
            authorization key sequence number for this FSM." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.2 and 4.2.2.10."                    )"The value of this object is the actual clock time for 
            expiration of the immediate predecessor of the most recent 
            authorization key for this FSM.  If this FSM has only one 
            authorization key, then the value is the time of activation 
            of this FSM." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.2 and 4.2.2.9."                     ?"The value of this object is the actual clock time for 
            expiration of the most recent authorization key for this 
            FSM." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.2 and 4.2.2.9."                    7"Setting this object to TRUE generates a Reauthorize 
            event in the authorization FSM. Reading this object always 
            returns FALSE. 
            This object is for testing purposes only and therefore it  
            does not require to be associated with a last reset 
            object." W"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.1.2.3.4."                    ""The value of this object is the grace time for an 
            authorization key in seconds.  A CM is expected to start  
            trying to get a new authorization key beginning 
            AuthGraceTime seconds before the most recent authorization 
            key actually expires." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.3."                     ?"The value of this object is the grace time for 
            the TEK in seconds.  The CM is expected to start trying to 
            acquire a new TEK beginning TEK GraceTime seconds before 
  
  

  
            the expiration of the most recent TEK." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.6."                     P"The value of this object is the Authorize Wait 
            Timeout in second." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.1."                     S"The value of this object is the Reauthorize Wait 
            Timeout in seconds." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.2."                     S"The value of this object is the Operational Wait 
            Timeout in seconds." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.4."                     M"The value of this object is the Rekey Wait Timeout 
            in seconds." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.5."                     \"The value of this object is the Authorization Reject 
            Wait Timeout in seconds." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.7."                     ?"The value of this object is the retransmission 
            interval, in seconds, of SA Map Requests from the MAP Wait 
            state." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.8."                     ]"The value of this object is the maximum number of 
            Map Request retries allowed." X"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.1.1.1.9."                     ?"The value of this object is the count of times the CM 
            has transmitted an Authentication Information message, 
            since reboot." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.9."                     ?"The value of this object is the count of times the CM 
            has transmitted an Authorization Request message, since 
            reboot." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.1."                     "The value of this object is the count of times the CM 
            has received an Authorization Reply message, since reboot." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.2."                     ?"The value of this object is the count of times the CM 
            has received an Authorization Reject message, since 
            reboot." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.3."                     ?"The value of this object is the count of times the CM 
            has received an Authorization Invalid message, since 
            reboot." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.7."                    Y"The value of this object is the enumerated 
            description of the Error-Code in most recent Authorization 
            Reject message received by the CM.  This has value 
            unknown(2) if the last Error-Code value was 0, and none(1) 
            if no Authorization Reject message has been received since 
            reboot." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.3 and 4.2.2.15."                     ?"The value of this object is the text string in 
            most recent Authorization Reject message received by the 
            CM. This is a zero length string if no Authorization 
            Reject message has been received since reboot." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.3 and 4.2.2.6."                    ["The value of this object is the enumerated 
            description of the Error-Code in most recent Authorization 
            Invalid message received by the CM.  This has value 
            unknown(2) if the last Error-Code value was 0, and none(1) 
            if no Authorization Invalid message has been received since 
            reboot." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.7 and 4.2.2.15."                     ?"The value of this object is the text string in 
            most recent Authorization Invalid message received by the 
            CM. This is a zero length string if no Authorization 
            Invalid message has been received since reboot." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.7 and 4.2.2.6."                     ?"This table describes the attributes of each CM 
            Traffic Encryption Key (TEK) association. The CM maintains 
  
  

  
            (no more than) one TEK association per SAID per CM MAC 
            interface."                      f"Each entry contains objects describing the TEK 
            association attributes of one SAID. The CM MUST create one 
            entry per SAID, regardless of whether the SAID was obtained 
            from a Registration Response message, from an Authorization 
            Reply message, or from any dynamic SAID establishment 
            mechanisms."                       U"The value of this object is the DOCSIS Security 
            Association ID (SAID)." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.12."                     L"The value of this object is the type of security 
            association." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 2.1.3."                     ?"The value of this object is the data encryption 
            algorithm being utilized. Values 'des56CbcMode' and 
            'des40CbcMode' are defined in the interface specification 
            as integer values (1) and (2)." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                     ?"The value of this object is the data authentication 
            algorithm being utilized. Currently no algorithm is  
            required. This object is defined for future extensibility." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                     ?"The value of this object is the state of the 
            indicated TEK FSM.  The start(1) state indicates that FSM 
            is in its initial state." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.1.3.1."                     d"The value of this object is the most recent TEK 
            key sequence number for this TEK FSM." d"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.2.10 and 4.2.2.13."                     "The value of this object is the actual clock time for 
            expiration of the immediate predecessor of the most recent 
            TEK for this FSM.  If this FSM has only one TEK, then the 
            value is the time of activation of this FSM." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.5 and 4.2.2.9."                     t"The value of this object is the actual clock time for 
            expiration of the most recent TEK for this FSM." l"DOCSIS Baseline Privacy Plus Interface Specification, 
  
  

  
            Sections 4.2.1.5 and 4.2.2.9."                     "The value of this object is the count of times the CM 
            has transmitted a Key Request message, since registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.4."                     ?"The value of this object is the count of times the CM 
            has received a Key Reply message, including a message whose 
            authentication failed, since registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.5."                     ?"The value of this object is the count of times the CM 
            has received a Key Reject message, including a message 
            whose authentication failed, since registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.6."                     ?"The value of this object is the count of times the CM 
            has received a TEK Invalid message, including a message 
            whose authentication failed, since registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.8."                     ?"The value of this object is the count of times an 
            Authorization Pending (Auth Pend) event occurred in this 
            FSM, since registration." W"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.1.3.3.3."                    ="The value of this object is the enumerated 
            description of the Error-Code in most recent Key Reject 
            message received by the CM. This has value unknown(2) if 
            the last Error-Code value was 0, and none(1) if no Key 
            Reject message has been received since registration." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.1.2.6 and 4.2.2.15."                     ?"The value of this object is the text string in 
            most recent Key Reject message received by the CM. This is 
            a zero length string if no Key Reject message has been 
            received since registration." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.1.2.6 and 4.2.2.6."                    @"The value of this object is the enumerated 
            description of the Error-Code in most recent TEK Invalid 
            message received by the CM.  This has value unknown(2) if 
            the last Error-Code value was 0, and none(1) if no TEK 
            Invalid message has been received since registration." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.1.2.8 and 4.2.2.15."                     ?"The value of this object is the text string in 
            most recent TEK Invalid message received by the CM. This is 
            a zero length string if no TEK Invalid message has been 
            received since registration." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.1.2.8 and 4.2.2.6."                         ?"This table maps multicast IP addresses to SAIDs. 
            It is intended to map multicast IP addresses associated 
            with SA MAP Request messages. An entry may be removed from 
            this table upon the reception of an SA Map Reject."                       ?"Each entry contains objects describing the mapping of 
            one multicast IP address to one SAID, as well as 
            associated state, message counters, and error information."                       "The index of this row."                       M"The type of internet address for 
            docsBpi2CmIpMulticastAddress."                       ?"This object represents the IP multicast address 
            to be mapped The type of this address is determined by 
            the value of the docsBpi2CmIpMulticastAddressType object." Q"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 5.4."                     ?"This object represents the SAID to which the IP 
            multicast address has been mapped.  If no SA Map Reply has 
            been received for the IP address, this object should have 
            the value 0." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.12."                     W"The value of this object is the state of the SA 
            Mapping FSM for this IP." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 5.3.1."                     ?"The value of this object is the count of times the 
            CM has transmitted an SA Map Request message for this IP, 
            since entry creation" V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.10."                     ?"The value of this object is the count of times the 
            CM has received an SA Map Reply message for this IP, since 
            entry creation." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.11."                     ?"The value of this object is the count of times the 
            CM has received an SA MAP Reject message for this IP, since 
            entry creation." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.12."                    8"The value of this object is the enumerated 
            description of the Error-Code in the most recent SA Map 
            Reject message sent in response to an SA Map Request for 
            This IP.  It has the value none(1) if no SA MAP Reject 
            message has been received since entry creation." d"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.12 and 4.2.2.15."                    "The value of this object is the text string in 
            the most recent SA Map Reject message sent in response to 
            an SA Map Request for this IP.  It is a zero length string 
            if no SA Map Reject message has been received since entry  
            creation." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.12 and 4.2.2.6."                         l"This table describes the Baseline Privacy Plus 
            device certificates for each CM MAC interface."                       ?"Each entry contains the device certificates of 
            one CM MAC interface.  An entry in this table exists for 
            each ifEntry with an ifType of docsCableMaclayer(127)."                       ?"The X509 DER-encoded cable modem certificate. 
            Note:  This object can be set only when the value is the 
            null string.  Once the object contains the certificate, its 
            access MUST be read-only." Q"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.1."                     f"The X509 DER-encoded manufacturer certificate which 
            signed the cable modem certificate." Q"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.1."                     ?"This table describes the Baseline Privacy Plus 
            cryptographic suite capabilities for each CM MAC 
            interface."                       Y"Each entry contains a cryptographic suite pair 
            which this CM MAC supports."                       *"The index for a cryptographic suite row."                      "The value of this object is the data encryption 
            algorithm for this cryptographic suite capability.  
            Values 'des56CbcMode' and 'des40CbcMode' are defined  
            in the interface specification as integer values (1)  
            and (2)." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                     ?"The value of this object is the data authentication 
            algorithm for this cryptographic suite capability. This  
            object is defined for future extensibility." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                         e"This table describes the basic Baseline Privacy 
            attributes of each CMTS MAC interface."                       ?"Each entry contains objects describing attributes of 
            one CMTS MAC interface.  An entry in this table exists for 
            each ifEntry with an ifType of docsCableMaclayer(127)."                       y"The value of this object is the default lifetime, in 
            seconds, the CMTS assigns to a new authorization key." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.2."                     ?"The value of this object is the default lifetime, in 
            seconds, the CMTS assigns to a new Traffic Encryption Key 
            (TEK)." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Appendix A.2."                     ?"This object determines the default trust of 
            self-signed manufacturer certificate entries, contained in 
      docsBpi2CmtsCACertTable, created after setting the object." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.1"                    ?"Setting this object to TRUE causes all chained and 
                 root certificates in the chain to have their validity 
                 periods checked against the current time of day, when 
                 the CMTS receives an Authorization Request from the 
                 CM. 
                 A FALSE setting causes all certificates in the chain 
                 not to have their validity periods checked against the 
                 current time of day." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.2"                     ?"The value of this object is the count of times the 
            CMTS has received an Authentication Information message 
            from any CM." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.9."                     ?"The value of this object is the count of times the 
            CMTS has received an Authorization Request message from any 
            CM." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.1."                     ?"The value of this object is the count of times the 
            CMTS has transmitted an Authorization Reply message to any 
            CM." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.2."                     ?"The value of this object is the count of times the 
            CMTS has transmitted an Authorization Reject message to any 
            CM." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.3."                     ?"The value of this object is the count of times 
            the CMTS has transmitted an Authorization Invalid message 
            to any CM." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.7."                     z"The value of this object is the count of times the 
            CMTS has received an SA Map Request message from any CM." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.10."                     y"The value of this object is the count of times the 
            CMTS has transmitted an SA Map Reply message to any CM." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.11."                     z"The value of this object is the count of times the 
            CMTS has transmitted an SA Map Reject message to any CM." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.12."                    7"This table describes the attributes of each CM 
            authorization association. The CMTS maintains one 
            authorization association with each Baseline Privacy- 
            enabled CM, registered on each CMTS MAC interface, 
            regardless of whether the CM is authorized or rejected."                      E"Each entry contains objects describing attributes of 
            one authorization association. The CMTS MUST create one 
            entry per CM per MAC interface, based on the receipt of an 
            Authorization Request message, and MUST not delete the 
  
  

  
            entry until the CM loses registration."                       y"The value of this object is the physical address of 
            the CM to which the authorization association applies."                      ?"The value of this object is the version of Baseline  
            Privacy for which this CM has registered. The value  
            'bpiplus' represents the value of BPI-Version Attribute of  
            the Baseline Privacy Key Management BPKM attribute  
  
  

  
            BPI-Version (1). The value 'bpi' is used to represent the  
            CM registered using DOCSIS 1.0 Baseline Privacy." ?"DOCSIS Baseline Privacy Plus Interface Specification 
            Section 4.2.2.22; ANSI/SCTE 22-2 2002(formerly DSS 02-03)  
            Data-Over-Cable Service Interface Specification DOCSIS 1.0 
            Baseline Privacy Interface (BPI)"                    ?"The value of this object is a DER-encoded 
            RSAPublicKey ASN.1 type string, as defined in the RSA 
            Encryption Standard (PKCS #1) , corresponding to the 
            public key of the CM. The 74, 106, 140, 204, and 270 byte 
            key encoding lengths correspond to 512 bit, 768 bit, 1024 
            bit, 1536 bit, and 2048 public moduli respectively. This is 
            a zero-length string if the CMTS does not retain the public 
            key." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.4."                     i"The value of this object is the most recent 
            authorization key sequence number for this CM." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.2 and 4.2.2.10."                    ?"The value of this object is the actual clock time 
            for expiration of the immediate predecessor of the most 
            recent authorization key for this FSM. If this FSM has only 
            one authorization key, then the value is the time of 
            activation of this FSM. 
  
  

  
            Note: For CMs running in BPI mode, implementation of this 
            object is optional and MAY vary." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.2 and 4.2.2.9."                     ?"The value of this object is the actual clock 
            time for expiration of the most recent authorization key 
            for this FSM." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.2 and 4.2.2.9."                     z"The value of this object is the lifetime, in seconds, 
            the CMTS assigns to an authorization key for this CM." f"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.2 and Appendix A.2."                    ?"Setting this object to invalidateAuth(2) causes the 
            CMTS to invalidate the current CM authorization key(s), but 
            not to transmit an Authorization Invalid message nor to 
            invalidate the primary SAID's TEKs.  Setting this object to 
  
  

  
            sendAuthInvalid(3) causes the CMTS to invalidate the 
            current CM authorization key(s), and to transmit an 
            Authorization Invalid message to the CM, but not to 
            invalidate the primary SAID's TEKs.  Setting this object to 
            invalidateTeks(4) causes the CMTS to invalidate the current 
            CM authorization key(s), to transmit an Authorization 
            Invalid message to the CM, and to invalidate the TEKs 
            associated with this CM's primary SAID. 
            For BPI mode, substitute all of the CM's unicast 
            TEK(s) for the primary SAID's TEKs in the previous 
            paragraph. 
            Reading  this object returns the most-recently-set 
            value of this object, or returns noResetRequested(1) if the 
            object has not been set since entry creation." r"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.1.2.3.4, 4.1.2.3.5, and 4.1.3.3.5."                     ?"The value of this object is the count of times the 
            CMTS has received an Authentication Information message 
            from this CM, since entry creation." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.9."                     ?"The value of this object is the count of times the 
            CMTS has received an Authorization Request message from 
            this CM, since entry creation." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.1."                     ?"The value of this object is the count of times the 
            CMTS has transmitted an Authorization Reply message to this 
            CM, since entry creation." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.2."                     ?"The value of this object is the count of times the 
            CMTS has transmitted an Authorization Reject message to 
            this CM, since entry creation." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.3."                     ?"The value of this object is the count of times the 
            CMTS has transmitted an Authorization Invalid message to 
            this CM, since entry creation." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.7."                    |"The value of this object is the enumerated 
            description of the Error-Code in most recent Authorization 
            Reject message transmitted to the CM.  This has value 
            unknown(2) if the last Error-Code value was 0, and none(1) 
  
  

  
            if no Authorization Reject message has been transmitted to 
            the CM, since entry creation." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.3 and 4.2.2.15."                    "The value of this object is the text string in 
            most recent Authorization Reject message transmitted to the 
            CM.  This is a zero length string if no Authorization 
            Reject message has been transmitted to the CM, since entry  
            creation." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.3 and 4.2.2.6."                    s"The value of this object is the enumerated 
            description of the Error-Code in most recent Authorization 
            Invalid message transmitted to the CM.  This has value 
            unknown(2) if the last Error-Code value was 0, and none(1) 
            if no Authorization Invalid message has been transmitted to 
            the CM since entry creation." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.7 and 4.2.2.15."                    "The value of this object is the text string in 
            most recent Authorization Invalid message transmitted to 
            the CM.  This is a zero length string if no Authorization 
            Invalid message has been transmitted to the CM since entry 
            creation." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.7 and 4.2.2.6."                     ?"The value of this object is the Primary Security 
            Association identifier.  For BPI mode, the value must be  
            any unicast SID." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 2.1.3."                    ?"Contains the reason why a CM's certificate is deemed 
            valid or invalid. 
            Return unknown(0) if the CM is running BPI mode. 
            ValidCmChained(1) means the certificate is valid  
               because it chains to a valid certificate. 
            ValidCmTrusted(2) means the certificate is valid  
               because it has been provisioned (in the  
               docsBpi2CmtsProvisionedCmCert table) to be trusted. 
            InvalidCmUntrusted(3) means the certificate is invalid 
                 because it has been provisioned (in the 
                 docsBpi2CmtsProvisionedCmCert table) to be untrusted. 
            InvalidCAUntrusted(4) means the certificate is invalid 
                 because it chains to an untrusted certificate. 
            InvalidCmOther(5) and InvalidCAOther(6) refer to  
  
  

  
                 errors in parsing, validity periods, etc, which are  
                 attributable to the CM certificate or its chain  
                 respectively; additional information may be found 
                 in docsBpi2AuthRejectErrorString for these types  
                 of errors." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.2."                     ?"The X509 CM Certificate sent as part of a BPKM 
            Authorization Request. 
            Note: The NULL string must be returned if the entire 
            certificate is not retained in the CMTS." Q"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.2."                     ?"A row index into docsBpi2CmtsCACertTable. 
                  Returns the index in docsBpi2CmtsCACertTable which  
                  CA certificate this CM is chained to.  A value of 
                  0 means it could not be found or not applicable." Q"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.2."                     ?"This table describes the attributes of each 
  
  

  
            Traffic Encryption Key (TEK) association. The CMTS 
            Maintains one TEK association per SAID on each CMTS MAC 
            interface."                      u"Each entry contains objects describing attributes of 
            one TEK association on a particular CMTS MAC interface. The 
            CMTS MUST create one entry per SAID per MAC interface, 
            based on the receipt of a Key Request message, and MUST not 
            delete the entry before the CM authorization for the SAID 
            permanently expires."                       U"The value of this object is the DOCSIS Security 
            Association ID (SAID)." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.12."                    "The value of this object is the type of security 
            association.  'dynamic' does not apply to CMs running in 
            BPI mode.  Unicast BPI TEKs must utilize the 'primary' 
            encoding and multicast BPI TEKs must utilize the 'static' 
            encoding." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 2.1.3."                     X"The value of this object is the data encryption 
            algorithm being utilized." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                     \"The value of this object is the data authentication 
            algorithm being utilized." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                     ?"The value of this object is the lifetime, in 
            seconds, the CMTS assigns to keys for this TEK 
            association." f"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.5 and Appendix A.2."                     a"The value of this object is the most recent TEK 
            key sequence number for this SAID." d"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.2.10 and 4.2.2.13."                     ?"The value of this object is the actual clock time 
            for expiration of the immediate predecessor of the most 
            recent TEK for this FSM. If this FSM has only one TEK, then 
            the value is the time of activation of this FSM." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.5 and 4.2.2.9."                     t"The value of this object is the actual clock time 
            for expiration of the most recent TEK for this FSM." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.5 and 4.2.2.9."                    }"Setting this object to TRUE causes the CMTS to 
            invalidate all currently active TEK(s) and to generate new 
            TEK(s) for the associated SAID; the CMTS MAY also generate 
            unsolicited TEK Invalid message(s), to optimize the TEK  
            synchronization    between the CMTS and the CM(s). Reading 
            this object always returns FALSE." W"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.1.3.3.5."                     ?"The value of this object is the count of times the 
            CMTS has received a Key Request message, since 
            registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.4."                     ?"The value of this object is the count of times the 
            CMTS has transmitted a Key Reply message, since 
            registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.5."                     ?"The value of this object is the count of times the 
            CMTS has transmitted a Key Reject message, since 
            registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.6."                     ?"The value of this object is the count of times the 
            CMTS has transmitted a TEK Invalid message, since 
            registration." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.8."                    k"The value of this object is the enumerated 
            description of the Error-Code in the most recent Key Reject 
            message sent in response to a Key Request for this SAID. 
            This has value unknown(2) if the last Error-Code value 
            was 0, and none(1) if no Key Reject message has been 
            received since registration." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.6 and 4.2.2.15."                    "The value of this object is the text string in 
            the most recent Key Reject message sent in response to a 
            Key Request for this SAID. This is a zero length string if 
            no Key Reject message has been received since 
            registration." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.6 and 4.2.2.6."                    a"The value of this object is the enumerated 
            description of the Error-Code in the most recent TEK 
            Invalid message sent in association with this SAID.  This 
            has value unknown(2) if the last Error-Code value was 0, 
            and none(1) if no TEK Invalid message has been received 
            since registration." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.8 and 4.2.2.15."                     ?"The value of this object is the text string in 
            the most recent TEK Invalid message sent in association 
            with this SAID.  This is a zero length string if no TEK 
            Invalid message has been received since registration." b"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.8 and 4.2.2.6."                        "This table maps multicast IP addresses to SAIDs. 
            If a multicast IP address is mapped by multiple rows 
            in the table, the row with the lowest  
            docsBpi2CmtsIpMulticastIndex must be utilized for the 
            mapping."                       ?"Each entry contains objects describing the mapping of 
            a set of multicast IP address and mask to one SAID, as well 
            as associated message counters and error information."                       "The index of this row."                       O"The type of internet address for 
            docsBpi2CmtsIpMulticastAddress."                       ?"This object represents the IP multicast address 
            to be mapped, in conjunction with 
            docsBpi2CmtsIpMulticastMask."                       L"The type of internet address for 
            docsBpi2CmtsIpMulticastMask."                      b"This object represents the IP multicast address mask 
            for this row.  
            An IP multicast address matches this row if the logical 
            AND of the address with docsBpi2CmtsIpMulticastMask is 
            identical to the logical AND of  
            docsBpi2CmtsIpMulticastAddr with  
            docsBpi2CmtsIpMulticastMask."                       o"This object represents the multicast SAID to be 
            used in this IP multicast address mapping entry."                      "The value of this object is the type of security 
            association.  'dynamic' does not apply to CMs running in 
            BPI mode.  Unicast BPI TEKs must utilize the 'primary' 
            encoding and multicast BPI TEKs must utilize the 'static' 
            encoding." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 2.1.3."                     X"The value of this object is the data encryption 
            algorithm being utilized." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                     \"The value of this object is the data authentication 
            algorithm being utilized." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.2.20."                     ?"The value of this object is the count of times the 
            CMTS has received an SA Map Request message for this IP, 
            since entry creation." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.10."                     ?"The value of this object is the count of times the 
            CMTS has transmitted an SA Map Reply message for this IP, 
            since entry creation." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.11."                     ?"The value of this object is the count of times the 
            CMTS has transmitted an SA Map Reject message for this IP, 
            since entry creation." V"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 4.2.1.12."                    s"The value of this object is the enumerated 
            description of the Error-Code in the most recent SA Map 
            Reject message sent in response to a SA Map Request for 
            This IP.  It has value unknown(2) if the last Error-Code 
            Value was 0, and none(1) if no SA MAP Reject message has 
            been received since entry creation." d"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.12 and 4.2.2.15."                    "The value of this object is the text string in 
            the most recent SA Map Reject message sent in response to 
            an SA Map Request for this IP.  It is a zero length string 
            if no SA Map Reject message has been received since entry 
            creation." c"DOCSIS Baseline Privacy Plus Interface Specification, 
            Sections 4.2.1.12 and 4.2.2.6."                     ?"This object controls and reflects the IP multicast 
            address mapping entry.  There is no restriction on the 
            ability to change values in this row while the row is 
            active.  Inactive rows need not be timed out."                       v"This table describes the multicast SAID 
  
  

  
            authorization for each CM on each CMTS MAC interface."                       ?"Each entry contains objects describing the key 
            authorization of one cable modem for one multicast SAID 
            for one CMTS MAC interface."                       K"This object represents the multicast SAID for 
            authorization."                       r"This object represents the MAC address of the CM 
            to which the multicast SAID authorization applies."                      	"This object controls and reflects the CM 
            authorization for each multicast SAID.  There is no 
            restriction on the ability to change values in this row 
            while the row is active.  Inactive rows need not be 
            timed out."                          K"A table of CM certificate trust entries provisioned 
            to the CMTS.  The trust object for a certificate in this 
            table has an overriding effect on the validity object of a 
            certificate in the authorization table, as long as the 
            entire contents of the two certificates are identical."                       G"An entry in the CMTS's provisioned CM certificate 
            table."                       "The index of this row."                       ?"Trust state for the provisioned CM certificate entry. 
            Note: Setting this object need only override the validity 
            of CM certificates sent in future authorization requests; 
            instantaneous effect need not occur." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.1."                     ?"This object indicates how the certificate reached the 
            CMTS.  Other(4) means it originated from a source not  
            identified above." S"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.1."                     ?"Standard RowStatus object except: 
            a) if a row has ever been activated, 
            a set to docsBpi2CmtsProvisionedCmCert need not succeed, 
            b) inactive rows need not be timed out."                       ?"An X509 DER-encoded certificate authority 
            certificate. 
            Note: The NULL string must be returned, on reads, if the 
            entire certificate is not retained in the CMTS." Q"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.2."                     ]"The table of known certificate authority certificates 
            acquired by this device."                       D"A row in the Certificate Authority certificate 
            table."                       "The index for this row."                      ?"The subject name exactly as it is encoded in the 
            X509 certificate. 
            The organizationName portion of the certificate's subject 
            name must be present.  All other fields are optional.  Any 
            optional field present must be prepended with <CR> 
            (carriage return) <LF> (line feed) ASCII characters. 
            Ordering of fields present must conform to: 
     
            organizationName <CR> <LF> 
            countryName <CR> <LF> 
            stateOrProvinceName <CR> <LF> 
            localityName <CR> <LF> 
            organizationalUnitName <CR> <LF> 
            organizationalUnitName=<Manufacturing Location> <CR> <LF> 
            commonName" R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.2.4"                    ?"The issuer name exactly as it is encoded in the 
            X509 certificate. 
            The commonName portion of the certificate's issuer 
            name must be present.  All other fields are optional.  Any 
            optional field present must be prepended with <CR> 
            (carriage return) <LF> (line feed) ASCII characters. 
            Ordering of fields present must conform to: 
     
            commonName <CR> <LF> 
  
  

  
            countryName <CR> <LF> 
            stateOrProvinceName <CR> <LF> 
            localityName <CR> <LF> 
            organizationName <CR> <LF> 
            organizationalUnitName <CR> <LF> 
            organizationalUnitName=<Manufacturing Location>" R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.2.4"                     R"This CA certificate's serial number represented as 
            an octet string." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.2.2"                    ?"This object controls the trust status of this 
            certificate.  Root certificates must be given root(4) 
            trust; manufacturer certificates must not be given root(4) 
            trust.  Trust on root certificates must not change. 
            Note: Setting this object need only affect the validity of 
            CM certificates sent in future authorization requests; 
            instantaneous effect need not occur." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.1"                     ?"This object indicates how the certificate reached 
            the CMTS.  Other(4) means it originated from a source not 
            identified above." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.1"                    )"Standard RowStatus objects except: 
            a) if a row has ever been activated, 
            a set to docsBpi2CmtsCACert need not succeed, 
            b) inactive rows need not be timed out, 
            c) if a row has ever been activated, a destroy setting need 
            not succeed."                      ?"An X509 DER-encoded certificate authority 
            certificate. 
            To help identify certificates, either this object or 
            docsBpi2CmtsCACertThumbprint must be returned by a CMTS for 
            self-signed CA certificates. 
     
            Note: The NULL string must be returned, on reads, if the 
            entire certificate is not retained in the CMTS." Q"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.2."                    D"The SHA-1 hash of a CA certificate. 
            To help identify certificates, either this object or 
            docsBpi2CmtsCACert must be returned by a CMTS for 
            self-signed CA certificates. 
     
            Note: The NULL string must be returned if this object is 
            not supported by the CMTS." R"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section 9.4.3"                         ?"The value indicates the result of the latest config 
            file CVC verification, SNMP CVC verification, or code file 
            verification." _"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.3.2 & D.3.5.1."                     ?"The value of this object indicates the additional 
            information to the status code.  The value will include 
            the error code and error description which will be defined 
            separately." \"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section TBD (see D.3.7)"                     V"The value of this object is the device manufacturer's 
            organizationName." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.2.2."                    "The value of this object is the device manufacturer's 
            current codeAccessStart value. This value always be  
            referenced to Greenwich Mean Time (GMT) and the value 
            format must contain TimeZone information (fields 8-10)." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.2.2."                     "The value of this object is the device manufacturer's 
            current cvcAccessStart value. This value always be  
            referenced to Greenwich Mean Time (GMT) and the value 
            format must contain TimeZone information (fields 8-10)." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.2.2."                     ?"The value of this object is the Co-Signer's 
            organizationName.  The value is a zero length string if 
            the co-signer is not specified." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.2.2."                    s"The value of this object is the Co-Signer's current 
            codeAccessStart value. This value always be referenced to 
            Greenwich Mean Time (GMT) and the value format must contain 
            TimeZone information (fields 8-10).   
            If docsBpi2CodeCoSignerOrgName is a zero 
            length string, the value of this object is meaningless." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.2.2."                    t"The value of this object is the Co-Signer's current 
            cvcAccessStart value. This value always be referenced to    
            Greenwich Mean Time (GMT) and the value format must contain 
            TimeZone information (fields 8-10).  
            If docsBpi2CodeCoSignerOrgName is a zero 
            length string, the value of this object is meaningless." U"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.2.2."                    ="Setting a CVC to this object triggers the device 
            to verify the CVC and update the cvcAccessStart value. 
            If the device is not enabled to upgrade codefiles, or 
            the CVC verification fails, the CVC will be rejected. 
            Reading this object always returns the null string." W"DOCSIS Baseline Privacy Plus Interface Specification, 
            Section D.3.3.2.2."                                 t"This is the compliance statement for CMs which  
            implement the DOCSIS Baseline Privacy Interface Plus."   ?"An implementation is only required to support IPv4  
            addresses. Other address types support may be defined in  
  
  

  
            future versions of this MIB module." ?"An implementation is only required to support IPv4  
            addresses Other address types support may be defined in  
            future versions of this MIB module."             v"This is the compliance statement for CMTSs which  
            implement the DOCSIS Baseline Privacy Interface Plus."   p"This group is optional for CMTSs. The implementation 
            decision of this group is left to the vendor" h"The refined range corresponds to the minimum and  
            maximum values in operational networks." h"The refined range corresponds to the minimum and  
            maximum values in operational networks." h"The refined range corresponds to the minimum and  
            maximum values in operational networks." h"The refined range corresponds to the minimum and  
            maximum values in operational networks." ?"An implementation is only required to support IPv4 
            addresses. Other address types support may be defined in  
            future versions of this MIB module." ?"An implementation is only required to support IPv4  
            addresses. Other address types support may be defined in  
            future versions of this MIB module." ?"An implementation is only required to support IPv4 
             addresses. Other address types support may be defined in  
            future versions of this MIB module." M"An implementation is only required to support  
            IPv4 addresses."                 N"This collection of objects provides CM BPI+ status 
            and control."                 Q"This collection of objects provides CMTS BPI+ status  
            and control."                 g"This collection of objects provide authenticated 
            software 
            download support."                            