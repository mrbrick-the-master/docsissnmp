Y-- *****************************************************************
-- CISCO-SMI.my:  Cisco Enterprise Structure of Management Information
--   
-- April 1994, Jeffrey T. Johnson
--   
-- Copyright (c) 1994-1997, 2001, 2009 by cisco Systems Inc.
-- All rights reserved.
--   
-- ****************************************************************
                             K"The Structure of Management Information for the
        Cisco enterprise." ?"Cisco Systems
            Customer Service

            Postal: 170 West Tasman Drive
            San Jose, CA  95134
            USA

            Tel: +1 800 553-NETS

            E-mail: cs-snmp@cisco.com" "200902030000Z" "200203210000Z" "200105220000Z" "200011012246Z" "200001110000Z" "9704090000Z" "9505160000Z" "9404262000Z" &"Added ciscoSB under otherEnterprises" 2"Added ciscoPKI for PKI policy and extension OIDs" #"Added transport protocol domains." ?"Added ciscoDomains to define new transports.  Also added
        ciscoCpeCIB, which will contain managed objects that
        contribute to the CPE Configuration Information Base (CIB)." J"Added ciscoPolicy, ciscoPolicyAuto, ciscoPIB, and
        ciscoPibToMib." R"Added ciscoPartnerProducts to generate sysObjectID
        for partner platforms" 8"New oid assignments for Cisco REPEATER MIB and others." %"Initial version of this MIB module."               ?"ciscoProducts is the root OBJECT IDENTIFIER from
        which sysObjectID values are assigned.  Actual
        values are defined in CISCO-PRODUCTS-MIB."               1"Subtree beneath which pre-10.2 MIBS were built."               A"Subtree beneath which pre-10.2 experiments were
        placed."               "reserved for pakmon"               9"subtree reserved for use by the Workgroup Business Unit"              ?"otherEnterprises provides a root object identifier
        from which mibs produced by other companies may be
        placed.  mibs produced by other enterprises are
        typicially implemented with the object identifiers
        as defined in the mib, but if the mib is deemed to
        be uncontrolled, we may reroot the mib at this
        subtree in order to have a controlled version."              "ciscoSB provides root Object Identifier for Management
        Information Base for products of Cisco Small Business.
        This includes products rebranded from linksys aquisition.
        MIB numbers under this root are managed and controlled
        by ciscosb_mib@cisco.com."               v"ciscoAgentCapability provides a root object identifier
        from which AGENT-CAPABILITIES values may be assigned."               9"ciscoConfig is the main subtree for configuration mibs."               8"ciscoMgmt is the main subtree for new mib development."              ?"ciscoExperiment provides a root object identifier
        from which experimental mibs may be temporarily
        based.  mibs are typicially based here if they
        fall in one of two categories
        1) are IETF work-in-process mibs which have not
        been assigned a permanent object identifier by
        the IANA.
        2) are cisco work-in-process which has not been
        assigned a permanent object identifier by the
        cisco assigned number authority, typicially because
        the mib is not ready for deployment.

        NOTE WELL:  support for mibs in the ciscoExperiment
        subtree will be deleted when a permanent object
        identifier assignment is made."               ?"ciscoAdmin is reserved for administratively assigned
        OBJECT IDENTIFIERS, i.e. those not associated with MIB
        objects"               p"ciscoProxy OBJECT IDENTIFIERS are used to uniquely name
        party mib records created to proxy for SNMPv1."                       ?"ciscoRptrGroupObjectID OBJECT IDENTIFIERS are used to
        uniquely identify groups of repeater ports for use by the
        SNMP-REPEATER-MIB (RFC 1516) rptrGroupObjectID object."               1"The identity of an unknown repeater port group."               K"The authoritative identity of the Cisco 2505 repeater
        port group."               K"The authoritative identity of the Cisco 2507 repeater
        port group."               K"The authoritative identity of the Cisco 2516 repeater
        port group."               H"The authoritative identity of the wsx5020 repeater
        port group."               ?"Numerous media-specific MIBS have an object, defined as
        an OBJECT IDENTIFIER, which is the identity of the chipset
        realizing the interface.  Cisco-specific chipsets have their 
        OBJECT IDENTIFIERS assigned under this subtree."               _"The identity of the Rev 1 SAINT ethernet chipset
        manufactured for cisco by LSI Logic."               _"The identity of the Rev 2 SAINT ethernet chipset
        manufactured for cisco by LSI Logic."               ]"The identity of the Rev 3 SAINT ethernet chipset
        manufactured for cisco by Plessey."               `"The identity of the Rev 4 SAINT ethernet chipset
        manufactured for cisco by Mitsubishi."               k"ciscoModules provides a root object identifier
        from which MODULE-IDENTITY values may be assigned."               )"subtree reserved for use by Lightstream"               ?"ciscoworks provides a root object identifier beneath
        which mibs applicable to the CiscoWorks family of network
        management products are defined."               v"subtree reserved for use by the former Newport Systems
        Solutions, now a portion of the Access Business Unit."              ?"ciscoPartnerProducts is the root OBJECT IDENTIFIER from
        which partner sysObjectID values may be assigned. Such 
        sysObjectID values are composed of the ciscoPartnerProducts
        prefix, followed by a single identifier that is unique for 
        each partner, followed by the value of sysObjectID of the
        Cisco product from which partner product is derived.  Note
        that the chassisPartner MIB object defines the value of the
        identifier assigned to each partner."               c"ciscoPolicy is the root of the Cisco-assigned OID
        subtree for use with Policy Management."               ?"ciscoPIB is the root of the Cisco-assigned OID
        subtree for assignment to PIB (Policy Information
        Base) modules."               ?"ciscoPolicyAuto is the root of the Cisco-assigned
        OID subtree for OIDs which are automatically assigned
        for use in Policy Management."              ?"ciscoPibToMib is the root of the Cisco-assigned
        OID subtree for MIBs which are algorithmically
        generated/translated from Cisco PIBs with OIDs
        assigned under the ciscoPIB subtree.
        These generated MIBs allow management
        entities (other the current Policy Server) to
        read the downloaded policy.  By convention, for PIB
        'ciscoPIB.x', the generated MIB shall have the
        name 'ciscoPibToMib.x'."               w"ciscoDomains provides a root object identifier from which
        different transport mapping values may be assigned."                   p"The UDP over IPv4 transport domain.  The corresponding
        transport address is of type CiscoTAddressIPv4."               ?"The UDP over IPv6 transport domain.  The corresponding
        transport address is of type CiscoTAddressIPv6 for global IPv6
        addresses and CiscoTAddressIPv6s for scoped IPv6 addresses."               p"The TCP over IPv4 transport domain.  The corresponding
        transport address is of type CiscoTAddressIPv4."               ?"The TCP over IPv6 transport domain.  The corresponding
        transport address is of type CiscoTAddressIPv6 for global IPv6
        addresses and CiscoTAddressIPv6s for scoped IPv6 addresses."               ?"The Posix Local IPC transport domain. The corresponding
        transport address is of type CiscoTAddressLocal.  The Posix
        Local IPC transport domain incorporates the well known UNIX
        domain sockets."               f"The CLNS transport domain.  The corresponding transport
        address is of type CiscoTAddressOSI."               f"The CONS transport domain.  The corresponding transport
        address is of type CiscoTAddressOSI."               e"The DDP transport domain.  The corresponding transport
        address is of type CiscoTAddressNBP."               e"The IPX transport domain.  The corresponding transport
        address is of type CiscoTAddressIPX."               q"The SCTP over IPv4 transport domain.  The corresponding
        transport address is of type CiscoTAddressIPv4." ?"RFC 2960 - Stream Control Transmission Protocol. R. Stewart,
        Q. Xie, K. Morneault, C. Sharp, H. Schwarzbauer, T. Taylor,
        I. Rytina, M. Kalla, L. Zhang, V. Paxson. October 2000."             ?"The SCTP over IPv6 transport domain.  The corresponding
        transport address is of type CiscoTAddressIPv6 for global IPv6
        addresses and CiscoTAddressIPv6s for scoped IPv6 addresses." ?"RFC 2960 - Stream Control Transmission Protocol. R. Stewart,
        Q. Xie, K. Morneault, C. Sharp, H. Schwarzbauer, T. Taylor,
        I. Rytina, M. Kalla, L. Zhang, V. Paxson. October 2000."             ?"ciscoCIB is the root of the Cisco-assigned OID subtree for
        assignment to MIB modules describing managed objects that
        part of the CPE automatic configuration framework."               ?"ciscoCibMmiGroup is the root of the Cisco-assigned OID
        subtree for assignment to MIB modules describing managed
        objects supporting the Modem Management Interface (MMI),
        the interface that facilitates CPE automatic configuration."               ?"ciscoCibStoreGroup is the root of the Cisco-assigned OID
        subtree for assignment to MIB modules describing managed
        objects contributing to the Configuration Information Base
        (CIB)."               u"ciscoPKI is the root of cisco-assigned OID subtree for PKI
        Certificate Policies and Certificate Extensions."                  