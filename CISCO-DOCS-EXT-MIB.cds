?-- *****************************************************************
-- CISCO-DOCS-EXT-MIB.my: Cisco Data Over Cable Service extension 
--                        MIB file
--
-- October 1998, Minnie Lu
-- April   2001, Dhritiman Dasgupta
-- June    2001, Joline Chen
-- Oct     2001, Joline Chen
-- July    2003, Gaurav Aggarwal
--
-- Copyright (c) 2001-2003, 2005, 2006 by Cisco Systems, Inc.
-- All rights reserved.
-- *****************************************************************
  ?"This TC describes an object which counts events with the 
        following semantics: objects of this type will be set to
        zero(0) on creation or reset indirectly by other objects or
        certain event and will thereafter count appropriate events,
        wrapping back to zero(0) when the value 2^32 is reached.

        Provided that an application discovers the new object within
        the minimum time to wrap it can use the initial value as a
        delta since it last polled the table of which this object is
        part.

        Typically this TC is used in table where the statistical 
        information needs to be re-count after a reset. "                                                                                                                    "This is the MIB module for the Cisco specific extension 
             objects of Data Over Cable Service, Radio Frequency 
             interface.  There is a standard MIB for Data-Over-Cable 
             Service Interface Specifications (DOCSIS) and in Cisco,
             it is called DOCS-IF-MIB. Besides the objects in 
             DOCS-IF-MIB, this MIB module contains the extension 
             objects to manage the Cable Modem Termination Systems 
             (CMTS).

             This MIB module includes objects for the scheduler 
             that supports Quality of Service (QoS) of MCNS/DOCSIS 
             compliant Radio Frequency (RF) interfaces in Cable Modem 
             Termination Systems (CMTS). And the purpose is to let 
             users configure attributes of the schedulers in 
             order to ensure the Quality of Service and fairness for 
             modem requests according to users' business needs. 
             Also this MIB shows various states of the schedulers 
             for users to monitor of the schedulers' current status. 
            
             This MIB module also includes connection status objects
             for cable modems and Customer Premise Equipment (CPE) 
             and the purpose is to let users easily get the connection 
             status and manage access group information about cable 
             modems and CPE.

             This MIB module also includes objects for upstream 
             configuration for automated spectrum management in 
             order to mitigate upstream impairment.

             This MIB module also includes objects to keep count of
             the total # of modems, # of registered and # of active
             modems on the mac interface as well as each 
             upstream. ""        Cisco Systems
                     Customer Service

             Postal: Cisco Systems
                     170 West Tasman Drive
                     San Jose, CA 95134
                     U.S.A.
             Phone:  +1 800 553-NETS 
             E-mail: cs-ubr@cisco.com" "200603060000Z" "200507010000Z" "200504250000Z" "200307300000Z" "200302200000Z" "200110070000Z" "200108060000Z" "200104010000Z" "200007190000Z" "200005170000Z" "9912280000Z" "9901210000Z" ?"Following tables are added.

             cdxCmToCpeTable
             cdxCpeToCmTable

             These are used for the direct correlation between
             Cable Modem and Customer Premises Equipment." r"Modified the description of cdxCmtsServiceExtEntry.
             Modified the value of lockingMode from 2 to 3. " I"Modified dxCmtsCmDefaultMaxCpes' lower range from 0
             to -1."/"Added new objects for supporting DMIC. The objects are
             cdxCmtsCmDMICMode, cdxCmtsCmDMICLockQos and a new table
             cdxCmtsCmStatusDMICTable. Also, one more trap,
             cdxCmtsCmDMICLockNotification is added. Two more states
             were added to cdxCmtsCmStatusValue." u"Added new object cdxCmtsCmQosProfile to cdxCmtsCmTable to 
             associate a cable modem with a qos profile." ?"Added new objects cdxIfCmtsCmStatusOnlineTimesNum and
             cdxIfCmtsCmStatusLastResetTime to 
             cdxCmtsCmStatusExtTable. "?"DOCSIS 1.1 Changes:
             Added new objects cdxIfUpChannelAvgUtil, 
             cdxIfUpChannelAvgContSlots, 
             cdxIfUpChannelRangeSlots in 
             cdxIfUpstreamChannelExtTable. 

             NON-DOCSIS 1.1 Changes:
             Added following objects in cdxIfUpstreamChannelExtTable 
             for providing per upstream UGS statistics information:
             cdxIfUpChannelNumActiveUGS,
             cdxIfUpChannelMaxUGSLastOneHour, 
             cdxIfUpChannelMinUGSLastOneHour,
             cdxIfUpChannelAvgUGSLastOneHour, 
             cdxIfUpChannelMaxUGSLastFiveMins,
             cdxIfUpChannelMinUGSLastFiveMins, 
             cdxIfUpChannelAvgUGSLastFiveMins. "?"DOCSIS 1.1 Changes:
             1.  Added  cdxUpInfoElemStatsTable to display the per 
             Information Element (IE) statistics.
                
             2. Added the new queue types in cdxBWQueueNameCode to 
             support the new priority queues of the MAC-Scheduler.

             3. Added the new CM states in cdxCmtsCmStatusValue.

             Non-DOCSIS 1.1 changes:
             4. Added new status information for CM if the connection
             is noisy or if the maximum power has been reached.

             5. Changed the Description for cdxIfUpChannelWidth to
             cater for non-awacs card.

             6. Added new object cdxIfUpChannelInputPowerLevel for
             Upstream Input Power Level. ""1.  Added  cdxCmtsCmTotal,cdxCmtsCmActive,
             cdxCmtsCmRegistered to the cdxCmtsMacExtTable to report 
             the number of active,registered,total cable 
             modems on a cable mac interface since boot.
             
             2.  Added cdxIfUpChannelCmTotal, cdxIfUpChannelCmActive,
             cdxIfUpChannelCmRegistered to the 
             cdxIfUpstreamChannelExtTable to report the number of 
             active,registered,total cable modems connected on an 
             upstream." ?"1.  Added cdxCmCpeResetNow to reset CM or CPE.
             2.  Added cdxCmtsCmCurrCpeNumber to report the current
             number of CPE connecting to the CM."" 1. Added new objects cdxSpecMgmtObjects. 
              2. Added new object cdxIfCmtsCmStatusDynSidCount. 
              3. Enhanced cdxQosIfRateLimitTable for a new rate limit 
                 algorithm.
              4. Added more status for cdxCmtsCmStatusValue. " %"Initial version of this MIB module."                       ?"For each upstream interface, this table maintains a number 
             of objects related to Quality of Service scheduler which 
             uses these attributes to control cable modem 
             registration. "                       ?"A list of attributes for each upstream MAC scheduler 
             that supports Quality of Service.  Entries in this table
             exist for each ifEntry with ifType of 
             docsCableUpstream(129). ""Data-Over-Cable Service Interface Specifications
             (DOCSIS) Radio Frequency Interface Specification 
             (SP-RFI-I04-980724), section 6.4 and appendix C.
            
             docsIfQosProfileTable and docsIfCmtsServiceTable in 
             DOCS-IF-MIB.my. "                    N"The admission control status for minimum guaranteed upstream 
           bandwidth scheduling service requests for this upstream.
           
           When this object is set to 'true', if there is a new modem 
           with minimum guaranteed upstream bandwidth scheduling service
           in its QoS class requesting to be supported in this upstream,
           the upstream scheduler will check the virtual reserved 
           bandwidth remaining capacity before giving admission to this 
           new modem. If there is not enough reserved upstream bandwidth
           to serve the modem's minimum guaranteed bandwidth, the 
           registration request will be rejected.  

           This object is set to 'false' to disable admission control.
           That is, there will be no checking for bandwidth capacity and
           the upstream interface scheduler just admits modem
           registration requests. 

           This object is not meant for Unsolicited Grant Service(UGS) 
           scheduling service as admission control is a requirement in 
           this case. "                      ?"The percentage of upstream maximum reserved bandwidth to the
           raw bandwidth if the admission control is enabled on this
           upstream. 

           For example, if the upstream interface has raw bandwidth
           1,600,000 bits/second and cdxQosCtrlUpMaxRsvdBWPercent is 200
           percent, then this upstream scheduler will set the maximum of
           virtual reserved bandwidth capacity to 3,200,000 bits/second
           (1,600,000 * 2) to serve cable modems with minimum guaranteed
           upstream bandwidth.  

           The default value is 100 percent (that is, maximum reserved
           bandwidth is the raw bandwidth.) Whenever the admission
           control is changed (on to off, off to on), this value will
           be reset to the default value 100.  
    
           If the admission control is disabled, the value will be reset
           to 100 (the default value). "                      ?"The count of cable modem registration requests rejected on 
             this upstream interface due to insufficient reserved 
             bandwidth for serving the cable modems with Unsolicited 
             Grant Service (UGS) scheduling service when UGS is 
             supported and for serving the cable modems with minimum 
             guaranteed bandwidth in its Quality of Service class when
             admission control is enabled on this upstream interface ."                       ?"The current total reserved bandwidth in bits per second of 
            this upstream interface.  It is the sum of all cable modems'
            minimum guaranteed bandwidth in bits per second currently 
            supported on this upstream. "                      2"The maximum virtual bandwidth capacity of this upstream
             interface if the admission control is enabled. It is the
             raw bandwidth in bits per second times the percentage. If
             the admission control is disabled, then this object will
             contain the value zero. "                      "This table describes the attributes of rate limiting for 
            schedulers in cable upstream and downstream interfaces that 
            support Quality of Service.  The rate limiting process is 
            to ensure the Quality of Service and fairness. "                      &"List of the rate limiting attributes for cable upstream and
             downstream interfaces schedulers that support Quality of 
             Service. Entries in this table exist for each ifEntry with 
             ifType of docsCableUpstream(129) and
             docsCableDownstream(128).""Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification
             (SP-RFI-I04-980724), section 6.4 and appendix C.

             docsIfQosProfileTable and docsIfCmtsServiceTable in
             DOCS-IF-MIB.my. "                     ?"To ensure fairness, the CMTS will throttle the rate for
            bandwidth request (upstream)/packet sent (downstream) at
            which CMTS issues grants(upstream) or allow packet to be
            send(downstream) such that the flow never gets more than
            its provisioned peak rate in bps. 

            There are two directions for every Service Id (Sid) traffic:
            downstream and upstream. Each direction is called a service
            flow here and assigned one token bucket with chosen 
            algorithm. 

            The enumerations for the rate limiting algorithm are:
             noRateLimit(1): The rate limiting is disabled. No rate
                             limiting.
             oneSecBurst(2): Bursty 1 second token bucket algorithm.
             carLike(3)    : Average token usage (CAR-like) algorithm
             wtExPacketDiscard(4) : Weighted excess packet discard 
                                    algorithm.
             shaping(5): token bucket algorithm with shaping

            Upstream supports the following: 
              No rate limiting (1), 
              Bursty 1 second token bucket algorithm(2), 
              Average token usage (CAR-like) algorithm(3),
              Token bucket algorithm with shaping(5).

            Downstream supports the following:
              No rate limiting (1), 
              Bursty 1 second token bucket algorithm(2),
              Average token usage (CAR-like) algorithm(3),
              Weighted excess packet discard algorithm(4), and
              Token bucket algorithm with shaping(5).

            Token bucket algorithm with shaping is the
            default algorithm for upstream if CMTS is in DOCSIS 1.0 mode
            or DOCSIS 1.1 mode.
            

            Bursty 1 second token bucket algorithm is the 
            default algorithm for downstream if the CMTS is in
            DOCSIS 1.0 mode. If it is in DOCSIS 1.1 mode the default
            algorithm for downstream is  Token bucket algorithm with
            shaping .

            Each algorithm is described as below:
              No rate limiting: 
                The rate limiting process is disabled and no checking 
                against the maximum bandwidth allowed. 

              Bursty 1 second token bucket rate limiting algorithm: 
                In this algorithm, at the start of every 1 second
                interval, a service flow's token usage is reset to 0,
                and every time the modem for that service flow sends a
                request (upstream) / packet (downstream) the
                upstream/downstream bandwidth token usage is incremented
                by the size of the request/packet sent. As long as the
                service flow's bandwidth token usage is less than the
                maximum bandwidth in bits per second (peak rate limit)
                its QoS service class allows, the request/packets will
                not be restricted. 
                Once the service flow has sent more than its peak rate
                in the one second interval, it is prevented from sending
                more data by rejecting request (upstream) or dropping
                packets (downstream). This is expected to slow down
                the higher layer sources. The token usage counter gets
                reset to 0 after the 1 second interval has elapsed. The
                modem for that service flow is free to send more data
                up to the peak rate limit in the new 1 second interval
                that follows.  

              Average token usage (Cisco CAR like) algorithm: 
                This algorithm maintains a continuous average of the 
                burst token usage of a service flow. There is no sudden 
                refilling of tokens every 1 second interval. Every time
                a request/packet is to be handled, the scheduler tries
                to see how much time has elapsed since last transmission
                , and computes the number of tokens accumulated by this
                service flow at its QoS class peak rate. If burst usage
                of the service flow is less than tokens accumulated,
                the burst usage is reset to 0 and request/packet is
                forwarded. If the service flow has accumulated fewer
                tokens than its burst usage, the burst usage shows an
                outstanding balance usage after decrementing by the
                tokens accumulated. In such cases, the request/packet
                is still forwarded, provided the service flow's
                outstanding usage does not exceed peak rate limit of its
                QoS class. If outstanding burst usage exceeds the peak
                rate of the class, the service flow is given some token
                credit up to a certain maximum credit limit and the
                request/packet is forwarded. The request/packet is
                dropped when outstanding usage exceeds peak rate and
                maximum credit has been used up by this service flow.
                This algorithm tracks long term average bandwidth usage
                of the service flow and controls this average usage at
                the peak rate limit.

              Weighted excess packet discard algorithm:
                This rate limiting algorithm is only available as an
                option for downstream rate limiting. The algorithm is
                to maintain an weighted exponential moving average of
                the loss rate of a service flow over time. The loss
                rate, expressed in packets, represents the number of
                packets that can be sent from this service flow in a
                one second interval before a packet will be dropped.
                At every one second interval, the loss rate gets
                updated using the ratio between the flow peak rate (in
                bps) in its QoS profile and the service flow actual
                usage (in bps). If the service flow begins to send more
                than its peak rate continuously, the number of packets
                it can send in an one second interval before
                experiencing a drop will slowly keep reducing until
                cable modem for that service flow slows down as
                indicated by actual usage less or equal to the peak
                rate. 

              Token bucket algorithm with shaping:
                 If there is no QoS class peak rate limit, forward the 
                 request/packet without delay. If there is a QoS peak
                 rate limit, every time a request/packet is to be
                 handled, the scheduler determines the number of
                 bandwidth tokens that this service flow has
                 accumulated over the elapsed time at its QoS class peak
                 rate and increments the tokens counter of the service
                 flow accordingly.  The scheduler limits the token
                 count to the maximum transmit burst (token bucket
                 depth). If token count is greater than the number of
                 tokens required to handle current request/packet,
                 decrement token count by size of request/packet and
                 forwards the request/packet without delay.  If token
                 count is less than the size of request/packet, compute
                 the shaping delay time after which the deficit number
                 of tokens would be available. If shaping delay time is
                 less than the maximum shaping delay, decrement tokens
                 count by size of request/packet and forward this
                 request/packet with the shaping delay in the shaping
                 delay queue. When the delay time expires, the
                 request/packet is forwarded. If shaping delay time is
                 greater than the maximum shaping delay that the
                 subsequent shaper can handle, the request/packet is
                 dropped. Users can use cdxQosIfRateLimitShpMaxDelay to
                 configure the the maximum shaping delay and
                 cdxQosIfRateLimitShpGranularity to configure the
                 shaping granularity.  "                      w"Weight for exponential moving average of loss rate for 
            weighted excess packet discard algorithm to maintain.
            The higher value of the weight makes the algorithm
            more sensitive to the recent bandwidth usage by the Sid. 
        
            The default value is 1 and whenever the rate limiting
            algorithm is changed to weighted excess packet discard 
            algorithm, this value will be reset to the default 1.

            If the rate limiting algorithm is not weighted excess 
            packet discard algorithm, the value will be always the 
            default value 1. "                      	?"The maximum shaping delay in milliseconds. That is, the
            maximum amount time of buffering the CMTS will allow for
            any rate exceeded flow.  If the max buffering delay is
            large, the grants/packets of the flow will be buffered for
            a longer period of time even though the flow is rate
            exceeded. This means fewer chances of drops for such rate
            exceeded flow. However, too large a max shaping delay
            can result is quick drainage of packet buffers at the CMTS,
            since several packets will be in the shaping (delay) queue
            waiting for their proper transmission time. Another
            important point to be noted is that delaying a flows packets
            (especially TCP flows) for extended periods of time is
            useless, since the higher protocol layers may assume a
            packet loss after a certain amount of time.
 
            The maximum shaping delay is only applied to rate limit
            algorithm: 
            Token bucket algorithm with shaping.  If the rate limit
            algorithm is not Token bucket algorithm with shaping, the
            value is always na(1) which is not applicable.

            If the token count is less than the size of request/packet,
            CMTS computes the shaping delay time after which the deficit
            number of tokens would be available. If the shaping delay
            time is greater than the maximum shaping delay, the
            request/packet will be dropped.  

            The enumerations for maximum shaping delay are:
              na(1): maximum shaping delay is not applied to the current
                     rate limit algorithm
             msec128(2): maximum shaping delay is 128 milliseconds  
             msec256(3): maximum shaping delay is 256 milliseconds 
             msec512(4): maximum shaping delay is 512 milliseconds 
            msec1024(5): maximum shaping delay is 1024 milliseconds 

            The downstream maximum shaping delay is configurable and the
            default value is msec128(2). Whenever the downstream rate 
            limit algorithm is changed to Token bucket algorithm with 
            shaping from other rate limit algorithm, the value will 
            be reset to the default value. 

            The upstream maximum shaping delay is not configurable and
            it is read-only value.  "                      7"The width in milliseconds of each element in shaping 
            delay queue, that is, the shaping granularity.

            The shaping granularity is only applied to rate limit
            algorithm: Token bucket algorithm with shaping. It 
            controls how accurately the algorithm quantizes the shaping
            delay for a rate exceeded flow. If granularity is large,
            several shaping delay values will all be quantized to the
            same element in the queue resulting in less accurate rate
            shaping for the flows in bits/sec. On the other hand,
            choosing too small granularity causes more memory to be used
            for the shaper block, and also can cost a bit more in
            runtime overhead.
 
            If the rate limit algorithm is not Token bucket algorithm
            with shaping, the value is always na(1) which is not
            applicable.

            The enumerations for shaping granularity are:
              na(1): shaping granularity is not applied to the current 
                     rate limit algorithm
               msec1(2): shaping granularity in 1 milliseconds 
               msec2(3): shaping granularity in 2 milliseconds 
               msec4(4): shaping granularity in 4 milliseconds 
               msec8(5): shaping granularity in 8 milliseconds 
              msec16(6): shaping granularity in 16 milliseconds  

            The downstream shaping granularity is configurable and the
            default value is msec4(4). Whenever the downstream rate
            limit algorithm is changed to Token bucket algorithm with
            shaping from other rate limit algorithm, the value will be
            reset to the default value. 

            The upstream shaping granularity is not configurable and 
            it is read-only value.  "                       z"The list contains the additional attributes of a single
            Service ID that provided by docsIfCmtsServiceEntry. "                      F"Additional objects for docsIfCmtsServiceTable entry including
           downstream traffic statistics and excess counts against the 
           Quality of Service limits for each Service ID.
           From DOCSIS 1.1 onwards statistics are maintained for each 
           Service Flow(instead of the Service ID) in the DOCS-QOS-MIB 
           in docsQosServiceFlowStatsTable objects. For Cable modems
           not running in DOCSIS 1.0 mode, the objects  
           cdxIfCmtsServiceOutOctets and cdxIfCmtsServiceOutPackets
           will only support primary service flow. ""Data-Over-Cable Service Interface Specifications
             (DOCSIS) Radio Frequency Interface Specification
             (SP-RFI-I04-980724), Section 6.4 and Appendix C.

             docsIfQosProfileTable and docsIfCmtsServiceTable in
             DOCS-IF-MIB.my. "                     V"The cumulative number of Packet Data octets sent for this 
             Service ID. "                       W"The cumulative number of Packet data packets sent for this 
             Service ID. "                      F"The number of upstream bandwidth requests which exceeds the
             maximum upstream bandwidth allowed for a service defined 
             in the Quality of Service profile associated with this Sid.
             The request which exceeds the maximum upstream bandwidth 
             allowed will be rejected by the upstream's rate limiting 
             process using one of the rate limiting algorithm. 

             Note that the value of this counter cannot be directly used
             to know the number of upstream packets that got dropped at 
             the cable modem.  A single upstream packet drop of a modem 
             can result in up to 16 increments in this counter, since
             the modem keeps retrying and keeps getting bandwidth
             request drops at CMTS if it has consumed its peak rate.  " 8"docsIfQosProfMaxUpBandwidth object in DOCS-IF-MIB.my. "                    ?"The number of downstream bandwidth packets which exceeds
             the maximum downstream bandwidth allowed for a service
             defined in the Quality of Service profile associated with
             this Sid. The packet which exceeds the maximum downstream
             bandwidth allowed will be dropped by the downstream's rate
             limiting process using one of the rate limiting
             algorithm. " :"docsIfQosProfMaxDownBandwidth object in DOCS-IF-MIB.my. "                    ?"The table contains the attributes of a particular 
             Information Element type for each instance of the MAC 
             scheduler. It is indexed by upstream ifIndex. An Entry
             exists for each ifEntry with ifType of
             docsCableUpstream(129) Since each upstream has an instance
             of a MAC Scheduler so this table has the per MAC scheduler
             slot information on a per Information Element basis. "                      $"The list of statistics for a type of Information
              Element (IE) which defines the allowed usage for a range
              of upstream mini slots. One entry exists for each
              Information Element (IE) in a upstream which ifType is
              docsCableUpstream (12)." ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification (SP-RFI-I05-000714)
             section 7.1.2 "                    V"This entry describes the Information Element (IE) type.
             Enumerations are :
             reqIE(1)          : Request Information Element,
                                 The request Information Element
                                 provides an upstream interval in which
                                 a CM can request the CMTS for bandwidth
                                 on the upstream channel.
             reqOrDataIE(2)    : Request/Data Information Element,
                                 The Request/data Information Element 
                                 provides an upstream interval in which
                                 request may be made by the CM to the 
                                 CMTS for bandwidth or short data 
                                 packets may be transmitted on the
                                 upstream channel.
             initMtnIE(3)      : Initial Maintenance Information Element
                                 , The Initial Maintenance Information
                                 Element provides an interval in which
                                 new stations may join the network.
             stnMtnIE(4)       : Station Maintenance Information Element
                                 , The Station Maintenance Information
                                 Element provides an interval in which
                                 stations are expected to perform some
                                 aspect of routine network maintenance,
                                 such as ranging or power adjustment.
             shortGrantIE(5)   : Short Data Grant Information Element,
                                 Short data grant Information Element
                                 provides the CM an opportunity to 
                                 transmit one or more upstream PDU's.
                                 Short data grants are used with 
                                 intervals equal to or less than the 
                                 maximum burst size for the usage 
                                 specified in the Upstream Channel 
                                 Descriptor.
             longGrantIE(6)    : Long Data Grant Information Element,
                                 The long data grant Information Element
                                 also provides the CM an opportunity to
                                 transmit one or more upstream PDU's.
                                 All long data grant Information
                                 Elements
                                 must have a larger number of mini-slots
                                 than that defined for a short data
                                 grant Information Element profile
                                 defined in the Upstream Channel
                                 Descriptor. "                       ?"The current number of mini-slots used for the Information 
             Element type. The value is only a snapshot since the 
             current number of mini-slots of this IE type could be
             changing rapidly. "                           ?"This table describes the attributes of queues  
             in cable interfaces schedulers that support 
             Quality of Service."                      "The list of queue attributes in cable upstream and
             downstream interfaces schedulers that supports Quality of
             Service. Entries in this table exist for each ifEntry with
             ifType of docsCableUpstream(129) and
             docsCableDownstream(128). " ?"Data-Over-Cable Service Interface Specifications
             (DOCSIS) Radio Frequency Interface Specification
             (SP-RFI-I04-980724), Section 6.4 and Appendix C. "                    ?"The name code for the queue.
                    
             cirQ :CIR queue. The queue is for Committed Information
                   Rate (CIR) type of service which serves Service IDs
                   which have minimum guaranteed rate in its QoS
                   profile.  It is applicable if CMTS is running is
                   either of DOCSIS 1.0 or 1.1 modes. For DOCSIS 1.1 it
                   has priority 8.
                              
             tbeQ :TBE Queue. The queue is for TIERED BEST EFFORT type 
                   service which serves Service IDs which does not have
                   minimum guaranteed rate in its QoS profile. It is 
                   only applicable if CMTS is running in DOCSIS 1.0
                   mode.

             p0BEGrantQ-p7BEGrantQ : BEST EFFORT Queue
                   The queues p0BEGrantQ to P7BEGrantQ are for TIERED 
                   BEST EFFORT type service which serves Service IDs 
                   which do not have minimum guaranteed rate specified
                   in the QoS parameters. P0 has lowest priority and P7
                   has highest. Best Effort type is purely handled with 
                   prioritization in FIFO's and hence demands more 
                   number of queues. These queues are applicable only if
                   CMTS is running under mode DOCSIS 1.1.
                                          
             rngPollQ : RngPoll queue.
                   The queue is for the ranging SID's. It has the
                   highest priority. This queue information is only
                   provided if CMTS is running under mode DOCSIS 1.1. " ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification (SP-RFI-I06-001215)
             section 6.4 and appendix C."                    ?"The relative order of this queue to the other queues within
             the cable interface. The smaller number has higher order.
             That is, 0 is the highest order and 10 is the lowest order.
             The scheduler will serve the requests in higher order queue
             up to the number of requests defined in
             cdxBWQueueNumServedBeforeYield before serving requests in
             the next higher order queue.  

             If there are n queues on this interface, the queue order
             will be 0 to n-1 and maximum number of requests defined as
             cdxBWQueueNumServedBeforeYield in order 0 queue will be
             served before the requests in order 1 queue to be served. "                      $"The maximum number of requests/packets the scheduler can 
            serve before yielding to another queue. The value 0 means
            all requests must be served before yielding to another
            queue. The range is 0-50 for DOCSIS 1.0 and for DOCSIS 1.1
            it is 0-64. "                      ?"The queuing type which decides the position of a
             request/packet within the queue.
               unknown : queue type unknown. 
               other   : not fifo, and not priority.
               fifo    : first in first out.
               priority: each bandwidth request has a priority and the 
                         position of the request within the queue
                         depends on its priority.
               For DOCSIS1.1 all the priority queues are fifo queues. "                       ?"The maximum number of requests/packets which the queue can 
             support. The range is 0-50 for DOCSIS1.0 and for
             DOCSIS1.1 it is 0-64. "                       ?"The current number of requests/packets in the queue.
             The range is 0-50 for DOCSIS1.0 and for
             DOCSIS1.1 it is 0-64. "                       w"The number of requests/packets discarded because of queue
             overflow (queue depth > queue maximum depth). "                           m"This table contains information about cable modems (CM) or
            Customer Premises Equipments (CPE). "                      "The list contains information for a cable modem (CM) or a
            Customer Premises Equipment (CPE). An entry exist for 
            each cable modem supported by CMTS and each Customer
            Premises Equipment connected to a cable modem supported by
            CMTS. " ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification
             (SP-RFI-I04-980724.) docsIfCmtsCmStatusTable,
             docsIfCmtsServiceTable in DOCS-IF-MIB.my. "                     \"The Mac address to identify a cable modem or a Customer 
             Premises Equipment. "                       ?"Indicate this entry is for cable modem or Customer Premises
             Equipment.  The enumerations are: 
              cm(1): cable modem
              cpe(2): Customer Premises Equipment "                       M"Ip address of the cable modem or Customer Premises
             Equipment. "                      "The CMTS cable MAC interface index (ifType of 
             docsCableMaclayer(127)) that cable modem or Customer
             Premises Equipment connects to.  

             Use cdxCmCpeIfIndex and cdxCmCpeCmtsServiceId to identify
             an  entry in docsIfCmtsServiceTable.  "                      "The cable modem's primary Service ID if the type is cm. 
             The primary Service ID for the CM which the CPE connects if
             the type is cpe.

             Use cdxCmCpeIfIndex and cdxCmCpeCmtsServiceId to identify
             an entry in docsIfCmtsServiceTable.  "                       x"Pointer to an entry in docsIfCmtsCmStatusTable identifying
             status of the CM (which the CPE connects to.) "                       ?"ASCII text to identify the Access Group for a CM or CPE. 
             Access Group is to filter the upstream traffic for that
             CM or CPE.  "                      ?"Setting this object to true(1) causes the device to 
             reset.  Reading this object always returns false(2).
 
             For cdxCmCpeType value cm(1),  CMTS removes the 
             CM from the Station Maintenance List and would cause 
             the CM to reset its interface.
 
             For cdxCmCpeType value cpe(2), CMTS removes the 
             CPE's MAC address from the internal address table.  
             It then rediscovers and associates the CPE with the 
             correct CM during the next DHCP lease cycle.  By resetting
             the CPE, the user can replace an existing CPE or change 
             its network interface card (NIC).
            "                       :"The list contains the additional CM status information. "                       8"Additional objects for docsIfCmtsCmStatusTable entry. " ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification
             (SP-RFI-I04-980724.) docsIfCmtsCmStatusTable in
             DOCS-IF-MIB.my. "                    ?"Current Cable Modem connectivity state. The object extends
             states in docsIfCmtsCmStatusValue in more details. 

             The enumerations are:
             offline(1)                : modem considered offline.
             others(2)                 : states is in 
                                         docsIfCmtsCmStatusValue.
             initRangingRcvd(3)        : modem sent initial ranging.
             initDhcpReqRcvd(4)        : dhcp request received.
             onlineNetAccessDisabled(5): modem registered, but network
                                         access for the CM is disabled.
             onlineKekAssigned(6)      : modem registered, BPI enabled
                                         and KEK assigned.
             onlineTekAssigned(7)      : modem registered, BPI enabled
                                         and TEK assigned.
             rejectBadMic(8)           : modem did attempt to register
                                         but registration was refused
                                         due to bad mic.
             rejectBadCos(9)           : modem did attempt to register
                                         but registration was refused
                                         due to bad COS.
             kekRejected(10)           : KEK modem key assignment
                                         rejected.
             tekRejected(11)           : TEK modem key assignment
                                         rejected.
             online(12)                : modem registered, enabled for
                                         data.
             initTftpPacketRcvd(13)    : tftp packet received and option
                                         file transfer started. 
             initTodRquestRcvd(14)     : Time of the Day (TOD) request 
                                         received.
             reset(15)                 : modem is resetting.
             rangingInProgress(16)     : initial ranging is in progress.
 --          deprecated value 
 --          rangingCompleted(17)      : initial ranging is completed.
             dhcpGotIpAddr(18)         : modem has got an IP address 
                                         from the DHCP server.
             rejStaleConfig(19)        : modem did attempt to register
                                         but registration was refused
                                         due to stale Config.
             rejIpSpoof(20)            : modem did attempt to register
                                         but registration was refused
                                         due to IP Spoof.
             rejClassFail(21)          : modem did attempt to register
                                         but registration was refused
                                         due to Class failure.
             rejRegNack(22)            : modem did attempt to register
                                         but no acknowledgement was 
                                         received.
             bpiKekExpired(23)         : KEK modem key assignment
                                         expired.
             bpiTekExpired(24)         : TEK modem key assignment
                                         expired.
             shutdown(25)              : modem is in shutdown state.
             channelChgInitRangingRcvd(26)  : modem sent initial ranging
                                               during channel change.
             channelChgRangingInProgress(27) : initial ranging is in
                                               progress during channel
                                               change.

             This cdxCmtsCmStatusValue could return initRangingRcvd(3)
             or rangingInProgress(16) when the docsIfCmtsCmStatusValue
             is ranging(2).

             This cdxCmtsCmStatusValue will return others(2) when the
             docsIfCmtsCmStatusValue states is either
             rangingAborted(3), rangingComplete(4), and
             ipComplete(5).

             This cdxCmtsCmStatusValue could return online(12), or
             onlineNetAccessDisabled(5) for CM with BPI disabled, or
             onlineNetAccessDisabled(5) or onlineTekAssigned(7) for
             CM with BPI enabled, when the docsIfCmtsCmStatusValue
             is registrationComplete(6).

             This cdxCmtsCmStatusValue could return either
             rejectBadMic(8), rejectBadCos(9) rejStaleConfig(19) or
             rejRegNack(22) when the docsIfCmtsCmStatusValue
             is accessDenied(7) for possible reasons of cable modem
             registration abort.

             This cdxCmtsCmStatusValue could return either
             onlineKekAssigned(6), kekRejected(10), tekRejected(11),
             or online(12) for the CM with BPI enabled when the
             docsIfCmtsCmStatusValue is registeredBPIInitializing(9).

             The state rejectBadCos(9) is not applicable for DOCSIS1.1
             modems.

             The CMTS only reports states it is able to detect."                      3"The number of times that the modem changes the connectivity
             state from 'offline' to 'online' over the time period from 
             the modem's first ranging message received by CMTS until 
             now.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    ?"The percentage of time that the modem stays 'online' over 
             the time period from the modem's first ranging message 
             received by CMTS until now. 

             The value for this object is 100 times bigger than the real
             percentage value. For example, 32.15% will be value 3215.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as 
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    ?"The minimum period of time the modem stayed 'online' over
             the time period from the modem's first ranging message 
             received by CMTS until now.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as 
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    ?"The average period of time the modem stayed 'online' over
             the time period from the modem's first ranging message 
             received by CMTS until now.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as 
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    ?"The maximum period of time the modem stayed 'online' over
             the time period from the modem's first ranging message 
             received by CMTS until now.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as 
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    ?"The minimum period of time modem stayed 'offline' over
             the time period from the modem's first ranging message 
             received by CMTS until now.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as 
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    ?"The average period of time the modem stayed 'offline' over
             the time period from the modem's first ranging message 
             received by CMTS until now.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as 
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    ?"The maximum period of time the modem stayed 'offline' over
             the time period from the modem's first ranging message 
             received by CMTS until now.

             The modem is considered as 'online' when the value for 
             cdxCmtsCmStatusValue is any of the values: online(5), 
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and 
             onlineTekAssigned(8), and the modem is considered as 
             'offline' for other values for cdxCmtsCmStatusValue.  " "cdxCmtsCmStatusValue object."                    $"The number of active dynamic SIDs on this modem.
             Prior to getting the assigned the Service Flow IDs(SFID)
             the CM must must complete a number of protocol 
             transactions. The CMTS assigns a temporary Service ID
             (SID) to complete these steps."                      ?"This object indicates additional attributes regarding
             the CM.
             1. noisyPlant indicates that the CM connection is noisy.
             2. modemPowerMaxOut indicates that the modem has reached
             its maximum power level.

             A bit of of this object is set to 1 if the condition
             indicated by the bit is satisfied.

             Note that BITS are encoded most significant bit
             first. "                      ?"The number of times that the modem changes the connectivity
             state from 'offline' to 'online' over the time period from
             the modem's first ranging message received by CMTS until
             now.

             The modem is considered as 'online' when the value for
             cdxCmtsCmStatusValue is any of the values: online(5),
             onlineNetAccessDisabled(6), onlineKekAssigned(7), and
             onlineTekAssigned(8), and the modem is considered as
             'offline' for other values for cdxCmtsCmStatusValue.

             The value of this object is reset to 0 if the value in
             cdxIfCmtsCmStatusLastResetTime is changed. "                       ?"The last cable modem connectivity statistics reset time. If
             the value of  this object is '0', then the cable modem
             connectivity statistics had not been reset."                       x"This table contains the additions attributes of a CMTS MAC
            interface that provided by docsIfCmtsMacTable. "                      ?"Additional objects for docsIfCmtsMacTable entry including
             the cable modem notification enable/disable and the
             interval of cable modem notification sent by the CMTS for a
             cable modem that the Mac interface supports. An entry in
             this table exists for each ifEntry with an ifType of
             docsCableMaclayer(127). Additional objects added to
             determine the number of active/registered/total cable
             modems on this cable mac interface since boot. Also, it
             contains the object to set the Dynamic Message Integrity
             Check (DMIC) which users can configure how cable modems are
             handled if CMs fail the DMIC." ("docsIfCmtsMacTable in DOCS-IF-MIB.my. "                     s"An indication of whether the cdxCmtsCmOnOffNotification 
             is enabled. The default value is false(2). "                      j"The interval for cdxCmtsCmOnOffNotification sent by CMTS
             for one online/offline state change if
             cdxCmtsCmOnOffTrapEnable is true. 

             If there are more than one state changes to online/offline 
             for a cable modem during this interval, only one 
             cdxCmtsCmOnOffNotification is sent by CMTS for the first 
             state change to online and one cdxCmtsCmOnOffNotification 
             for the first state changing to offline if 
             cdxCmtsCmOnOffTrapEnable is true.

             This is to avoid too many notifications sent for a cable 
             modem online/offline state changes during a short period
             of time. 

             If the value is 0, then cdxCmtsCmOnOffNotification will be 
             sent for every state changes to online/offline for a cable 
             modem if cdxCmtsCmOnOffTrapEnable is true.  

             If cdxCmtsCmOnOffTrapEnable value changes from true to
             false or from false to true, this value will remain no
             change as before. 

             The default value is 600 seconds. "                      "The default maximum number of permitted CPEs per modem 
             in this cable interface. A modem can override this 
             value by setting the object cdxCmtsCmMaxCpeNumber
             in the cdxCmtsCmTable.  

             The value -1 means the default value of maximum hosts 
             per modem in this cable interface is not specified.

             The value 0 means no maximum limit.

             Setting the value will not affect the already connected
             CPEs to the modems in this cable interface. "                       V"The total count of cable modems on this cable mac interface
             since boot."                       ?"The count of cable modems that are active. Active cable 
             modems are recognized by the cdxCmtsCmStatusValue 
             other than offline(1). "                      ?"The count of cable modems that are registered and online 
             on this cable mac interface. Registered cable modems are 
             those with one of the following values. 
             registrationComplete(6) of docsIfCmtsCmStatusValue OR 
             either of online(12), kekRejected(10), 
             onlineKekAssigned(6), tekRejected(11), onlineTekAssigned(7)
             of cdxCmtsCmStatusValue"                      ?"The Dynamic Shared Secret feature can operate in three 
             different modes, depending on what action should be taken 
             for cable modems that fail the CMTS MIC verification check:
             notConfigured(1): It indicates that the DMIC is not 
                               configured for this cable interface.
             mark(2): By default, the Dynamic Shared Secret feature 
                      is enabled on all cable interfaces using the 
                      mark option. In this mode, the CMTS allows 
                      cable modems to come online even if they fail 
                      the CMTS MIC validity check. However, for
                      this modem cdxCmtsCmStatusDMICMode will
                      be labeled as marked.
             lock(3): When the lock option is used, the CMTS assigns 
                      a restrictive QoS configuration to CMs that 
                      fail the MIC validity check twice in a row. A 
                      particular QoS profile to be used for locked 
                      cable modems can be specified by setting 
                      cdxCmtsCmDMICLockQos.
                      If a customer resets their CM, the CM will 
                      reregister but still uses the restricted QoS 
                      profile. A locked CM continues with the 
                      restricted QoS profile until it goes offline 
                      and remains offline for at least 24 hours, at 
                      which point it is allowed to reregister with a 
                      valid DOCSIS configuration file. A system 
                      operator can manually clear the lock on a CM by 
                      setting cdxCmtsCmStatusDMICUnLock object.
             reject(4):  In the reject mode, the CMTS refuses to allow 
                         CMs to come online if they fail the CMTS MIC 
                         validity check."                      |"If cdxCmtsCmDMICMode is set to lockingMode(3), this object
              would contain the restrictive QoS profile number as 
              indicated by docsIfQosProfIndex if set and it will 
              have 0 if not applicable or not defined. In case,
              cdxCmtsCmDMICMode is set to lockingMode(3) and this
              object is not defined then the CMTS defaults to special
              QoS profile that limits the downstream and upstream 
              service flows to a maximum rate of 10 kbps. However,
              for this to happen the modems should have the 
              permission to create QoS profile."                      ?"The time period to expire a CMTS channel override
             operation. Within the time period, if the CMTS cannot send
             out a RNG-RSP message with channel override fields to a
             cable modem specified in the operation, the CMTS will abort
             the operation. The possible reason is that the cable 
             modem does not repeat the initial ranging. 

             The change to this object will not affect the already
             active operations in this cdxCmtsCmChOverTable.
              
             Once the operation completes, the management station should
             retrieve the values of the cdxCmtsCmChOverState 
             object of interest, and should then delete the entry
             from cdxCmtsCmChOverTable.  In order to prevent old 
             entries from clogging the table, entries will be aged out,
             but an entry will never be deleted within 15 minutes of 
             completing. " ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification (SP-RFI-I04-980724)
             , 6.3.2.5.3 Overriding Channels. "                    w"A table of CMTS operation entries to instruct cable modems
            to move to a new downstream and/or upstream channel. 

            An entry in this table is an operation that has been 
            initiated from CMTS to generates downstream frequency and/or
            upstream channel override fields in the RNG-RSP message sent
            to a cable modem.  A RNG-RSP message is sent to a cable
            modem during initial maintenance opportunity. 

            This operation causes the uBR to place an entry for the
            cable modem specified into the override request queue. The
            link is then broken by deleting the modem from its polling
            list. When the modem attempts initial ranging, the override
            request causes downstream frequency and upstream channel
            override fields to be inserted into the RNG-RSP message."                      B"A CMTS operation entry to instruct a cable modem to move to
             a new downstream and/or upstream channel.
 
             A CMTS operator can use this to initiate an operation
             in CMTS to instruct a cable modem to move to a new
             downstream, or upstream channel or both. 
             
             Each entry consists of the mac address of the cable modem
             to be moved, a new downstream frequency, a new upstream
             channel id etc..  More than one entries could have for a
             cable modem, so there is a time stamp for each entry to
             show the time when this operation is initiated. 

             A management station wishing to create an entry should
             first generate a pseudo-random serial number to be used
             as the index to this sparse table.  The station should
             then create the associated instance of the row status
             object. It must also, either in the same or in successive
             PDUs, create the associated instance of the command and
             parameter objects. It should also modify the default values
             for any of the parameter objects if the defaults are not
             appropriate.

             Once the appropriate instances of all the command
             objects have been created, either by an explicit SNMP
             set request or by default, the row status should be set
             to active to initiate the operation. Note that this entire
             procedure may be initiated via a single set request which
             specifies a row status  of createAndGo as well as specifies
             valid values for the non-defaulted parameter objects.

             Once an operation has been activated, it cannot be stopped.
             That is, it will run until either the CMTS has generated 
             downstream frequency and/or upstream channel override
             fields in the RNG-RSP message sent to a cable modem or time
             out. In either case, the operation is completed.

             Once the operation is completed, the real result of the 
             operation to the cable modem cannot be known from this
             table. The result of the cable modem's downstream frequency
             and the upstream channel id can be checked from other MIB
             tables. For example, docsIfCmtsServiceTable from
             DOCS-IF-MIB can be used to check whether the cable modem's
             downstream frequency and upstream channel id are changed. 
             Please note that even the CMTS has generated downstream
             frequency and/or upstream channel override fields in the
             RNG-RSP message sent to a cable modems, if the cable modem
             cannot lock the instructed downstream frequency or no
             upstream channel id could be used, it may reconnect back to
             the original downstream frequency and upstream channel id. 
            
             Once the operation completes, the management station should
             retrieve the values of the cdxCmtsCmChOverState 
             objects of interest, and should then delete the entry.  
             In order to prevent old entries from clogging the table, 
             entries will be aged out, but an entry will never be
             deleted within 15 minutes of completing. " ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification (SP-RFI-I04-980724)
             , 6.3.2.5.3 Overriding Channels. "                    &"Object which specifies a unique entry in the
             table. A management station wishing to initiate a
             channel override operation should use a pseudo-random 
             value for this object when creating or modifying an 
             instance of a cdxCmtsCmChOverEntry.  "                      4"The mac address of the cable modem that the CMTS instructs
             to move to a new downstream and/or upstream channel.  

             This column must be set to a valid Mac address currently in
             the CMTS in order for this entry's row status to be set to
             active successfully."                       ?"The new downstream frequency which the cable modem is 
             instructed to move to.  The value 0 is to ask the CMTS not
             to override the downstream frequency. "                       ?"The new channel Id which the cable modem is instructed to 
             move to.  The value -1 is to ask the CMTS not to override
             the upstream channel Id. "                      z"Specifies whether or not a cdxCmtsCmChOverNotification 
             should be issued on completion of the operation.  If such a
             notification is desired, it is the responsibility of the 
             management entity to ensure that the SNMP administrative
             model is configured in such a way as to allow the
             notification to be delivered. "                      "The value of sysUpTime at which the operation was
             initiated. Since it is possible to have more than one entry
             in this table for a cable modem, this object can help to
             distinguish the entries for the same cable modem. "                      ~"The status of the specified channel override operation.
             The enumerations are:
               messageSent(1): the CMTS has sent a RNG-RSP message 
                           with channel override to the cable modem. 
               commandNotActive(2): the command is not in active mode
                                    due to this entry's row status is
                                    not in active yet.
               noOpNeed(3): The downstream frequency and the upstream 
                            channel Id in this entry are the same as 
                            original ones when this entry's row status
                            is set to active, so CMTS does not need to 
                            do any operation.  
               modemNotFound(4): The modem is not found in the CMTS
                                 at the time when the command becomes
                                 active.
               waitToSendMessage(5): specified the operation is active
                                     and CMTS is waiting to send
                                     a RNG-RSP message with channel 
                                     override to the cable modem.
               timeOut(6): specified the operation is timed out.
                           That is, the CMTS cannot send a RNG-RSP
                           message with channel override to the cable
                           modem within the time specified in the object
                           of cdxCmtsCmChOverTimeExpiration. 
                           The possible reason is that the cable modem
                           does not repeat the initial ranging. 

                The possible state change diagram is as below: 
                [commandNotActive ->] waitToSendMessage -> 
                    messageSent or timeOut. 
                [commandNotActive ->] noOpNeeded or modemNotFound. " ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification (SP-RFI-I04-980724)
             , 6.3.2.5.3 Overriding Channels. "                    ?"The status of this table entry.  

             This value for cdxCmtsCmChOverMacAddress must be valid Mac 
             address currently in the CMTS in order for the row 
             status to be set to active successfully. 
                
             Once the row status becomes active and state becomes 
             waitToSendMessage, the entry cannot not be changed except 
             to delete the entry by setting the row status to destroy(6)
             and since the operation cannot be stopped, the destroy(6) 
             will just cause the SNMP agent to hide the entry from 
             application and the SNMP agent will delete the entry 
             right after the operation is completed. "                       g"This table contains attributes or configurable parameters 
            for cable modems from a CMTS. "                       d"The list contains a cable modem's attributes or 
            configurable parameters from a CMTS. "                      ?"The maximum number of permitted CPEs connecting to the
             modem. 

             The value -1 means to use the default value of maximum 
             hosts per modem in the CMTS cable interface which the modem
             connects to and the value is defined in 
             cdxCmtsCmDefaultMaxCpes in the cdxCmtsMacExtTable. 

             The value 0 means no maximum limit.

             Setting the value will not affect the already connected
             CPEs to the modem. "                       w"The current number of CPEs connecting to the modem.

             The value 0 means no hosts connecting to the modem."                      "The index in docsIfQosProfileTable describing the quality
          of service attributes associated with this particular
          modem's primary SID. 

          When trying to change the value, if the new value is not 
          a valid index in the docsIfQosProfileTable, the modem will 
          retain the old docsIfQosProfileTable entry. If no associated
          docsIfQosProfileTable entry exists for this modem, 
          this object returns a value of zero on read.

          This object has meaning only for DOCSIS1.0 cable modems.
          For cable modems in DOCSIS1.1 or above mode, this object will
          report 0 and cannot be changed to any other values since 
          there is no QoS profile associated with cable modems in 
          DOCSIS1.1 or above mode."                      ?"This table contains the list of modems which failed the CMTS
            Dynamic Message Integrity Check (DMIC). The modems are 
            either
            Marked: The modems failed the DMIC check but were still 
                    allowed to come online.
            Locked: The modems failed the DMIC check and hence were 
                    allowed to come online with a restrictive QoS 
                    profile as defined in  cdxCmtsCmDMICLockQos.
            Rejected: The modems failed the DMIC check and hence
                      were not allowed to come online.
            Another objective of the objects in this table is to clear
            the lock on the modems."                       K"Additional DMIC objects for docsIfCmtsCmStatusTable 
             entry. "                      ?"This shows all the cable modems that are online or offline
             and that had failed the Dynamic CMTS MIC verification
             check. The state is mentioned as follows:
             mark(1): The modem was allowed to come online.
             lock(2): The modem was allowed to come online but with
                        a restrictive QoS profile as defined by 
                        cdxCmtsCmDMICLockQos.
             reject(3): The modem was not allowed to come online."                      "When set to TRUE, it forces the cable modems to 
              reinitialize, and the cable modems must re-register
              with a valid DOCSIS configuration file before being
              allowed online. Otherwise, the cable modem is locked 
              in its current restricted QoS profile and cannot 
              reregister with a different profile until it has 
              been offline for at least 24 hours.
              If cdxCmtsCmStatusDMICUnLock is set to TRUE, and
              re-init succeeds, that modem row is removed from the
              cdxCmtsCmStatusDMICTable. And if re-init again fails,
              the row remains in that table, possibly with a new
              value for cdxCmtsCmStatusDMICMode
              When polled, it will always return FALSE."                      N"This table contains information about CPE connects behind
            cable modem. It will return IP address and IP address type
            of each CPE connect to a CM.

            It is not intended to walk the whole table. An application
            would need to query this table based on the specific indices.
            Otherwise, it will impact the CMTS performance due to the 
            huge size of this table.

            The agent creates/destroys/modifies an entry whenever there
            is a CPE connect to a cable modem or disconnect from a cable
            modem."                      "Represents an entry in the table. Each entry is created if
            there is CPE connects to a cable modem.
            
            The indices uniquely identify a CPE. It is never the intent
            for an application to perform a SNMP Get operation against
            a table of this nature, rather it is the intent to merely
            enumberate mappings. 

            An application would determine the CPEs behind all cable
            modems by performing a SNMP GetNext starting with the
            variable bindings:
            - cdxCmToCpeInetAddressType.0
            - cdxCmToCpeInetAddress.0

            It will return the IP address type and value tuple
            corresponding to the CPE with lowest IP address behind the
            cable modem with the lowest MAC address. An application can
            perform a SNMP GetNext operation with the following variable
            bindings:
            - cdxCmToCpeInetAddressType.x.y.z
            - cdxCmToCpeInetAddress.x.y.z
            where x is MAC address of cable modem, and y.z is IP address
            type and value tuple of the reported CPE.
            An application can repeat this process until it has
            traversed the entire table.

            If the application only wants to know the CPEs behind a
            given cable modem, it can perform a SNMP GetNext opertaion
            with the following:
            - cdxCmToCpeInetAddressType.x
            - cdxCmToCpeInetAddress.x
            where x is MAC address of cable modem." ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification
             (SP-RFI-I04-980724.) docsIfCmtsCmStatusTable,
             docsIfCmtsServiceTable in DOCS-IF-MIB.my."                     \"The MAC address that uniquely identifies a cable modem
             that CPEs connects to."                       <"The type of Internet address of the cdxCmToCpeInetAddress."                       :"This object identifies the address assigned to this CPE."                      ?"This table contains information about cable modems with CPE
            connects to.

            It is not intended to walk the whole table. An application
            would need to query this table base on the specific index.
            Otherwise, it will impact the CMTS performance due to the
            huge size of this table.

            The agent creates/destroys/modifies an entry whenever there
            is update for the cable modem that CPE connects to."                      M"An entry in cdxCpeToCmTable. Each entry contains information
            on the MAC address, IP Address, and status index for the 
            cable modem with a specific CPE connects to. Each entry is
            created if there is any cable modem with CPE connects to.
            Entries are ordered by cdxCpeToCmCpeMacAddress." ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification
             (SP-RFI-I04-980724.) docsIfCmtsCmStatusTable,
             docsIfCmtsServiceTable in DOCS-IF-MIB.my."                     4"This object identifies the MAC address of the CPE."                       <"This object identifies the MAC address of the cable modem."                       P"The type of Internet address of the cdxCpeToCmInetAddress
             object."                       O"This object identifies the address assigned to this cable
             modem."                       y"An entry in docsIfCmtsCmStatusTable identifying status
             index of the cable modem which the CPE connects to." *"docsIfCmtsCmStatusTable from DOCS-IF-MIB"                        c"This table contains upstream channel attributes for  
             automated Spectrum management, in addition to the ones
             provided by docsIfUpstreamChannelEntry.
             It also contains upstream channel attributes to count 
             the number of active, registered and total number of cable
             modems on this upstream. "                      ,"Additional objects for docsIfUpstreamChannelEntry,
             including the secondary upstream channel modulation
             profile, the lower bound for the channel width and the
             number of active, registered and total number of cable
             modems on this upstream channel. " ?"Data-Over-Cable Service Interface Specifications (DOCSIS)
             Radio Frequency Interface Specification
             (SP-RFI-I04-980724.) docsIfUpstreamChannelTable in
             DOCS-IF-MIB.my. "                    ?"The lower bound for the bandwidth of this upstream channel.
             The bandwidth specified by docsIfUpChannelWidth is used as
             the upper bound of the upstream channel. The two objects,
             docsIfUpChannelWidth and cdxIfUpChannelWidth, in 
             conjunction, define the upstream channel width range to be
             used for the automated spectrum management.

             This object returns 0 if the channel width is undefined 
             or unknown.

             For those upstreams in the linecards which do not have the
             automated spectrum management feature, this channel width
             is undefined and always has value 0. "                      ?"The secondary modulation profile for the upstream channel.
             This should be a QPSK modulation profile if the primary
             profile is QAM-16. The CMTS will switch from primary
             profile (QAM16) to secondary profile (QPSK) depending on
             the noise level of a particular spectrum band.

             This is an entry identical to the docsIfModIndex in the 
             docsIfCmtsModulationTable that describes this channel.
             This channel is further instantiated there by a grouping
             of interval usage codes which together fully describe the
             channel modulation. This object returns 0 if the
             docsIfCmtsModulationTable does not exist or is empty. "                       S"The total count of cable modems on this upstream channel
             since boot."                       ?"The count of cable modems that are active. Active cable
             modems are recognized by the cdxCmtsCmStatusValue other
             than offline(1). "                      ?"The count of cable modems that are registered and online
             on this upstream. Registered cable modems are those
             with one of the following values:
             registrationComplete(6) of docsIfCmtsCmStatusValue OR
             online(12), kekRejected(10), onlineKekAssigned(6),
             tekRejected(11), onlineTekAssigned(7) of 
             cdxCmtsCmStatusValue."                      ?"The Upstream Input power level at the CMTS interface.
             This is the expected power level and is different from the
             actual power received. If not configured the default value
             is 0 dBmV and is also the optimum setting power level for
             the upstream. For FPGA line cards, the valid range
             is <-10 to 10> dBmV and for ASIC Line cards, it is 
             <-10  to 25> dBmV. "                       ?"The average percentage of upstream channel utilization. 
             This item indicates the running average of percent
             channel utilization in CMTS upstream Mac scheduler. "                       ?"The average percentage of contention mini-slots. This
             item indicates the running average of percent
             contention mini-slots in CMTS upstream Mac scheduler. "                       ?"The average percentage of initial ranging mini-slots. 
             This item indicates the running average of percent
             initial ranging mini-slots in CMTS upstream Mac
             scheduler. "                      ?"This object indicates the number of active 
             Unsolicited Grant Service (UGS) on a given upstream.
             This would be used for the user to evaluate traffic 
             load at any given time of the day.

             The Unsolicited Grant Service (UGS) is designed to 
             support real-time service flows that generate fixed
             size data packets on a periodic basis. "                      ?"This object indicates the maximum number of 
             Unsolicited Grant Service (UGS) allocated on a
             given upstream in the last one hour. This would be
             used for the user to evaluate traffic load at any
             given time of the day.

             The Unsolicited Grant Service (UGS) is designed to
             support real-time service flows that generate fixed
             size data packets on a periodic basis. "                      ?"This object indicates the minimum number of 
             Unsolicited Grant Service (UGS) allocated on a
             given upstream in the last one hour. This would be
             used for the user to evaluate traffic load at any
             given time of the day.

             The Unsolicited Grant Service (UGS) is designed to
             support real-time service flows that generate fixed
             size data packets on a periodic basis. "                      ?"This object indicates the average number of 
             Unsolicited Grant Service (UGS) allocated on a
             given upstream in the last one hour. This would be
             used for the user to evaluate traffic load at any
             given time of the day.

             The Unsolicited Grant Service (UGS) is designed to
             support real-time service flows that generate fixed
             size data packets on a periodic basis. "                      ?"This object indicates the maximum number of 
             Unsolicited Grant Service (UGS) allocated on a
             given upstream in the last five minutes. This would 
             be used for the user to evaluate traffic load at
             any given time of the day.

             The Unsolicited Grant Service (UGS) is designed to
             support real-time service flows that generate fixed
             size data packets on a periodic basis. "                      ?"This object indicates the minimum number of 
             Unsolicited Grant Service (UGS) allocated on a
             given upstream in the last five minutes. This would 
             be used for the user to evaluate traffic load at
             any given time of the day.

             The Unsolicited Grant Service (UGS) is designed to
             support real-time service flows that generate fixed
             size data packets on a periodic basis. "                      ?"This object indicates the average number of 
             Unsolicited Grant Service (UGS) allocated on a
             given upstream in the last five minutes. This would 
             be used for the user to evaluate traffic load at
             any given time of the day.

             The Unsolicited Grant Service (UGS) is designed to
             support real-time service flows that generate fixed
             size data packets on a periodic basis. "                              "This notification indicates that the cable modem coming
            online and going offline. A notification will be sent from
            CMTS for a cable modem status changing to online or offline
            within the interval specified in
            cdxCmtsCmOnOffTrapInterval. "                ?"This notification is sent at the completion of a CMTS 
            channel override operation if 
            cdxCmtsCmChOverTrapOnCompletion is true in the
            original entry.

            Once a channel override operation has been activated, it 
            cannot be stopped.  That is, it will run until either the 
            CMTS has generated downstream frequency and/or upstream 
            channel override fields in the RNG-RSP message sent to a 
            cable modem or 
            cdxCmtsCmChOverTimeExpiration time expired.
            In either case, the operation is completed. State in the 
            cdxCmtsCmChOverState object will tell in which 
            condition the operation is completed. "                 y"This notification is sent whenever a modem is locked because
            it failed the Dynamic Message Integrity Check."                         ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS features."   "Write access is not required."       +-- superseded by cdxDocsExtComplianceRev1 
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS features."   "Write access is not required."       +-- superseded by cdxDocsExtComplianceRev2 
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS 
             features."   "Write access is not required."       +-- superseded by cdxDocsExtComplianceRev3 
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS
             features."   "Write access is not required."       *-- superseded by cdxDocsExtComplianceRev4
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS
             features."   "Write access is not required."       A--                superseded by current cdxDocsExtComplianceRev5
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS
             features."   "Write access is not required."       *-- superseded by cdxDocsExtComplianceRev6
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS
             features."   "Write access is not required."       *-- superseded by cdxDocsExtComplianceRev7
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS
             features."   "Write access is not required."       *-- superseded by cdxDocsExtComplianceRev8
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS
             features."   "Write access is not required."       *-- superseded by cdxDocsExtComplianceRev9
     ?"The compliance statement for devices that implement MCNS
             compliant Radio Frequency Interfaces and DOCSIS
             features."   "Write access is not required."                "Group of objects implemented in Cable Modem Termination
             Systems (CMTS) cable interfaces for states of the scheduler
             supporting 
             Data-Over-Cable Service Interface Specifications (DOCSIS)
             1.0 Quality of Service (QoS). "           &-- superseded by cdxQosCtrlGroupRev1 
    ?"Group of objects implemented in Cable Modem Termination
             Systems (CMTS) cable interfaces for the queuing states of
             the scheduler supporting Data-Over-Cable Service Interface
             Specifications (DOCSIS) Quality of Service (QoS). Each
             upstream scheduler maintains a queue set, but the
             downstream schedulers does not in DOCSIS QoS. So only each
             upstream has an entry for DOCSIS QoS support."                 ?"Group of objects implemented in Cable Modem Termination
             Systems (CMTS) for managing and monitoring cable modems or
             Customer Premises Equipments. "           (-- superseded by cdxCmtsCmCpeGroupRev1 
    
