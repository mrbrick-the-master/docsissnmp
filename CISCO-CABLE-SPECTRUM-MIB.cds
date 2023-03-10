Y-- *****************************************************************
-- CISCO-CABLE-SPECTRUM-MIB.my: Cisco Data Over Cable Spectrum
-- Management MIB file
--   
-- October 1998 Frances Shen
--   
-- Copyright (c) 1998, 2000-2006 by Cisco Systems, Inc.
-- All rights reserved.
-- *****************************************************************
   V"This data type represents the actual measured frequency.
        The unit is in KHz."              ?"This data type represents the frequency.
        The unit is in KHz.
        A range of 5000KHz to 42000KHz is appropriate for a cable
        plant using a North American Sub-Split channel plan.
        The spectrum range has been expanded to accommodate
        an upper edge of 65000KHz for some European channel plans.
        If DOCSIS is extended to cover other types of channel
        plans (and frequency allocations) this object will
        be modified accordingly."              ?"The CCSRequestOperState is used to represent the current test
        status.
        It has the following defined values:
        - 'idle', which indicates the test has not been initiated;
        - 'pending', which indicates the test is in the pending queue;
        - 'running', which indicates the test is in process;
        - 'noError', which indicates the test has completed
          without error;
        - 'aborted', which indicates the test was stopped
          before the test was completed;
        - 'notOnLine', which indicates the Mac Address
          is not online;
        - 'invalidMac', which indicates the Mac Address
          is not valid;
        - 'timeOut', which indicates timeout has occurred while
          receiving data from DSP;
        - 'fftBusy', which indicates the FFT is busy;
        - 'fftFailed', which indicates the FFT is failed due to
          a hardware problem;
        - 'others', other errors;"              @"The CCSRequestOperation is used to control various spectrum
        tests.  It has the following defined values:
        - 'none', initial value at row creation
                  and also indicates test completion;
        - 'start', which is used to start the test;
        - 'abort', which is used to abort the test;"                                                                                                                ?"This is the MIB Module for Cable Spectrum Management for
        DOCSIS-compliant Cable Modem Termination Systems (CMTS).

        Spectrum management is a software/hardware feature provided
        in the CMTS so that the CMTS may sense both downstream and
        upstream plant impairments, report them to a management
        entity, and automatically mitigate them where possible.

        The CMTS directly senses upstream transmission errors.It
        may also indirectly monitor the condition of the plant by
        keeping a record of modem state changes.  It is desireable
        to perform these functions without reducing throughput or
        latency and without creating additional packet overhead on
        the RF plant.

        The purpose of cable Spectrum Management is to prevent long
        term service interruptions caused by upstream noise events
        in the cable plant.  It is also used for fault management
        and trouble shooting the cable network.  When modems are
        detected to go on-line and off-line by flap detectors, the
        cable operators can look at the flap list and spectrum
        tables to determine the possible causes." ?"Cisco Systems
            Customer Service
            Postal: cisco Systems
            170 West Tasman Drive
            San Jose, CA 95134
            U.S.A.
            Tel: +1 800 553-NETS
            E-mail: cs-ubr@cisco.com" "200610100000Z" "200409050000Z" "200407140000Z" "200403020000Z" "200306180000Z" "200206100000Z" "200102010000Z" "200008180000Z" "200004240000Z"?"1. Added spectrum group global configuration table
        as ccsSpecGroupFreqTable.
        2. Added ccsUpInSpecGroupTable and ccsUpInFiberNodeTable
        to populate all cable upstream interfaces in each
        spectrum group and fiber-node.
        3. Added ccsUpSpecMgmtSpecGroup and
        ccsUpSpecMgmtSharedSpectrum into ccsUpSpecMgmtTable to
        populate spectrum group configuration and topology
        information for each upstream.
        4. Included 0 as part of ccsUpSpecMgmtHopPeriod.
        5. Changed the SYNTAX of ccsUpSpecMgmtFromCenterFreq and
        ccsUpSpecMgmtToCenterFreq from CCSFrequency to
        Unsigned32 (0 | 5000..65000).
        6. Changed the SYNTAX of ccsUpSpecMgmtFromBandWidth and
        ccsUpSpecMgmtToBandWidth from CCSFrequency to
        Unsigned32 (200 | 400 | 800 | 1600 | 3200 | 6400).
        7. Increased ccsUpSpecMgmtFecUnCorrectThres2 range to 30.
        Included 0 as part of it.
        8. Updated the description for ccsUpSpecMgmtHopPeriod,
        ccsUpSpecMgmtMissedMaintMsgThres,
        ccsUpSpecMgmtFromCenterFreq, ccsUpSpecMgmtToCenterFreq,
        and ccsUpSpecMgmtFecUnCorrectThres2.""1. Included 0 as part of ccsUpSpecMgmtSnrThres,
        ccsUpSpecMgmtCnrThres, ccsUpSpecMgmtFecCorrectThres, 
        ccsUpSpecMgmtFecUnCorrectThres ranges.
        2. Increased  ccsUpSpecMgmtFecCorrectThres and
        ccsUpSpecMgmtFecUnCorrectThres range to 30"$"1. Modified ccsUpSpecMgmtSNR's description to reflect its
        name since there's a new object defined for CNR. 
        2. Added ccsUpSpecMgmtCnrThres1, ccsUpSpecMgmtCnrThres1,
        ccsUpSpecMgmtCNR, ccsUpSpecMgmtMissedMaintMsgThres,
        ccsUpSpecMgmtHopPeriod, ccsUpSpecMgmtCriteria.
        3. Deprecated ccsUpSpecMgmtFecCorrectThres2
        4. Deprecated ccsUpSpecMgmtHopCondition and replaced
        it with ccsUpSpecMgmtCriteria.
        5. Deprecated ccsHoppingNotification and replaced
        it with ccsSpecMgmtNotification."O"1. Modified description for ccsFlapListMaxSize and
        ccsFlapListCurrentSize.
        2. Implement ccsCmFlapTable using downstream, upstream and 
        Mac as indices to replace ccsFlapTable.
        3. Modified description for ccsSNRRequestTable.
        4. Added ccsUpSpecMgmtUpperBoundFreq.
        5. Added ccsCompliance5." {"1. Changed range of CCSFrequency and CCSMeasuredFrequency
        TEXTUAL-CONVENTION to support Euro-DOCSIS and J-DOCSIS."Y"1. Changed range for ccsUpSpecMgmtFecCorrectThres1,
        ccsUpSpecMgmtFecCorrectThres2, 
        ccsUpSpecMgmtFecUnCorrectThres1,
        ccsUpSpecMgmtFecUnCorrectThres2 and ccsUpSpecMgmtSnrThres2.
        2. Changed modemOffline(1) enumeration to 
        stationMaintainenceMiss.
        3. Added ccsUpSpecMgmtGroupRev1 to ccsCompliance4."{"1. Added new objects ccsFlapMissThreshold,
        ccsFlapPowerAdjustThreshold, ccsFlapResetAll, ccsFlapClearAll
        and ccsFlapLastClearTime.
         2. Added new objects ccsFlapInsertionFailNum,
        ccsFlapHitNum, ccsFlapMissNum, ccsFlapCrcErrorNum,
        ccsFlapPowerAdjustmentNum, ccsFlapTotalNum,
        ccsFlapResetNow, ccsFlapLastResetTime into ccsFlapTable.""1. Removed ccsSNRRequestUpperFreq and ccsSNRRequestLowFreq
        from ccsSNRRequestTable.
         2. Changed ccsSNRRequestSNR from Unsigned32 to Integer32.
         3. Modified description for ccsHoppingNotification.
         4. Changed ccsSpectrumRequestResolution to Khz." ?"Added new object groups:
        1. ccsSpectrumObjects to provide spectrum information
        2. ccsConfigObjects to support spectrum management
           functions."                      ?"The maximum number of flapped modem entries
        (ccsCmFlapEntry) per Cable downstream interface that 
        can be reported in the ccsCmFlapTable.  If the Cable
        downstream interface has more flapped modems than
        the ccsFlapListMaxSize, some of the flapped modems 
        will not be shown in the ccsCmFlapTable.  In this case,
        the users may want to increase the ccsFlapMaxSize."                       ?"The total number of flapped modem entries (ccsCmFlapEntry)
        that reported in the ccsCmFlapTable.  The maximum value 
        will be ccsFlapListMaxSize * <no of downstreams>."                       ?"The flap entry aging threshold.  Periodically, the
        aging process scans through the flap list and removes the
        cable modems that have not flapped for that many minutes."                      ?"The insertion-time is an empirically derived, worst-case
        number of seconds which the cable modem requires to
        complete registration.  The time taken by cable modems to
        complete their registration is measured by the cable
        operators and this information helps to determine the
        insertion time.  If the cable modem has not completed the
        registration stage within this insertion-time setting, the
        cable modem will be inserted into the flap-list."                       ?"This table keeps the records of modem state changes.
        It can be used to identify the problematic cable modems.
        An entry can be deleted from the table but can not be
        added to the table."                       ?"List of attributes for an entry in the ccsFlapTable.
        An entry in this table exists for each cable modem that
        triggered one of our flap detectors."                       ?"MAC address of the Cable Modem's Cable interface
        which identifies a flap-list entry for a flapping 
        Cable Modem."                       ?"The ifIndex of the Cable upstream interface whose ifType is
        docsCableUpstream(129).  The CMTS detects a flapping Cable
        Modem from its Cable upstream interface."                       a"The ifIndex of the Cable downstream interface whose ifType
        is docsCableDownstream(128)."                      ?"The number of times a Cable Modem registered
        more frequently than expected.  Excessive registration
        is defined as the presence of a time span between
        two successive registration cycles which is less than
        a threshold span (ccsFlapInsertionTime).

        A Cable Modem may fail the ranging or registration process
        due to not being able to get an IP address. When the Cable
        Modem can not finish registration within the insertion
        time, it retries the process and sends the Initial
        Maintenance packet again.
        CMTS will receive the Initial Maintenance
        packet from the Cable Modem sooner than expected and the
        Cable Modem is considered a flapping modem.

        This count may indicate:
            Intermittent downstream sync loss, or
            DHCP or modem registration problems.

        The Flap Count (ccsFlapTotal) will be incremented when this
        counter is incremented.

        Discontinuites in the value of this counter can occur if
        this entry is removed from the table and then re-added, and
        are indicated by a change in the value of
        ccsFlapCreateTime." T"Data over Cable Radio Frequency Interface specification,
             Section 7.2."                    ?"The number of times the CMTS receives the Ranging request
        from the Cable Modem.

        The CMTS issues a Station Maintenance transmit opportunity
        at a typical rate of once every 10 seconds and waits for
        a Ranging request from the Cable Modem.If the CMTS receives
        a Ranging request then the Hit count will be increased by 1

        If the FlapTotal count is high,both Hits and Misses counts
        are high, and other counters are relatively low then the
        flapping is probably caused by the modem going up and down.
        The Hits and Misses counts are keep-alive polling
        statistics.
        The Hits count should be much greater than the Misses count

        Discontinuites in the value of this counter can occur if
        this entry is removed from the table and then re-added, and
        are indicated by a change in the value of
        ccsFlapCreateTime."                      ?"The number of times the CMTS misses the Ranging request
        from the Cable Modem.

        The CMTS issues a Station Maintenance packet every 10
        seconds and waits for a Ranging request from the Cable
        Modem.
        If the CMTS misses a Ranging request within 25 msec then
        the Misses count will be incremented.

        If ccsFlapTotal is high, Hits and Misses are high but
        ccsFlapPowerAdjustments and ccsFlapInsertionFails are
        low then the flapping is probably caused by the modem
        going up and down.

        Miss counts can indicate:
            Intermittent upstream,
            Laser clipping, or
            Noise bursts.

        Laser clipping can happen if the signal power is too high
        when the upstream electrical signal is converted to an
        optical signal.  When it happens the more input produces 
        less output, until finally there is no more increase in 
        output.  This phenomena is called laser clipping.

        Discontinuites in the value of this counter can occur if
        this entry is removed from the table and then re-added, and
        are indicated by a change in the value of
        ccsFlapCreateTime."                      ?"The number of times the CMTS upstream receiver flagged
        a packet with a CRC error.

        If ccsFlapCrcErrors is high, it indicates the cable
        upstream may have high noise level.  The modem may not be
        flapping yet but it may be a potential problem.

        This count can indicate:
            Intermittent upstream,
            Laser clipping, or
            Noise bursts.

        Laser clipping can happen if the signal power is too high
        when the upstream electrical signal is converted to an
        optical signal.  When it happens the more input produces 
        less output, until finally there is no more increase in 
        output.  This phenomena is called laser clipping.
        Discontinuites in the value of this counter can occur if
        this entry is removed from the table and then re-added, and
        are indicated by a change in the value of
        ccsFlapCreateTime."                      "The number of times the Cable Modem upstream
        transmit power is adjusted during station
        maintenance.  When the adjustment is greater than the
        power adjustment threshold the counter will be incremented.
        The power adjustment threshold is chosen in an
        implementation-dependent manner.

        The Flap Count (ccsFlapTotal) will be incremented when this
        counter is incremented.

        If ccsFlapTotal is high, ccsFlapPowerAdjustments is high
        but the Hits and Misses are low and ccsFlapInsertionFails
        are low then the flapping is probably caused by an improper
        transmit power level setting at the modem end.

        This count can indicate:
            Amplifier degradation,
            Poor connections, or
            Wind, moisture, or temperature sensitivity.

        Discontinuites in the value of this counter can occur if
        this entry is removed from the table and then re-added, and
        are indicated by a change in the value of
        ccsFlapCreateTime." T"Data over Cable Radio Frequency Interface specification,
             Section 7.2."                    ?"Whenever the Cable Modem passes flap detection,
        then the flap counter is increased.

        There are 3 flap detectors defined:
        (1) When ccsFlapInsertionFails is increased the Flap count
            will be increased.
        (2) When the CMTS receives a Miss followed by a Hit
            then the Flap count will be increased.
        (3) When ccsFlapPowerAdjustments is increased the Flap
            count will be increased.

        Discontinuites in the value of this counter can occur if
        this entry is removed from the table and then re-added, and
        are indicated by a change in the value of
        ccsFlapCreateTime." S"Data over Cable Radio Frequency Interface specification,
             Appendix B."                     Q"The flap time is set whenever the Cable Modem triggers a
        flap detector."                      "The time that this entry was added to the table. If an
        entry is removed and then later re-added, there may be a
        discontinuity in the counters associated with this entry.
        This timestamp can be used to detect those 
        discontinuities."                      ?"Controls and reflects the status of rows in this table.

        When a cable modem triggers a flap detector, if an entry
        does not already exist for this cable modem, and
        ccsFlapListCurrentSize is less than ccsFlapListMaxSize,
        then an entry will be created in this table. The new 
        instance of this object will be set to active(1).  All 
        flapping modems have the status of active(1).

        Active entries are removed from the table after they have
        not triggered any additional flap detectors for the period
        of time defined in ccsFlapAging. Alternatively, setting
        this instance to destroy(6) will remove the entry
        immediately.

        createAndGo(4) and createAndWait(5) are not supported."                      1"The number of times a Cable Modem registered more frequently
        than expected.  Excessive registration is defined as the
        presence of a time span between two successive registration
        cycles which is less than a threshold span
        (ccsFlapInsertionTime).

        A Cable Modem may fail the ranging or registration process
        due to not being able to get an IP address. When the Cable
        Modem can not finish registration within the insertion
        time, it retries the process and sends the Initial
        Maintenance packet again. CMTS will receive the Initial
        Maintenance packet from the Cable Modem sooner than expected
        and the Cable Modem is considered a flapping modem.

        This object may indicate:
            Intermittent downstream sync loss, or
            DHCP or modem registration problems.

        The Flap number (ccsFlapTotalNum) will be incremented when
        this object is incremented.

        This object is going to replace the object
        ccsFlapInsertionFails and the value of this object can be
        reset to zero if this entry is removed from the table and then
        re-added, or if a user resets all the statistical objects for
        this entry. The value of the object ccsFlapLastResetTime
        indicates the last reset time."                      "The number of times the CMTS receives the Ranging request
        from the Cable Modem.

        The CMTS issues a Station Maintenance transmit opportunity
        at a typical rate of once every 10 seconds and waits for
        a Ranging request from the Cable Modem. If the CMTS receives
        a Ranging request then the Hit number will be increased by 1

        If the FlapTotal object is high, both Hit and Miss objects are
        high, and other statistical objects are relatively low then
        the flapping is probably caused by the modem going up and down.
        The Hit and Miss objects keep-alive polling statistics. The
        Hit object should be much greater than the Misses count.

        This object is going to replace the object ccsFlapHits and the
        value of this object can be reset to zero if this entry is
        removed from the table and then re-added, or if an user resets
        all the statistical objects for this entry. The value of the
        object ccsFlapLastResetTime indicates the last reset time."                      C"The number of times the CMTS misses the Ranging request
        from the Cable Modem.

        The CMTS issues a Station Maintenance packet every 10 seconds
        and waits for a Ranging request from the Cable Modem. If the
        CMTS misses a Ranging request within 25 msec then the Miss
        Object will be incremented.

        If ccsFlapTotalNum is high, Hit and Miss are high but
        ccsFlapPowerAdjustmentNum and ccsFlapInsertionFailNum are low
        then the flapping is probably caused by the modem going up and
        down.

        Miss object can indicate:
            Intermittent upstream,
            Laser clipping, or
            Noise bursts.

        Laser clipping can happen if the signal power is too high
        when the upstream electrical signal is converted to an
        optical signal.  When it happens the more input produces less
        output, until finally there is no more increase in output.
        This phenomena is called laser clipping.

        This object is going to replace the object ccsFlapMisses and
        the value of this object can be reset to zero if this entry
        is removed from the table and then re-added, or if an user
        resets all the statistical objects for this entry. The value
        of the object ccsFlapLastResetTime indicates the last reset
        time."                      7"The number of times the CMTS upstream receiver flagged
        a packet with a CRC error.

        If ccsFlapCrcErrorNum is high, it indicates the cable
        upstream may have high noise level. The modem may not be
        flapping yet but it may be a potential problem.

        This object can indicate:
            Intermittent upstream,
            Laser clipping, or
            Noise bursts.

        Laser clipping can happen if the signal power is too high
        when the upstream electrical signal is converted to an
        optical signal.  When it happens the more input produces 
        less output, until finally there is no more increase in 
        output.  This phenomena is called laser clipping.

        This object is going to replace the object ccsFlapCrcErrors
        and the value of this object can be reset to zero if this
        entry is removed from the table and then re-added, or if a
        user resets all the statistical objects for this entry. The
        value of the object ccsFlapLastResetTime indicates the last
        reset time."                      ?"The number of times the Cable Modem upstream transmit power
        is adjusted during station maintenance.  When the adjustment 
        is greater than the power adjustment threshold the number 
        will be incremented. The power adjustment threshold is chosen 
        in an implementation-dependent manner

        The Flap number (ccsFlapTotalNum) will be incremented when
        this object is incremented.

        If ccsFlapTotalNum is high, ccsFlapPowerAdjustmentNum is high
        but the Hit and Miss are low and ccsFlapInsertionFailNum are
        low then the flapping is probably caused by an improper
        transmit power level setting at the modem end.

        This object can indicate:
            Amplifier degradation,
            Poor connections, or
            Wind, moisture, or temperature sensitivity.

        This object is going to replace the object
        ccsFlapPowerAdjustments and the value of this object can be
        reset to zero if this entry is removed from the table and
        then re-added, or if a user resets all the statistical objects
        for this entry. The value of the object ccsFlapLastResetTime
        indicates the last reset time."                      ("Whenever the Cable Modem passes flap detection, then the flap
        number is increased.

        There are 3 flap detectors defined:
        (1) When ccsFlapInsertionFailNum is increased the Flap number
            will be increased.
        (2) When the CMTS receives a Miss followed by a Hit
            then the Flap number will be increased.
        (3) When ccsFlapPowerAdjustmentNum is increased the Flap
            number will be increased.

        This object is going to replace the object ccsFlapTotal and
        the value of this object can be reset to zero if this entry
        is removed from the table and then re-added, or if an user
        resets all the statistical objects for this entry. The value
        of the object ccsFlapLastResetTime indicates the last reset
        time."                      ?"Setting this object to true(1) will set the following objects
        of this entry to 0: ccsFlapInsertionFailsNum, ccsFlapHitsNum,
        ccsFlapMissesNum, ccsFlapCrcErrorsNum, 
