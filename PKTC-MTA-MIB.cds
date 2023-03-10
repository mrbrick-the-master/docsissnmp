     ="An X509 digital certificate encoded as an ASN.1 DER object."                                                                                        t"This MIB module supplies the basic management objects 
            for the MTA Device
            Acknowledgements:
            Angela Lyda           -      Arris Interactive
            Chris Melle           -      AT&T Broadband Labs
            Sasha Medvinsky       -      Motorola
            Roy Spitzer           -      Telogy Networks, Inc.
            Rick Vetter           -      Motorola
            Eugene Nechamkin      -      BroadCom Corp.
            Satish Kumar          -      Texas Instruments
            Copyright 1999-2004 Cable Television Laboratories, Inc.
             All rights reserved."""Venkatesh Sunkad
            Postal: Cable Television Laboratories, Inc.
            400 Centennial Parkway
            Louisville, Colorado 80027-1266
            U.S.A.
            Phone:  +1 303-661-9100
            Fax:    +1 303-661-9199
            E-mail: mibs@cablelabs.com" "200401130000Z" ]"This revision, published as part of the PacketCable MIB MTA
            Specification I08."       -- January 13, 2004
              ["Setting this object to true(1) causes the device to reset.
            Reading this object always returns false(2).  When 
            pktcMtaDevResetNow is set to true, the following actions
            occur:
            1.  All connections (if present) are flushed locally
            2.  All current actions such as ringing immediately 
            terminate
            3.  Requests for notifications such as notification based 
            on digit map recognition are flushed
            4.  All endpoints are disabled.
            5.  he provisioning flow is started at step MTA - 1."                       0"The manufacturer's serial number for this MTA."                       3"The manufacturer's hardware version for this MTA."                       ,"The telephony MAC address for this device."                       /"The Fully Qualified Domain Name for this MTA."                       '"The physical end points for this MTA."                      ]"The MTA Admin Status of this device.
            If this object is set to 'true', the MTA is 
            administratively enabled and the MTA MUST be able to 
            interact with PacketCable entities such as CMS, 
            Provisioning Server, KDC, other MTAs and MGs on all 
            PacketCable interfaces.  If this object is set to 'false',
            the MTA is administratively disabled and the MTA MUST 
            perform the following actions for all endpoints:
               -  Shutdown all media sessions if present,
               -  Shutdown NCS signaling by following the Restart in 
                  Progress procedures in the PacketCable NCS 
                  specification.
           Additionally, the MTA MUST maintain the SNMP Interface for 
           management and also SNMP Key management interface.  Also 
           the MTA MUST NOT continue Kerberized  key management 
           with CMSes until this object is set to 'true'. 
           Note: MTAs MUST renew the CMS kerberos tickets according 
           to the PacketCable Security Specification [10]"                       ?"This is a copy of the device type identifier used in the 
            DHCP option 60 exchanged between the MTA and the DHCP 
            server."                      ?"This parameter indicates the completion state of the
            initialization process.  This parameter is sent as part of 
            the final INFORM ( Step MTA 25 of the provisioning 
            process ). If the configuration file could be parsed 
            successfully and the MTA is able to reflect the same in its
            MIB, it must return: 'pass'. If the configuration file was 
            in error due to incorrect values in the mandatory
            parameters, the MTA must reject the configuration 
            file and return: 'fail'. If the configuration file had 
            proper values for all the mandatory parameters but has 
            errors in any of the optional parameters ( this includes 
            any vendor specific OIDs which are incorrect or not known 
            to the MTA ), it must return: 'passWithWarnings'. If the
            configuration file is proper, but the MTA cannot reflect 
            the same in its MIB ( for ex: Too many entries leading
            to memory exhaustion ), it must accept details related
            to the CMSs 'passWithIncompleteParsing'. If the
            configuration file cannot be parsed due to an internal 
            error it must return: 'failureInternalError'.
            If the MTA cannot accept the configuration 
            file for any other reason than the ones stated above, 
            it must return 'failureOtherReason'."                       i"This indicates whether HTTP file access is supported for 
            MTA configuration file transfer."                      ="This object enables setting the duration of the provisional
            timeout timer. The timer covers the provisioning sequence 
            from step MTA-1 to step MTA-23. The value is in minutes 
            and setting the timer to 0 disables this timer. The 
            default value for the timer is 10."                       ?"This object is the count of the number of times the 
            provisioning cycle has looped through step MTA-1 since 
            the last reboot."                      ?"If pktcMtaDevProvisioningState is reported with anything 
            other than a pass(1) then this table is populated with the
            necessary information, each pertaining to observations of 
            the configuration file. Even if different parameters 
            share the same error ( Ex: All Realm Names are invalid ), 
            all recognized errors must be reported as different 
            instances."                       ?"This contains the necessary information an MTA must 
             attempt to provide in case the configuration file 
             is not parsed and/or accepted in its entirety."                      ["This is the index to pktcMtaDevErrorOidsEntry. 
            This is an integer value and will start from the value 1 
            and be incremented for each error encountered in the 
            configuration file. The indices need not necessarily 
            reflect the order of error occurrences in the 
            configuration file."                       ?"This is the OID associated with the particular error. If 
            the error was not due to an identifiable OID, then this 
            can be populated with impartial identifiers, in hexadecimal
             or numeric format."                      ?"If the error was due to the value associated
            with the corresponding pktcMtaDevErrorOid, then this 
            contains the value of the OID as interpreted by the MTA in 
            the configuration file provided. If the error was not due 
            to the value of an OID this must be set to an  empty 
            string. This is provided to eliminate errors due to 
            misrepresentation/misinterpretation of data."                      A"This indicates the reason for the error, 
            as per the MTAs interpretation, in human readable form. 
            Example include:
            VALUE NOT IN RANGE, 
            VALUE DOES NOT MATCH TYPE
            UNSUPPORTED VALUE
            LAST 4 BITS MUST BE SET TO ZERO, 
            OUT OF MEMORY - CANNOT STORE etc.
            This MAY also contain vendor specific errors
            for vendor specific OIDS and any proprietary error
            codes/messages which can help diagnose errors
            better, in a manner the vendor deems fit."                      ?"The version of the software currently operating in MTA. Any MTA MUST 
            return a string descriptive of the current software load. 
            This object should use the syntax defined by the individual
             vendor to identify the software version.  The data 
            presented in this object MUST be consistent with the 
            software version information embedded in the sysDescr 
            MIB Object for the MTA."                          _"If operational(1), the device has completed loading and
            processing of configuration parameters and the CMTS has
            completed the Registration exchange.
            If disabled(2) then the device was administratively
            disabled, possibly by being refused network access in the
            configuration file.
            If waitingForDhcpOffer(3) then a DHCP Discover has been
            transmitted and no offer has yet been received.
            If waitingForDhcpResponse(4) then a DHCP Request has been
            transmitted and no response has yet been received.
            If waitingForConfig(5) then a request to the config 
            parameter server has been made and no response received.
            If refusedByCmts(6) then the Registration Request/Response
            exchange with the CMTS failed. " 0"DOCSIS Radio Frequency Interface Specification"                     ?"The IP address of the DHCP server that assigned an IP
            address to this device. Returns 0.0.0.0 if DHCP was not
            used for IP address assignment."                       t"The IP address of the primary DNS server to be used by the
            MTA to resolve the FQDNs and IP addresses."                       ?"The IP address of the Secondary DNS server to be used by the MTAto 
            resolve the FQDNs and IP addresses. Contains 0.0.0.0 if 
            there is no Secondary DNS server specified for the MTA 
            under consideration."                       ?"The URL of the TFTP/HTTP file for downloading 
            provisioning and configuration parameters to this device. 
            Returns NULL if the server address is unknown. Supports 
            both TFTP and HTTP."                      ?"The FQDN of the SNMP V3 entity of the Provisioning Server
            to which the MTA has to communicate in order to receive
            the access method, location and the name of the 
            Configuration file during MTA provisioning. This would 
            also be the entity which caters to the End-point 
            provisioning needs of the MTA and is the destination for 
            all provisioning informs. It may be also used for post-
            provisioning SNMP operations"                      j"Hash of the contents of the config file, calculated and 
            sent to the MTA prior to sending the config file.  If the
            authenticationalgorithm is MD5, the length is 128 bits.  
            If the authenticationalgorithm is SHA-1, the length is 160 
            bits. Hash calculation MUST follow the requirements 
            in [10]. "                       ?"Key used to encrypt/decrypt the config file, sent to the 
            MTA prior to sending the config file.  If the privacy
            algorithm is null, the length is 0.  If the privacy
            algorithm is DES, the length is 64 bits."                      u"This timeout applies only when the Provisioning Server 
            initiated key management (with a Wake Up message) for 
            SNMPv3. It is the period during which the MTA will save a 
            nonce (inside the sequence number field) from the sent 
            out AP Request and wait for the matching AP Reply from 
            the Provisioning Server."                      S"This timeout applies to MTA initiated
            AP-REQ/REP key management exchange with
            Provisioning Server. The maximum timeout is
            the value which may not be exceeded in the
            exponential backoff algorithm. If provided,
            DHCP-Option-122-Sub-option 5 overrides this
            value." $"PacketCable Security Specification"                     ?"Defines the starting value of the timeout for the 
            AP-REQ/REP Backoff and Retry mechanism with exponential 
            timeout. If provided, DHCP-Option-122-Sub-option 5 
            overrides this value." $"PacketCable Security Specification"                     M"This is the mean deviation for the round trip delay 
             timings." $"PacketCable Security Specification"                    ?"This retries number applies to MTA initiated AP-REQ/REP 
            key management exchange with Provisioning Server. This is
            the maximum number of retries before the MTA gives up 
            attempting to establish an SNMPv3 security association with 
            Provisioning Server. If provided,
            DHCP-Option-122-Sub-option 5 overrides this
            value." $"PacketCable Security Specification"                    w"The name of  the associated Provisioning Kerberos Realm 
            acquired during MTA4 ( DHCP Ack ). This is used as an 
            index into the pktcMtaDevRealmTable. When used as an
            the upper case ASCII representation of the associated 
            index, Kerberos Realm name MUST be used by both the 
            Manager(SNMPv3 Entity) and the MTA."                      %"If operational(1), the device has completed loading and 
            processing of initialization parameters.If waiting
            ForSnmpSetInfo(5) then the device is waiting on config file
            download access information. If waiting
            ForTftpAddrResponse(6) then a DNS request has been 
            transmitted and no reply has yet been received. If waiting
            ForConfigFile(7) then a TFTP request has been transmitted 
            and no reply has yet been received or a download is in 
            progress." Z"PacketCable Provisioning Specification,
             PacketCable Security Specification"                     ?"The IP address of the primary DHCP server which would cater to the 
             MTA during its provisioning. Contains 255.255.255.255 if 
             there was no preference given with respect to the DHCP 
             servers for MTAprovisioning."                       ?"The IP address of the Secondary DHCP server 
             which could cater to the MTA during its provisioning. 
             Contains 0.0.0.0 if there is no specific secondary DHCP 
             server to be considered during MTA       provisioning."                       ?"IP address of the Time Server from which to obtain the
            time. Contains 0.0.0.0 if the Time Protocol is not used for
            time synchronization."                          b"ASN.1 DER encoding of the MTA Manufacturer's X.509 
            public-key certificate, called MTA Manufacturer 
            Certificate. It is issued to each MTA manufacturer 
            and is installed into each MTA either in the factory
            or with a code download. The provisioning server cannot 
            update this certificate."                      G"ASN.1 DER encoding of the MTA's X.509 public-key 
            certificate issued by the manufacturer and installed 
            into the embedded-MTA in the factory. This certificate, 
            called MTA Device Certificate, contains the MTA's MAC 
            address. It cannot be updated by the provisioning server."                      "A unique signature created by the MTA for each SNMP 
            Inform or SNMP Trap or SNMP GetResponse message exchanged 
            prior to enabling SNMPv3 security ASN.1 encoded Digital 
            signature in the Cryptographic message syntax (includes
            nonce). "                       ?"Random value generated by the MTA for use in registration
            authorization.  It is for use only in the MTA initialization 
            messages and for MTA configuration file download "                       -"Contains per endpoint security information."                       X"List of security attributes for a single PacketCable 
            endpoint interface."                      "ASN.1 DER encoding of the Telephony Service 
            Provider's X.509 public-key certificate, called 
            Telephony Service Provider Certificate. It serves
            as the root of the intra-domain trust hierarchy. 
            Each MTA is configured with this certificate so 
            that it can authenticate TGSs owned by the same 
            service provider. The provisioning server needs
            the ability to update this certificate in the MTAs 
            via both SNMP and configuration files"                      o"ASN.1 DER encoding of the MTA's X.509 public-key 
            certificate issued by the Service Provider with either 
            the Service Provider CA or a Local System CA. This 
            certificate, called MTA Telephony Certificate, contains 
            the same public key as the MTA Device Certificate issued 
            by the manufacturer. It is used to authenticate the
            identity of the MTA to the TGS (during PKINIT exchanges). 
            The provisioning server needs the ability to update this 
            certificate in the MTAs via both SNMP and configuration 
            files"                       r"Specifies a Kerberos realm (i.e. administrative domain), 
            required for Packet Cable key management."               -- moved to realm table
      ?"Kerberos principal name for the Call Agent.  This 
            information is required in order for the MTA to obtain 
            Call Agent Kerberos tickets.  This principal name does not 
            include the realm, which is specified as a separate field 
            in this configuration file.  A Single Kerberos principal 
            name MAY be shared among several Call Agents."                       ?"The MTA MUST obtain a new Kerberos ticket (with a PKINIT
            exchange) this many minutes before the old ticket expires. 
            The minimum allowable value is 15 mins.  The default is 30 
            mins."               -- moved to realm table
      ?"The Telephony Service Provider CA may delegate the 
            issuance of certificates to a regional Certification 
            Authority called Local System CA (with the corresponding
             Local System Certificate).  This parameter is the ASN.1 
            DER encoding of the Local System Certificate.  It MUST have
             a non-empty value when the MTA Telephony certificate is 
            signed by a Local System CA.  Otherwise, the value MUST 
            be of length 0."                      $"This timeout applies only when the MTA initiated key 
            management.  It is the period during which the MTA will 
            save a nonce (inside the sequence number field) from the 
            sent out AP Request and wait for the matching AP Reply 
            from the CMS." $"PacketCable Security Specification"             -- moved to cms table
      X"This timeout applies only when the CMS initiated key 
             management (with a Wake Up or Rekey message).
             It is the period during which the MTA will 
             save a nonce (inside the sequence number  field) from 
             the sent out AP Request and wait for the matching AP 
             Reply from the CMS." $"PacketCable Security Specification"             <-- changed to adaptive backoff and moved to 
-- cms table
       ;"Contains per endpoint Ticket Granting Server information."               -- Secure Provisioning ECR
       T"List of Tgs attributes for a single packet cable 
            endpoint interface."               -- Secure Provisioning ECR
       s"Index into the TGS table for TGS locations.
            IfType specifies the endpoint, TgsIndex specifies a TGS."               -- Secure Provisioning ECR
      f"Name of the TGS Ticket Granting Server, which is the 
            Kerberos Server.  This parameter is a FQDN or Ipv4 address.
            There may be multiple entries of this type.  The order 
            in which these entries are listed is the priority order 
            in which the MTA will attempt to contact them for this
            endpoint."               -- Secure Provisioning ECR
       ["This object contains the Row Status associated with 
            the pktcMtaDevTgsTable."               -- Secure Provisioning ECR
      9"ASN.1 DER encoding of the IP Telephony Root X.509
            public-key certificate stored in the MTA non-volatile
            memory and updateable with a code download.  This
            certificate is used to validate the initial AS Reply
            from the KDC received during the MTA initialization."                       2"Contains per Kerberos realm security parameters."                       :"List of security parameters for a single Kerberos realm."                       ?"The corresponding  Kerberos Realm name. This is used as 
            an index into pktcMtaDevRealmTable. When used as an index,
            used by both the Manager(SNMPv3 Entity)  and the MTA."                      ?"For the purposes of the key management with an Application
            Server (CMS or Provisioning Server), the MTA MUST obtain a
            new Kerberos ticket (with a PKINIT exchange) this many 
            minutes before the old ticket expires. The minimum 
            allowable value is 15 mins. The default is 30 mins. This 
            parameter MAY also be used with other Kerberized 
            applications."                      "When the MTA implementation uses TGS Request/TGS Reply 
            Kerberos messages for the purpose of the key management 
            with an Application Server (CMS or Provisioning Server), 
            the MTA MUST obtain a new service ticket for the 
            Application Server (with a TGS Request) this many minutes 
            before the old ticket expires. The minimum allowable value 
            is 1 min. The default is 10 mins. This parameter MAY also 
            be used with other Kerberized applications."                       z"The value of the X.500 organization name attribute in the 
            subject name of the Service provider certificate"                      "This timeout applies only when the MTA initiated key 
            management. The maximum timeout is the value which may not 
            be exceeded in the exponential backoff algorithm. If
             provided, DHCP-Option-122-Sub-option 4 overrides this value." $"PacketCable Security Specification"                     ?"Defines the starting value of the timeout for the AS-REQ/REP Backoff
             and  Retry mechanism with exponential timeout. If 
            provided, DHCP-Option-122-Sub-option 4 override this 
            value." Z"PacketCable Security Specification, 
            PacketCable Provisioning Specification"                     ["This is measurement of the mean deviation for the round 
            trip delay timings." $"PacketCable Security Specification"                     ?"This is the maximum number of retries before the MTA 
            gives up attempting to establish a security association. 
            If provided,DHCP-Option-122-Sub-option 4 overrides this 
            value." $"PacketCable Security Specification"                     ]"This object contains the Row Status associated with 
            the pktcMtaDevRealmTable."                       )"Contains per CMS key management policy."                       E"List of key management parameters for a single MTA-CMS 
interface."                      ,"The fully qualified domain name of the CMS. 
            is the index into the pktcMtaDevCmsTable.
            When used as an index, the upper case ASCII
            representation of the associated CMS FQDN
            MUST be used by both the Manager(SNMPv3 Entity)
            and the MTA."                      6"The Kerberos Realm Name of the associated CMS. This is
            the index into the pktcMtaDevRealmTable. 
            When used as an index, the upper case ASCII
            representation of the associated CMS FQDN
            must be used by both the Manager(SNMPv3 Entity)
            and the MTA "                       P"This is the maximum allowable clock skew between the 
            MTA and CMS"                      H"This timeout applies only when the CMS initiated key 
             management(with a Wake Up or Rekey message). It is the 
             period during which the MTA will save a nonce (inside the 
             sequence number field) from the sent out AP Request and 
             wait for the matching AP Reply from the CMS." $"PacketCable Security Specification"                     ?"This timeout applies only when the MTA initiated key. 
             The maximum management timeout is the value which may not
             be exceeded in the exponential backoff algorithm." $"PacketCable Security Specification"                     ?"Defines the starting value of the timeout for the 
            AP-REQ/REP Backoff and Retry mechanism with exponential 
            timeout for CMS." $"PacketCable Security Specification"                     ^"This is the measurement of the mean deviation for the 
           round trip delay timings." $"PacketCable Security Specification"                     }"This is the maximum number of retries before the MTA 
            gives up attempting to establish a security association." $"PacketCable Security Specification"                     ["This object contains the Row Status associated with the 
            pktcMtaDevCmsTable."                      ?"The value of 'true(1)' indicates that IPSEC and IPSEC 
            KeyManagement MUST be used to communicate with the CMS. 
            The value of 'false(2)' indicates that IPSEC Signaling 
            Security is disabled for both the IPSEC Key Management and 
            IPSECprotocol (for the specific CMS)."                       3"Contains per endpoint CMS signaling associations."                       !"List of signaling associations."                       o"The index for the associated CMS.  Valid indices
             are equal to current pktcMtaDevCmsFqdn values."                       ?"The operational status of signaling association.  The 
            meaning of the  status is as follows:
            inactive - signaling is not currently active
            active - signaling is active."                       ?"The administrative status for signaling over the indicated
            security association.  The meaning of the status is as 
            follows:
            inhibit -signaling is not currently allowed
            allow - signaling is allowed."                       l"This object is used for creating and deleting an entry 
            in this table via an element manager."                      j"The object defines a Kerberos Ticket Control Mask that
            instructs an MTA to invalidate the specific application
            server Kerberos Tickets which are locally persisted in
            MTA sNVRAM.  If an MTA does not persist the Kerberos
            Tickets, it MUST ignore setting of this object, and MUST 
            report value 0 when the object is read. The object value 
            is encoded as follows:
            - setting invalidateProvOnReboot (0)  bit to 1 means that 
            an MTA MUST invalidate a Kerberos Application Ticket for 
            the Provisioning Application at the next MTA reboot,
            - setting invalidateAllCmsOnReboot (1) bit to 1 means 
            that an that an MTA MUST invalidate a Kerberos 
            Application Tickets for all CMS(s) currently assigned to 
            the end-points" $"PacketCable Security Specification"                             X"This inform is issued to initiate the PacketCable process 
            provisioning ." "Inform as defined in RFC 1902"               ?"This inform is issued to confirm completion of the 
            PacketCable provisioning process, and indicate the
       completion state." "Inform as defined in RFC 1902"                       P"The compliance statement for devices that implement 
            MTA feature."                   +"Group of objects for PacketCable MTA MIB."                 M"These notifications deal with change in status of 
            MTA Device."                     4"Group of obsolete objects for PacketCable MTA MIB."                        