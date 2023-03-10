                                           ~"This module defines proprietary MIB variables to support the
 certificate relay agent used in the get certificate protocol." ?"Jason Krasnow
Postal: 6450 Sequence Dr.
San Diego, CA 92121
Tel: +1 858 404-2577
Fax: +1 858 404-3480
E-mail: jason@motorola.com"                  ?"This object is used to enable and disable the Certificate 
           Relay Agent.  If set to 'enabled (1)' the Certificate Relay
           Agent performs the network address translation and forwards 
           GetCert protocol messages between the HFC and Ethernet 
           interfaces.  If set to 'disabled (2)' the Certificate Relay 
           Agent halts processing of GetCert protocol messages." ""                     m"The number of GetCert-request messages processed and 
           forwarded by the Certificate Relay Agent." ""                     m"The number of GetCert-response messages processed and 
           forwarded by the Certificate Relay Agent" ""                     g"The number of packets discarded by the Certificate Relay 
           Agent due to an unknown opcode." ""                     d"The total number of packets discarded by the Certificate 
           Relay Agent due to an error." ""                     ?"The port number that the Relay Agent uses to listen for 
          Get Certificate request messages on it's private interface."                       Y"Controls the logging of messages associated with upgrading
             a certificate."                       >"The type of IP address of cmCertRelayCertServerInetAddress. "                       +"The IP address of the Certificate Server."                       n"The port number that the Certificate Server uses to listen for 
          Get Certificate request messages."                       :"The type of IP address of cmCertRelayPublicInetAddress. "                       +"The public IP address of the Relay Agent."                       S"The subnet mask of the public network that the relay
          agent resides on."                       ?"The port number that the Relay Agent uses to listen for 
          Get Certificate request messages on it's public interface."                       ;"The type of IP address of cmCertRelayGatewayInetAddress. "                       h"The IP address of the gateway router on the Relay Agent's
          public interface (i.e. ethernet)."                          