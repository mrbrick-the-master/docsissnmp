|-- *****************************************************************
-- BRCM-CABLEDATA-SMI.MIB:  Broadcom Corporation
--
-- March 2002, Kevin O'Neal, Thomas Clack
--
-- Copyright (c) 2002 by Broadcom Corporation
-- All rights reserved.
-- 
-- *****************************************************************
--
--**************************************************************************
--                                                                          
--    Copyright 2002 Broadcom Corporation                                   
--    All Rights Reserved                                                   
--    No portions of this material may be reproduced in any form without the
--    written permission of:                                                
--             Broadcom Corporation                                         
--             16251 Laguna Canyon Road                                     
--             Irvine, California  92618                                    
--    All information contained in this document is Broadcom Corporation    
--    company private, proprietary, and trade secret.                       
--                                                                          
--                                                                          
--                                                                          
--**************************************************************************
--    Filename: brcm-cabledata-smi.mib
--    Author:   Kevin O'Neal
--    Creation Date: 15-march-2002
--
--**************************************************************************
--    Description:
--
--		SMI MIB for cableData branch of Broadcom private MIBs
--		
--**************************************************************************
--    Revision History:
--
--**************************************************************************
                                 ?"The Structure of Management Information for the Broadcom
         enterprise dealing with Cable Modems, Cable Modem Termination
         Systems, and related data-over-CATV systems."R"	BANANA-CABLEDATA
                (cableData branch of the 
                Broadcom Assigned Numbers and Naming Authority)
                Broadcom Corporation

        Postal: 4385 River Green Parkway
                Duluth, GA  30096
                USA

           Tel: +1 770 232-0018

        E-mail: banana-cabledata@broadcom.com" "0207310000Z" %"Initial version of this MIB module."               ?"cableDataProducts is the root OBJECT IDENTIFIER from
         which sysObjectID values are assigned.  Actual
         values are defined in BRCM-CABLEDATA-PRODUCTS-MIB."               <"cableDataMgmt is the main subtree for new mib development."               ?"cableDataAgentCapability provides a root OBJECT IDENTIFIER
         from which AGENT-CAPABILITIES values may be assigned,
         for use in the sysORTable."              z"cableDataExperimental provides a root OBJECT IDENTIFIER
         where experimental mibs may be temporarily
         placed.  MIBs are typically only located here as works-in-progress,
         on either the IANA or BRCM development path.
         
         MIBs should never be published under this branch, it
         should only be used internally for development purposes."              "cableDataPrivate provides a root OBJECT IDENTIFIER under which are
         placed objects which are only intended to be used in a manufacturing,
         engineering, or other internal environment.  Objects under this node
         should not be available in a deployed device."                  