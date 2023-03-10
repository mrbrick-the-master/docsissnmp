                  ?"This trap contains a copy of a log entry;  the 
	 cmTrapLogEvIndex is the table index of the log entry
	 in the docsDevEventTable. This trap may be enable/disabled using 
         the event control facilities in the Cable Device MIB.  
         Notice that some log entries may fail to be delivered via this trap, 
         since some log events are generated as a result of RFI registration, 
         during which time the CM may be unable to communicate via the RF 
         interface."             R"This trap indicates an object value change that
         occurred in the agent."                                                 i"This module defines proprietary Trap MIB variables for 
           the SURFboard line of cable modems.""           Tom Beifuss
            Postal:    6450 Sequence Dr.
                       San Diego, CA 92121
                       USA
            Tel:       +1 619 404-2643
            Fax:       +1 619 404-3480
            E-mail:    tom.beifuss@motorola.com"                   T"This object identifies the trap (alarm) issued by the
           network element." !"CCITT Rec X.733 Section 8.1.2.1"                     ^"This object indicates the perceived severity of the event which
           caused the trap." !"CCITT Rec X.733 Section 8.1.2.1"                     H"This variable identifies the object that has generated the 
	   trap." "ITU-T X.730 "                     \"This variable provides human-readable text describing the
	   event that caused the trap." ""                    U"This variable is used in the TrapLog trap, indicating the 
	   docsDevEvIndex of the corresponding log event.  Notice that
	   docsDevEvIndex is the index field for the docsDevEventTable,
	   therefore, this variable can be used as an instance identifier
	   to locate related information, such as EvFirstTime, EvCount,
	   and EvId. " ""                     t"This variable is used in the TrapLog trap, indicating the 
           docsDevEvId of the corresponding log event." ""                        