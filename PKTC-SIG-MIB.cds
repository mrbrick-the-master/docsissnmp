    ?"These are the various types of signaling that 
            may be supported. 
            ncs - network call signaling a derivation of MGCP
            (Media Gateway Control Protocol) version 1.0
            dcs - distributed call signaling a derivation
            of SIP (Session Initiation Protocol) RFC 3261"             !"PacketCable CODEC Specification"?"Textual Convention defines various types of 
            CODECs that MAY be supported.   The list of CODECs 
            MUST be consistent with the Codec RTP MAP Parameters
            Table in the PacketCable CODEC specification.  In-line 
            embedded comments below contain the Literal Codec Name  
            for each CODEC. The Literal Codec Name corresponds to 
            the second column of the Codec RTP MAP Parameters Table. 
            The Literal Codec Name Column contains the CODEC name 
            that is used in the LCD of the NCS messages CRCX/MDCX, 
            and is also used to identify the CODEC in the CMS 
            Provisioning Specification. The RTP Map Parameter 
            Column of the Codec RTP MAP Parameters Table contains
            the string used in the media attribute line ('a=') of the 
            SDP parameters in NCS messages."              "This object represents a ring cadence in bit string 
            format. The ring cadence representation starts with the 
            first 1 in the pattern (the leading 0s in the MSB are 
            padding and are to be ignored).  Each bit 
            represents 100ms of tone; 1 is tone, 0 is no tone. 64
            bits MUST be used for cadence representation, LSB 4 bits
            are used for representing repeatable characteristics. 
            0000 means repeatable, and 1000 means non repeatable. 
            During SNMP SET operations 64 bits MUST be used, 
            otherwise MTA MUST reject the value. As an example, the 
            hex representation of a ring cadence of 0.5 secs on; 4 
            secs off; repeatable would be:0x0001F00000000000."                                                        ?"This MIB module supplies the basic management 
            object for the PacketCable Signaling 
            protocols. This version of the MIB includes
            common signaling and Network Call Signaling
            (NCS) related signaling objects.
            Acknowledgements:
            Angela Lyda       Arris Interactive
            Sasha Medvinsky   Motorola
            Roy Spitzer       Telogy Networks, Inc.
            Rick Vetter       Motorola
            Itay Sherman      Texas Instruments
            Klaus Hermanns    Cisco Systems
            Eugene Nechamkin  Broadcom Corp.
            Satish Kumar      Texas Instruments
            Copyright 1999-2004 Cable Television Laboratories, Inc.
            All rights reserved."$"Venkatesh Sunkad
            Postal:  CableLabs, Inc.
                     400 Centennial Parkway
                     Louisville, CO 80027-1266
                     U.S.A.
            Phone:  +1 303-661-9100
            Fax:    +1 303-661-9199
            E-mail: mibs@cablelabs.com" "200401130000Z" c"This revision, published as part of the PacketCable
            Signaling MIB I08 Specification."       -- January 13, 2004
               5"This table describes the MTA supported codec types."                       -"List of supported codecs types for the MTA."                       ^"The index value which uniquely identifies an entry
            in the pktcSigDevCodecTable."                       %"A codec type supported by this MTA."                       j"The maximum number of simultaneous sessions of the 
            specific codec that the MTA can support"                       T"This object specifies if the device is capable 
            of echo cancellation."                       r"This object specifies if the device is capable of 
             silence suppression (Voice Activity Detection)."                       \"This object specifies the connection modes that the 
             MTA device can support."                       ?"This object specifies ring cadence 0 (a user defined 
            field) where each bit (least significant bit) 
            represents a duration of 200 milliseconds (6 seconds 
            total)."                     L-- '11111111111111111111000000000000000000000000000000000000000
-- 00000'
 ?"This object specifies ring cadence 6 (a user defined 
            field) where each bit (least significant bit) 
            represents a duration of 200 milliseconds (6 seconds 
            total)."                     L-- '11111111111111111111000000000000000000000000000000000000000
