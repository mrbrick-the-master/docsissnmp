    
�"A object of this type indicates a set of CM 
            MAC bridge interfaces, encoded as a BITS syntax with a ?1?
            Bit for each interface included in the set.

            Bit position eCM(0) represents a conceptual interface to 
            the internal 'self' host MAC of the eCM itself. All other 
            bit positions K correspond to CM MAC bridge port interface
            index with ifIndex value K. 

            A BITS object is encoded as an OCTET STRING, which may have
            length zero. Bit position 0 is encoded in the most
            significant bit of the first octet, proceeding to 
            bit position 7 in the least significant bit. Bit position 8
            is encoded in the most significant bit of the second octet,
            and so on.

            In a CM, ifIndex value 1 corresponds to the primary CPE 
            interface. In CableHome devices, this interface is assigned
            to the embedded Portal Services (ePS) host interface, which
            provides a portal to the primary physical CPE interface. 
            In many contexts of a DocsL2VpnIfList, a '1' in bit 
            position 1 corresponds to 'any' or 'all' CPE interfaces 
            when the CM contains more than one CPE interface. 

            ifIndex value 2 corresponds to the docsCableMacLayer 
            RF MAC interface. 

            ifIndex values 3 and 4 correspond to the 
            docsCableDownstream and docsCableUpstream interfaces, 
            respectively, which are not separate MAC bridge port 
            interfaces. Bit positions 3 and 4 are unused in this type;
            they must be saved and reported as configured, but 
            otherwise ignored. 

            ifIndex values 5 through 15 are reserved for individual
            CPE interfaces for devices that implement more than one
            CPE interface. In such devices, DocsL2vpnIfList bit 
            position 1 corresponds to the set of all CPE interfaces.
            A CM with more than one CPE interface MAY assign a 
            DocsL2vpnIfList bit position within the range of 5..15 to
            refer to the single primary CPE interface.

            ifIndex value 16 is assigned to any embedded Multimedia 
            Terminal Adapter (eMTA) as defined by PacketCable.

            ifIndex value 17 is assigned to the IP management host 
            interface of an embedded Set Top Box (eSTB). ifIndex value 
            18 is reserved for the DOCSIS Set-top Gateway (DSG) traffic
            delivered to an eSTB. 

            ifIndex values 19 through 31 are
            reserved for future defined embedded Service Application."                                         �"This MIB module defines the namespace organization for the
            CableLabs enterprise OID registry.
 
            Copyright 1999-2008 Cable Television Laboratories, Inc.
            All rights reserved.""Postal: Cable Television Laboratories
                    858 Coal Creek Circle
                    Louisville, Colorado 80027-9750
                    U.S.A.
            Phone:  +1 303-661-9100
            Fax:    +1 303-661-9199
            E-mail: mibs@cablelabs.com" "200803060000Z" "200701191700Z" "200504081700Z" k"Revised Version includes ECN MIB-CLABDEF-N-07.0032-4 and
            published as CL-SP-MIB-CLABDEF-I07." 3"This revision published as CL-SP-MIB-CLABDEF-I06." 3"This revision published as CL-SP-MIB-CLABDEF-I05."       -- March 6, 2008
                                2-- CableLabs OID reserved for security and used to specify errors
-- that can be returned for the Kerberos KDC - Provisioning
-- Server interface, or the MTA-CMS Kerberized IPsec interface, or
-- the MTA-Provisioning Server Kerberized SNMPv3 interface.
-- CableLabs PacketCable Security Specification
  -- CableLabs OID reserved for the PacketCable Electronic
-- Surveillance Protocol (PCESP) between the Delivery Function
-- and Collection Function. This OID is used to define the ASN.1
-- PCESP messages.
-- CableLabs PacketCable Electronic Surveillance Protocol
-- Specification
       �-- PacketCable MIB module defining the basic MIB
-- Objects related to Provisioning, Activation, 
-- Configuration and Management (PACM)
-- Reference:
-- CableLabs PacketCable PACM Specification.
   �-- PacketCable MIB module defining PacketCable
-- textual conventions for describing PacketCable
-- PACM MIB objects.
-- Reference
-- CableLabs PacketCable Provisioning, Activation,
-- Configuration and Management specification
   �-- PacketCable MIB module defining PacketCable
-- PACM MIB Objects related to User Equipment.
-- Reference
-- CableLabs PacketCable Provisioning, Activation,
-- Configuration and Management specification
   �-- PacketCable MIB module defining PacketCable
-- PACM MIB Objects related to Users.
-- Reference
-- CableLabs PacketCable Provisioning, Activation,
-- Configuration and Management specification
   �-- PacketCable MIB module defining the basic MIB
-- Objects related to Service specific definitions
-- Reference:
-- CableLabs PacketCable Service specifications
   �-- PacketCable MIB module defining the basic MIB
-- Objects related to service support definitions, 
-- (independent of PACM or service specific definitions)
-- Reference:
-- CableLabs PacketCable specifications
   �-- PacketCable MIB module defining PacketCable
-- Electronic Surveillance (ES) support MIB Objects.
-- Reference
-- CableLabs PacketCable Electronic Surveillance
-- specification
   �-- PacketCable MIB module defining the basic MIB
-- Objects related to PacketCable E-UE 
-- Provisioning.
-- Reference:
-- CableLabs PacketCable E-UE Provisioning
-- Framework specification
   �-- PacketCable MIB module defining PacketCable
-- E-UE configuration MIB Objects for specific
-- E-UE types, such as the E-DVA.
-- Reference
-- CableLabs PacketCable E-UE Provisioning
-- Framework specification
                 S"The X509 DER-encoded CableLabs Service Provider Root CA
            Certificate." _"CableLabs CableHome Specification;
            CableLabs PacketCable Security Specification."                     9"The X509 DER-encoded CableLabs CVC Root CA Certificate." _"CableLabs CableHome Specification;
            CableLabs PacketCable Security Specification."                     4"The X509 DER-encoded CableLabs CVC CA Certificate." _"CableLabs CableHome Specification;
            CableLabs PacketCable Security Specification."                     4"The X509 DER-encoded Manufacturer CVC Certificate." _"CableLabs CableHome Specification;
            CableLabs PacketCable Security Specification."                     3"The X509 DER-encoded Manufacturer CA Certificate." _"CableLabs CableHome Specification;
            CableLabs PacketCable Security Specification."                           �-- CableLabs cross project MIB module defining the basic management
-- objects for the configuration and monitoring of the battery
-- backup and UPS functionality for CableLabs compliant devices.
   �-- This CableLabs cross project MIB module provides
-- management objects for the management of fiber 
-- nodes in the Cable plant    
-- Reference: 
-- CableLabs DOCSIS 3.0 OSSI Specification.
    