"Group of objects implemented in Cable Modem Termination
             Systems (CMTS) cable interfaces for states of the scheduler
             supporting 
             Data-Over-Cable Service Interface Specifications (DOCSIS)
             Quality of Service (QoS). "           %-- superseded by cdxQosCtrlGroupRev2
     ?"Group of objects implemented in Cable Modem Termination
             Systems (CMTS) for managing and monitoring cable modems or
             Customer Premises Equipments. "           (-- superseded by cdxCmtsCmCpeGroupRev2 
     ?"Group of objects implemented in Cable Modem Termination
             Systems (CMTS) cable interfaces for automated upstream
             spectrum management. "           '--  superseded by cdxSpecMgmtGroupRev1
     ?"Group of objects implemented in Cable Modem 
             Termination Systems (CMTS) for managing and monitoring 
             cable modems or Customer Premises Equipments. "           (-- superseded by cdxCmtsCmCpeGroupRev3 
     ?"Group of objects implemented in Cable Modem Termination 
             Systems (CMTS) cable interfaces for automated upstream 
             spectrum management. "           (-- superseeded by cdxSpecMgmtGroupRev2 
     ?"Group of objects implemented in Cable Modem 
             Termination Systems (CMTS) for managing and monitoring 
             cable modems or Customer Premises Equipments. "           (-- superseded by  cdxCmtsCmCpeGroupRev4
    ="Group of objects implemented in Cable Modem Termination 
            Systems (CMTS) cable interfaces for states of the scheduler
            supporting Data-Over-Cable Service Interface Specifications
            (DOCSIS) Quality of Service (QoS).Statistics about the IE 
            types in the Upstream channel. "                 ?"Group of objects implemented in Cable Modem 
             Termination Systems (CMTS) for managing and monitoring 
             cable modems or Customer Premises Equipments. "           (-- superseded by cdxCmtsCmCpeGroupRev5 
     o"Group of objects implemented in Cable Modem Termination
             Systems (CMTS) for upstream interfaces. "           &-- superseded by cdxSpecMgmtGroupRev3
     ?"A group of notifications implemented in Cable Modem 
             Termination Systems (CMTS) for managing and monitoring
             cable modems or Customer Premises Equipments. "               $-- superseeded by cdxNotifGroupRev1
     o"Group of objects implemented in Cable Modem Termination
             Systems (CMTS) for upstream interfaces. "                 ?"Group of objects implemented in Cable Modem
             Termination Systems (CMTS) for managing and monitoring
             cable modems or Customer Premises Equipments. "           '-- superseded by cdxCmtsCmCpeGroupRev6
     ?"Group of objects implemented in Cable Modem
             Termination Systems (CMTS) for managing and monitoring
             cable modems or Customer Premises Equipments. "           '-- superseded by cdxCmtsCmCpeGroupRev7
     ?"Group of objects implemented in Cable Modem
             Termination Systems (CMTS) for managing and monitoring
             cable modems or Customer Premises Equipments. "           (-- superseded by cdxCmtsCmCpeGroupRev8 
     ?"Group of objects implemented in Cable Modem
             Termination Systems (CMTS) for managing and monitoring
             cable modems or Customer Premises Equipments. "                 ?"A group of notifications implemented in Cable Modem 
             Termination Systems (CMTS) for managing and monitoring
             cable modems or Customer Premises Equipments. "                                                    