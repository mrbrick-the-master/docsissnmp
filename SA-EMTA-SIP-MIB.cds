w--**************************************************************************
--                                                                          
--    Copyright 2007 Scientific Atlanta, A Cisco Company                                   
--    All Rights Reserved                                                   
--    No portions of this material may be reproduced in any
--    form without the written permission of:                                                
--             Scientific Atlanta, A Cisco Company                                          
--             5030 Sugarloaf Pkwy                                     
--             Lawrenceville, Georgia 30044                                    
--                                                                          
--**************************************************************************
  ?"Unique value that will correspond to the different  
         tone types. These tones can be provisioned based on  
         country specific needs. This object defines the type  
         of tone being accessed.  
         The alertingSignal, specialDial, specialInfo, release, 
         congestion, userDefined1, userDefined2, userDefined3 
         and userDefined4 tone types are used in  
         the E line package."              	X" This textual convention defines various types of codecs 
          that MAY be supported. The description for each 
          enumeration is listed below: 
          Enumeration     Description 
          other           a defined codec not in the enumeration 
          unknown         a codec not defined in PacketCable 
          g729            ITU-T Recommendation G.729 
          reserved        for future use 
          g729E           ITU-T Recommendation G.729E 
          pcmu            Pulse Code Modulation u-law (PCMU) 
          g726at32        ITU-T Recommendation G.726-32 (32 kbit/s) 
          g728            ITU-T Recommendation G.728 


          pcma            Pulse Code Modulation a-law (PCMA) 
          g726at16        ITU-T Recommendation G.726-16 (16 kbit/s) 
          g726at24        ITU-T Recommendation G.726-24 (24 kbit/s) 
          g726at40        ITU-T Recommendation G.726-40 (40 kbit/s) 
          ilbc            IETF internet low bit rate codec 
          bv16            Broadcom BroadVoice16 
        . The list of codecs is consistent with the IETF 
          Real Time Transport Protocol (RTP) Profile registry and 
          the RTP Map Parameters Table in [PKT-SP-CODEC]. The 
          literal codec name for each codec is listed below: 
          Codec     Literal Codec Name 
          g729              G729 
          g729E             G729E 
          pcmu              PCMU 
          g726at32          G726-32 
          g728              G728 
          pcma              PCMA 
          g726at16          G726-16 
          g726at24          G726-24 
          g726at40          G726-40 
          ilbc              iLBC 
          bv16              BV16 
          The literal codec name is the second column of the table 
          with codec RTP Map Parameters. Literal Codec Name Column 
          contains the codec name used in the local connection 
          options (LCO) of the NCS messages create connection 
          (CRCX)/modify connection (MDCX) and is also used to 
          identify the codec in the Call Management System (CMS) 
          Provisioning Specification. RTP Map Parameter Column of 
          the Table contains the string used in the media attribute 
          line (a=) of the session description protocol (SDP) 
          parameters in NCS messages."               "Codec types mapping."                                                                    "Controls the behavior of SIP Embedded MTA fuctions.
             Contains extra parameters on top of saMta tree
             needed for SIP device to function properly.
             This MIB is active only at the MTA IP address.
             Can be part of MTA configuration file." "marcin.godlewski@sciatl.com" "0810220000Z" "0804230000Z" "0708140000Z" "0701040000Z" "0608150000Z" "0606140000Z" "0604120000Z" "0601240000Z" "0601230000Z" "0601120000Z" "0512020000Z" "0511150000Z" G"Added new value dataModeForceT38(3) to saEmtaSipENdPntDataMode (2955)" ?"Added saEmtaSipEndPntConfigUserConfBridgeURI (2467)
             Added saEmtaSipDeviceFeaturesCIDAbsenceReason (1799,1800)
             Added saEmtaSipDeviceInterDigitMapTimeoutTone (1857)
             Added saEmtaSipDeviceReferToUri (1736)"	?"Added B, F, H, D, J, T4 RFC timers (1301)
             Changed saEmtaSipDeviceTimingTransactionTimeout
                     to obsolete (1301)
             Added saEmtaSipCodec tree (1302)
             Obsoleted saEmtaSipDeviceCodec (1302)
             Added saEmtaSipDeviceDTMFRelayPayloadType (1303)
             Added saEmtaSipDeviceHookFlashRelay (1304)
             Added saEmtaSipEndPnGoodProxyEnabled (1305)
             Added saEmtaSipEndPntAddToWhiteList (1306)
             Added saEmtaSipDeviceInterDigitTimeout (1307)
             Added saEmtaSipEndPntStatAgentURI (1311)
             Added saEmtaSipDeviceFeaturesDND tree 
                   saEmtaSipEndPntFeaturesDNDAdminStatus
                   saEmtaSipEndPntFeaturesDNDUserStatus (1312)
             Changed saEmtaSipEndPntFeaturesBlockCIDUserStatus to
                     saEmtaSipEndPntFeaturesSendCIDUserStatus (5534)
             Added saEmtaSipDeviceCallerNumberTable and
                   saEmtaSipDeviceCallerNameTable  (1333)
             Added saEmtaSipDeviceRtcpXR (1421)
             Added saEmtaSipDeviceToneToMsgTable (1436)
             Added saEmtaSipEndPntProxyAuthId (1539)
             Changed to read-write (1502,1540):
                   saEmtaSipEndPntProxyUsername
                   saEmtaSipEndPntProxyPassword
                   saEmtaSipEndPntProxyDisplayName
                   saEmtaSipEndPntFeaturesCallWaitingAdminStatus
                   saEmtaSipEndPntFeaturesCallForwardingNoAnswerAdminStatus
                   saEmtaSipEndPntFeaturesCallForwardingBusyAdminStatus
                   saEmtaSipEndPntFeaturesCallForwardingAllAdminStatus
                   saEmtaSipEndPntFeaturesRedialCallAdminStatus
                   saEmtaSipEndPntFeaturesAutoRedialAdminStatus
                   saEmtaSipEndPntFeaturesMWIAdminStatus
                   saEmtaSipEndPntFeaturesCallTransferAdminStatus
                   saEmtaSipEndPntFeaturesBlockCIDAdminStatus
                   saEmtaSipEndPntFeaturesCancelCIDAdminStatus
                   saEmtaSipEndPntFeatures3WCAdminStatus
             Added saEmtaSipDeviceDigitModification tree (1542)
             Added saEmtaSipNat tree (1547)
             Added saEmtaSipEndPntCodecTableOnly (1559)
             Added saEmtaSipDeviceSdpAllCapsEnabled (1606)
             Added custom(3) to saEmtaSipDeviceDhcpFqdn (2333)
             Added saEmtaSipDeviceUriDomainName (2333)" Y"Added saEmtaSipEndPntDataMode (1167)
             Added saEmtaSipDeviceDhcpFqdn (1273)"?"Added saEmtaSipDeviceProtocol (771,5210)
             Added saEmtaSipEndPntPacketization (772,5211)
             Added saEmtaSipDeviceRohStart (770,5209)
             Added useNumber(3) to saEmtaSipEndPntDisplayNameToPhone
                   and changed desciption (775,5213)
             Changed to read-write (782):
                     saEmtaSipEndPntFeaturesCallForwardingNumber
                     saEmtaSipEndPntFeaturesCallForwardingNoAnswerUserStatus
                     saEmtaSipEndPntFeaturesCallForwardingBusyUserStatus
                     saEmtaSipEndPntFeaturesCallForwardingAllUserStatus
             Added saEmtaSipEndPntFeatures3WCAdminStatus (784)
             Added saEmtaSipDeviceFeaturesCallWaitingOnHold (791)
             Added saEmtaSipDeviceRemoveBindings (792)
             Changed description of saEmtaSipEndPntFeaturesWarmLineStatus
             Added saEmtaSipDevicePrack (872)" A"Changed saEmtaSipEndPntProxyAddress to allow DNS SRV (720,5174)" ?"Added saEmtaSipEndPntFeaturesBlockCIDUserStatus (610,5059)
             Added saEmtaSipEndPntDisplayNameToPhone (611,5060)
             Added saEmtaSipDeviceFeaturesAutoRedialCancelDigitMap (614,5090)" ?"Changed saEmtaSipDeviceFeaturesWarmLineDigitMap
                  to saEmtaSipDeviceFeaturesWarmLineEnableDigitMap
             Added saEmtaSipDeviceFeaturesWarmLineDisableDigitMap"8"Changed saEmtaSipDeviceTimingT2 default to 4000
             Changed saEmtaSipDeviceTimingTransactionTimeout default to 5000
             Added saEmtaSipDeviceFeaturesAutoRedialDigitMap
             Added saEmtaSipDeviceFeaturesAutoRedialInterval
             Added saEmtaSipDeviceFeaturesAutoRedialTimeout
             Added saEmtaSipDeviceFeaturesAutoRedialSessionProgressTimer
             Added saEmtaSipEndPntFeaturesAutoRedialAdminStatus
             Added saEmtaSipEndPntFeaturesMWIAdminStatus
             Added saEmtaSipEndPntFeaturesCallTransferAdminStatus
             Added saEmtaSipDeviceFeaturesDisableCIDDigitMap
             Added saEmtaSipDeviceFeaturesEnableCIDDigitMap
             Added saEmtaSipDeviceFeaturesCancelCIDDigitMap
             Added saEmtaSipEndPntFeaturesCancelCIDAdminStatus"8"Changed saEmtaSipDeviceTimingRegisterAttempt
                  to saEmtaSipDeviceTimingRegisterAttemptMin
             Added saEmtaSipDeviceTimingRegisterAttemptMax
             Added offhookDisconnected(2)
                to saEmtaSipEndPntRegisterForce
             Added saEmtaSipEndPntUnregisteredDial" ?"Changed saEmtaSipDeviceFeaturesWarmLineNumber
                  to saEmtaSipDeviceFeaturesWarmLineDigitMap
             Added saEmtaSipDeviceFeaturesWarmLineTimer
             Added saEmtaSipEndPntFeaturesWarmLineNumber" D"Changed saEmtaSipEndPntFeaturesCallWaitingUserStatus to read-write"                   Q"Defines UDP source port for SIP messages (sent to
         registrar or proxy."                       ?"Defines FQDN or IP of Syslog server.
         All SIP packets will be sent to this server
         as syslog messages for debuging purposes.
         If not specified, this is turned off."                       3"Defines UDP destination port for Syslog messages."                       M"Defines digit map.
         Default value depends on current phone number."                       ""Defines timeout for digit entry."                        "Controls echo canceller state."                       "Controls silent suppression."                       W"Controls codec.
         Default for DPX is PCMU.
         Default for EPX is PCMA."                       "Controls DTMF relay."                       ."Choose to use FQDN or IP inside SIP messages"                       ?"Controls if local ring back is played out.
         If set to sdpDependent(2), MTA will only play local ringback
         when SDP is not received in 180 Ringing.
         When playing local ringback, incoming RTP (if any) is muted."                       ?"Controls dialing by IP address. 
         For IP address x1.x2.x3.x4, dial x1*x2*x3*x4# 
         For example for IP address of 10.0.1.125, dial 10*0*1*125# "                           "TBW"                           ?"Defines digit map to activate call waiting by user. 
        If not specified, user cannot control this feature and 
        saEmtaSipFeaturesCallWaitingOffDigitMap is erased."                       ?"Defines digit map to deactivate call waiting by user. 
        If not specified, user cannot control this feature and 
        saEmtaSipFeaturesCallWaitingOnDigitMap is erased."                      /"Controls whether to play the tone while an endpoint is on hold.
         The tone is defined as callWaiting2 in tComLabs MIB.
         For a scenario: A-B talk, C calls A, A hook-flash to C
         - passive: tone is played on B
         - active: tone is played on A (during conversation with C)"                           $"Defines digit map for Return Call."                           ,"Defines digit map for Cancel Call Waiting."                           a"Defines digit map for enabling Warm Line.
         Following should be the destination number."                       ,"Defines digit map for disabling Warm Line."                       "Defines timer for Warm Line."                           ?"Defines digit map for setting up number to forward.
         The number is accepted per main digit map.
         Note: the number is stored in non-vol."                       w"Defines digit map for disabling All Call Forwarding.
         Note: this disables Unconditional Call Forwarding too."                       ;"Defines digit map for enabling Call Forward on No Answer."                       6"Defines digit map for enabling Call Forward on Busy."                       <"Defines digit map for enabling Call Forward Unconditional."                       ="Defines digit map for disabling Call Forward Unconditional."                           $"Defines digit map for Redial Call."                           )"Defines digit map for Automatic Redial."                       5"The interval the MTA tries calling the busy number."                       /"The timeout after which MTA will stop trying."                       u"This timer starts when MTA receives '183 Session Progress'.
         If the timer expires, MTA will start ringing."                       /"Defines digit map to cancel Automatic Redial."                           7"Defines digit map for disabling CallerID permanently."                       *"Defines digit map for enabling CallerID."                       1"Defines digit map for cancel CallerID per call."                       ?"This table contains a list of preferred Calling Line Identity"                       ?"Each entry contains the preferred Calling Line Identity if
         its value is valid telephone number according to RFC2806."                       ?"Index for specifying the rank. For example, a value of 1
         means most preferred.
         If rank 1 not present or not valid, try using rank 2, etc."                      ?"The field from which callerId number will be taken and
         displayed on the phone.
         The number will be displayed ONLY if the string is a number.
         'fromDiplayNameAnonymous' means that when 'Anonymous' string is
         received in INVITE's From's Display Name field, the endpoint
         will only send 'Reason for Absence of Calling Line Identity
         parameter.
         'fromUriAnonymous' means that when 'Anonymous' string is
         received in INVITE's From's SIP URI field, the endpoint
         will only send 'Reason for Absence of Calling Line Identity
         parameter.
         Both anonoymous strings are case insensitive."                       <"This table contains a list of preferred Calling Party Name"                       6"Each entry contains the preferred Calling Party Name"                       ?"Index for specifying the rank. For example, a value of 1
         means most preferred.  
         If rank 1 not present, try using rank 2, etc."                       ?"The field from which calling party name will be taken and
         displayed on the phone.
         The name will be displayed ONLY if it is not suppressed(5)
         or not empty."                      ?"When particular string is received by endpoint in INVITE's From's
         DISPLAY NAME field, the endpoint sends special character to the
         phone in callerID type 'Reason for Absence of Calling Line
         Identity parameter' (type 4):
           'Anonymous' = P
           'Coin line/payphone' = C
           'Interaction with other service' = S
           'Unavailable' = O
         Each reason for absence can be controled independently by its bit.
         Bit set means the callerID will send the reason for absence.
         Bit unset means empty string will be sent in the callerID name field.
         By default only Anonymous is enabled."                           %"Defines digit map for enabling DND."                       &"Defines digit map for disabling DND."                       ?"The voice mail server may be used when the endpoint rejects a call.
         All incoming calls will be forwarded to the specified voice mail
         server by way of a 302 response."                           ?"This object sets expire field in the REGISTER message to SIP proxy.
    The value of 0 means expire field will not be sent out."                       ?"This object defines how long before registration expires the
    re-registration will happen.
    Note: This value must be less than half of
          saEmtaSipDeviceTimingRegisterExpireSet"                       ?"This object sets expire field in the INVITE message to SIP proxy.
    The value of 0 means expire field will not be sent out.
    The MTA will refresh sessions at half session time."                        "This object sets the T1 timer."                        "This object sets the T2 timer."                       Y"This object sets the Transaction Timeout timer.
     This is the T4 timer in RFC 3261."                       2"This object sets the Register Attempt min timer."                       2"This object sets the Register Attempt max timer."                       ~"B from RFC 3261. INVITE transaction timeout timer.
         The timer is expressed in terms of multiples of the value of T1"                       ?"F from RFC 3261. Non-INVITE transaction timeout timer.
         The timer is expressed in terms of multiples of the value of T1"                       w"H from RFC 3261. Wait time for ACK receipt. The timer is expressed
         in terms of multiples of the value of T1"                       t"D from RFC 3261. Wait time in milliseconds for response retransmits.
         Defaults to 3000 for UDP, 0 for TCP"                       ?"J from RFC 3261. Wait time for non-INVITE request retransmits.
         The timer is expressed in terms of multiples of the value of T1"                       "This object sets the T4 timer"                           <"Specifies what tone is played after remote party hangs up."                       t"Specifies how long to wait for receiver off-hook tone to play
         after no activity is detected on the line."                       G"This table contains SIP messages numbers and the corresponding tones."                       S"Each entry contains SIP message code and corresponding tComLabs defined tone type"                       "SIP message number"                       -"Tone type according to tComLabs definition."                       B"Specifies what tone is played after inter digit timeout elapses."                       3"Controls the transport protocol for SIP messages."                       ?"Controls whether to remove contact bindings before registering with proxy.
         For all(2), the MTA will send contact:* and expires=0.
         For single(1), the MTA will send expires=0 for each known contact."                       1"Controls the usage of PRACK messages (RFC3262)."                      $"1: the domain name from DHCP option 15 will be used for
            the SIP URI domain
         2: value from saEmtaSipEndPntProxyAddress will be used for
            the SIp URI domain
         3: value from saEmtaSipDeviceUriDomainName will be used for
            the SIP URI domain"                       ?"The preferred RTP payload type to be advertized for NTE (RFC 2833)
         events reporting. This value will be used when negotiation for
         media takes place during call establishment."                      p"Hook Flash Relay: This MIB controls how and if hook flash events are to
         be reported (via SIP signaling) to the peer during a call:
         hookFlash_ignored - hook flash is ignored
         hookFlash_processed - hook flash is processed, but NOT notified via SIP INFO
         hookFlash_reported - hook flash is not processed, but reported via SIP INFO."                       t"Defines inter-digit timeout (when user waits too long for entering
         the next digit into valid digit map)."                       ."Controls RTCP eXtended Report functionality."                           ="Defines digit map that if matched, digits will be modified."                       <"Defines digits to insert at the beginning of dialed string"                      ?"This object can be used to determine whether to advertise all media
         capabilities at once within an initial INVITE for a call.
         Advertising all media capabilities means advertising support for
         audio media and image (fax) media as necessary  (or configured to
         do so). Not advertising all media capabilities means advertising 
         only support for the current neccessary media for the time being of
         the session.  
         This does not affect the ability to automatically reINVITE for
         switching between different media based on the current condition
         (audio or image). In particular, this feature can be used when
         working with non RFC 3264 compliant third party devices which tend
         to only process a single media within an INVITE potentially leading
         to SDP negotiation failure (in such case, set this value to 'false')."                       9"Controls what URI to use in Refer-to for REFER message."                       ["Defines domain name for SIP URI if saEmtaSipDeviceDhcpFqdn
         is set to custom(3)."                       G"This table describes the MTA EndPoint
        Volume configuration. "                       :" List of attributes for a single MTA endpoint interface."                       ?"Defines username for SIP Proxy registration.
         This is equal to phone number.
         This is a mandatory object for endpoint to provision."                       h"Defines password for SIP Proxy registration.
         When read, this object returns an empty string."                       ?"Defines encryption method for password.
         RSA(2): use cable modem certificate key to encrypt.
                 The result is base64 encoded."                       $"Defines display name for callerID."                       ?"Defines FQDN or IP of SIP Proxy.
         This is a mandatory object for endpoints to provision.
         To use DNS SRV, include srv: in front of the fqdn. For example:
         srv:sip.lab.sa"                       >"Defines UDP destination port for messages sent to SIP Proxy."                       u"Defines FQDN or IP of SIP Registrar.
         If not specified, this object equals to saEmtaSipEndPntProxyAddress."                       F"Defines UDP destination port for SIP messages sent to SIP Registrar."                       ?"Controls call waiting feature status.
        If set to disable(0), user cannot turn it on.
        If set to enable(1), user can control the status of call waiting
        with dialing codes (if present)."                      "Reads call waiting feature status. 
        It reads disable(0) when: 
        - saEmtaSipFeaturesCallWaitingAdminStatus is set to disable(0), or 
        - saEmtaSipFeaturesCallWaitingAdminStatus is set to enable(1) and 
        user turned it off dialing saEmtaSipFeaturesCallWaitingOffDigitMap. 
        It reads enable(1) when: 
        - saEmtaSipFeaturesCallWaitingAdminStatus is set to enable(1) and 
        user turns it on dialing saEmtaSipFeaturesCallWaitingOnDigitMap.
        Note: the state of CW is stored in non-vol."                       &"Controls Return Call feature status."                       ."Controls Cancel Call Waiting feature status."                      {"Controls Warm Line feature admin status. The state of the user
         status is stored in non-vol and by default is disabled.
         Any time the operator changes the admin status to disable (for
         example by removing the saEmtaSipEndPntFeaturesWarmLineStatus
         from config file), the user status is changed to disabled
         and the number is erased."                      ?"Controls CallerID (CLIP) feature status.
         For 2:
           IF (FROM-DisplayName == Anonymous)
             THEN (Send reason for absence 'P' as CLI-number.)
           ELSEIF (FROM-DisplayName == valid_number)
             THEN (Use FROM-DisplayName as CLI-number.)
           ELSEIF (FROM-URI == valid_number)
             THEN (Use FROM-URI as CLI-number.)
           ELSE (send nothing to CLI-number)
           ENDIF
         "                       ?"Call Forwarding number as entered by the user.
         Can be also set by operator.
         Note: this number is stored in non-vol."                       ?"Controls Call Forwarding No Answer feature status.
        If set to disable(0), user cannot turn it on.
        If set to enable(1), user can control the status with dialing codes (if present)."                      ?"Controls Call Forwarding No Answer user status. 
        It reads disable(0) when: 
        - AdminStatus is set to disable(0), or 
        - AdminStatus is set to enable(1) and 
        user turned it off dialing disable code. 
        It reads enable(1) when: 
        - AdminStatus is set to enable(1) and 
        user turns it on dialing enable code.
        Note: the state of this feature is stored in non-vol and is disable by default."                       ?"Controls Call Forwarding Busy feature status.
        If set to disable(0), user cannot turn it on.
        If set to enable(1), user can control the status with dialing codes (if present)."                      ?"Reads Call Forwarding Busy feature status. 
        It reads disable(0) when: 
        - AdminStatus is set to disable(0), or 
        - AdminStatus is set to enable(1) and 
        user turned it off dialing disable code. 
        It reads enable(1) when: 
        - AdminStatus is set to enable(1) and 
        user turns it on dialing enable code.
        Note: the state of this feature is stored in non-vol and is disable by default."                       ?"Controls Call Forwarding Unconditional feature status.
        If set to disable(0), user cannot turn it on.
        If set to enable(1), user can control the status with dialing codes (if present)."                      ?"Reads Call Forwarding Unconditional feature status. 
        It reads disable(0) when: 
        - AdminStatus is set to disable(0), or 
        - AdminStatus is set to enable(1) and 
        user turned it off dialing disable code. 
        It reads enable(1) when: 
        - AdminStatus is set to enable(1) and 
        user turns it on dialing enable code.
        Note: the state of this feature is stored in non-vol and is disable by default."                       &"Controls Redial Call feature status."                      ?"Forces an endpoint to REGISTER (makes Register Attempt timer expire).
         When set to send(1), registration starts immediately. The object will
         return the value that was set before the send.
         When set to offhookDisconnected(2), endpoint will try to REGISTER immediately upon
         phone going offhook only if current state of the endpoint is not registered."                      c"Returns registration status of an endpoint:
         0: an endpoint is provisioned but not registered
         1: an endpoint is registered
         2: an endpoint is not provisioned because:
           - ifAdminStatus is set to down, or
           - saEmtaSipEndPntProxyUsername is not set, or
           - saEmtaSipEndPntProxyAddress is not set."                       A"Controls CallerID (CLIP) feature status.
         Added 051013"                      G"Shows Warm line number as entered by the user.
         Note: this number is stored in non-vol
         If user or operator disable the feature, the number is erased.
         This object can only be set when
         saEmtaSipEndPntFeaturesWarmLineStatus is enabled.
         When set, the user status is set to enable."                       ?"Defines wheter is it possible to dial out if not registered.
         0: don't allow to dial out, dialtone is not played,
         1: allow to dial out, dialtone is played."                       j"Controls Automatic Redial feature status.
         activeNow(2) is returned when the feature is in use."                       w"Controls Message Waiting Indicator feature status.
         When enabled, an endpoint will send a SUBSCRIBE message."                       ?"Controls Call Transfer feature status.
         When enabled:  A-B, A hf, A-C, A hu, REFER to C
         When disabled: A-B, A hf, A-C, A hu, A rings
                        just like regular 3 way call."                       )"Controls CallerID Block feature status."                       *"Controls Cancel CallerID feature status."                      D"Reads sending callerID feature user status.
        It reads enable(1) when: 
        - saEmtaSipEndPntFeaturesBlockCIDAdminStatus is set to disable(0), or 
        - saEmtaSipEndPntFeaturesBlockCIDAdminStatus is set to enable(1) and 
        user turns CID sending on by dialing saEmtaSipDeviceFeaturesEnableCIDDigitMap.
        It reads disable(0) when: 
        - saEmtaSipEndPntFeaturesBlockCIDAdminStatus is set to enable(1) and 
        user turns CID sending off by dialing saEmtaSipDeviceFeaturesDisableCIDDigitMap. 
        Note: the state is stored in non-vol."                      C"Controls whether the endpoint sends display-name in callerID
         to the phone. The display-name comes from 'From:' field in
         SIP header.
         1: If present, send display-name to the phone.
         2: Never send display-name to the phone.
         3: If not present, send the number as display-name."                       ."Controls packetization rate for an endpoint."                       "Controls 3 way call feature."                      *"The preferred mode for data exchange. There may be cases 
         where it is desired to either force T.38 to negotiate or prevent 
         T.38 from negotiating.   The following options are supported: 
         dataModeVBD(1) - Voice Band Data mode - Fax passed as audio using audio codec,
                          no T38.
         dataModeT38(2) - If T.38 options are present in INVITE, then negotiate.
         dataModeForceT38(3) - Force T.38 if incoming INVITE includes T38 and/or
                               other media to chose from"                       ?"When true, the end point will accept packets originating
         from a known SIP proxy only. If the packets originate
         from an unknown SIP Proxy they are not processed."                      &"When true, the endpoint's location (IP address) will be
         added to the white list each endpoint maintains. Enable
         this if saEmtaSipEndPntGoodProxyEnabled is true to allow
         calls originating from one endpoint to be accepted by
         the other on the same device."                      k"URI of the call statistics agent, which is where call
         statistics collected by the endpoint are reported.
         The call statistics agent may be specified as a URI, FQDN
         or IP address. This specifies the SIP server to which
         PUBLISH requests will be sent at the end of each call to
         report the statistics from that call."                       ?"Controls do not disturb feature status.
        If set to disable(0), user cannot turn it on.
        If set to enable(1), user can control the status
        with dialing codes (if present)."                       T"Do not disturb feature user status.
        Note: the state is stored in non-vol."                       ]"Defines Authentication for SIP Proxy registration if different
         from the username."                      :"The indicator of whether to use the list of preferred codecs,
         provided in the codec table, exclusively when negotiating
         codecs. True inidicates using the codec table exclusively,
         false means use the order of codecs in the table in addition
         to other codecs in random order."                       }"The URI for the conference bridge associated with this endpoint. 
         If set to NULL, conferencing is hosted locally."                           u"This table contains a list of preferred codecs for each endpoint.
         The default codecs are G.711 and G.729."                       @"Each entry contains the preferred codec list for each ifIndex."                       }"Index for specifying the rank of a given codec for the endpoint.
         For example, a value of 1 means most preferred. "                       "The codec to be used."                           3"The STUN server where STUN messages are directed."                      -"The port number for STUN server messages.
         The value of '0' is a reserved value which tells the SIP stack to use the default
         port.  When setting the value '0' furthermore, the SIP stack will not add port information
         for any SIP URI generated by it.  Some third party SIP entities are sensible to
         SIP URI format and are not able to properly parse a SIP URI containing the
         port number.  Therefore, the configured value of 0 should be used to prevent
         SIP URI format with the port number information."                       H"Those are the address used by the stack when it is setup behind a NAT."                      +"The port number for sending to the NAT.
         The value of '0' is a reserved value which tells the SIP stack to use the default
         port.  When setting the value '0' furthermore, the SIP stack will not add port information
         for any SIP URI generated by it.  Some third party SIP entities are sensible to
         SIP URI format and are not able to properly parse a SIP URI containing the
         port number.  Therefore, the configured value of 0 should be used to prevent
         SIP URI format with the port number information."                      b"Controls whether or not NAT keep alive messages are needed to be sent by the MTA
        and if so what kind.  Value is enum with the following values:
        0 (default): no NAT keep alive,
        1: use NOTIFY SIP method for NAT keepalive,
        2: use REGISTER SIP method for NAT keepalive,
        3: use PING SIP method for NAT keepalive."                       ?"Time out for NAT keep alive messages when feature is enabled."                       O"FQDN (or dotted IP address) of the destination for the NAT keep alive message"                              