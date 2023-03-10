                                      f"This MIB module defines the basic management object 
           for the Multimedia Terminal Adapter devices compliant 
           with PacketCable and IPCablecom requirements.  
    
           Copyright (C) The Internet Society (2003). This version of 
           this MIB module is part of RFC yyyy; see the RFC itself for 
           full legal notices."?"Eugene Nechamkin  
            Broadcom Corporation,  
            200-13711 International Place, 
            Richmond, BC, V6V 2Z8  
            CANADA 
            Phone:  +1 604 233 8500 
            Fax:    +1 604 233 8501 
            Email:  enechamkin@broadcom.com  
    
            Jean-Francois Mule  
            Cable Television Laboratories, Inc.  
            400 Centennial Parkway,  
            Louisville, CO 80027-1266 
            U.S.A.  
            Phone: +1 303 661 9100  
 

 
 
            Fax:   +1 303 661 9199 
            Email: jf.mule@cablelabs.com 
    
       IETF IPCDN Working Group  
            General Discussion: ipcdn@ietf.org  
            Subscribe: http://www.ietf.org/mailman/listinfo/ipcdn  
            Archive: ftp://ftp.ietf.org/ietf-mail-archive/ipcdn  
            Co-Chair: Jean-Francois Mule, jf.mule@cablelabs.com 
            Co-Chair: Richard Woundy, Richard_Woundy@cable.comcast.com" "200309050000Z" )"Initial version, published as RFC yyyy."       -- September 05, 2003 
     E-- RFC Ed: replace yyyy with actual RFC number and remove this note 
        ?" This object controls the MTA software reset. 
             Reading this object always returns 'false'. Setting this 
             object to 'true' causes the device to reset immediately  
             and the following actions occur:  
                1. All connections (if present) are flushed locally.  
                2. All current actions such as ringing immediately   
                   terminate.   
                3. Requests for signaling notifications such as  
                   notification based on digit map recognition are 
                   flushed.   
                4. All endpoints are disabled.   
                5. The provisioning flow is started at step MTA-1." 5" PacketCable MTA Device Provisioning Specification."                     V" This object identifies the manufacturer's serial number 
             for this MTA."                      ?" This object identifies the software version currently 
             operating in the MTA. 
             An MTA MUST return a string descriptive of the current  
             software load. This object should use the syntax  
             defined by the individual vendor to identify the software
             version.  The data presented in this object MUST be  
             consistent with the software version information contained
             in the 'sysDescr' MIB object of the MTA."                       \" This object contains the Fully Qualified Domain Name for 
 
 

 
 
             this MTA."                       T" This object contains the number of physical endpoints for 
             this MTA."                       ?" This object controls the activation of the MTA voice 
             services. If this object is set to 'true', the voice 
             service is enabled. Otherwise, it is disabled."                       ?" This object provides the MTA device type identifier. The 
             value of this object must be a copy of the DHCP option 60 
             value exchanged between the MTA and the DHCP server." w" RFC 2132, DHCP Options and BOOTP Vendor Extensions; 
             PacketCable MTA Device Provisioning Specification."                    g" This object indicates the completion state of the MTA  
             device provisioning process. The object value is sent as  
             part of the final SNMP INFORM (step 25 of the MTA  
             provisioning process). Refer to the MTA Device  
             Provisioning Specification for the definition of  
             the provisioning states." 5" PacketCable MTA Device Provisioning Specification."                     w" This object indicates whether the HTTP protocol is  
             supported for the MTA configuration file transfer."                      " This object enables setting the duration of the  
             provisioning timeout timer. The timer covers the  
             provisioning sequence from step MTA-1 to step MTA-23. 
             The value is in minutes and setting the timer to '0'  
             disables this timer." 5" PacketCable MTA Device Provisioning Specification."                    /" This table contains the list of configuration errors or  
             warnings the  MTA encountered when parsing the 
             configuration file it received from the Provisioning  
             Server.  
             For each error, an entry is created in this table 
             containing the configuration parameters the MTA rejected 
             and the associated reason (e.g. wrong or unknown OID,  
             inappropriate object values, etc.). If the MTA  
             did not report a provisioning state of 'pass(1)' in 
 
 

 
 
             the pktcMtaDevProvisioningState object, this table MUST be 
             populated for each error or warning instance. Even if 
             different parameters share the same error type (e.g., all 
             realm name configuration parameters are invalid), all 
             observed errors or warnings must be reported as  
             different instances. Errors are placed into the table in  
             no particular order. The table MUST be cleared each time  
             the MTA reboots." 5" PacketCable MTA Device Provisioning Specification."                     ?" This entry contains the necessary information the MTA MUST 
             attempt to provide in case of configuration file errors or 
             warnings."                       ?" This object is the index of the MTA configuration error  
             table. It is an integer value which starts at value '1' 
             and is incremented for each encountered configuration  
             file error or warning."                      ?" This object contains a human readable representation 
             (character string) of the OID corresponding to the 
 
 

 
 
             configuration file parameter that caused the particular 
             error. 
             For example, if the value of the pktcMtaDevEnabled object 
             in the configuration file caused an error, then this 
             object instance will contain the human readable string of 
             '.1.3.6.1.2.1.XXX.1.1.6.0'. 
       ************************************************************ 
       * NOTES TO RFC Editor (to be removed prior to publication) * 
       *                                                          * 
       * Please replace XXX with the IANA-assigned number under   * 
       * mib-2.                                                   * 
       *                                                          *  
       ************************************************************ 
    
             If the MTA generated an error because it was not able  
             to recognize a particular OID, then this object  
             instance would contain an empty value (zero-length 
             string). 
             For example, if the value of an OID in the configuration  
             file was interpreted by the MTA as being .1.2.3.4.5, and  
             the MTA was not able to recognize this OID as a valid one, 
             this object instance will contain a zero-length string."                      ?" This object contains the value of the OID corresponding to 
             the configuration file parameter that caused the error. 
             If the MTA cannot recognize the OID of the 
             configuration parameter causing the error, then this 
             object instance contains the OID itself as interpreted 
             by the MTA in human readable representation. 
             If the MTA can recognize the OID but generate an error due 
             to a wrong value of the parameter, then the object 
             instance contains the erroneous value of the parameter as 
             read from the configuration file. 
             In both cases, the value of this object must be 
             represented in human readable form as a character string. 
             For example, if the value of the pktcMtaDevEnabled object 
             in the  configuration file was 3 (invalid value), then the 
             pktcMtaDevErrorValue object instance will contain the 
             human readable (string) representation of value '3'. 
             Similarly, if the OID in the configuration file has been 
             interpreted by the MTA as being .1.2.3.4.5, and the MTA 
             cannot recognize this OID as a valid one, then this 
             pktcMtaDevErrorValue object instance will contain human 
 
 

 
 
             readable (string) representation of value '.1.2.3.4.5'"                      F" This object indicates the reason for the error or warning, 
             as per the MTA's interpretation, in human readable form.   
             Example of possible reason values are: 
             'VALUE NOT IN RANGE', 'VALUE DOES NOT MATCH TYPE', 
             'UNSUPPORTED VALUE', 'LAST 4 BITS MUST BE SET TO ZERO', 
             'OUT OF MEMORY - CANNOT STORE', etc. 
             This object may also contain vendor specific errors for 
             private vendor OIDs and any proprietary error codes or  
             messages which can help diagnose configuration errors."                           q" This object contains the Internet address type for the 
             PacketCable servers specified in MTA MIB."                      ?" This object contains the Internet Address of the primary 
             DHCP server the MTA uses during provisioning. 
             The type of this address is determined by the value of 
             the pktcMtaDevServerAddressType object.   
             When the latter has the value 'ipv4(1)', this object  
             contains the dotted IP address of the primary DHCP 
             server. It is provided by the CM to the MTA via the DHCP  
             option code 122 sub-option 1 as defined in RFC 3495.   
              
 
 

 
 
             The behavior of this object when the value of 
             pktcMtaDevServerAddressType is other than 'ipv4(1)' 
             is not presently specified, but may be specified 
             in future versions of this MIB module. 
             If this object is of value '0.0.0.0', the MTA MUST stop  
             all provisioning attempts as well as all other activities. 
             If this object is of value '255.255.255.255', it means 
             there was no preference given for the primary DHCP  
             server, and, the MTA must follow the logic of RFC2131 and
             the value of DHCP option 122 sub-option 2 must be  
             ignored." ?" PacketCable MTA Device Provisioning Specification; 
             RFC 2131, Dynamic Host Configuration Protocol; 
             RFC 3495, DHCP Option for CableLabs Client Configuration."                    ?" This object contains the Internet Address of the secondary
             DHCP server the MTA uses during provisioning. 
             The type of this address is determined by the value of 
             the pktcMtaDevServerAddressType object.   
             When the latter has the value 'ipv4(1)', this object  
             contains the dotted IP address of the secondary DHCP  
             server. It is provided by the CM to the MTA via the DHCP
             option code 122 sub-option 2 as defined in RFC 3495. 
    
             The behavior of this object when the value of 
             pktcMtaDevServerAddressType is other than 'ipv4(1)' 
             is not presently specified, but may be specified 
             in future versions of this MIB module. 
             If there was no secondary DHCP server provided in DHCP  
             Option 122 sub-option 2, this object must return the value
             '0.0.0.0'." }" PacketCable MTA Device Provisioning Specification; 
             RFC 3495, DHCP Option for CableLabs Client Configuration."                    ?" This object contains the IP Address of the primary 
 
 

 
 
             DNS server to be used by the MTA. The type of this address
             is determined by the value of the  
             pktcMtaDevServerAddressType object.   
             When the latter has the value 'ipv4(1)', this object  
             contains the dotted IP address of the primary DNS server.  
             As defined in RFC 2132, PacketCable compliant MTAs receive 
             the IP addresses of the DNS Servers in the DHCP option 6. 
             The behavior of this object when the value of 
             pktcMtaDevServerAddressType is other than 'ipv4(1)' 
             is not presently specified, but may be specified 
             in future versions of this MIB module." w" PacketCable MTA Device Provisioning Specification; 
             RFC 2132, DHCP Options and BOOTP Vendor Extensions."                    " This object contains the IP Address of the secondary 
             DNS server to be used by the MTA. The type of this address
             is determined by the value of the 
             pktcMtaDevServerAddressType object.   
             When the latter has the value 'ipv4(1)', this object  
             contains the dotted IP address of the secondary DNS  
             server. As defined in RFC 2132, PacketCable compliant MTAs
             receive the IP addresses of the DNS Servers in the DHCP  
             option 6. 
             The behavior of this object when the value of 
             pktcMtaDevServerAddressType is other than 'ipv4(1)' 
             is not presently specified, but may be specified 
             in future versions of this MIB module." w" PacketCable MTA Device Provisioning Specification; 
             RFC 2132, DHCP Options and BOOTP Vendor Extensions."                    ?" This object contains the Internet Address of the Time  
             Server used by a S-MTA for Time Synchronization. The type 
             of this address is determined by the value of the  
             pktcMtaDevServerAddressType object. 

 
 

 
 
             When the latter has the value 'ipv4(1)', this object  
             contains the IP address of the Time Server used for Time
             Synchronization. 
             In the case of a S-MTA, this object must be  
             populated with a value other than '0.0.0.0' as obtained  
             from DHCP Option 4. The protocol by which the time of day
             MUST be retrieved is defined in RFC 868. 
             In the case of an E-MTA, this object must  
             contain a value of '0.0.0.0' if the address type is  
             'ipv4(1)' since an E-MTA does not use the Time Protocol  
             for time synchronization (an E-MTA uses the time retrieved
             by the DOCSIS cable modem). 
             The behavior of this object when the value of  
             pktcMtaDevServerAddressType is other than 'ipv4(1)' is not
             presently specified, but may be specified in future  
             versions of this MIB module." ?" RFC 868, Time Protocol; 
             RFC 2131, Dynamic Host Configuration Protocol; 
             RFC 2132, DHCP Options and BOOTP Vendor Extensions."                    G" This object contains the configuration file name set by 
             Provisioning Server. The MTA MUST support the TFTP access
             method for configuration file download, and MAY support  
             the HTTP access method. 
             In the case of the TFTP access method, the filename MUST 
             be encoded using the following naming format: 
                     tftp://<host>/mta-configfilename 
             where the <host> is the IPv4 address or the FQDN of the 
             TFTP access server. 
             In the case of HTTP access method, the filename MUST be 
             URL-encoded using the following naming format: 
                     http://<host>/ mta-configfilename 
             where the <host> is the IPv4 address or the FQDN of the  
             HTTP access server. 
             This object MUST return a zero-length string if the server
             address is unknown. 
             The following three objects (pktcMtaDevConfigFile,  
             pktcMtaDevConfigKey and pktcMtaDevConfigHash) MUST be 
             SET in one SNMP PDU."                      ," This object contains the FQDN of the SNMP entity of the 
             Provisioning Server. It is the server the MTA communicates
             with in order to receive the access method, location and  
             the name of the configuration file. The SNMP entity is  
             also the destination entity for all the provisioning 
             notifications. It may be used for post-provisioning SNMP 
             operations. During the provisioning phase, this SNMP 
             entity FQDN is supplied to the MTA via the DHCP option 122 
             sub-option 3 as defined in RFC 3495. If all the valid DHCP
             OFFER messages contain a DHCP option 122 sub-option 3 of  
             value '0.0.0.0', the MTA must stop provisioning and shut   
             down until the modem is reset." <" RFC 3495, DHCP Option for CableLabs Client Configuration."                    W" This object contains the hash value of the content of the 
             configuration file, calculated and sent to the MTA prior 
          to sending the configuration file. The authentication 
             algorithm used for calculating hash is SHA-1, and the 
                length of hash is 160 bits. The hash calculation MUST 
             follow the requirements of the PacketCable Security 
             Specification. 
             The following three objects (pktcMtaDevConfigFile,  
             pktcMtaDevConfigKey and pktcMtaDevConfigHash) MUST be 
             SET in one SNMP PDU." g" PacketCable MTA Device Provisioning Specification; 
             PacketCable Security Specification."                    ?" This object contains the key used to encrypt and decrypt 
             the configuration file. It is sent to the MTA prior to 
             sending the configuration file. If the privacy 

 
 

 
 
             algorithm is null, the length is 0. If the privacy 
             algorithm is DES, the length is 64 bits. 
             The following three objects (pktcMtaDevConfigFile,  
             pktcMtaDevConfigKey and pktcMtaDevConfigHash) MUST be 
             SET in one SNMP PDU."                      ?" This object defines a Kerberos Key Management timer on the
             MTA. It is the time period during which the MTA saves the
             nonce and Server Kerberos Principal Identifier to match an
             AP Request and its associated AP Reply 
             response from the Provisioning Server.
             After the timeout has been exceeded, the client discards
             this (nonce, Server Kerberos Principal Identifier) pair,
             after which it will no longer accept a matching AP Reply. 
             This timer only applies when the Provisioning Server
             initiated key management for SNMPv3 (with a
             Wake Up message)."                      ?" This object defines the timeout value that applies to  
             a MTA-initiated AP-REQ/REP key management exchange with  
             the Provisioning Server. It is the maximum timeout value 
             and it may not be exceeded in the exponential back-off  
             algorithm. If the DHCP option code 122 sub-option 5 is 
             provided to the MTA, it overwrites this value." &" PacketCable Security Specification."                    " This object defines the starting value of the timeout for 
             the AP-REQ/REP back-off and retry mechanism with  
             exponential timeout. If the DHCP option code 122  
             sub-option 5 is provided to the MTA, it overwrites this 
             value." &" PacketCable Security Specification."                    ?" This object contains a retry counter that applies to 

 
 

 
 
             a MTA-initiated AP-REQ/REP key management exchange with  
             the Provisioning Server. It is the maximum number of 
             retries before the MTA stops attempting to establish a 
             Security Association with Provisioning Server.  
             If the DHCP option code 122 sub-option 5 is provided to 
             the MTA, it overwrites this value." &" PacketCable Security Specification."                    2" This object contains the name of the associated  
             provisioning Kerberos realm acquired during the MTA4   
             provisioning step (DHCP Ack). This object value is used as
             an index into the pktcMtaDevRealmTable. The upper case  
             ASCII representation of the associated Kerberos realm name
             MUST be used by both the Manager (SNMP entity) and the 
             MTA. 
             The Kerberos realm name for the Provisioning Server is 
             supplied to the MTA via DHCP option code 122 sub-option 6
             as defined in RFC 3495. The value of the Kerberos realm  
             name for the Provisioning Server supplied in the MTA 
             configuration file must match the value supplied in the
             DHCP option code 122 sub-option 6." }" PacketCable MTA Device Provisioning Specification; 
             RFC 3495, DHCP Option for CableLabs Client Configuration."                    N" This object defines the MTA provisioning state. 
             If the state is: 
               'operational(1)', the device has completed the loading 
                and processing of the initialization parameters. 
 
 

 
 
    
               'waitingForSnmpSetInfo(2)', the device is waiting on  
                its configuration file download access information.  
    
               'waitingForTftpAddrResponse(3)', the device has sent a 
                DNS request to resolve the server providing the   
                configuration file and it is awaiting for a response. 
    
               'waitingForConfigFile(4)', the device has sent a  
               request via TFTP or HTTP for the download of its  
               configuration file and it is awaiting for a response or  
               the file download is in progress." i" PacketCable MTA Device Provisioning Specification,   
             PacketCable Security Specification."                        " This object contains the MTA Manufacturer Certificate. 
             The object value must be the ASN.1 DER encoding of the MTA 
             manufacturer's X.509 public key certificate. The MTA 
             Manufacturer Certificate is issued to each MTA 
             manufacturer and is installed into each MTA at the time of 
             manufacture or with a secure code download. The specific 
             requirements related to this certificate are defined in 
             the PacketCable or IPCablecom Security specifications." &" PacketCable Security Specification."                    (" This object contains the MTA Device Certificate.  
             The object value must be the ASN.1 DER encoding of the  
             MTA's X.509 public-key certificate issued by the  
             manufacturer and installed into the MTA at the time of  
             manufacture or with a secure code download. 
 
 

 
 
             This certificate contains the MTA MAC address. The  
             specific requirements related to this certificate are  
             defined in the PacketCable or IPCablecom Security 
             specifications." &" PacketCable Security Specification."                    ?" This object contains a correlation ID, an arbitrary value 
             generated by the MTA that will be exchanged as part of the
             device capability data to the Provisioning Application. 
             This random value is used as an identifier to correlate  
             related events in the MTA provisioning sequence. 
             This value is intended for use only during the MTA 
             initialization and configuration file download." 5" PacketCable MTA Device Provisioning Specification."                    ?" This object contains the telephony Service Provider Root  
             certificate. The object value is the ASN.1 DER encoding of
             the IP Telephony Service Provider Root X.509 public key  
             certificate. This certification is stored in the MTA  
             non-volatile memory and can be updated with a secure code 
             download. This certificate is used to validate the initial
             AS Reply received by the MTA from the KDC during the MTA  
             initialization. The specific requirements related to this  
             certificate are defined in the PacketCable or IPCablecom  
             Security specifications." &" PacketCable Security Specification."                    ?" This object contains the index number of the first 
             available entry in the realm table (pktcMtaDevRealmTable).
             If all the entries in the realm table have been assigned, 
             this object contains the value of zero. 
             A management station should create new entries in the 
             realm table using the following procedure:  
               first, issue a management protocol retrieval operation  
             to determine the value of the first available index in the
             realm table (pktcMtaDevRealmAvailSlot);  
               second, issue a management protocol SET operation 
             to create an instance of the pktcMtaDevRealmStatus 
             object by setting its value to 'createAndWait(5)'.  
               third, if the SET operation succeeded, continue  
             modifying the object instances corresponding to the newly 
             created conceptual row, without fear of collision with 
             other management stations. When all necessary conceptual 
             columns of the row are properly populated (via SET  
             operations or default values), the management station may  
             SET the pktcMtaDevRealmStatus object to 'active(1)'."                      c" This object contains the realm table. 
             The CMS table (pktcMtaDevCmsTable) and the realm table 
             (pktcMtaDevRealmTable) are used for managing the MTA-CMS  
             Security Associations. The realm table defines the  
             Kerberos realms for the Application Servers (CMSes & the  
             Provisioning Server)."                       ?" This table entry object lists the MTA security parameters  
             for a single Kerberos realm. The conceptual rows MUST NOT 
             persist across MTA reboots."                       -" This object defines the realm table index."                      ~" This object identifies the Kerberos realm name in all  
             capitals. The MTA MUST prohibit the instantiation of any 
             two rows with identical Kerberos realm names. The MTA MUST
             also verify that any search operation involving Kerberos  
             realm names is done using the upper case ASCII  
             representation of the characters."                      ?" This object contains the PKINIT Grace Period. For the  
            purpose of key management with Application Servers (CMSes 
            or the Provisioning Server), the MTA must utilize the  
            PKINIT exchange to obtain Application Server tickets. The  
            MTA may utilize the PKINIT exchange to obtain Ticket  
            Granting Tickets (TGTs), which are then used to obtain  
            Application Server tickets in a TGS exchange. 
            The PKINIT exchange occurs based on the current Ticket  
            Expiration Time (TicketEXP) and on the PKINIT Grace Period  
            (PKINITGP). The MTA MUST initiate the PKINIT exchange at  
            the time: TicketEXP q PKINITGP." &" PacketCable Security Specification."                    A" This object contains the Ticket Granting Server Grace 
          Period (TGSGP). The Ticket Granting Server (TGS) Request /  
             Reply exchange may be performed by the MTA on-demand q  
             whenever an Application Server ticket is needed to 
             establish security parameters. If the MTA possesses a  
             ticket that corresponds to the Provisioning Server or a  
             CMS that currently exists in the CMS table, the MTA MUST  
             initiate the TGS Request / Reply exchange at the time:  
             TicketEXP q TGSGP." &" PacketCable Security Specification."                     ?" This object contains the X.500 organization name attribute
             as defined in the subject name of the service provider  
             certificate. The value of the organization name includes 
             the prefix 'O='." &" PacketCable Security Specification."                    D" This object specifies the maximum time the MTA will  
             attempt to perform the exponential back-off algorithm.  
             This timer only applies when the MTA initiated key  
             management. If the DHCP option code 122 sub-option 4 is  
             provided to the MTA, it overwrites this value. " &" PacketCable Security Specification."                    ?" This object specifies the initial timeout value  
             for the AS-REQ/AS-REP exponential back-off and retry  
             mechanism. If the DHCP option code 122 sub-option 4 is 
             provided to the MTA, it overwrites this value.  
             This value should account for the average roundtrip  
             time between the MTA and the KDC as well as the 
 
 

 
 
             processing delay on the KDC." &" PacketCable Security Specification."                     v" This object specifies the maximum number of retries the 
             MTA attempts to obtain a ticket from the KDC." &" PacketCable Security Specification."                    ?" This object defines the row status of this realm in the 
             realm table (pktcMtaDevRealmTable). 
    
             An entry in this table is not qualified for activation 
             until the object instances of all corresponding columns  
             have been initialized, either by default values, or via 
             explicit SET operations. Until all object instances in  
             this row are initialized, the status value for this realm
             must be 'notReady(3)'. 
             In particular, two columnar objects must be explicitly 
             SET: the realm name (pktcMtaDevRealmName) and the  
             organization name (pktcMtaDevRealmOrgName). Once these 2  
             objects have been set and the row status is SET to  
             'active(1)', the MTA MUST NOT allow any modification of  
             these 2 object values. 
             The value of this object has no effect on whether other  
             columnar objects in this row can be modified."                      ?" This object contains the index number of the first 
             available entry in the CMS table (pktcMtaDevCmsTable). 
             If all the entries in the CMS table have been assigned,  
             this object contains the value of zero. 
             A management station should create new entries in the 
             CMS table using the following procedure:  
               first, issue a management protocol retrieval operation  
             to determine the value of the first available index in the
             CMS table (pktcMtaDevCmsAvailSlot);  
               second, issue a management protocol SET operation 
             to create an instance of the pktcMtaDevCmsStatus 
             object by setting its value to 'createAndWait(5)'.  
               third, if the SET operation succeeded, continue  
             modifying the object instances corresponding to the newly 
             created conceptual row, without fear of collision with 
             other management stations. When all necessary conceptual 
             columns of the row are properly populated (via SET  
             operations or default values), the management station may  
             SET the pktcMtaDevCmsStatus object to 'active(1)'."                      ?" This object defines the CMS table. 
             The CMS table (pktcMtaDevCmsTable) and the realm table 
             (pktcMtaDevRealmTable) are used for managing security  
             between the MTA and CMSes. Each CMS table entry defines  
             a CMS the managed MTA is allowed to communicate with  
             and contains security parameters for key management with  
             that CMS."                       ?" This table entry object lists the MTA key management  
             parameters used when establishing Security Associations  
             with a CMS. The conceptual rows MUST NOT persist across  
             MTA reboots."                       +" This object defines the CMS table index."                      " This object specifies the CMS FQDN. The MTA must  
             prohibit the instantiation of any two rows with identical  
             FQDNs. The MTA must also verify that any search and/or  
             comparison operation involving a CMS FQDN is case  
             insensitive."                      7" This object identifies the Kerberos realm name in upper  
             case characters associated with the CMS defined in this  
             conceptual row. The object value is a reference  
             point to the corresponding Kerberos realm name in the 
             realm table (pktcMtaDevRealmtable)."                       x" This object specifies the maximum allowable clock skew 
             between the MTA and the CMS defined in this row."                      ?" This object defines a Kerberos Key Management timer on the
             MTA. It is the time period during which the MTA saves the  
             nonce and Server Kerberos Principal Identifier to match an 
             AP Request and its associated AP Reply response from the  
             CMS. This timer only applies when the CMS initiated key  
             management (with a Wake Up message or a Rekey message)." &" PacketCable Security Specification."                     ?" This object defines the timeout value that only applies 
             to a MTA-initiated key management exchange. It is the  
             maximum timeout and it may not be exceeded in the  
             exponential back-off algorithm." &" PacketCable Security Specification."                     ?" This object defines the starting value of the timeout  
             for a MTA-initiated key management. It should account for
             the average roundtrip time between the MTA and the CMS and
             the processing time on the CMS." &" PacketCable Security Specification."                     ?" This object contains the maximum number of retries before
             the MTA stops attempting to establish a Security  
             Association with the CMS." &" PacketCable Security Specification."                    K" This object specifies the MTA IPSec control flag. 
             If the object value is 'true', the MTA must use Kerberos   
             Key Management and IPsec to communicate with this CMS. If  
             it is 'false', IPSec Signaling Security and Kerberos key  
             management are disabled for this specific CMS."                      ?" This object defines the row status associated with this 
             particular CMS in the CMS table (pktcMtaDevCmsTable). 
    
             An entry in this table is not qualified for activation  
             until the object instances of all corresponding columns  
             have been initialized, either by default values, or via  
             explicit SET operations. Until all object instances in  
             this row are initialized, the status value for this realm  
             must be 'notReady(3)'. 
             In particular, two columnar objects must be SET: the 
             CMS FQDN (pktcMtaDevCmsFqdn) and the Kerberos realm name  
             (pktcMtaDevCmsKerbRealmName). Once these 2 objects have  
             been set and the row status is SET to 'active(1)', the MTA
             MUST NOT allow any modification of these 2 object values. 
             The value of this object has no effect on 
             whether other columnar objects in this row can be  
             modified."                      3" This object defines a Kerberos Ticket Control Mask that  
             instructs the MTA to invalidate the specific Application 
             Server Kerberos ticket(s) that are stored locally in the 
             MTA NVRAM (non-volatile or persistent memory).  
             If the MTA does not store Kerberos tickets in NVRAM, it  
             MUST ignore setting of this object, and MUST report a BITS
             value of zero when the object is read.  
             If the MTA supports Kerberos tickets storage in NVRAM, the 
             object value is encoded as follows: 
             - setting the invalidateProvOnReboot bit (bit 0) to 1  
               means that the MTA MUST invalidate the Kerberos  
               Application Ticket(s) for the Provisioning Application  
               at the next MTA reboot, 
             - setting the invalidateAllCmsOnReboot bit (bit 1) to 1  
               means that the MTA MUST invalidate the Kerberos  
               Application Ticket(s) for all CMSes currently assigned  
               to the MTA endpoints." %"PacketCable Security Specification."                            ?" This inform is issued by the MTA to indicate the start of  
             the PacketCable provisioning process.  
             It contains the system description, the current software  
             version, the MTA device type identifier, the MTA MAC  
             address (obtained in the MTA ifTable in the ifPhysAddress  
             object that corresponds to the ifIndex 1) and a  
             correlation ID."                 ?" This inform is issued by the MTA to confirm the completion
             of the PacketCable provisioning process, and to report  
             its provisioning completion status."                        l" The compliance statement for MTA devices that implement 
             PacketCable or IPCablecom requirements.  
              
             This compliance statement applies to MTA implementations 
             that support PacketCable 1.x or IPCablecom requirements,  
             which are not IPv6-capable at the time of this  
             RFC publication."   ?" Support for address types other than 'ipv4(1)'  
                     is not presently specified and therefore, is not  
 
 

 
 
                     required. It may be defined in future versions of  
                     this MIB module."    ?--  ************************************************************ 
--  * NOTES TO RFC Editor (to be removed prior to publication) * 
--  *                                                          * 
--  * Please replace RFCyyyy with this RFC number and remove   * 
--  * the note.                                                * 
--  ************************************************************ 
           e" A collection of objects for managing PacketCable or  
             IPCablecom MTA implementations."                 c" A collection of notifications dealing with the change of  
             MTA provisioning status."                                                    