-- 00000'
 ?"This object specifies ring cadence 7 (a user defined 
            field) where each bit (least significant bit) 
            represents a duration of 200 milliseconds (6 seconds 
            total)."                     L-- '11111111111111111111000000000000000000000000000000000000000
-- 00000'
 x"The default value used in the IP header for setting the 
            Type of Service (TOS) value for call signalling." "Refer to NCS specification"                     }"The default value used in the IP header for setting 
            the Type of Service (TOS) value for media stream packets." "Refer to NCS specification"                     ["The format of the default signaling and media 
            Type of Service (TOS) values."                       7"This table describes the signaling types by this MTA."                      y"Entries in pktcMtaDevSigCapabilityTable - List of 
            supported signaling types, versions and vendor extensions 
            for this MTA. Each entry in the list provides for one 
            signaling type and version combination. If the device 
            supports multiple versions of the same signaling type - 
            it will require multiple entries."                       a"The index value which uniquely identifies 
            an entry in the pktcSigCapabilityTable."                       ?"The Type identifies the type of signaling 
            used, this can be NCS, DCS, etc. This value
            has to be associated with a single signaling 
            version - reference pktcMtaDevSignalingVersion."                       ?"Provides the version of the signaling type -
            reference pktcSignalingType. Examples
            would be 1.0 or 2.33 etc."                       ?"The vendor extension allows vendors to 
            provide a list of additional capabilities,
            vendors can decide how to encode these
            Extensions, although space separated text is
            suggested."                       ?"This object contains the MTA User Datagram Protocol
            (UDP) receive port that is being used for NCS call 
            signaling. This object should only be changed by the 
            configuration file." "Refer to NCS specification"                    ?"This object contains a string indicating the Service 
            Class name to create an Upstream Service (US) Flow for 
            NCS. If the object has an empty string value then the 
            upstream NCS SF is not created and the best effort 
            SF is used for upstream NCS data. The creation of the NCS 
            SF primary occurs before Voice Communication Service is 
            activated on the device. If this object is set to a 
            non-empty (non-zero length) string, the MTA MUST create 
            the NCS SF if it does not currently exist and the 
            pktcSigServiceClassNameMask object has a non-zero value. 
            If this object is subsequently set to an empty 
            (zero-length)string , the MTA MUST delete the NCS SF 
            if it exists.  Setting this object to a different value 
            does not cause the Upstream Service Flow to be 
            re-created. The string MUST contain printable ASCII
            characters. The length of the string does not include a 
            terminating zero.  The MTA MUST append a terminating zero
            when the MTA creates the service flow. "                      ?"This object contains a string indicating the Service 
           Class Name to create a Downstream Service Flow for NCS. 
            If the object has an empty string value then the 
            NCS SF is not created and the best effort primary SF is 
            used for downstream NCS data. The creation of the NCS SF 
            occurs before Voice Communication Service is activated on 
            the device. If this object is set to a non-empty (non-zero 
            length) string, the MTA MUST create the NCS SF if it does 
            not currently exist and the pktcSigServiceClassNameMask 
            object has a non-zero value.  If this object is 
            subsequently set to an empty (zero-length) string, the MTA 
            MUST delete the NCS SF if it exists.  Setting this object 
            to a different value does not cause the Downstream Service 
            Flow to be re-created.  The string MUST contain printable 
            ASCII characters. The length of the string does not include 
            a terminating zero.  The MTA MUST append a terminating 
            zero when the MTA creates the service flow. "                      P"This object contains a value for the Call Signaling 
            Network Mask. The value is used as the NCS Call Signaling 
            classifier mask. The object is used to delete the NCS SF 
            when set to zero. When the object is set to a non-zero 
            value by the SNMP Manager, the NCS SF are to be created."                      ?"This object contains a status value of the Call Signaling 
            Service Flow. 
            - 'notactive' indicates that the NCS SF is not being used,
            and has not tried to be created, 
            - 'active' indicates that the NCS SF is in use, 
            - 'error' indicates that the NCS SF creation resulted in 
            an error and the best effort channel is used for NCS 
            Signaling."                       ?"This object specifies ring cadence 1 (a user defined 
            field) where each bit (least significant bit) 
            represents a duration of 100 milliseconds (6 seconds
            total)."                     L-- '11111111111111111111000000000000000000000000000000000000000
