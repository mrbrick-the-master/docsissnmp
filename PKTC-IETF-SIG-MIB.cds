    %"This TEXTUAL-CONVENTION represents the Signaling
         protocol being used for purposes such as caller id
         or VMWI.

         A value of fsk(1) indicates Frequency Shift Keying
         (FSK).
         A value of dtmf(2) indicates Dual-Tone Multi-Frequency
         (DTMF)."              	�" This TEXTUAL-CONVENTION defines various types of codecs
          that MAY be supported.  The description for each
          enumeration is listed below:

          Enumeration     Description
          other           a defined codec not in the enumeration
          unknown         a codec not defined by the PacketCable
                          Codec Specification
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
          ilbc            IETF Internet low-bit rate codec
          bv16            Broadcom BroadVoice16

          The list of codecs is consistent with the IETF
          Real-Time Transport Protocol (RTP) Profile registry and

          the RTP Map Parameters Table in PacketCable Audio/Video
          Codecs Specification [PKT-SP-CODEC].  The literal codec
          name for each codec is listed below:

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
          with codec RTP Map Parameters.  The Literal Codec Name Column
          contains the codec name used in the local connection
          options (LCO) of the NCS messages create connection
          (CRCX)/modify connection (MDCX) and is also used to
          identify the codec in the Call Management System (CMS)
          Provisioning Specification.  The RTP Map Parameter column of
          the Table contains the string used in the media attribute
          line (a=) of the session description protocol (SDP)
          parameters in NCS messages."              �"This TEXTUAL-CONVENTION represents the Dual-Tone
         Multi-Frequency (DTMF) Character used
         to indicate the start or end of the digit transition
         sequence used for caller id or Visual Message Waiting
         Indicator (VMWI).

         Note: The DTMF code '*' is indicated using 'dtmfcodeStar',
         and the DTMF code '#' is indicated using ' dtmfcodeHash'."              �"This object provides an encoding scheme for ring

          cadences, including repeatability characteristics.  All
          fields in this object MUST be encoded in network-byte
          order.

          The first three higher-order octets are reserved.  The
          octets that follow are used to encode a 'bit-string', with
          each bit corresponding to 50 milliseconds.  A bit value of
          '1' indicates the presence of a ring-tone, and a bit value
          of '0' indicates the absence of a ring-tone, for that
          duration (50 ms) (Note: A minimum number of octets
          required to encode the bit-string MUST be used).

          The first two of the reserved octets MUST indicate the
          length of the encoded cadence (in bits) and MUST range
          between 1 and 264.  (Note: The length in bits MUST also be
          consistent with the number of octets that encode the
          cadence).  The MTA MUST ignore any unused bits in the last
          octet, but MUST reflect the value as provided on
          subsequent SNMP GETs.

          The third of the reserved octets indicates 'repeatability'
          and MUST be either 0x80 or 0x00 -- the former value
          indicating 'non-repeatability', and the latter indicating
          'repeatability'.

          The MTA MUST reject attempts to set a value that violates
          any of the above requirements."              Q" This object lists the various types of signaling that may
          be supported:

          other(1) - set when signaling other than NCS is used
          ncs(2)   - Network Call Signaling is a derivation of MGCP
                    (Media Gateway Control Protocol) defined for
                     IPCablecom/PacketCable MTAs."               �"This TEXTUAL-CONVENTION represents power levels that are
         normally expressed in dBm.  Units are in tenths of a dBm;
         for example, -13.5 dBm will be represented as -135."                                                                        �"This MIB module supplies the basic management
        objects for the PacketCable and IPCablecom Signaling
        protocols.  This version of the MIB includes
        common signaling and Network Call Signaling

        (NCS)-related signaling objects.

        Copyright (C) The IETF Trust (2008).  This version of
        this MIB module is part of RFC 5098; see the RFC itself for
        full legal notices."�"Sumanth Channabasappa
         Cable Television Laboratories, Inc.
         858 Coal Creek Circle,
         Louisville, CO 80027, USA
         Phone: +1 303-661-3307
         Email: Sumanth@cablelabs.com

         Gordon Beacham
         Motorola, Inc.
         6450 Sequence Drive, Bldg. 1
         San Diego, CA 92121, USA
         Phone: +1 858-404-2334
         Email: gordon.beacham@motorola.com

         Satish Kumar Mudugere Eswaraiah
         Texas Instruments India (P) Ltd.,
         Golf view, Wind Tunnel Road
         Murugesh Palya
         Bangalore 560 017, INDIA
         Phone:   +91 80 5269451
         Email:  satish.kumar@ti.com

    IETF IPCDN Working Group
         General Discussion: ipcdn@ietf.org
         Subscribe: http://www.ietf.org/mailman/listinfo/ipcdn
         Archive: ftp://ftp.ietf.org/ietf-mail-archive/ipcdn
         Co-Chair: Jean-Francois Mule, jf.mule@cablelabs.com
         Co-Chair: Richard Woundy, Richard_Woundy@cable.comcast.com" "200712180000Z" )"Initial version, published as RFC 5098."       -- December 18, 2007
              6" This table describes the MTA-supported codec types.  An MTA
          MUST populate this table with all possible combinations of
          codecs it supports for simultaneous operation.  For example,
          an MTA with two endpoints may be designed with a particular
          Digital Signal Processing (DSP) and memory architecture that
          allows it to support the following fixed combinations of
          codecs for simultaneous operation:

          Codec Type     Maximum Number of Simultaneous Codecs
          PCMA                             3

          PCMA                             2
          PCMU                             1

          PCMA                             1

          PCMU                             2

          PCMU                             3

          PCMA                             1
          G729                             1

          G729                             2

          PCMU                             1
          G729                             1

          Based on this example, the entries in the codec table
          would be:

            pktcSigDev        pktcSigDev        pktcSigDev
          CodecComboIndex     CodecType          CodecMax
                 1               pcma                3
                 2               pcma                2
                 2               pcmu                1

                 3               pcma                1
                 3               pcmu                2
                 4               pcmu                3
                 5               pcma                1
                 5               g729                1
                 6               g729                2
                 7               pcmu                1
                 7               g729                1

          An operator querying this table is able to determine all
          possible codec combinations the MTA is capable of
          simultaneously supporting.

          This table MUST NOT include non-voice codecs."                      ""Each entry represents the maximum number of active
         connections with a particular codec the MTA is capable of
         supporting.  Each row is indexed by a composite key
         consisting of a number enumerating the particular codec
         combination and the codec type."                       i" The index value that enumerates a particular codec
          combination in the pktcSigDevCodecTable."                       &" A codec type supported by this MTA."                       i" The maximum number of simultaneous sessions of a
          particular codec that the MTA can support."                       �" This object specifies if the device is capable of echo
          cancellation.  The MTA MUST set this MIB object to a
          value of true(1) if it is capable of echo
          cancellation, and a value of false(2) if not."                       " This object specifies if the device is capable of
          silence suppression (as a result of Voice Activity
          Detection).  The MTA MUST set this MIB object to a
          value of true(1) if it is capable of silence
          suppression, and a value of false(2) if not."                      W"This object is used to configure the subscriber-line
         protocol used for signaling on-hook caller id information.

         Different countries define different caller id signaling
         protocols to support caller identification.

         Setting this object at a value fsk(1) sets the subscriber
         line protocol to be Frequency Shift Keying (FSK).

         Setting this object at a value dtmf(2) sets the subscriber
         line protocol to be Dual-Tone Multi-Frequency (DTMF).

         The value of this MIB object MUST NOT persist across MTA
         reboots." !"ETSI-EN-300-659-1 Specification"                     �" This object specifies ring cadence 0 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence 1 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence 2 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence 3 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence 4 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence 5 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence 6 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence 7 (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence rg (a user-defined
          field).

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" This object specifies ring cadence rs (a user-defined
          field).  The MTA MUST reject any attempt to make this object
          repeatable.

          The value of this MIB object MUST NOT persist across MTA
          reboots."                       �" The default value used in the IP header for setting the
          Differentiated Services Code Point (DSCP) value for call

          signaling.

          The value of this MIB object MUST NOT persist across MTA
          reboots."           -- RFC 3289: DIFFSERV-DSCP-TC
          �" This object contains the default value used in the IP
          header for setting the Differentiated Services Code Point
          (DSCP) value for media stream packets.  The MTA MUST NOT
          update this object with the value supplied by the CMS in
          the NCS messages (if present).  Any currently active
          connections are not affected by updates to this object.
          When the value of this object is updated by SNMP, the MTA
          MUST use the new value as a default starting only from
          new connections.

          The value of this MIB object MUST NOT persist across MTA
          reboots."           -- RFC 3289: DIFFSERV-DSCP-TC
           M" This table describes the signaling types supported by this
          MTA."                      o" Entries in pktcMtaDevSigCapabilityTable - list of
          supported signaling types, versions, and vendor extensions

          for this MTA.  Each entry in the list provides for one
          signaling type and version combination.  If the device
          supports multiple versions of the same signaling type, it
          will require multiple entries."                       ^" The index value that uniquely identifies an entry in the
          pktcSigCapabilityTable."                       �" This object identifies the type of signaling used.  This
          value has to be associated with a single signaling
          version."                       " Provides the version of the signaling type - reference
          pktcSigCapabilityType.  Examples would be 1.0 or 2.33 etc."                      )" The vendor extension allows vendors to provide a list of

          additional capabilities.

          The syntax for this MIB object in ABNF ([RFC5234]) is
          specified to be zero or more occurrences of vendor
          extensions, as follows:

           pktcSigCapabilityVendorExt  = *(vendor-extension)
           vendor-extension = (ext symbol alphanum) DQUOTE ; DQUOTE
           ext      = DQUOTE %x58 DQUOTE
           symbol   = (DQUOTE %x2D DQUOTE)/(DQUOTE %x2D DQUOTE)
           alphanum = 1*6(ALPHA/DIGIT)

        "                      =" This object contains the MTA User Datagram Protocol (UDP)
          receive port that is being used for NCS call signaling.
          This object should only be changed by the configuration
          file.

          Unless changed via configuration, this MIB object MUST
          reflect a value of '2427'." "PacketCable NCS Specification"                    �" This object must only be provided via the configuration
          file during the provisioning process.  The power ring

          frequency is the frequency at which the sinusoidal voltage
          must travel down the twisted pair to make terminal
          equipment ring.  Different countries define different
          electrical characteristics to make terminal equipment
          ring.

          The f20Hz setting corresponds to a power ring frequency
          of 20 Hertz.  The f25Hz setting corresponds to a power ring
          frequency of 25 Hertz.  The f33Point33Hz setting
          corresponds to a power ring frequency of 33.33 Hertz.  The
          f50Hz setting corresponds to a power ring frequency of 50
          Hertz.  The f15Hz setting corresponds to a power ring
          frequency of 15 Hertz.  The f16Hz setting corresponds to a
          power ring frequency of 16 Hertz.  The f22Hz setting
          corresponds to a power ring frequency of 22 Hertz.  The
          f23Hz setting corresponds to a power ring frequency of 23
          Hertz.  The f45Hz setting corresponds to a power ring
          frequency of 45 Hertz." "ETSI-EN-300-001"                    �" The Pulse signal table defines the pulse signal operation.
          There are nine types of international pulse signals,
          with each signal having a set of provisionable parameters.
          The values of the MIB objects in this table take effect
          only if these parameters are not defined via signaling, in
          which case, the latter determines the values of the
          parameters.  The MIB objects in this table do not persist
          across MTA reboots." !"ETSI-TS-101-909-4 Specification"                    0" This object defines the set of parameters associated with
          each particular value of pktcSigPulseSignalType.  Each
          entry in the pktcSigPulseSignalTable is indexed by the
          pktcSigPulseSignalType object.

          The conceptual rows MUST NOT persist across MTA reboots."                      h"There are nine types of international pulse signals.  These
         signals are defined as follows:
         initial ring
         pulse loop close
         pulse loop open
         enable meter pulse
         meter pulse burst
         pulse no battery
         pulse normal polarity
         pulse reduced battery
         pulse reverse polarity" !"ETSI-EN-300-324-1 Specification"                    �" This object is only applicable to the initialRing,
          enableMeterPulse, and meterPulseBurst signal types.  This
          object identifies the frequency of the generated signal.
          The following table defines the default values for this
          object depending on signal type:

          pktcSigPulseSignalType     Default
          initialRing                25
          enableMeterPulse           16000
          meterPulseBurst            16000

          The value of twentyfive MUST only be used for the
          initialRing signal type.  The values of twelvethousand and
          sixteenthousand MUST only be used for enableMeterPulse and
          meterPulseBurst signal types.  An attempt to set this
          object while the value of pktcSigPulseSignalType is not
          initialRing, enableMeterPulse, or meterPulseBurst will
          result in an 'inconsistentValue' error." "ETSI-EN-300-001 Specification"                    �" This object is only applicable to the enableMeterPulse and
          meterPulseBurst signal types.  This is the decibel level
          for each frequency at which tones could be generated at
          the a and b terminals (TE connection point).  An attempt to
          set this object while the value of pktcSigPulseSignalType
          is not enableMeterPulse or meterPulseBurst will result in
          an 'inconsistentValue' error." "ETSI-EN-300-001 Specification"                    �" This object specifies the pulse duration for each
          signal type.  In addition, the MTA must accept the values
          in the incremental steps specific for each signal type.
          The following table defines the default values and the
          incremental steps for this object depending on the signal
          type:

          pktcSigPulseSignaltype  Default (ms)   Increment (ms)
          initialRing                 200             50
          pulseLoopClose              200             10
          pulseLoopOpen               200             10
          enableMeterPulse            150             10
          meterPulseBurst             150             10
          pulseNoBattery              200             10
          pulseNormalPolarity         200             10
          pulseReducedBattery         200             10
          pulseReversePolarity        200             10

          An attempt to set this object to a value that does not
          fall on one of the increment boundaries, or on the wrong
          increment boundary for the specific signal type, will
          result in an 'inconsistentValue' error." !"ETSI-EN-300-324-1 Specification"                    �" This object specifies the repeat interval, or the period,
          for each signal type.  In addition, the MTA must accept
          the values in the incremental steps specific for each
          signal type.  The following table defines the default
          values and the incremental steps for this object, depending
          on the signal type:

          pktcSigPulseSignaltype  Default (ms)   Increment (ms)
          initialRing                 200             50
          pulseLoopClose             1000             10
          pulseLoopOpen              1000             10

          enableMeterPulse           1000             10
          meterPulseBurst            1000             10
          pulseNoBattery             1000             10
          pulseNormalPolarity        1000             10
          pulseReducedBattery        1000             10
          pulseReversePolarity       1000             10

          An attempt to set this object to a value that does not
          fall on one of the increment boundaries, or on the wrong
          increment boundary for the specific signal type, will
          result in an 'inconsistentValue' error." !"ETSI-EN-300-324-1 Specification"                    " This object specifies how many times to repeat a pulse.
          This object is not used by the enableMeterPulse signal
          type, and in that case, the value is irrelevant.  The
          following table defines the default values and the valid
          ranges for this object, depending on the signal type:

          pktcSigPulseSignaltype  Default   Range

          initialRing                1       1-5
          pulseLoopClose             1       1-50
          pulseLoopOpen              1       1-50
          enableMeterPulse      (any value)(but not used)
          meterPulseBurst            1       1-50
          pulseNoBattery             1       1-50
          pulseNormalPolarity        1       1-50
          pulseReducedBattery        1       1-50
          pulseReversePolarity       1       1-50

          An attempt to set this object to a value that does not
          fall within the range for the specific
          signal type will result in an 'inconsistentValue' error."                      P" For on-hook caller id, pktcSigDevCidMode selects the method
          for representing and signaling caller identification.  For
          the duringRingingETS method, the Frequency Shift Keying
          (FSK) or the Dual-Tone Multi-Frequency (DTMF) containing
          the caller identification information is sent between the
          first and second ring pattern.

          For the dtAsETS,rpAsETS, lrAsETS and lrETS
          methods, the FSK or DTMF containing the caller id
          information is sent before the first ring pattern.

          For the dtAsETS method, the FSK or DTMF is sent after the
          Dual Tone Alert Signal.  For the rpAsETS method, the FSK or
          DTMF is sent after a Ring Pulse.

          For the lrAsETS method, the Line Reversal occurs first,
          then the Dual Tone Alert Signal, and, finally, the FSK or
          DTMF is sent.

          For the lrETS method, the Line Reversal occurs first,
          then the FSK or DTMF is sent.

          The value of this MIB object MUST NOT persist across MTA
          reboots."                      M" This object specifies the delay between the end of first
          ringing pattern and the start of the transmission of the
          FSK or DTMF containing the caller id information.  It is
          only used when pktcSigDevCidMode is set to a value of
          'duringRingingETS'.

          The following table defines the default values
          for this MIB object, depending on the signal type

         (pktcSigDevCidMode), and MUST be followed:

          Value of pktcSigDevCidMode       Default value

          duringringingETS                 550 ms
          dtAsETS                          any value (not used)
          rpAsETS                          any value (not used)
          lrAsETS                          any value (not used)
          lrETS                            any value (not used)

          An attempt to set this object while the value of
          pktcSigDevCidMode is not duringringingETS will result in
          an 'inconsistentValue' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    h" This object specifies the delay between the end of the
          Dual Tone Alert Signal (DT-AS) and the start of the
          transmission of the FSK or DTMF containing the caller id
          information.  This object is only used when
          pktcSigDevCidMode is set to a value of 'dtAsETS' or
          'lrAsETS'.

          The following table defines the default values
          for this MIB object, depending on the signal type
         (pktcSigDevCidMode), and MUST be followed:

          Value of pktcSigDevCidMode       Default value

          duringringingETS                 any value (not used)
          dtAsETS                          50 ms
          rpAsETS                          any value (not used)
          lrAsETS                          50 ms
          lrETS                            any value (not used)

          An attempt to set this object while the value of

          pktcSigDevCidMode is not 'dtAsETS' or 'lrAsETS' will
          result in an 'inconsistentValue' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    X" This object specifies the delay between the end of the
          Ring Pulse Alert Signal (RP-AS) and the start of the
          transmission of the FSK or DTMF containing the caller id
          information.  This MIB object is only used when
          pktcSigDevCidMode is set to a value of 'rpAsETS'.
          The following table defines the default values
          for this MIB object, depending on the signal type
         (pktcSigDevCidMode), and MUST be followed:

          Value of pktcSigDevCidMode       Default value

          duringringingETS                 any value  (not used)
          dtAsETS                          any value  (not used)
          rpAsETS                          650 ms
          lrAsETS                          any value  (not used)
          lrETS                            any value  (not used)

          An attempt to set this object while the value of
          pktcSigDevCidMode is not 'rpAsETS' will result in an
          'inconsistentValue' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    v" This object specifies the delay between the end of the
          complete transmission of the FSK or DTMF containing the
          caller id information and the start of the first ring
          pattern.  It is only used when pktcSigDevCidMode is
          set to a value of 'dtAsETS', 'rpAsETS', 'lrAsETS' or
          'lrETS'.

          The following table defines the default values
          for this MIB object, depending on the signal type
         (pktcSigDevCidMode), and MUST be followed:

          Value of pktcSigDevCidMode       Default value

          duringringingETS                 any value  (not used)
          dtAsETS                          250 ms
          rpAsETS                          250 ms
          lrAsETS                          250 ms
          lrETS                            250 ms

          An attempt to set this object while the value of
          pktcSigDevCidMode is not 'dtAsETS', 'rpAsETS',
          'lrAsETS', or 'lrETS' will result in an 'inconsistent
          value' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    " This object specifies the delay between the end of the
          Line Reversal and the start of the Dual Tone Alert Signal
          (DT-AS).  This object is only used when pktcSigDevCidMode
          is set to a value of 'lrAsETS'.

          The following table defines the default values
          for this MIB object, depending on the signal type
         (pktcSigDevCidMode), and MUST be followed:

          Value of pktcSigDevCidMode       Default value

          duringringingETS                 any value  (not used)
          dtAsETS                          any value  (not used)
          rpAsETS                          any value  (not used)
          lrAsETS                          250 ms
          lrETS                            any value  (not used)

          An attempt to set this object while the value of
          pktcSigDevCidMode is not lrAsETS will result in an
          'inconsistentValue' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    �" For visual message waiting indicator (VMWI),
          pktcSigDevVmwiMode selects the alerting signal method.  For
          the dtAsETS, rpAsETS, lrAsETS, osi, and lrETS methods,
          the FSK containing the VMWI information is sent after an
          alerting signal.

          For the dtAsETS method, the FSK, or DTMF
          is sent after the Dual Tone Alert Signal.  For the rpAsETS
          method, the FSK or DTMF is sent after a Ring Pulse.

          For the lrAsETS method, the Line Reversal occurs first,
          then the Dual Tone Alert Signal, and, finally, the FSK or
          DTMF is sent.

          For the OSI method, the FSK or DTMF is sent after the Open
          Switching Interval.

          For the lrETS method, the Line Reversal occurs first,
          then the FSK or DTMF is sent.

          The value of this MIB object MUST NOT persist across MTA
          reboots."                      +" This object specifies the delay between the end of the
          Dual Tone Alert Signal (DT-AS) and the start of the
          transmission of the FSK or DTMF containing the VMWI
          information.

          This object is only used when pktcSigDevVmwiMode is
          set to a value of 'dtAsETS' or 'lrAsETS'.

          The following table defines the default values
          for this MIB object, depending on the signal type
         (pktcSigDevVmwiMode), and MUST be followed:

          Value of pktcSigDevVmwiMode       Default value

          dtAsETS                           50 ms
          rpAsETS                           any value  (not used)
          lrAsETS                           50 ms
          lrETS                             any value  (not used)

          An attempt to set this object while the value of
          pktcSigDevVmwiMode is not 'dtAsETS' or 'lrAsETS' will
          result in an 'inconsistentValue' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    #" This object specifies the delay between the end of the
          Ring Pulse Alert Signal (RP-AS) and the start of the
          transmission of the FSK or DTMF containing the VMWI
          information.

          This object is only used when pktcSigDevVmwiMode is
          set to a value of 'rpAsETS'.

          The following table defines the default values
          for this MIB object, depending on the signal type
         (pktcSigDevVmwiMode), and MUST be followed:

          Value of pktcSigDevVmwiMode       Default value

          dtAsETS                           any value  (not used)
          rpAsETS                           650 ms
          lrAsETS                           any value  (not used)
          lrETS                             any value  (not used)

          An attempt to set this object while the value of
          pktcSigDevVmwiMode is not 'rpAsETS' will result in an
          'inconsistentValue' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    �" This object specifies the delay between the end of the
          Line Reversal and the start of the Dual Tone Alert Signal
          (DT-AS) for VMWI information.  This object is only used
          when pktcSigDevVmwiMode is set to a value of 'lrAsETS'.

          The following table defines the default values
          for this MIB object, depending on the signal type
         (pktcSigDevVmwiMode), and MUST be followed:

          Value of pktcSigDevVmwiMode       Default value

          dtAsETS                           any value  (not used)
          rpAsETS                           any value  (not used)
          lrAsETS                           250 ms
          lrETS                             any value  (not used)

          An attempt to set this object while the value of
          pktcSigDevVmwiMode is not 'lrAsETS' will result in an
          'inconsistentValue' error.

          The value of this MIB object MUST NOT persist across MTA
          reboots." !"ETSI-EN-300-659-1 Specification"                    �"Cadence rings are defined by the telco governing
         body for each country.  The MTA must be able to support
         various ranges of cadence patterns and cadence periods.
         The MTA will be able to support country-specific
         provisioning of the cadence and idle period.  Each
         cadence pattern will be assigned a unique value ranging
         from 0-127 (inclusive) corresponding to the value of x,
         where x is the value sent in the cadence ringing (cr)
         signal cr(x), requested per the appropriate NCS
         message, and defined in the E package.  The MTA will derive
         the cadence periods from the ring cadence table entry, as
         provisioned by the customer.  The MTA is allowed to provide
         appropriate default values for each of the ring cadences.
         This table only needs to be supported when the MTA
         implements the E package." !"ETSI-TS-101-909-4 Specification"                     �" Each entry in this row corresponds to a ring cadence
          that is being supported by the device.  The conceptual
          rows MUST NOT persist across MTA reboots."                      �" A unique value ranging from 0 to 127 that corresponds to the
          value sent by the LE based on country-specific cadences,
          one row per cadence cycle.  In any given system
          implementation for a particular country, it is anticipated
          that a small number of ring cadences will be in use.  Thus,
          this table most likely will not be populated to its full
          size."                       "This is the Ring Cadence."                      i" The Tone Table defines the composition of tones and
          various tone operations.

          The definition of the tones callWaiting1 through
          callWaiting4 in this table MUST only contain the
          audible tone itself; the delay between tones or the value
          of the tone repeat count are not applicable for the call
          waiting tones.

          The delay between tones or the repeat count is controlled
          by the objects pktcSigEndPntConfigCallWaitingDelay and
          pktcSigEndPntConfigCallWaitingMaxRep.  If the
          pktcSigDevToneType is set to either of the values
          callWaiting1, callWaiting2, callWaiting3, or callWaiting4,
          then the value of the pktcSigDevToneWholeToneRepeatCount
          object indicates that the particular frequency group is
          applicable, as a repeatable part of the tone, based on the
          value of the MIB object
          pktcSigDevToneWholeToneRepeatCount.

          The MTA MUST make sure that, after the provisioning
          cycle, the table is fully populated (i.e., for each
          possible index, an entry MUST be defined) using
          reasonable defaults for each row that was not defined
          by the provisioning information delivered via MTA
          Configuration.

          The frequency composition of each tone is defined by the
          pktcSigDevMultiFreqToneTable.  For each tone type defined
          in pktcSigDevToneTable, the MTA MUST populate at least
          one entry in the pktcSigDevMultiFreqToneTable.

          For each particular value of pktcSigDevToneType, the
          pktcSigDevToneTable table can define non-repeating and
          repeating groups of the frequencies defined by the
          pktcSigDevMultiFreqToneTable, such that each group is
          represented by the set of the consecutive rows
          (frequency group) in the pktcSigDevMultiFreqToneTable.

          Objects in this table do not persist across MTA reboots.
          For tones with multiple frequencies refer to the MIB table
          pktcSigDevMultiFreqToneTable." K"PacketCable NCS Specification, ETSI-TS-101-909-4
         Specification."                    �" The different tone types that can be provisioned based on
          country-specific needs.

          Each entry contains the tone generation parameters for
          a specific frequency group of the specific Tone Type.

          The different parameters can be provisioned via MTA
          configuration based on country specific needs.
          An MTA MUST populate all entries of this table for each
          tone type."                      �"A unique value that will correspond to the different
         tone types.  These tones can be provisioned based on
         country-specific needs.  This object defines the type
         of tone being accessed.

         The alertingSignal, specialDial, specialInfo, release,

         congestion, userDefined1, userDefined2, userDefined3,
         and userDefined4 tone types are used in
         the E line package."                       ^"This MIB object represents the Tone Sequence reference
           of a multi-sequence tone."                      k"This MIB object represents the number of consecutive
           multi-frequency tones for the particular tone type in
           the multi-frequency table (pktcSigDevMultiFreqToneTable).

           Such a sequence of the consecutive multi-frequency tones
           forms the tone group for the particular tone type in the
           pktcSigDevToneTable."                      �"This is the repeat count, which signifies how many times
         to repeat the entire on-off cadence sequence.  Setting this
         object may result in a cadence duration longer or shorter
         than the overall signal duration specified by the time out
         (TO) object for a particular signal.  If the repeat count
         results in a longer tone duration than the signal duration
         specified by the TO, the tone duration defined by the
         TO object for a particular signal always represents
         the overall signal duration for a tone.  In this case, the
         tone duration repeat count will not be fully exercised, and
         the desired tone duration will be truncated per the TO
         setting.  If the repeat count results in a shorter tone
         duration than the signal duration specified by the TO, the
         tone duration defined by the repeat count takes precedence
         over the TO and will end the signal event.  In this case,

         the TO represents a time not to be exceeded for the signal.
         It is recommended to ensure proper telephony signaling so that
         the TO duration setting should always be longer than the
         desired repeat count-time duration."                      D"This MIB object represents the steady tone status.  A value
         of 'true(1)' indicates that the steady tone is applied, and
         a value of 'false(2)' indicates otherwise.
         Devices must play out the on-off cadence sequence for
         the number of times indicated by the MIB object
         'pktcSigDevToneWholeToneRepeatCount' prior to applying the
         last tone steadily, indefinitely.  If the MIB table
         'pktcSigDevToneTable' contains multiple rows with this
         Object set to a value of 'true(1)', the steady tone is
         applied to the last repeating frequency group of the tone.

         Setting this MIB object may result in a tone duration that is
         longer or shorter than the overall signal duration
         specified by the time out (TO) MIB object for a particular
         signal.  If the repeat count results in a longer tone
         duration than the signal duration specified by the TO, the
         tone duration defined by the TO object for a particular
         signal always represents the overall signal duration for a
         tone.  In this case, the tone duration repeat count will
         not be fully exercised, and the desired tone duration will
         be truncated per the TO setting.  If the repeat count
         results in a shorter tone duration than the signal duration
         specified by the TO, the tone duration defined by the
         repeat count takes precedence over the TO and will end the
         signal event.  In this case, the TO represents a time not to
         be exceeded for the signal.

         It is recommended to ensure proper telephony signaling that
         The TO duration setting should always be longer than the
         desired repeat count-time duration, plus the desired maximum
         steady tone period."                      $" This MIB table defines the characteristics of tones
             with multiple frequencies.  The constraints imposed
             on the tones by the MIB table pktcSigDevToneTable
             need to be considered for MIB objects in this table
             as well.

             The MTA MUST populate the corresponding row(s)
             of the pktcSigDevMultiFreqToneTable for each tone
             defined in the pktcSigDevToneTable.

             The contents of the table may be provisioned via
             MTA configuration." N"PacketCable NCS Specification, ETSI-TS-101-909-4
            Specification."                     �" The different tone types with multiple frequencies
             that can be provisioned based on country-specific
             needs."                       ["This MIB object represents the frequency reference
           of a multi-frequency tone."                       �"This MIB object represents the value of the first
          frequency of a tone type.  A value of zero implies
          absence of the referenced frequency."                       �"This MIB object represents the value of the second
          frequency of a tone type.  A value of zero implies
          absence of the referenced frequency."                       �"This MIB object represents the value of the third
          frequency of a tone type.  A value of zero implies
          absence of the referenced frequency."                       �"This MIB object represents the value of the fourth
          frequency of a tone type.  A value of zero implies
          absence of the referenced frequency."                      �"This MIB object provides directive on the
        modulation or summation of the frequencies
        involved in the tone.

        It is to be noted that while summation can
        be done without any constraint on the number
        of frequencies, the modulation (amplitude)
        holds good only when there are two frequencies
        (first and second).

        Thus:
          - If the mode is set to a value of
            'firstModulatedBySecond(1)', the first frequency
            MUST be modulated by the second, and the remaining
            frequencies (third and fourth) ignored.  The
            percentage of amplitude modulation to be applied
            is defined by the MIB object
            pktcSigDevToneFreqAmpModePrtg.

          - If the mode is set to a value of
            'summation(2)', all the frequencies MUST be
            summed without any modulation.
       "                      ~"This MIB object represents the percentage of amplitude
           modulation applied to the second frequency
           when the MIB object pktcSigDevToneFreqMode is
           set to a value of 'firstModulatedBySecond (1)'.

           If the MIB object pktcSigDevToneFreqMode is set to
           value of 'summation (2)', then this MIB object MUST be
           ignored."                      )"This MIB object contains the decibel level for each
           analog signal (tone) that is locally generated
           (versus in-band supervisory tones) and sourced to
           the a-b terminals (TE connection point).  Each tone
           in itself may consist of multiple frequencies, as
           defined by the MIB table pktcSigDevMultiFreqToneTable.

           This MIB object reflects the desired level at
           the Telco (POTS) a-b (T/R) terminals, including the
           effect of any MTA receiver gain (loss).  This is required
           so that locally generated tones are consistent with
           remotely generated in-band tones at the a-b terminals,
           consistent with user expectations.

           This MIB object must be set for each tone.
           When tones are formed by combining multi-frequencies,
           the level of each frequency shall be set so as to result
           in the tone level specified in this object at the a-b
           (T/R) terminals.

           The wide range of levels for this Object is required
           to provide signal-generator levels across the wide
           range of gains (losses) -- but does not imply the entire
           range is to be achievable given the range of gains (losses)
           in the MTA."                       �"This MIB object represents the duration for which the
           frequency reference corresponding to the tone type
           is turned on."                       �"This MIB object represents the duration for which the

           frequency reference corresponding to the tone type
           is turned off."                      "This MIB object indicates the number of times
       to repeat the cadence cycle represented by the
       on/off durations (refer to the MIB objects
       pktcSigDevToneFreqOnDuration and
       pktcSigDevToneFreqOffDuration).

       Setting this object may result in a tone duration that is
       longer or shorter than the overall signal duration
       specified by the time out (TO) object for the
       corresponding tone type.  If the value of this MIB
       Object indicates a longer duration than that
       specified by the TO, the latter overrules the former,
       and the desired tone duration will be truncated according
       to the TO.

       However, if the repeat count results in a shorter
       tone duration than the signal duration specified by
       the TO, the tone duration defined by the repeat count
       takes precedence over the TO and will end the signal
       event.  In this case, the TO represents a time not to
       be exceeded for the signal.  It is recommended, to
       ensure proper telephony signaling, that the TO
       duration setting should always be longer than the
       desired repeat count-time duration.  A value of zero
       means the tone sequence is to be played once but not
       repeated."                      b"This object specifies the delay between the end of the
            Line Reversal and the start of the FSK or DTMF signal.
            This MIB object is used only when pktcSigDevCidMode is
            set to a value of 'lrETS'.  This timing has a range of
            300 to 800 ms.

            The following table defines the default values
            for this MIB object, depending on the signal type
           (pktcSigDevCidMode), and MUST be followed:

          Value of pktcSigDevCidMode       Default value

            duringringingETS               any value  (not used)
            dtAsETS                        any value  (not used)
            rpAsETS                        any value  (not used)
            lrAsETS                        any value  (not used)
            lrETS                          400

            An attempt to set this object while the value of
            pktcSigDevCidMode is not set to a value of 'lrETS' will
            result in an 'inconsistentValue' error.

            The value of this MIB object MUST NOT persist across MTA
            reboots."                      �"This object identifies optional start codes used when
            the MIB object pktcSigDevCidSigProtocol is set
            to a value of 'dtmf(2)'.

            Different countries define different caller id signaling
            codes to support caller identification.  When Dual-Tone
            Multi-Frequency (DTMF) is used, the caller id digits are
            preceded by a 'start code' digit, followed by the digit
            transmission sequence <S1>...<Sn> (where Sx represents
            the digits 0-9), and terminated by the 'end code' digit.

            For example,
              <A><S1>...<Sn> <D><S1>...<Sn> <B><S1>...<Sn> <C>.
            The start code for calling number delivery may be DTMF
            'A' or 'D'.  The start code for redirecting a number may be
            DTMF 'D'.  The DTMF code 'B' may be sent by the network
            as a start code for the transfer of information values,
            through which special events can be indicated to the
            user.  In some countries, the '*' or '#' may be used
            instead of 'A', 'B', 'C', or 'D'.

            The value of this MIB object MUST NOT persist across MTA

            reboots." !"ETSI-EN-300-659-1 specification"                    -"This object identifies optional end codes used when the
            pktcSigDevCidSigProtocol is set to a value of
            'dtmf(2)'.

            Different countries define different caller id signaling
            protocols to support caller identification.  When
            Dual-Tone Multi-Frequency (DTMF) is used, the caller id
            digits are preceded by a 'start code' digit, followed by
            the digit transmission sequence <S1>...<Sn> (where Sx
            represents the digits 0-9), and terminated by the 'end
            code' digit.

            For example,
              <A><S1>...<Sn> <D><S1>...<Sn> <B><S1>...<Sn> <C>.

            The DTMF code 'C' may be sent by the network as an
            end code for the transfer of information values, through
            which special events can be indicated to the user.  In
            some countries, the '*' or '#' may be used instead of
            'A', 'B', 'C', or 'D'.

            The value of this MIB object MUST NOT persist across MTA
            reboots." !"ETSI-EN-300-659-1 specification"                    �"This object identifies the subscriber line protocol used
            for signaling the information on Visual Message Waiting
            Indicator (VMWI).  Different countries define different
            VMWI signaling protocols to support VMWI service.

            Frequency shift keying (FSK) is most commonly used.
            DTMF is an alternative.

            The value of this MIB object MUST NOT persist across MTA
            reboots."                      `"This object specifies the delay between the end of the
            Line Reversal and the start of the FSK or DTMF signal.
            This object is only used when pktcSigDevVmwiMode is
            set to a value of 'lrETS'.
            This timing has a range of 300 to 800 ms.

            The following table defines the default values
            for this MIB object, depending on the signal type
           (pktcSigDevVmwiMode), and MUST be followed:

            Value of pktcSigDevVmwiMode       Default value

            duringringingETS                  any value  (not used)
            dtAsETS                           any value  (not used)
            rpAsETS                           any value  (not used)
            lrAsETS                           any value  (not used)
            lrETS                             400

            An attempt to set this object while the value of
            pktcSigDevVmwiMode is not 'lrETS' will result in an
            'inconsistentValue' error.

            The value of this MIB object MUST NOT persist across MTA
            reboots."                      s"This object identifies optional start codes used when

            the pktcSigDevVmwiSigProtocol is set to a value of
            'dtmf(2)'.  Different countries define different On Hook
            Data Transmission Protocol signaling codes to support
            VMWI.

            When Dual-Tone Multi-Frequency (DTMF) is used, the VMWI
            digits are preceded by a 'start code' digit, followed
            by the digit transmission sequence <S1>...<Sn> (where
            Sx represents the digits 0-9), and terminated by the 'end
            code' digit.

            For example,
              <A><S1>...<Sn> <D><S1>...<Sn> <B><S1>...<Sn> <C>.

            The start code for redirecting VMWI may be DTMF 'D'
            The DTMF code 'B' may be sent by the network as a start
            code for the transfer of information values, through
            which special events can be indicated to the user.  In
            some countries, the '*' or '#' may be used instead of
            'A', 'B', 'C', or 'D'.

            The value of this MIB object MUST NOT persist across MTA
            reboots." !"ETSI-EN-300-659-1 specification"                    /"This object identifies an optional end code used when the
            pktcSigDevVmwiSigProtocol is set to a value of
            'dtmf(2)'.  Different countries define different on-hook
            Data Transmission Protocol signaling codes to support
            VMWI.

            When Dual-Tone Multi-Frequency (DTMF) is used, the VMWI
            digits are preceded by a 'start code' digit, followed
            by the digit transmission sequence <S1>...<Sn> (where
            Sx represents the digits 0-9), and terminated by the 'end
            code' digit.

            For example,
              <A><S1>...<Sn> <D><S1>...<Sn> <B><S1>...<Sn> <C>.

            The DTMF code 'C' may be sent by the network as an end code
            for the transfer of information values, through which
            special events can be indicated to the user.  In some
            countries, the '*' or '#' may be used instead of 'A',
            'B', 'C', or 'D'.

            The value of this MIB object MUST NOT persist across MTA
            reboots." !"ETSI-EN-300-659-1 specification"                    i" This object specifies the duration of the rpASDTS ring
             pulse prior to the start of the transmission of the
             FSK or DTMF containing the caller id information.  It is
             only used when pktcSigDevCidMode is set to a value of
             'rpAsETS'.

             The following table defines the default values
             for this MIB object, depending on the signal type
            (pktcSigDevCidMode), and MUST be followed:

             Value of pktcSigDevCidMode       Default value

             duringringingETS                 any value  (not used)
             dtAsETS                          any value  (not used)
             rpAsETS                          250
             lrAsETS                          any value  (not used)
             lrETS                            any value  (not used)

             An attempt to set this object while the value of
             pktcSigDevCidMode is not 'rpAsETS' will result in
             an 'inconsistentValue' error.

            The value of this MIB object MUST NOT persist across MTA
            reboots." `"ETSI-EN-300-659-1 Specification and Belgacom
            BGC_D_48_9811_30_09_EDOC version 3.3"                        d" This table describes the information pertaining to each
          endpoint of the MTA.  All entries in this table represent
          the provisioned endpoints provisioned with the information
          required by the MTA to maintain the NCS protocol
          communication with the CMS.  Each endpoint can be assigned
          to its own CMS.  If the specific endpoint does not have
          the corresponding CMS information in this table, the
          endpoint is considered as not provisioned with voice
          services.  Objects in this table do not persist across
          MTA reboots."                       �"Each entry in the pktcSigEndPntConfigTable represents
         required signaling parameters for the specific endpoint
         provisioned with voice services.  The conceptual rows MUST
         NOT persist across MTA reboots."                      �" This object contains a string indicating the call agent
          name (e.g., ca@example.com).  The call agent name, after
          the character '@', MUST be a fully qualified domain name
          (FQDN) and MUST have a corresponding pktcMtaDevCmsFqdn
          entry in the pktcMtaDevCmsTable.  The object
          pktcMtaDevCmsFqdn is defined in the PacketCable MIBMTA
          Specification.  For each particular endpoint, the MTA MUST
          use the current value of this object to communicate with
          the corresponding CMS.  The MTA MUST update this object
          with the value of the 'Notified Entity' parameter of the
          NCS message.  Because of the high importance of this object
          to the ability of the MTA to maintain reliable NCS
          communication with the CMS, it is highly recommended not
          to change this object's value using SNMP during normal
          operation."                      i" This object contains the current value of the User
          Datagram Protocol (UDP) receive port on which the
          call agent will receive NCS from the endpoint.
          For each particular endpoint, the MTA MUST use the current
          value of this object to communicate with the corresponding
          CMS.  The MTA MUST update this object with the value of the
          'Notified Entity' parameter of the NCS message.  If the
          Notified Entity parameter does not contain a CallAgent
          port, the MTA MUST update this object with the default
          value of 2727.  Because of the high importance of this
          object to the ability of the MTA to maintain reliable NCS
          communication with the CMS, it is highly recommended not
          to change this object's value using SNMP during normal
          operation." "PacketCable NCS Specification"                    �"This object contains the value of the partial dial
         time out.
         The time out (TO) elements are intended to limit the time a
         tone or frequency is generated.  When this MIB object is set
         to a value of '0', the MTA MUST NOT generate the
         corresponding frequency or tone, regardless of the
         definitions pertaining to frequency, tone duration, or
         cadence." "PacketCable NCS Specification"                    �"This object contains the value of the critical
         dial time out.
         The time out (TO) elements are intended to limit the time a
         tone or frequency is generated.  When this MIB object is set
         to a value of '0', the MTA MUST NOT generate the
         corresponding frequency or tone, regardless of the
         definitions pertaining to frequency, tone duration, or
         cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for busy
          tone.  The MTA MUST NOT update this object with the
          value provided in the NCS message (if present).  If
          the value of the object is modified by the SNMP Management
          Station, the MTA MUST use the new value as a default only
          for a new signal requested by the NCS message.
          The time out (TO) elements are intended to limit the time
          a tone or frequency is generated.  When this MIB object is
          set to a value of '0', the MTA MUST NOT generate the
          corresponding frequency or tone, regardless of the
          definitions pertaining to frequency, tone duration, or
          cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for dial
          tone.  The MTA MUST NOT update this object with the
          value provided in the NCS message (if present).  If

          the value of the object is modified by the SNMP Management
          Station, the MTA MUST use the new value as a default only
          for a new signal requested by the NCS message.
          The time out (TO) elements are intended to limit the time
          a tone or frequency is generated.  When this MIB object is
          set to a value of '0', the MTA MUST NOT generate the
          corresponding frequency or tone, regardless of the
          definitions pertaining to frequency, tone duration, or
          cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for message
          waiting indicator.  The MTA MUST NOT update this object
          with the value provided in the NCS message (if
          present).  If the value of the object is modified by the
          SNMP Manager application, the MTA MUST use the new value
          as a default only for a new signal requested by the NCS
          message.
          The time out (TO) elements are intended to limit the time
          a tone or frequency is generated.  When this MIB object is
          set to a value of '0', the MTA MUST NOT generate the
          corresponding frequency or tone, regardless of the
          definitions pertaining to frequency, tone duration, or
          cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for the
          off-hook warning tone.  The MTA MUST NOT update this object
          with the value provided in the NCS message (if present).  If
          the value of the object is modified by the SNMP Manager

          application, the MTA MUST use the new value as a default
          only for a new signal requested by the NCS message.  The
          time out (TO) elements are intended to limit the time a tone
          or frequency is generated.  When this MIB object is set to a
          value of '0', the MTA MUST NOT generate the corresponding
          frequency or tone, regardless of the definitions pertaining
          to frequency, tone duration, or cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for
          ringing.  The MTA MUST NOT update this object with the
          value provided in the NCS message (if present).  If
          the value of the object is modified by the SNMP Management
          Station, the MTA MUST use the new value as a default only
          for a new signal requested by the NCS message.
          The time out (TO) elements are intended to limit the time
          a tone or frequency is generated.  When this MIB object is
          set to a value of '0', the MTA MUST NOT generate the
          corresponding frequency or tone, regardless of the
          definitions pertaining to frequency, tone duration, or
          cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for ring
          back.  The MTA MUST NOT update this object with the
          value provided in the NCS message (if present).  If
          the value of the object is modified by the SNMP Management
          Station, the MTA MUST use the new value as a default only
          for a new signal requested by the NCS message.
          The time out (TO) elements are intended to limit the time

          a tone or frequency is generated.  When this MIB object is
          set to a value of '0', the MTA MUST NOT generate the
          corresponding frequency or tone, regardless of the
          definitions pertaining to frequency, tone duration, or
          cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for reorder
          tone.  The MTA MUST NOT update this object with the
          value provided in the NCS message (if present).  If
          the value of the object is modified by the SNMP Management
          Station, the MTA MUST use the new value as a default only
          for a new signal requested by the NCS message.
          The time out (TO) elements are intended to limit the time
          a tone or frequency is generated.  When this MIB object is
          set to a value of '0', the MTA MUST NOT generate the
          corresponding frequency or tone, regardless of the
          definitions pertaining to frequency, tone duration, or
          cadence." "PacketCable NCS Specification"                    �" This object contains the default time out value for stutter
          dial tone.  The MTA MUST NOT update this object with the
          value provided in the NCS message (if present).  If
          the value of the object is modified by the SNMP Management
          Station, the MTA MUST use the new value as a default only
          for a new signal requested by the NCS message.
          The time out (TO) elements are intended to limit the time
          a tone or frequency is generated.  When this MIB object is
          set to a value of '0', the MTA MUST NOT generate the

          corresponding frequency or tone, regardless of the
          definitions pertaining to frequency, tone duration, or
          cadence." "PacketCable NCS Specification"                    "This MIB object is used as part of an NCS
            retransmission algorithm.  Prior to any retransmission,
            the MTA must check to make sure that the time elapsed
            since the sending of the initial datagram does not
            exceed the value specified by this MIB object.  If more
            than Tsmax time has elapsed, then the retransmissions
            MUST cease.

            Refer to the MIB object pktcSigEndPntConfigThist for
            information on when the endpoint becomes disconnected." "PacketCable NCS Specification"                    B"This object contains the suspicious error threshold for
         signaling messages.  The pktcSigEndPntConfigMax1 object
         indicates the retransmission threshold at which the MTA MAY
         actively query the domain name server (DNS) in order to
         detect the possible change of call agent interfaces." "PacketCable NCS Specification"                    >"This object contains the disconnect error threshold for
         signaling messages.  The pktcSigEndPntConfigMax2 object
         indicates the retransmission threshold at which the MTA
         SHOULD contact the DNS one more time to see if any other
         interfaces to the call agent have become available." "PacketCable NCS Specification"                    	"This object enables/disables the Max1 domain name server
         (DNS) query operation when the pktcSigEndPntConfigMax1
         threshold has been reached.
         A value of true(1) indicates enabling, and a value of
         false(2) indicates disabling."                      	"This object enables/disables the Max2 domain name server
         (DNS) query operation when the pktcSigEndPntConfigMax2
         threshold has been reached.
         A value of true(1) indicates enabling, and a value of
         false(2) indicates disabling."                       �"Maximum Waiting Delay (MWD) contains the maximum number of
         seconds an MTA waits, after powering on, before initiating
         the restart procedure with the call agent." "PacketCable NCS Specification"                    �"This MIB object represents the 'disconnected' initial
         waiting delay within the context of an MTA's 'disconnected
         procedure'.  The 'disconnected procedure' is initiated when
         an endpoint becomes 'disconnected' while attempting to
         communicate with a call agent.

         The 'disconnected timer' associated with the 'disconnected
         Procedure' is initialized to a random value, uniformly
         distributed between zero and the value contained in this
         MIB object.

         For more information on the usage of this timer, please
         refer to the PacketCable NCS Specification." "PacketCable NCS Specification"                    
