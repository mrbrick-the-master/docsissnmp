w--**************************************************************************
--                                                                          
--    Copyright 2006 Scientific Atlanta, A Cisco Company                                   
--    All Rights Reserved                                                   
--    No portions of this material may be reproduced in any
--    form without the written permission of:                                                
--             Scientific Atlanta, A Cisco Company                                          
--             5030 Sugarloaf Pkwy                                     
--             Lawrenceville, Georgia 30044                                    
--                                                                          
--**************************************************************************
                                                     "MTA Battery status." "marcin.godlewski@sciatl.com" "0711160000Z" "0708140000Z" "0702070000Z" "0608110000Z" ("Added saBatteryIfOperationTable (1950)" @"Changed UNITS to percent for saBatteryReplacePercentage (1665)" ?"Changed description for saMtaBatteryEndPntRingPower
             Removed DEVFAL and changed description for saMtaBatteryEndPntPower" ?"Added saBatteryType (867)
             Changed OID for saBatteryHsdPower (867)
             Changed OID for saBatteryRfAmpPower (867)
             Added saBatteryCurrentStateA (356)
             Added saBatteryCurrentStateB (356)"               X"Show the Battery AC status(AC_STATUS):
         0: AC Restored,
         1: AC Fail "                       h"Show the Battery life status(BATTERY_STATUS):
         0: Battery Good,
         1: Replace Battery "                       n"Show the Battery presence status(BATTERY_EXIST):
         0: Battery Present,
         1: Battery Missing "                       i"Show the Battery charge status(BATTERY_ENERGY):
         0: Battery Not Low,
         1: Battery Low "                       2"The IP address of the host receiving SNMP traps."                      ?"Controls sending battery event change traps:
         bit 0 set: send trap if saBatteryAcFail changes from false(0) to true(1)
         bit 1 set: send trap if saBatteryAcFail changes from true(1) to false(0)
         bit 2 set: send trap if saBatteryReplace changes from false(0) to true(1)
         bit 3 set: send trap if saBatteryReplace changes from true(1) to false(0)
         bit 4 set: send trap if saBatteryMissing changes from false(0) to true(1)
         bit 5 set: send trap if saBatteryMissing changes from true(1) to false(0)
         bit 6 set: send trap if saBatteryLow changes from false(0) to true(1)
         bit 7 set: send trap if saBatteryLow changes from true(1) to false(0)"                       ;"1 = old DPX2203 battery,
         2 = DPX2203c cartridge"                      E"Enable/Disable the CPE function operating in battery mode.
         0: Support Ethernet and USB data transfer when the EMTA is operating from battery power.
         1: Disable Ethernet and USB data transfer when the EMTA is operating from battery power.
            Note:  Mode=1: disable hardware for Ethernet and USB."                      ?"CPU runs under normal/lower clock rate operating in battery mode.
         0: Always keep CPU in normal power mode
         1: operate main CPU in low power mode when the CPU is not in use and the EMTA is operating
            from battery power.
         Note:  Mode=1: use 50 MHz and CPU Halt mode if on phone call in progress and no packet traffic
         on battery power, else using 200 MHz CPU."                       ?"LED flash mode.
         0: Always keep LEDs in normal power mode.
         1: operate LEDs in low power mode when operating from battery power.
         Note:  See PRD for LED low power modes."                       ?"The estimated capacity, in milliampere-hours (mAH), that the battery is able to hold.  
         This estimate is based on the results of the previous partial discharge capacity test."                       ?"The estimated capacity, in milliampere-hours (mAH), that the battery is able to hold.  
         This estimate is based on the results of the previous partial discharge capacity test."                       A"The time that the last Recoverable Capacity Test was performed."                       A"The time that the last Recoverable Capacity Test was performed."                       d"This MIB defines the percentage capacity at which the Replace Battery telemetry will be activated."                       S"Defines the charge level percent to which the internal batteries will be charged."                      ("Displays the current state of the Battery.
         missing - indicates that battery is not present in slot
         idle - Indicates the battery is neither charging nor discharging
         charging - Battery is in charge mode
         discharging - Battery is being used to power the EMTA"                      ,"Displays the current state of the Battery.
          missing - indicates that battery is not present in slot
          idle - Indicates the battery is neither charging nor discharging
          charging - Battery is in charge mode
          discharging - Battery is being used to power the EMTA"                      ?"Enable/Disable the upstream RF amplifier operating in battery mode.
         0: Always enable upstream RF amplifier 
         1: Shut off the bias current to the upstream RF amplifier when no packets are being sent
            and the EMTA is operating from battery power.            
         Note:  Mode=1: enable RF Amp only when a packet needs to be sent and unit is operating 
         from battery."                       H"This table describes the MTA EndPoint
        battery configuration. "                       :" List of attributes for a single MTA endpoint interface."                      u"Line working way while operating in battery power.
         0: Enable telephone line (if otherwise enabled) when EMTA is operating 
            on battery power
         1: Enable telephone line (if otherwise enabled) when EMTA is operating 
            on battery power only if this line is in-use at the time of power loss.  
            Disable line after this phone call is completed.
         2: Disable line when EMTA is operating on battery power.
         Note:  If Line 1 and Line 2 are both disabled then shutdown VBH and VBL.
         Default value for line 1 is enable(0) and for line 2 is disable-later(1)."                      ?"Line ring power setting while operating in battery power.
         0: Provide normal voltage ring to telephone line number when EMTA is operating 
            on battery power and line is enabled.
         1: Provide reduced voltage ring signal to telephone line number to save power 
            when EMTA is operating on battery power and line is enabled.
         2: Provide reduced voltage ring signal to telephone line number to save power 
            when EMTA is operating on battery power and disable power to ring signal on line 
            when battery is in 'Low power' status and line is enabled.
         3: Disable ring signal on Line on battery power.
         Note: For 3349 based producs:
               Mode 0: VBH = -62V when no ring, VBH = -83V if either phone line is ringing.
               Mode 1: (on battery) VBH = -62V when no line is ringing, VBH = -62 if either 
               line is ringing. (on AC power) VBH = -62V when no line is ringing, VBH = -83V 
               if either line is ringing.
         Note for 3368 based products:
               Mode 0: VBH = -59V when no ring, VBH = -98V if either phone line is ringing.
               Mode 1: (on battery) VBH = -59V when no line is ringing, VBH = -89 if either 
               line is ringing. (on AC power) VBH = -59V when no line is ringing, VBH = -98V 
               if either line is ringing."                      ?"Line offhook power setting while operating in battery power.
         0: Provide normal off-hook voltage to telephone line number when EMTA is 
            operating on battery power and line is enabled.
         1: Provide reduced off-hook voltage to telephone line number to save power 
            when EMTA is operating on battery power and line is enabled.
         Note:  Mode=0: VBL = -25V
                Mode=1: (on battery)VBL = -20V(on AC power)VBL = -25V"                          ?"Initiates a manual internal Battery Test for slot A to determine
         the true battery capacity.  The battery test will first ensure
         that a full charge is present on the battery (charging first if
         necessary).  It will then perform a full discharge of the
         battery in force discharge mode.  At the conclusion of the test,
         the battery will then be re-charged to full charge at which point
         the test will be complete.
         This object will read back as a 1 during the battery test.
         Reading 0 will indicate the test is complete.  Manually running a
         test with this MIB will reset the normal schedule for
         automatically initiating the battery test.
         This object will report an error if unable to perform the battery
         test.  Possible causes include:
         1. no AC present
         2. battery test already started on another battery slot.
         After the test has completed, test results are available in the
         following objects:
         1. saBatteryRecoverableCapacityA
         2. saBatteryReplace
         3. saBatteryMissing
         4. saBatteryLow
         WARNING:  This test will run to completion and will impact an
         EMTA's ability to provide full-rated battery backup during the test.
         This test should only be run for diagnostic purposes and never in
         an environment where battery backed-up EMTA operation is critical.
         This test could take up to 24 hours to complete and update the
         results. 
         WARNING:  Repeatedly forcing the Battery Capacity test will reduce
         the battery lifetime.   The battery test should not be run more than
         once every 30 days."                      ?"Initiates a manual internal Battery Test for slot B to determine
         the true battery capacity.  The battery test will first ensure
         that a full charge is present on the battery (charging first if
         necessary).  It will then perform a full discharge of the
         battery in force discharge mode.  At the conclusion of the test,
         the battery will then be re-charged to full charge at which point
         the test will be complete.
         This object will read back as a 1 during the battery test.
         Reading 0 will indicate the test is complete.  Manually running a
         test with this MIB will reset the normal schedule for
         automatically initiating the battery test.
         This object will report an error if unable to perform the battery
         test.  Possible causes include:
         1. no AC present
         2. battery test already started on another battery slot.
         After the test has completed, test results are available in the
         following objects:
         1. saBatteryRecoverableCapacityB
         2. saBatteryReplace
         3. saBatteryMissing
         4. saBatteryLow
         WARNING:  This test will run to completion and will impact an
         EMTA's ability to provide full-rated battery backup during the test.
         This test should only be run for diagnostic purposes and never in
         an environment where battery backed-up EMTA operation is critical.
         This test could take up to 24 hours to complete and update the
         results. 
         WARNING:  Repeatedly forcing the Battery Capacity test will reduce
         the battery lifetime.   The battery test should not be run more than
         once every 30 days."                      j"Configures the operation of the forced discharge battery capacity
         test.
         Not scheduled(0) - The battery capacity test will only run when
         initiated via the saBatteryCapacityManualTest[A|B] object.
         scheduled(1) - The battery capacity test runs at a scheduled
         interval defined in saBatteryCapacityScheduleInterval."                      ?"The interval which to run the scheduled Battery Capacity Test. 
          The number of days specified by this object is added to the
          saBatteryLastCapacityTest[A|B] date to determine if a capacity
          test is required.   If the current date is equal to or exceeds
          saBatteryLastCapacityTest[A|B] + saBatteryCapacityScheduleInterval,
          AND saBatteryCapacityTestControl is set to scheduled, then a
          capacity test will begin immediately."                       Q"This table describes the interface operation on battery
        configuration."                       4"Per hardware interface battery support definition."                       |"Interface definition for the purpose of battery power save modes.
          ethernet(2) includes MoCA and DMS if present."                      ?"Defines if the hardware component is enabled or disabled when
          the unit operates on battery power.  Some interfaces (i.e. LEDs) may
          operate in a mode that requires reduced power when set to disabled.
          If set to off(0) the unit the selected interface will be disabled as
          soon as possible after beginning to run on AC power.
          Some interfaces (i.e. DMS and harddisks) may first be placed 
          in a known safe power down state before power to these interfaces is
          disabled. If set to onTimerOff(2), the interface is enabled only for
          time defined in saBatteryIfOperOnTime."                       ?"Defines time for which the hardware component will stay
          enabled after the unit begins to run on battery power if the interface is 
          set to on-timer-off mode.  After this time expires the interface will
          be disabled."                              