-- 00000'
 ?"This object specifies ring cadence 2 (a user
            defined field) where each bit (least significant
            bit) represents a duration of 100 milliseconds
            (6 seconds total)."                     L-- '11111111000011111111000000000000000000000000000000000000000
-- 00000'
 ?"This object specifies ring cadence 3 (a user
        defined field) where each bit (least significant
        bit) represents a duration of 100 milliseconds
       (6 seconds total)."                     L-- '11110011110011111111000000000000000000000000000000000000000
-- 00000'
 ?"This object specifies ring cadence 4 (a user
            defined field) where each bit (least significant
            bit) represents a duration of 100 milliseconds
            (6 seconds total)."                     L-- '11100111111111100111000000000000000000000000000000000000000
-- 00000'
 ?"This object specifies ring cadence 5 (a user
            defined field) where each bit (least significant
            bit) represents a duration of 100 milliseconds."                     L-- '11111000000000000000000000000000000000000000000000000000000
-- 01000'
 ?"This object specifies ring cadence rg (a user
            defined field) where each bit (least significant
            bit) represents a duration of 100 milliseconds
           (6 seconds total)."                     L-- '11111111111111111111000000000000000000000000000000000000000
-- 00000'
"This object specifies ring cadence rs (a user 
            defined field) where each bit (least significant bit)
            represents a duration of 100 milliseconds (6 seconds 
            total). MTA MUST reject any attempt to make this 
            object repeatable."                     L-- '11111000000000000000000000000000000000000000000000000000000
-- 01000'
 ?"This object specifies ring cadence rt (a user
            defined field) where each bit (least significant
            bit) represents a duration of 100 milliseconds
           (6 seconds total)."                     L-- '11111111111111111111000000000000000000000000000000000000000
