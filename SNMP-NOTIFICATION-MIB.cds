                                                                  ?"This MIB module defines MIB objects which provide
            mechanisms to remotely configure the parameters
            used by an SNMP entity for the generation of
            notifications.

            Copyright (C) The Internet Society (2002). This
            version of this MIB module is part of RFC 3413;
            see the RFC itself for full legal notices.
           "?"WG-email:   snmpv3@lists.tislabs.com
            Subscribe:  majordomo@lists.tislabs.com
                        In message body:  subscribe snmpv3

            Co-Chair:   Russ Mundy
                        Network Associates Laboratories
            Postal:     15204 Omega Drive, Suite 300
                        Rockville, MD 20850-4601
                        USA
            EMail:      mundy@tislabs.com
            Phone:      +1 301-947-7107

            Co-Chair:   David Harrington
                        Enterasys Networks
            Postal:     35 Industrial Way
                        P. O. Box 5004
                        Rochester, New Hampshire 03866-5005
                        USA
            EMail:      dbh@enterasys.com
            Phone:      +1 603-337-2614

            Co-editor:  David B. Levi
                        Nortel Networks
            Postal:     3505 Kesterwood Drive
                        Knoxville, Tennessee 37918
            EMail:      dlevi@nortelnetworks.com
            Phone:      +1 865 686 0432

            Co-editor:  Paul Meyer
                        Secure Computing Corporation
            Postal:     2675 Long Lake Road
                        Roseville, Minnesota 55113
            EMail:      paul_meyer@securecomputing.com
            Phone:      +1 651 628 1592

            Co-editor:  Bob Stewart
                        Retired" "200210140000Z" "199808040000Z" "199707140000Z" ="Clarifications, published as
                    RFC 3413." ="Clarifications, published as
                    RFC 2573." -"The initial revision, published as RFC2273."                   ?"This table is used to select management targets which should
            receive notifications, as well as the type of notification
            which should be sent to each selected management target."                      ]"An entry in this table selects a set of management targets
            which should receive notifications, as well as the type of
            notification which should be sent to each selected
            management target.

            Entries in the snmpNotifyTable are created and
            deleted using the snmpNotifyRowStatus object."                       a"The locally arbitrary, but unique identifier associated
            with this snmpNotifyEntry."                      x"This object contains a single tag value which is used
            to select entries in the snmpTargetAddrTable.  Any entry
            in the snmpTargetAddrTable which contains a tag value
            which is equal to the value of an instance of this
            object is selected.  If this object contains a value
            of zero length, no entries are selected."                      p"This object determines the type of notification to
            be generated for entries in the snmpTargetAddrTable
            selected by the corresponding instance of
            snmpNotifyTag.  This value is only used when
            generating notifications, and is ignored when
            using the snmpTargetAddrTable for other purposes.

            If the value of this object is trap(1), then any
            messages generated for selected rows will contain
            Unconfirmed-Class PDUs.

            If the value of this object is inform(2), then any
            messages generated for selected rows will contain
            Confirmed-Class PDUs.

            Note that if an SNMP entity only supports
            generation of Unconfirmed-Class PDUs (and not
            Confirmed-Class PDUs), then this object may be
            read-only."                       ?"The storage type for this conceptual row.
            Conceptual rows having the value 'permanent' need not
            allow write-access to any columnar objects in the row."                       ?"The status of this conceptual row.

            To create a row in this table, a manager must
            set this object to either createAndGo(4) or
            createAndWait(5)."                       x"This table is used to associate a notification filter
            profile with a particular set of target parameters."                      `"An entry in this table indicates the name of the filter
            profile to be used when generating notifications using
            the corresponding entry in the snmpTargetParamsTable.

            Entries in the snmpNotifyFilterProfileTable are created
            and deleted using the snmpNotifyFilterProfileRowStatus
            object."                       ?"The name of the filter profile to be used when generating
            notifications using the corresponding entry in the
            snmpTargetAddrTable."                       ?"The storage type for this conceptual row.
            Conceptual rows having the value 'permanent' need not
            allow write-access to any columnar objects in the row."                      P"The status of this conceptual row.

            To create a row in this table, a manager must
            set this object to either createAndGo(4) or
            createAndWait(5).

            Until instances of all corresponding columns are
            appropriately configured, the value of the
            corresponding instance of the
            snmpNotifyFilterProfileRowStatus column is 'notReady'.

            In particular, a newly created row cannot be made
            active until the corresponding instance of
            snmpNotifyFilterProfileName has been set."                      W"The table of filter profiles.  Filter profiles are used
            to determine whether particular management targets should
            receive particular notifications.

            When a notification is generated, it must be compared
            with the filters associated with each management target
            which is configured to receive notifications, in order to
            determine whether it may be sent to each such management
            target.

            A more complete discussion of notification filtering
            can be found in section 6. of [SNMP-APPL]."                       ?"An element of a filter profile.

            Entries in the snmpNotifyFilterTable are created and
            deleted using the snmpNotifyFilterRowStatus object."                       ?"The MIB subtree which, when combined with the corresponding
            instance of snmpNotifyFilterMask, defines a family of
            subtrees which are included in or excluded from the
            filter profile."                      ?"The bit mask which, in combination with the corresponding
            instance of snmpNotifyFilterSubtree, defines a family of
            subtrees which are included in or excluded from the
            filter profile.

            Each bit of this bit mask corresponds to a
            sub-identifier of snmpNotifyFilterSubtree, with the
            most significant bit of the i-th octet of this octet
            string value (extended if necessary, see below)
            corresponding to the (8*i - 7)-th sub-identifier, and
            the least significant bit of the i-th octet of this
            octet string corresponding to the (8*i)-th
            sub-identifier, where i is in the range 1 through 16.

            Each bit of this bit mask specifies whether or not
            the corresponding sub-identifiers must match when
            determining if an OBJECT IDENTIFIER matches this
            family of filter subtrees; a '1' indicates that an
            exact match must occur; a '0' indicates 'wild card',
            i.e., any sub-identifier value matches.

            Thus, the OBJECT IDENTIFIER X of an object instance
            is contained in a family of filter subtrees if, for
            each sub-identifier of the value of
            snmpNotifyFilterSubtree, either:

              the i-th bit of snmpNotifyFilterMask is 0, or

              the i-th sub-identifier of X is equal to the i-th
              sub-identifier of the value of
              snmpNotifyFilterSubtree.

            If the value of this bit mask is M bits long and
            there are more than M sub-identifiers in the
            corresponding instance of snmpNotifyFilterSubtree,
            then the bit mask is extended with 1's to be the
            required length.

            Note that when the value of this object is the
            zero-length string, this extension rule results in
            a mask of all-1's being used (i.e., no 'wild card'),
            and the family of filter subtrees is the one
            subtree uniquely identified by the corresponding
            instance of snmpNotifyFilterSubtree."                      "This object indicates whether the family of filter subtrees
            defined by this entry are included in or excluded from a
            filter.  A more detailed discussion of the use of this
            object can be found in section 6. of [SNMP-APPL]."                       ?"The storage type for this conceptual row.
            Conceptual rows having the value 'permanent' need not
            allow write-access to any columnar objects in the row."                       ?"The status of this conceptual row.

            To create a row in this table, a manager must
            set this object to either createAndGo(4) or
            createAndWait(5)."                               ?"The compliance statement for minimal SNMP entities which
            implement only SNMP Unconfirmed-Class notifications and
            read-create operations on only the snmpTargetAddrTable."   ."Create/delete/modify access is not required." ."Create/delete/modify access is not required." ."Create/delete/modify access is not required." ."Create/delete/modify access is not required." ?"Create/delete/modify access is not required.
                Support of the values other(1), volatile(2),
                nonVolatile(3), and permanent(4) is not required.""Create/delete/modify access to the
                snmpTargetParamsTable is not required.
                Support of the values notInService(2), notReady(3),
                createAndGo(4), createAndWait(5), and destroy(6) is
                not required." ."Create/delete/modify access is not required." o"Create/delete/modify access is not required.
                Support of the value notify(2) is not required." ?"Create/delete/modify access is not required.
                Support of the values other(1), volatile(2),
                nonVolatile(3), and permanent(4) is not required." ?"Create/delete/modify access to the
                snmpNotifyTable is not required.
                Support of the values notInService(2), notReady(3),
                createAndGo(4), createAndWait(5), and destroy(6) is
                not required."             ?"The compliance statement for SNMP entities which implement
            SNMP Unconfirmed-Class notifications with filtering, and
            read-create operations on all related tables."              #"The compliance statement for SNMP entities which either
            implement only SNMP Confirmed-Class notifications, or both
            SNMP Unconfirmed-Class and Confirmed-Class notifications,
            plus filtering and read-create operations on all related
            tables."                   ?"A collection of objects for selecting which management
            targets are used for generating notifications, and the
            type of notification to be generated for each selected
            management target."                 ^"A collection of objects providing remote configuration
            of notification filters."                    