ccsFlapPowerAdjustmentsNum
        and ccsFlapTotalNum. Setting this object to true does not 
destroy
        the entry, so the ccsFlapCreateTime will be unchanged. Reading
        this object always returns false(2)."                      G"The last time that all the statistical objects of this entry
        are started from zero. There are several ways to restart the
        the statistical objects from zero. Setting the object
        ccsFlapResetNow or ccsFlapResetAll to true via SNMP is one
        way and and the other way is via command Line Interface. This
        timestamp can be used to know the last time the statistical
        objects are started from zero. The special value of all '00'Hs
        indicates that these statistical objects of this entry in the
        ccsFlapTable have never been reset."                       ?"The power adjust threshold.  When the power of the modem is
        adjusted beyond this threshold, the modem will be inserted
        into the flap-list."                      "Per modem miss threshold which triggers polling flap detector.
        When the number of times a cable modem does not acknowledge a 
        MAC-layer keepalive message from a cable modem card exceeds the 
        miss threshold, the cable modem is placed in the flap list."                      /"Setting this object to true(1) causes ccsFlapInsertionFailNum,
        ccsFlapHitNum, ccsFlapMissNum, ccsFlapCrcErrorNum, 
        ccsFlapPowerAdjustmentNum and ccsFlapTotalNum objects of each
        entry in ccsFlapTable to be started from zero. Reading this 
        object always returns false(2)."                      ?"Setting this object to true(1) removes all cable modems from
        flap-list and all the entries in the ccsFlapTable are
        destroyed. If a modem keeps flapping, the modem will be added
        again into the flap list and a new entry in the ccsFlapTable
        will be created.  The newly created entry for that modem will
        have new value of ccsFlapCreateTime and all the statistical
        objects will be started from zero. Reading this object always
        returns false(2)."                      ?"The last time that all the entries in the ccsFlapTable are
        destroyed. There are several ways to destroy all the entries
        in the ccsFlapTable. Setting the object ccsFlapClearAll to
        true is one way, and the other way is through Command Line
        Interface. This timestamp can be used to know when all the
        entries in the ccsFlapTable are destroyed. The special value
        of all '00'Hs indicates that the entries in the ccsFlapTable
        have never been destroyed."                      g"This table keeps the records of modem state changes,
        so it can be used to identify the problematic cable 
        modems.
        An entry per modem is added to the table automatically 
        by the system when it detects any state changes to
        the modem.  Therefore, it can be deleted but 
        can not be added by the management system."                       ?"List of attributes for an entry in the ccsCmFlapTable.
        An entry in this table exists for each cable modem that
        triggered one of our flap detectors."                       a"The ifIndex of the Cable downstream interface whose ifType
        is docsCableDownstream(128)."                       ?"The ifIndex of the Cable upstream interface whose ifType is
        docsCableUpstream(129).  The CMTS detects a flapping Cable
        Modem from its Cable upstream interface."                       c"MAC address of the Cable Modem's Cable interface which
        identifies a flapping Cable Modem."                       Q"The flap time is set whenever the Cable Modem triggers a
        flap detector."                      "The time that this entry was added to the table. If an
        entry is removed and then later re-added, there may be a
        discontinuity in the counters associated with this entry.
        This timestamp can be used to detect those 
        discontinuities."                      ?"The number of times a Cable Modem registered more frequently
        than expected.  Excessive registration is defined as the
        presence of a time span between two successive registration
        cycles which is less than a threshold span
        (ccsFlapInsertionTime).

        A Cable Modem may fail the ranging or registration process
        due to not being able to get an IP address. When the Cable
        Modem can not finish registration within the insertion
        time, it retries the process and sends the Initial
        Maintenance packet again. CMTS will receive the Initial
        Maintenance packet from the Cable Modem sooner than expected
        and the Cable Modem is considered a flapping modem.

        This object may indicate:
            Intermittent downstream sync loss, or
            DHCP or modem registration problems.

        The Flap number (ccsCmFlapTotalNum) will be incremented when
        this object is incremented.

        The value of this object can be reset to zero if this entry 
        is removed from the table and then re-added, or if the 
        ccsCmFlapResetNow object was set to true(1). The value of the 
        object ccsCmFlapLastResetTime indicates the last reset time."                      ?"The number of times the CMTS receives the Ranging request
        from the Cable Modem.

        The CMTS issues a Station Maintenance transmit opportunity
        at a typical rate of once every 10 seconds and waits for
        a Ranging request from the Cable Modem. If the CMTS receives
        a Ranging request then the Hit number will be increased by 1

        If the FlapTotal object is high, both Hit and Miss objects are
        high, and other statistical objects are relatively low then
        the flapping is probably caused by the modem going up and down.
        The Hit and Miss objects keep-alive polling statistics. The
        Hit object should be much greater than the Misses count.

        The value of this object can be reset to zero if this entry 
        is removed from the table and then re-added, or if the 
        ccsCmFlapResetNow object was set to true(1). The value of the 
        object ccsCmFlapLastResetTime indicates the last reset time."                      ?"The number of times the CMTS misses the Ranging request
        from the Cable Modem.

        The CMTS issues a Station Maintenance packet every 10 seconds
        and waits for a Ranging request from the Cable Modem. If the
        CMTS misses a Ranging request within 25 msec then the Miss
        Object will be incremented.

        If ccsCmFlapTotalNum is high, Hit and Miss are high but
        ccsCmFlapPowerAdjustmentNum and ccsCmFlapInsertionFailNum 
        are low then the flapping is probably caused by the modem 
        going up and down.

        Miss object can indicate:
            Intermittent upstream,
            Laser clipping, or
            Noise bursts.

        Laser clipping can happen if the signal power is too high
        when the upstream electrical signal is converted to an
        optical signal.  When it happens the more input produces less
        output, until finally there is no more increase in output.
        This phenomena is called laser clipping.

        The value of this object can be reset to zero if this entry 
        is removed from the table and then re-added, or if the 
        ccsCmFlapResetNow object was set to true(1). The value of the 
        object ccsCmFlapLastResetTime indicates the last reset time."                      ?"The number of times the CMTS upstream receiver flagged
        a packet with a CRC error.

        If ccsCmFlapCrcErrorNum is high, it indicates the cable
        upstream may have high noise level. The modem may not be
        flapping yet but it may be a potential problem.

        This object can indicate:
            Intermittent upstream,
            Laser clipping, or
            Noise bursts.

        Laser clipping can happen if the signal power is too high
        when the upstream electrical signal is converted to an
        optical signal.  When it happens the more input produces less
        output, until finally there is no more increase in output.
        This phenomena is called laser clipping.

        The value of this object can be reset to zero if this entry 
        is removed from the table and then re-added, or if the 
        ccsCmFlapResetNow object was set to true(1). The value of the 
        object ccsCmFlapLastResetTime indicates the last reset time."                      g"The number of times the Cable Modem upstream transmit power
        is adjusted during station maintenance. When the adjustment is
        greater than the power adjustment threshold the number will be
        incremented. The power adjustment threshold is chosen in an
        implementation-dependent manner

        The Flap number (ccsCmFlapTotalNum) will be incremented when
        this object is incremented.

        If ccsCmFlapTotalNum is high, ccsCmFlapPowerAdjustmentNum is 
        high but the Hit and Miss are low and 
        ccsCmFlapInsertionFailNum are low then the flapping is 
        probably caused by an improper transmit power level 
        setting at the modem end.

        This object can indicate:
            Amplifier degradation,
            Poor connections, or
            Wind, moisture, or temperature sensitivity.

        The value of this object can be reset to zero if this entry 
        is removed from the table and then re-added, or if the 
        ccsCmFlapResetNow object was set to true(1). The value of the 
        object ccsCmFlapLastResetTime indicates the last reset time."                      ?"Whenever the Cable Modem passes flap detection, then the flap
        number is increased.

        There are 3 flap detectors defined:
        (1) When ccsCmFlapInsertionFailNum is increased the Flap number
            will be increased.
        (2) When the CMTS receives a Miss followed by a Hit
            then the Flap number will be increased.
        (3) When ccsCmFlapPowerAdjustmentNum is increased the Flap
            number will be increased.

        The value of this object can be reset to zero if this entry 
        is removed from the table and then re-added, or if the 
        ccsCmFlapResetNow object was set to true(1). The value of the 
        object ccsCmFlapLastResetTime indicates the last reset time."                       ?"Setting this object to true(1) will set the value of
        certain objects in this table to 0 and does not
        destroy the entry, so the ccsCmFlapCreateTime will be 
        unchanged. Reading this object always returns false(2)."                      M"The last time that all the statistical objects of this entry
        are started from zero. There are several ways to restart the
        the statistical objects from zero. Setting the object
        ccsCmFlapResetNow or ccsCmFlapResetAll to true via SNMP is one
        way and and the other way is via command Line Interface. This
        timestamp can be used to know the last time the statistical
        objects are started from zero. The special value of all '00'Hs
        indicates that these statistical objects of this entry in the
        ccsCmFlapTable have never been reset."                      ?"Controls and reflects the status of rows in this table.

        When a cable modem triggers a flap detector, if an entry
        does not already exist for this cable modem, 
        an entry will be created in this table.  The new instance
        of this object will be set to active(1).  All flapping
        modems have the status of active(1).

        Active entries are removed from the table after they have
        not triggered any additional flap detectors for the period
        of time defined in ccsFlapAging. Alternatively, setting
        this instance to destroy(6) will remove the entry
        immediately.

        createAndGo(4) and createAndWait(5) are not supported."                           ?"This table contains the spectrum data requests.

        There are two types of request: background noise and SNR.
        Refer to ccsSpectrumRequestIfIndex and ccsSpectrumRequestMacAddr
        DESCRIPTIONS on how the type of request is determined."                      ?"Information about a spectrum data request.  The management
        system uses ccsSpectrumRequestStatus to control entry
        modification, creation, and deletion.

        Setting ccsSpectrumRequestEntry to 'destroy' causes entry
        and its associated data (example: ccsSpectrumDataEntry)
        to be cleaned up properly.  It is suggested the entry
        to be set to 'destroy' when the row is no longer in use."                       6"An arbitrary integer to uniquely identify the entry."                      o"The ifIndex of a docsCableUpstream(129) interface.

        The background noise measurement is requested when
        ccsSpectrumRequestIfIndex is specified.

        The receiving power measurement is requested when
        ccsSpectrumRequestMacAddr is specified; In this case,
        ccsSpectrumRequestIfIndex is the ifIndex of the
        remote CM's upstream."                      ?"A MAC address that identifies a remote CM.

        The default value of 0000.0000.0000 indicates that
        the background noise will be measured for the
        upstream.  In this case, ccsSpectrumRequestIfIndex
        must be specified.

        Other values indicate that the receiving power test
        is requested for the ccsSpectrumRequestMacAddr
        with CM signals."                      ?"Start of frequency range.

        The ccsSpectrumRequestLowFreq is adjusted slightly to
        accurately represent the actual starting point
        of the frequency range.

        The adjustment is done as follows:

          aFactor = (center frequency - ccsSpectrumRequestLowFreq)/12K
          ccsSpectrumRequestLowFreq = center frequency - (aFactor * 12K)

        where 12K is the FFT's bin size."                      W"End of frequency range.

        With the adjustment done to the ccsSpectrumRequestLowFreq,
        ccsSpectrumRequestUpperFreq will also be adjusted to the
        last frequency within the specified range divisible by the
        bin size.

        Refer to the ccsSpectrumRequestLowFreq DESCRIPTION for
        the adjustment calculation."                      N"A span between two frequencies.

        ccsSpectrumRequestResolution dictates the amount of
        receiving power data to be returned in ccsSpectrumDataTable.
        The finer the resolution, the more data returned.

        ccsSpectrumRequestResolution is adjusted to a value which
        is divisible by FFT's 12KHz bin size."                      "The control that allows 'start' or 'abort' of
        the test.

        Since there is only 1 FFT engine running on the CMTS,
        'start' changes ccsSpectrumRequestOperState to 'pending'
        state if the FFT is busy; Otherwise, it changes
        ccsSpectrumRequestOperState to 'running'.

        'abort' changes ccsSpectrumRequestOperState to 'aborted'
        state.  'abort' is only allowed when ccsSpectrumRequestOperState
        is in 'pending' state.

        Only 'start' when request is to be started and 'abort' when
        request is to be aborted can be set by the user. It is set to
        'none' only on completion of the request by the FFT engine.

        Note: The SNMP SET is rejected if ccsSpectrumRequestStatus
        is not 'active'."                      o"The operational state of the test.

        ccsSpectrumRequestIfIndex, ccsSpectrumRequestMacAddr,
        ccsSpectrumRequestUpperFreq, ccsSpectrumRequestLowFreq
        and ccsSpectrumRequestResolution cannot be changed when
        CCSRequestOperState is in the 'running' state.

        For a detailed description, see the CCSRequestOperState
        DESCRIPTION."                       P"The value of sysUpTime when the spectrum measurement
        operation starts."                       O"The value of sysUpTime when the spectrum measurement
        operation stops."                       ?"The control that allows modification, creation, and
        deletion of entries.  For detailed rules, see the
        ccsSpectrumRequestEntry DESCRIPTION."                       ?"This table contains the receiving power or background
        noise measurement based on the criteria that is set in
        the ccsSpectrumRequestEntry."                       ?"Information about the receiving power or background noise
        measured at a particular frequency for the
        ccsSpectrumRequestEntry."                      6"ccsSpectrumDataPower measurement frequency.

        Due to the adjustment calculation the starting
        frequency range for the actual measured frequency
        if off comparing to the configured frequency.

        Refer to ccsSpectrumRequestLowFreq DESCRIPTIONS
        for the adjustment calculation."                       B"The receiving power measured at the
        ccsSpectrumDataFreq."                       "A table of CNR requests."                       ?"Information about an CNR request.  The management
        system uses ccsSNRRequestStatus to control entry
        modification, creation, and deletion."                       7"An arbitrary integer to uniquely identify this entry."                       ~"A MAC address that identifies the remote online CM
        that the CNR measurement operation is being
        performed on."                       ?"A snap shot of the CNR value that is measured over
        the in-use band frequency.  The ccsSNRRequestSNR is set
        to 0 when ccsSNRRequestOperState is in the 'running' state."                      0"The control that allows start or abort of the test.

        Since there is only 1 FFT engine running on the CMTS,
        'start' changes ccsSNRRequestOperState to 'pending'
        state if the FFT is busy; Otherwise, it changes
        ccsSNRRequestOperState to 'running'.

        'abort' changes ccsSNRRequestOperState to 'aborted'
        state.

        Only 'start' when request is to be started and 'abort' when
        request is to be aborted can be set by the user. It is set to
        'none' only on completion of the request by the FFT engine."                       ?"The operational state of the test.

        ccsSNRRequestMacAddr, cannot be changed when the
        ccsSNRRequestOperState is in the 'running' state."                       K"The value of sysUpTime when the CNR measurement
        operation starts."                       J"The value of sysUpTime when the CNR measurement
        operation stops."                       ?"The control that allows modification, creation, and
        deletion of entries.  For detailed rules see the
        ccsSpectrumRequestEntry DESCRIPTION.
        "                       ?"This table contains the cable upstream interfaces assigned to
        a spectrum group. A spectrum group contains one or more fixed
        frequencies or frequency bands which can be assigned to cable
        upstream interfaces in the spectrum group."                       ?"An entry in ccsUpInSpecGroupTable table. Each entry represents
        a cable upstream interface assigned to a spectrum group."                       ?"The spectrum group number. The value of the object is same as
        the value of ccsUpSpecMgmtSpecGroup object except value 0."                       ?"The ifIndex of the Cable upstream interface belonging to
        this Spectrum Group. The value of the corresponding
        instance of ifType is 'docsCableUpstream(129)'."                       +"The storage type for this conceptual row."                       y"The status for this conceptual row. This object is used
        for creating/deleting entries in ccsUpInSpecGroupTable."                       ?"This table contains the cable upstream interfaces in a
        fiber-node.Each fiber-node uniquely represents an RF
        domain.Cable upstream interfaces in the same fiber-node
        are physically combined together into the same RF domain."                       w"An entry in ccsUpInFiberNodeTable. Each entry represents a
        cable upstream interface assigned to a fiber-node."                       |"The fiber-node number. The value of the object is same as
        the value of ccsUpSpecMgmtSharedSpectrum except value 0."                       ?"The ifIndex of the Cable upstream interface belonging to
        this Spectrum Group. The value of the corresponding
        instance of ifType is 'docsCableUpstream(129)'."                       +"The storage type for this conceptual row."                       y"The status for this conceptual row. This object is used
        for creating/deleting entries in ccsUpInFiberNodeTable."                          ?"This table contains the attributes of the cable
        upstream interfaces, ifType of docsCableUpstream(129),
        to be used for improving performance and proactive
        hopping.

        Proactive hopping is achieved by setting the SNR 
        polling period over the in-use band without CM
        signals."                       7"Upstream interface's spectrum management information."                      n"A preference priority for changing the frequency,
        modulation, or channel width supporting the automatic
        switching of the modulation scheme when the channel
        becomes noisy.

        The default priority is frequency, modulation, and
        channel width.  With the default preference, the
        frequency is changed if there is a clean band
        available.  If there's no clean band available,
        the modulation is changed.  And if the
        clean band is still not available, the bandwidth is
        reduced until an acceptable band is found or a minimum
        bandwidth of 200KHz."                      u"The Signal to Noise (SNR) threshold.  This object
        is applicable for modulation profile 1.

        When the CMTS detects that the SNR goes lower than
        ccsUpSpecMgmtSnrThres1, it switches to profile 2.
        Therefore, ccsUpSpecMgmtSnrThres1 should be larger than
        ccsUpSpecMgmtSnrThres2.

        A value 0 indicates to bypass the threshold check."                      ?"The Signal to Noise (SNR) threshold.  This object
        is applicable for modulation profile 2.

        Refer to ccsUpSpecMgmtCriteria on how 
        ccsUpSpecMgmtSnrThres2 can trigger a change 
        in frequency, modulation or channel width.

        A value 0 indicates to bypass the threshold check.

        Note: The SNMP SET is rejected if both 
        ccsUpSpecMgmtSnrThres1, ccsUpSpecMgmtSnrThres2
        are non-zero and ccsUpSpecMgmtSnrThres2
        is higher than ccsUpSpecMgmtSnrThres1."                      ?"The Forward Error Correction (FEC) correctable count
        threshold.  This object is applicable for profile 1.

        A value 0 indicates to bypass the threshold check.

        When CMTS detects that FEC correctable count goes
        higher than ccsUpSpecMgmtFecCorrectThres1, it
        switch to Profile 2.  Therefore,
        ccsUpSpecMgmtFecCorrectThres1 should be smaller
        than ccsUpSpecMgmtFecCorrectThres2."                      ?"The FEC correctable count threshold.  This object
        is applicable for profile 2.

        When CMTS detects that FEC correctable count goes higher
        than ccsUpSpecMgmtFecCorrectThres2, modulation change can
        occur, depending on the type of ccsUpSpecMgmtHopPriority.

        Note: SNMP SET will be rejected if 
        ccsUpSpecMgmtFecCorrectThres2 is lower than 
        ccsUpSpecMgmtFecCorrectThres1."                      ?"The FEC uncorrectable count threshold.  This object
        is applicable for modulation profile 1.

        A value 0 indicates to bypass the threshold check.

        When CMTS detects that FEC uncorrectable count goes higher than
        ccsUpSpecMgmtFecUnCorrectThres1, it switches to Profile 2.
        Therefore, ccsUpSpecMgmtFecUnCorrectThres1 should be smaller
        than ccsUpSpecMgmtFecUnCorrectThres2."                      ?"The FEC uncorrectable count threshold.  This object
        is applicable for modulation profile 2.

        A value 0 indicates to bypass the threshold check.

        Refer to ccsUpSpecMgmtCriteria on how 
        ccsUpSpecMgmtFecUnCorrectThres2 can trigger a change 
        in frequency, modulation or channel width.

        Note: SNMP SET is rejected if ccsUpSpecMgmtFecUnCorrectThres2
        is lower than ccsUpSpecMgmtFecUnCorrectThres1."                      v"A period between SNR pollings.

        The SNR is collected from the Fast Fourier Transform
        (FFT) measurement over the in-use band when there is
        no CM signals. When the CMTS detects that SNR doesn't
        meet ccsUpSpecMgmtSnrThres1 or ccsUpSpecMgmtSnrThres2,
        a possible hopping occurs, depending on the type of
        ccsUpSpecMgmtHopPriority."                      	"A condition that triggers hopping.

        The SNR condition occurs when SNR does not meet
        the ccsUpSpecMgmtSnrThres1 or ccsUpSpecMgmtSnrThres2.

        The stationMaintainenceMiss condition occurs when the 
        percentage of offline CMs is reached."                       |"Center frequency before hopping occurs.

        A value 0 indicates that the interface has no
        frequency assigned."                       n"Current center frequency.

        A value 0 indicates that the interface has no
        frequency assigned."                       ""Bandwidth before hopping occurs."                       "Current bandwidth."                      "Modulation profile index before hopping occurs.
        It is the index identical to the docsIfModIndex
        in the docsIfCmtsModulationTable.

        For the detailed descriptions, see the
        docsIfCmtsModulationTable and docsIfCmtsModIndex
        DESCRIPTIONS."                      "The current modulation profile index.
        It is the index identical to the docsIfModIndex
        in the docsIfCmtsModulationTable.

        For the detailed descriptions, see the
        docsIfCmtsModulationTable and docsIfCmtsModIndex
        DESCRIPTIONS."                       ?"Current SNR.
        A value -99 indicates the system detected no 
        modem on line, and a value of -100 indicates the 
        system was unable to retrieve the SNR value."                       3"Upper bound frequency that the upstream supports."                      x"The Carrier to Noise (CNR) threshold.  This
        object is applicable for modulation profile 1.


        When the CMTS detects that the CNR goes lower than
        ccsUpSpecMgmtCnrThres1, it switches to profile 2.
        Therefore, ccsUpSpecMgmtCnrThres1 should be larger 
        than ccsUpSpecMgmtCnrThres2.

        A value 0 indicates to bypass the threshold check."                      ?"The Carrier to Noise (CNR) threshold.  This object
        is applicable for modulation profile 2.

        Refer to ccsUpSpecMgmtCriteria on how 
        ccsUpSpecMgmtCnrThres2 can trigger a change 
        in frequency, modulation or channel width.

        A value 0 indicates to bypass the threshold check.

        Note: The SNMP SET is rejected if both 
        ccsUpSpecMgmtCnrThres1, ccsUpSpecMgmtCnrThres2
        are non-zero and ccsUpSpecMgmtCnrThres2
        is higher than ccsUpSpecMgmtCnrThres1."                       ?"Current CNR.
        A value -99 indicates the system detected no 
        modem on line, and a value of -100 indicates the 
        system was unable to retrieve the CNR value."                       ?"The missed maintenance message threshold in percentage.

        A value 0 indicates that the interface has no spectrum 
        group assigned. i.e. ccsUpSpecMgmtSpecGroup equals 0."                       ?"The minimum time between frequency hops in seconds.

        A value 0 indicates that the interface has no
        spectrum group assigned. i.e. ccsUpSpecMgmtSpecGroup
        equals to 0."                      