-- 00000'
    ?"This table describes the PacketCable EndPoint selected 
             signaling type. The number of entries in this table 
             represents the number of provisioned end points.
             For each conceptual row of pktcSigEndPntConfigTable 
             defined, an associated row MUST be defined in one of 
             the specific signaling tables such as 
             pktcNcsEndPntConfigTable."                       z"Entries in pktcNcsEndPntConfigTable - Each entry 
            describes what signaling type a particular endpoint uses."                      ."This object contains a string indicating the call agent 
            name(ex: ca@abc.def.com). The call agent name 
            after the character '@' MUST be a fully qualified 
            domain name and MUST have a corresponding 
            pktcMtaDevCmsFqdn entry in the pktcMtaDevCmsTable."                      "This object contains the call agent User Datagram 
            Protocol (UDP) receive port that is being used for 
            this instance of call signaling, i.e. the default port 
            on which the call agent will receive NCS signaling from 
            the gateway." "Refer to NCS specification"                     Q"This object contains maximum value of the partial 
             dial time out." ("Refer to PacketCable NCS specification"                     U"This object contains the maximum value of the critical 
            dial time out." "Refer NCS specification"                     7"This object contains the timeout value for busy tone." "Refer to NCS specification"                     7"This object contains the timeout value for dial tone." "Refer to NCS specification "                     U"This object contains the timeout value for message 
            waiting indicator." "Refer to NCS specification"                     U"This object contains the timeout value for 
            the off hook Warning tone." "Refer to NCS specification"                     5"This object contains the timeout value for ringing." "Refer to NCS specification"                     7"This object contains the timeout value for ring back." "Refer to NCS specification"                     :"This object contains the timeout value for reorder tone." "Refer to NCS specification"                     M"This object contains the timeout value for stutter 
            dial tone." "Refer to NCS specification"                     g"This object contains the max time in seconds since the 
            sending of the initial datagram." "Refer to NCS specification"                     ["This object contains the suspicious error threshold 
            for signaling messages." "Refer to NCS specification"                     ["This object contains the disconnect error 
            threshold for signaling messages." "Refer to NCS specification"                     p"This object enables/disables the Max1 Domain Name
            Server (DNS) query operation when Max1 expires."                       ["This object enables/disables the Max2 DNS query
            operation when Max2 expires."                       o"Maximum Waiting Delay (MWD) contains the maximum 
            number of seconds a MTA waits after a restart." "Refer to NCS specification"                     b"This object contains the initial number of seconds 
            a MTA waits after a disconnect." "Refer to NCS specification"                     b"This object contains the minimum number of seconds a 
            MTA waits after a disconnect." "Refer to NCS specification"                     b"This object contains the maximum number of seconds 
            a MTA waits after a disconnect." "Refer to NCS specification"                     `"This object contains the maximum number of seconds 
            for the retransmission timer." "Refer to NCS specification"                     `"This object contains the initial number of seconds 
            for the retransmission timer." "Refer to NCS specification"                     i"Specifies a timeout value in minutes for sending 
            long duration call notification message." "Refer to NCS specification"                     I"Timeout period in seconds before no response is 
            declared." "Refer to NCS specification"                     ["This object contains the Row Status associated with 
            the pktsNcsEndPntTable."                      "This object contains the maximum number of repetitions
            of the call waiting tone that the MTA will play from a 
            single CMS request.  A value of zero (0) can be used if 
            the CMS is to control the repetitions of the call 
            waiting tone."                       ?"This object contains the delay between repetitions
            of the call waiting tone that the MTA will play from 
            a single CMS request."                       ?"This object contains the IP address of the CMS 
            currently being used for this endpoint. This IP 
            address is used to create the appropriate security 
            association."                      X"This object contains the error status for this interface.
            The operational state indicates that all operations 
            necessary to put the line in service have occurred and CMS 
            has acknowledged the RSIP message successfully.
            If 'pktcMtaDevCmsIpsecCtrl' is enabled for the associated 
            Call Agent, the noSecurityAssociation status indicates 
            that no Security Association (SA) yet exists for this 
            endpoint. Otherwise, the state is unused.
            The disconnected status indicates one of the following two:
            1. If 'pktcMtaDevCmsIpsecCtrl' is disabled then no 
            security association is involved with this endpoint: the 
            NCS signaling Software is in process of establishing the 
            NCS signaling Link via an RSIP exchange.
            2. Otherwise, pktcMtaDevCmsIpsecCtrl is enabled, the 
            security Association has been established and the NCS 
            signaling Software is in process of establishing the NCS
            signaling Link via an RSIP exchange."                          ?"This table describes the PacketCable EndPoint selected
            signaling type. The number of entries in this table 
            represents the number of provisioned end points.
            For each conceptual row of pktcSigEndPntConfigTable 
            defined, an associated row MUST be defined in one of 
            the specific signaling tables such as 
            pktcNcsEndPntConfigTable."                       z"Entries in pktcSigEndPntConfigTable - Each entry 
            describes what signaling type a particular endpoint uses."                       :"The associated index value in the pktcSigCapablityTable."                                           T"The compliance statement for devices that implement Signaling
        on the MTA."   M"This group is mandatory for any MTA implementing NCS
            signaling"                 V"Group of objects for the common portion of the
          PacketCable Signaling MIB."                 ?"Group of objects for the NCS portion of the
            PacketCable Signaling MIB.  This is mandatory for
            NCS signaling."                        