                                                          >"This is the MIB Module for implementing IP Spoofing filters
		as per @Home requirements.  Notice that this MIB bears a striking
		resemblance to a portion of draft-ietf-ipcdn-cable-device-mib-04b.txt,
		due to the fact that we copied it verbatim.  At some point in the future,
		the -04b version of the cable-device-mib may be accepted as an Internet
		Standard, at which point the cmSpoofing MIB will be obsoleted and the
		standardized MIB will be used instead.  Until that time, however, the SB2100
		product will utilize this MIB as part of its proprietary MIB." ?"       Steven Keller
		Postal: 6450 Sequence Dr.
		San Diego, CA 92121
		Tel: +1 619 404-2286
		Fax: +1 619 404-3480
		E-mail: skeller@gi.com"                  o"This object controls the population of the source IP spoofing
    	table.  If set to none, the filters must be set manually.  If set
	to any, this wiretaps the packets originating on from the ethernet
    	and enrolls up to docsDevFilterMaxCpe based on the source IP
    	addresses of those packets.  The default value for this object
    	upon boot is any (2)"                      A"This object controls the maximum number of CPEs allowed to
    	connect behind this device.  If set to zero, any number of CPEs may
    	connect up to the maximum permitted for the device.  If set to -1,
    	no filtering is done on CPE source addresses, and no entries are
    	made in the docsDevFilterCpeTable. If an attempt
    	is made to set this to a number greater than that permitted for
    	the device, it is set to whatever that maximum is.  The default
    	for this object on boot is -1.

	(not specified in the cable-device-mib-04b):  if the CPE table contains
	a number of entries (N), and the Network Manager attempts to set 
	cmSpoofMaxCpe to a value less than N, the agent shall return a
	general error.  This is similar to attempting to create an entry in a
	table that is already full to capacity."                      <"This table list the IP addresses seen as source addresses
             in packets originating from the customer interface on
             this device. In addition, this table can be provisioned
             with the specific addresses permitted for the CPEs via
             the normal row creation mechanisms."                      ?"An entry in the cmSpoofCpeTable.  One for each CPE seen
    	or provisioned.  If cmSpoofMaxCpe has the value of  -1, this table
    	is ignored, otherwise: Upon receipt of a packet from the customer
    	interface of the CM, the source address is checked against this
    	table.  If the address is in the table, processing of the packet
    	continues.  If the address is not in the table, but
    	docsDevCpeEnroll is set to any and the table size is less than
    	docsDevFilterMaxCpe, the address is added to the table and
    	processing of the packet continues.  Else the packet is
    	dropped. 

	If docsDevFilterMax has the value of -1, then an attempt to
    	create an entry in this table results in a general error.  If
    	docsDevFilterMaxCpe is changed to -1, then all rows in this table
    	are deleted.  

	A row may be created in this table by setting a
    	docDevFilterCpeStatus object with the appropriate instance tag
    	(e.g. the IP address to be permitted) to create-and-go."                       M"The IP address to which this entry applies, and the 
		index for this row."                      ,"This object describes how this entry was created. If the
             value is set(2), this row was created by a network
             management action (either configuration, or SNMP set).
             If set to learned(3), then it was found via
             looking at the source IP addresses."                       O"This object describes how many times this spoofing filter
	     was matched."                       x"Standard object to manipulate rows. To create a row in this
             table, you only need to specify this object."                          