A"Defines the criteria that trigger a change in
        frequency hopping, modulation or channel width.  

        Depending on the type of linecards, the criteria 
        are slightly different:

        For the linecards that have no Hardware 
        Based Spectrum Management capability like 
        the uBR-MC1xC, change in modulation or frequency
        occurs in the following criteria:

        1) Change from modulation profile 1 to 
           modulation profile 2 would occur when CMTS 
           detects the SNR that goes below the 
           threshold and either corr FEC or uncorr FEC 
           is above the threshold.  In this case, 
           snrBelowThres and either corrFecAboveThres or 
           uncorrFecAboveThres bits will get set. 

        2) Change from modulation profile 2 to 
           modulation profile 1 would occur when CMTS 
           detects the SNR goes above the threshold+3
           and both corr FEC and uncorr FEC are 
           below the threshold.  In this case, 
           snrAboveThres and corrFecBelowThres
           and uncorrFecBelowThres bits will get set. 

        3) Change in frequency or frequency hopping would
           occur when CMTS detects no active modem on the link.  
           In this case, noActiveModem bit will get
           set accordingly.


        For the linecards that have the Hardware Based 
        Spectrum Management capability, change in 
        frequency, modulation or channel width occurs 
        in the following criteria:

        1) when CMTS detects the SNR or CNR goes below the 
           threshold and either corr FEC or uncorr FEC is 
           above the threshold.  In this case, 
           either snrBelowThres or cnrBelowThres and 
           either corrFecAboveThres or uncorrFecAboveThres 
           bits will get set. 

        2) when CMTS detects the SNR or CNR goes above the 
           threshold + 3 and both corr FEC and uncorr FEC are 
           below the threshold.  In this case, 
           either snrAboveThres or cnrAboveThres and both 
           corrFecBelowThres and uncorrFecBelowThres bits 
           will get set. 

        3) when CMTS detects no active modem on the link or 
           uncorr FEC is above ccsUpSpecMgmtFecUnCorrectThres2. 
           In this case noActiveModem or 
           uncorrFecAboveSecondThres bit will get set 
           accordingly.

        Note: The order of frequency, modulation or channel 
        width changes for the advanced spectrum management
        linecards will be determined based on the selection of 
        the ccsUpSpecMgmtHopPriority."                       ?"The spectrum group assigned to the upstream. The value of 0 for
        the object indicates that the upstream has no spectrum group
        assigned."                      M"The fiber-node assigned to the upstreams. Upstreams having
        same fiber-node number indicates that they physically
        combine together into same RF domain and must have unique
        frequency assigned. The value of 0 for the object
        indicates that the upstream is not physically combine with
        any others."                       Y"This table contains the frequency and band configuration
        of the spectrum group."                       ?"An entry in ccsSpecGroupFreqTable. Each entry represents a
        center frequency or a frequency band configured for the
        spectrum group."                       d"An arbitrary index to uniquely identify frequencies or bands
        configured in spectrum group."                      ?"The type of the frequency configured in spectrum group. This is
        a mandatory object and can be modified when the row is active.
        If the value of centerFreq(1) is specified, the values of the
        corresponding instance of ccsSpecGroupFreqLower and
        csSpecGroupFreqUpper object must be identical. If the value of
        bandFreq(2) is specified, the values of the corresponding
        instance of ccsSpecGroupFreqLower and csSpecGroupFreqUpper
        must be unique."                      ?"The lower frequency configured in spectrum group. This is a
        mandatory object and can be modified when the row is active.
        To configure a band frequency in the spectrum group, the value
        of this object must be lower than the value of the corresponding
        instance of ccsSpecGroupFreqUpper. To configure a fixed center
        frequency in the spectrum group, the value of this object must
        be equal to the value of the corresponding instance of
        ccsSpecGroupFreqUpper."                       "The upper frequency configured in spectrum group. This is a
        mandatory object and can be modified when the row is active.
        To configure a band frequency in the spectrum group, the value
        of this object must be greater than the value of the
        corresponding instance of ccsSpecGroupFreqLower. To configure a
        fixed center frequency in the spectrum group, the value of this
        object must be equal to the value of the corresponding instance
        of ccsSpecGroupFreqLower."                       +"The storage type for this conceptual row."                      "The status of this conceptual row. This object is used for
        creating/deleting entries in ccsSpecGroupFreqTable.

        A conceptual row may not be created via SNMP without
        explicitly setting the value of ccsSpecGroupRowStatus to
        createAndGo(4).

        A conceptual row can not have the status of active(1) until
        proper values have been assigned to the mandatory objects
        ccsSpecGroupFreqType, ccsSpecGroupFreqLower, and
        ccsSpecGroupFreqUpper.

        A conceptual row may be modified or deleted any time. If
        the frequency represents by the row has been assigned to a
        cable upstream interface, modifying or deleting such row
        would cause the cable upstream interface frequency
        reassignment."                               ?"A notification is sent when there's a change in
        frequency (hopping), modulation, or profile.

        In the case of frequency hopping,
        ccsUpSpecMgmtHopCondition would indicate whether
        SNR or modemOffline that caused the hopping."                 ?"A notification is sent when there's a change in
        frequency hopping, modulation, or profile.
        ccsUpSpecMgmtCriteria is used to indicate the  
        cause(s)."                         ?"The compliance statement for devices that implement
        DOCSIS-compliant Radio Frequency Interfaces and Spectrum
        Management features."               ?"The compliance statement for devices that implement DOCSIS-
        compliant Radio Frequency Interfaces and Spectrum
        Management features.

        This compliance is deprecated and replaced by
        ccsCompliance3."               ?"The compliance statement for devices that implement DOCSIS-
        compliant Radio Frequency Interfaces and Spectrum
        Management features."               ?"The compliance statement for devices that implement DOCSIS-
        compliant Radio Frequency Interfaces and Spectrum
        Management features."               ?"The compliance statement for devices that implement DOCSIS-
        compliant Radio Frequency Interfaces and Spectrum
        Management features."   8"Current implementation limits the upper bound to 8191."             ?"The compliance statement for devices that implement DOCSIS-
        compliant Radio Frequency Interfaces and Spectrum
        Management features."   8"Current implementation limits the upper bound to 8191."             ?"The compliance statement for devices that implement DOCSIS-
        compliant Radio Frequency Interfaces and Spectrum
        Management features."   8"Current implementation limits the upper bound to 8191." <"Only read-only access to this object need to be supported." ?"Only createAndGo(4), destroy(6), and active(1) need to be
        supported.

        value active(1) may be read but not written. value
        createAndGo(4) and destroy(6)may be written but are never
        read." <"Only read-only access to this object need to be supported." i"Only read-only access to this object need to be supported.
        Only active(1) need to be supported." <"Only read-only access to this object need to be supported." i"Only read-only access to this object need to be supported.
        Only active(1) need to be supported."                 ?"Group of objects implemented in CMTS
        providing Flap List information.

        This object group has been deprecated and replaced by
        ccsFlapGroupRev1."                 "Group of objects implemented in Cable Modem
        Termination Systems providing upstream spectrum data
        information."                 ?"Group of objects implemented in Cable Modem
        Termination Systems for configuring cable upstream
        interface attributes which are used to increase the
        performance and proactive hopping."                 \"The notification which a CISCO-CABLE-SPECTRUM-MIB
        entity is required to implement."                     ?"Group of objects implemented in CMTS
        providing Flap List information.
        This object group has been deprecated and replaced by
        ccsFlapGroupRev2."                ."Group of objects implemented in Cable Modem
        Termination Systems for configuring cable upstream
        interface attributes which are used to increase the
        performance and proactive hopping.

        This object group has been deprecated and replaced by
        ccsUpSpecMgmtGroupRev2."                 O"Group of objects implemented in CMTS
        providing Flap List information."                 ?"Group of objects implemented in Cable Modem
        Termination Systems for configuring cable upstream
        interface attributes."                 \"The notification which a CISCO-CABLE-SPECTRUM-MIB
        entity is required to implement."                     ?"Group of objects implemented in Cable Modem
        Termination Systems for configuring cable upstream
        interface attributes."                 4"Global spectrum group frequency / band definition."                 ?"Group of objects implemented in Cable Modem
        Termination Systems for configuring cable upstream
        interface attributes."                 W"Group of objects to populate all cable upstream interfaces
        in spectrum group."                 S"Group of objects to populate all cable upstream interfaces
        in fiber-node."                                