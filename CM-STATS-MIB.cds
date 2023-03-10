                                                           c"This module defines proprietary MIB variables to report statistics
 from SURFboard cable modems." ?"Thomas Beifuss
Postal: 6450 Sequence Dr.
San Diego, CA 92121
Tel: +1 619 404-2643
Fax: +1 619 404-3480
E-mail: tbeifuss@gi.com" "200408160000Z" ?"Edited by Kevin Marez
- Revised MIB descriptions to include the following information:
Storage, Modification, Default Value and Reset To Factory behavior. "                   m"A count of the number of times an MBuf allocation request
           has failed on the ethernet interface." ""                     h"A count of the number of times an MBuf allocation request
           has failed on the hfc interface." ""                     l"A count of the number of times a packet has been discarded
           because the ethernet link was down." ""                     #"The programmedPLD revision number" ""                    ?" Set TRUE to set
               docsIfCmStatusResets                    = 0
               docsIfCmStatusLostSyncs                 = 0
               docsIfCmStatusInvalidMaps               = 0
               docsIfCmStatusInvalidUcds               = 0
               docsIfCmStatusInvalidRangingResp        = 0
               docsIfCmStatusInvalidRegistrationResp   = 0
               docsIfCmStatusT1Timeouts                = 0
               docsIfCmStatusT2Timeouts                = 0
               docsIfCmStatusT3Timeouts                = 0
               docsIfCmStatusT4Timeouts                = 0
               docsIfCmStatusRangingAborteds           = 0
            Always returns FALSE when read"                       ?" Set TRUE to set
               docsIfSigQUnerroreds          = 0
               docsIfSigQCorrecteds          = 0
               docsIfSigQUncorrectables      = 0
            Always returns FALSE when read"                      ?"The version number of the power table.  If this is set to 255, the
           default table [0, -10, -15, -15, -15, ...] will be used and all SNMP
           SNMP gets of the FactorArray will return the default table.  If the 
           table needs to be changed, a version number of 0 should be used.
 		Storage:  Permanent
		Modification:  Factory
		Reset To Factory Defaults:  Permanent"                      "This is an array of signed character values in tenthDb to be added 
           to the computed downstream power when in 256 Qam mode. The first 
           value is applied to a downstream power of +15 db, while the 30'th 
           value is applied to a downstream power of -15 db. If the TableVersion 
           is set to 255, the default table is used with values:
           [0, -10, -15, -15, -15, ... all the rest -15].
 		Storage:  Permanent Non-Vol
		Modification:  Factory
		Reset To Factory Defaults:  Permanent"                       5"This is an array which injected into the image hash"                       N"This is an array which is created by hashing the
       seed with the image"                          