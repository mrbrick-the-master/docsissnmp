                              "The MIB for Message Processing and Dispatching

                     Copyright (C) The Internet Society (2002). This
                     version of this MIB module is part of RFC 3412;
                     see the RFC itself for full legal notices.
                    "?"WG-EMail:   snmpv3@lists.tislabs.com
                     Subscribe:  snmpv3-request@lists.tislabs.com

                     Co-Chair:   Russ Mundy
                                 Network Associates Laboratories
                     postal:     15204 Omega Drive, Suite 300
                                 Rockville, MD 20850-4601
                                 USA
                     EMail:      mundy@tislabs.com
                     phone:      +1 301-947-7107

                     Co-Chair &
                     Co-editor:  David Harrington
                                 Enterasys Networks
                     postal:     35 Industrial Way
                                 P. O. Box 5005
                                 Rochester NH 03866-5005
                                 USA
                     EMail:      dbh@enterasys.com
                     phone:      +1 603-337-2614

                     Co-editor:  Jeffrey Case
                                 SNMP Research, Inc.
                     postal:     3001 Kimberlin Heights Road
                                 Knoxville, TN 37920-9716
                                 USA
                     EMail:      case@snmp.com
                     phone:      +1 423-573-1434

                     Co-editor:  Randy Presuhn
                                 BMC Software, Inc.
                     postal:     2141 North First Street
                                 San Jose, CA 95131
                                 USA
                     EMail:      randy_presuhn@bmc.com
                     phone:      +1 408-546-1006

                     Co-editor:  Bert Wijnen
                                 Lucent Technologies
                     postal:     Schagen 33
                                 3461 GL Linschoten
                                 Netherlands
                     EMail:      bwijnen@lucent.com
                     phone:      +31 348-680-485
                    " "200210140000Z" "199905041636Z" "199709300000Z" +"Updated addresses, published as RFC 3412." +"Updated addresses, published as RFC 2572." *"Original version, published as RFC 2272."                           ?"The total number of packets received by the SNMP
                    engine which were dropped because they referenced a
                    securityModel that was not known to or supported by
                    the SNMP engine.
                   "                       ?"The total number of packets received by the SNMP
                    engine which were dropped because there were invalid
                    or inconsistent components in the SNMP message.
                   "                      ?"The total number of packets received by the SNMP
                    engine which were dropped because the PDU contained
                    in the packet could not be passed to an application
                    responsible for handling the pduType, e.g. no SNMP
                    application had registered for the proper
                    combination of the contextEngineID and the pduType.
                   "                               x"The compliance statement for SNMP entities which
                    implement the SNMP-MPD-MIB.
                   "                   ?"A collection of objects providing for remote
                    monitoring of the SNMP Message Processing and
                    Dispatching process.
                   "                    