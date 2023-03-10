                                                           N"This module defines proprietary MIB variables for prevention of
ARP storms." ?"Steven Keller
Postal: 6450 Sequence Dr.
San Diego, CA 92121
Tel: +1 619 404-2286
Fax: +1 619 404-3480
E-mail: skeller@gi.com"               9"This variable enables and disables ARP storm filtering." ""             ?--      ACCESS      read-write
--      STATUS      mandatory
       J"This variable indicates the interval over which ARPs are
	rate-limited." ""             ?--      ACCESS      read-write
--      STATUS      mandatory
       ?"This variable indicates how many ARPs are allowed per
	interval (second?).  Notice that a value of zero is not allowed,
	which would prevent all ARPs from being transmitted." ""             ?--      ACCESS      read-write
--      STATUS      mandatory
       {"This variable indicates how many ARPS have been received
	by the CM from the Ethernet interface since the last power-up." ""             >--      ACCESS      read-only
--      STATUS      mandatory
       ?"This variable indicates how many ARPS have been forwarded
	by the CM from the Ethernet interface to the HFC interface
	since the last power-up." ""             >--      ACCESS      read-only
--      STATUS      mandatory
      "This variable indicates how many ARPS have been received
	by the CM from the Ethernet interface since the filter was created.
	Notice that 'modifying' the filter parameters may result in the
	filter being deleted and recreated with the new value, causing the
	counter to be reset." ""             >--      ACCESS      read-only
--      STATUS      mandatory
      6"This variable indicates how many ARPS have been forwarded
	by the CM from the Ethernet interface to the HFC interface
	since the filter was created.
	Notice that 'modifying' the filter parameters may result in the
	filter being deleted and recreated with the new value, causing the
	counter to be reset." ""             >--      ACCESS      read-only
--      STATUS      mandatory
          