"This MIB object represents the 'disconnected' minimum
             waiting delay within the context of an MTA's
             'disconnected procedure', specifically when local user
             activity is detected.
             The 'disconnected procedure' is initiated when
             an endpoint becomes 'disconnected' while attempting to
             communicate with a call agent.
             For more information on the usage of this timer, please
             refer to the PacketCable NCS Specification." "PacketCable NCS Specification"                     �" This object contains the maximum number of seconds the MTA
          waits, after a disconnect, before initiating the
          disconnected procedure with the call agent.
           " "PacketCable NCS Specification"                     �"This object specifies the maximum number of seconds the MTA
         waits for a response to an NCS message before initiating
         a retransmission." "PacketCable NCS Specification"                     ^" This object contains the initial number of seconds for the
          retransmission timer." "PacketCable NCS Specification"                     k" Specifies a time out value, in minutes, for sending long
          duration call notification messages." "PacketCable NCS Specification"                     ?" Time out period, in seconds, before no response is declared." "PacketCable NCS Specification"                    R" This object contains the Row Status associated with the
          pktcSigEndPntConfigTable.  There are no restrictions or
          dependencies amidst the columnar objects before this
          row can be activated or for modifications of the
          columnar objects when this object is set to a
          value of 'active(1)."                      �" This object contains the default value of the maximum
          number of repetitions of the Call Waiting tone that the
          MTA will play from a single CMS request.  The MTA MUST NOT
          update this object with the information provided in the
          NCS message (if present).  If the value of the object is
          modified by the SNMP Manager application, the MTA MUST use
          the new value as a default only for a new signal
          requested by the NCS message."                       �" This object contains the delay between repetitions of the
          Call Waiting tone that the MTA will play from a single CMS
          request."                      " This object contains the type of Internet address contained
         in the MIB object 'pktcSigEndPntStatusCallIpAddress'.

         Since pktcSigEndPntStatusCallIpAddress is expected to
         contain an IP address, a value of dns(16) is disallowed."                      =" This MIB object contains the chosen IP address of the CMS
         currently being used for the corresponding endpoint.

         The device determines the IP address by using DNS to
         resolve the IP address of the CMS from the FQDN stored in
         the MIB object 'pktcSigEndPntConfigCallAgentId'.  The
         processes are outlined in the PacketCable NCS and Security
         specifications, and MUST be followed by the MTA.

         The IP address type contained in this MIB object is
         indicated by pktcSigEndPntStatusCallIpAddressType." \"PacketCable NCS Specification;
         PacketCable Security specification, [PKT-SP-SEC]."                    �" This object contains the error status for this interface.
         The operational status indicates that all operations
         necessary to put the line in service have occurred, and the
         CMS has acknowledged the Restart In Progress (RSIP)
         message successfully.  If pktcMtaDevCmsIpsecCtrl is enabled
         for the associated call agent, the noSecurityAssociation
         status indicates that no Security Association (SA) yet
         exists for this endpoint.  If pktcMtaDevCmsIpsecCtrl is
         disabled for the associated call agent, the
         noSecurityAssociation status is not applicable and should
         not be used by the MTA.  The disconnected status indicates
         one of the following two:
         If pktcMtaDevCmsIpsecCtrl is disabled, then no security
         association is involved with this endpoint.  The NCS
         signaling software is in process of establishing the NCS
         signaling link via an RSIP exchange.
         Otherwise, when pktcMtaDevCmsIpsecCtrl is enabled,
         security Association has been established, and the NCS
         signaling software is in process of establishing the NCS
         signaling link via an RSIP exchange."                      �" This is the minimum time a line needs to be on-hook for a
          valid hook flash.  The value of this object MUST be
          greater than the value of
          pktcSigEndPntConfigPulseDialMaxBreakTime.  The value of
          pktcSigEndPntConfigMinHookFlash MUST be less than
          pktcSigEndPntConfigMaxHookFlash.  This object MUST only be
          set via the MTA configuration during the provisioning
          process.
             Furthermore, given the possibility for the 'pulse dial'
             and 'hook flash' to overlap, the value of this object
             MUST be greater than the value contained by the MIB
             Object 'pktcSigEndPntConfigPulseDialMaxMakeTime'."                      B" This is the maximum time a line needs to be on-hook for a
          valid hook flash.  The value of
          pktcSigEndPntConfigMaxHookFlash MUST be greater than
          pktcSigEndPntConfigMinHookFlash.  This object MUST only be
          set via the MTA configuration during the provisioning
          process."                       �" This is the pulse dial inter-digit time out.  This object
          MUST only be set via the MTA configuration during the
          provisioning process."                      0" This is the minimum make pulse width for the dial pulse.
          The value of pktcSigEndPntConfigPulseDialMinMakeTime MUST
          be less than pktcSigEndPntConfigPulseDialMaxMakeTime.  This
          object MUST only be set via the MTA configuration during
          the provisioning process."                      -" This is the maximum make pulse width for the dial pulse.

          The value of pktcSigEndPntConfigPulseDialMaxMakeTime MUST
          be greater than pktcSigEndPntConfigPulseDialMinMakeTime.
          This object MUST only be provided via the configuration
          file during the provisioning process.
          Furthermore, given the possibility for the 'pulse dial'
          and 'hook flash' to overlap, the value of this object MUST
          be less than the value contained by the MIB object
          pktcSigEndPntConfigMinHookFlash."                      8" This is the minimum break pulse width for the dial pulse.
          The value of pktcSigEndPntConfigPulseDialMinBreakTime MUST
          be less than pktcSigEndPntConfigPulseDialMaxBreakTime.
          This object must only be provided via the configuration
          file during the provisioning process."                      ;" This is the maximum break pulse width for the dial pulse.
          The value of pktcSigEndPntConfigPulseDialMaxBreakTime MUST
          be greater than pktcSigEndPntConfigPulseDialMinBreakTime.
          This object MUST only be provided via the configuration
          file during the provisioning process."                                   M" The compliance statement for MTAs that implement
          NCS signaling."   b" This group is mandatory only for MTAs implementing
          international telephony features." T" This group is mandatory only for MTAs implementing the L
          line package." T" This group is mandatory only for MTAs implementing the E
          Line Package."                 p"Group of MIB objects containing signaling configuration
           information that is applicable per-device."                 r"Group of MIB objects containing signaling configuration
           information that is applicable per-endpoint."                2" Group of objects that extend the behavior of existing
          objects to support operations in the widest possible set
          of international marketplaces.  Note that many of these
          objects represent a superset of behaviors described in
          other objects within this MIB module."                 1"Group of Objects to support the L line package."                 1"Group of Objects to support the E line package."                        