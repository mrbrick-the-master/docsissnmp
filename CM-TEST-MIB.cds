u--
--  (c) 2009 Motorola, Inc.
--
-- **************************************************************************
--    Description:
--
--    MIBs to support downstream FTP speed testing
--		
-- **************************************************************************
--    Revision History:
--
-- **************************************************************************
                                                                         r"Motorola private MIB for runtime management and configuration
      of objects related to miscellaneous testing." ?"Org: Motorola HNM
   Postal: 6450 Sequence Dr.
   San Diego, CA 92121
   Email: hnmmibs@motorola.com
   Phone: +1 858-404-3475" "200905111000Z"b"Initial version of this MIB module.
       cmTestFtpDownstreamSpeed MIBS will help the user to check the 
       current Downstream Speed. User has to set cmTestFtpServerAddressType,
       cmTestFtpServerAddress, cmTestFtpServerPort, cmTestFtpUserName, 
       cmTestFtpPassword and cmTestFtpFilename, then has to initiate the 
       Speed Test by setting cmTestFtpCommand to get(1).
       cmTestFtpTransferStatus returns the current status of
       Speed Test and other cmTestFtpTransfer* MIBs return the results of 
       Speed Test.
       Copyright (c) 2000 - 2009 Motorola, Inc. All rights reserved"       -- May 11, 2009
           ?"The type of internet address used for cmTestFtpServerAddress."                       @"The internet address of the FTP server used for FTP transfers."                       W"The TCP port on the FTP server to which the client will attempt to 
         connect."                       ="The user name to be used when logging in to the FTP server."                       <"The password to be used when logging in to the FTP server."                       B"The file name of the file to be transferred (include full path)."                      &"Used to invoke an FTP command, or cancel a command which is in 
         progress.  When read, indicates the most recent command.  Note that
         the value of this object does not indicate the current transfer 
         status.  Current status should be read from cmTestFtpTransferStatus."                       ?"Indicates the status of the file transfer which is currently in 
         progress, or which most recently completed.  If no file transfer has
         been initiated, this object returns a value of idle(0)."                      "Indicates the number of file data payload bytes transferred during the
         file transfer which most recently completed.  For transfers which
         complete successfully, the value of this object will be equal to the
         size of the file transferred."                      +"Indicates the approximate total number of bytes transferred during the
         file transfer which most recently completed. This value includes file
         data payload as well as FTP framing data and all IP and layer 2
         headers. This value is used when calculating transfer throughput."                       _"Indicates the total elapsed time of the file transfer which most
         recently completed."                       ?"Indicates the calculated throughput during the file transfer which
         most recently completed. This value is calculated by dividing
         cmTestFtpTransferTotalBytes by cmTestFtpTransferElapsedTime."                          