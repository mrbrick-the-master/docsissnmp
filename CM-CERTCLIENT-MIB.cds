                                           n"This module defines proprietary MIB variables to support the
       get certificate protocol of the client." ?"Jason Krasnow
                 Postal: 6450 Sequence Dr.
                 San Diego, CA 92121
                 Tel: +1 858 404-2577
                 Fax: +1 858 404-3480
                 E-mail: jason@motorola.com" "200206061630Z" 7"Added MIB objects to configure cert client parameters"                  ?"This object is used to trigger the Cert Client to download
           a new certificate from the Certificate Server.  If the 
           current value of this object is updateEnabled(2) and 
           initiateCertUpdate(1) is set, the CM shall initiate the 
           certificate update process.  It is an error if 
           initiateCertUpdate(1) is set and the current value of this 
           object is updateDisabled(3) or initiateCertUpdate(1).  This 
           indicates that the certificate update process is disabled 
           or a certificate update is already in progress.
           Upon completion of the certificate upgrade process, this 
           object shall be set to updateEnabled(2).
           At initial startup, this object reflects the either 
           updateEnabled(2) or updateDisabled(3) depending on the setting 
           in the configuration file."                      A"updateNeeded(1) indicates that no certificate download procedure
             is in effect and that the certificates need to be updated.  
             inProgress(2) indicates that a get certificate download
             is underway, either as a result of provisioning from the 
             configuration file or from direct management action. Complete(3)
             indicates that the certificate upgrade completed successfully or
             the certficates are of the current correct type. 
             Failed(4) indicates that the certificate download failed." ""                     9"The type of IP address of cmCertRelayAgentInetAddress. "                       ,"The private IP address of the Relay Agent."                       g"The port number that the Relay Agent uses to listen for 
          Get Certificate request messages."                       Y"Controls the logging of messages associated with upgrading
             a certificate."                          