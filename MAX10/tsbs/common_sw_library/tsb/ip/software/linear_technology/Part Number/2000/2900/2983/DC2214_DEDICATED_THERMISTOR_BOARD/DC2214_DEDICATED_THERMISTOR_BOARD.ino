/*!
LTC2983: Multi-Sensor High Accuracy Digital Temperature Measurement System
@verbatim

DC2214_DEDICATED_THERMISTOR_BOARD.ino:
Generated Linduino code from the LTC2983 Demo Software.
This code  is designed to be used by a Linduino,
but can also be used to understand how to program the LTC2983.


@endverbatim

http://www.linear.com/product/LTC2983

http://www.linear.com/product/LTC2983#demoboards

$Revision: 4051 $
$Date: 2015-09-23 11:04:41 -0700 (Wed, 23 Sep 2015) $
Copyright (c) 2014, Linear Technology Corp.(LTC)
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those
of the authors and should not be interpreted as representing official policies,
either expressed or implied, of Linear Technology Corp.

The Linear Technology Linduino is not affiliated with the official Arduino team.
However, the Linduino is only possible because of the Arduino team's commitment
to the open-source community.  Please, visit http://www.arduino.cc and
http://store.arduino.cc , and consider a purchase that will help fund their
ongoing work.
*/



/*! @file
    @ingroup LTC2983

*/




#include <Arduino.h>
#include <stdint.h>
#include <stdbool.h>
#include "SPI.h"
#include "Wire.h"
#include "Linduino.h"
#include "LT_SPI.h"
#include "UserInterface.h"
#include "LT_I2C.h"
#include "QuikEval_EEPROM.h"
#include "stdio.h"
#include "math.h"

#include "configuration_constants_LTC2983.h"
#include "support_functions_LTC2983.h"
#include "table_coeffs_LTC2983.h"

// Function prototypes
void configure_channels();
void configure_global_parameters();


// -------------- Configure the LTC2983 -------------------------------
void setup()
{
  initialize_serial();
  initialize_spi();

  configure_channels();
  configure_global_parameters();
}



void configure_channels()
{
  byte channel_number;
  long channel_assignment_data;

  // ----- Channel 2: Assign Sense Resistor -----
  channel_assignment_data =
    (long) SENSOR_TYPE__SENSE_RESISTOR |
    (long) 0b000100111000100000000000000 << SENSE_RESISTOR_VALUE_LSB;   // sense resistor - value: 10000.
  assign_channel(2, channel_assignment_data);
  // ----- Channel 4: Assign Thermistor 44006 10K@25C -----
  channel_assignment_data =
    (long) SENSOR_TYPE__THERMISTOR_44006_10K_25C |
    (long) THERMISTOR_RSENSE_CHANNEL__2 |
    (long) THERMISTOR_DIFFERENTIAL |
    (long) THERMISTOR_EXCITATION_MODE__SHARING_ROTATION |
    (long) THERMISTOR_EXCITATION_CURRENT__AUTORANGE;
  assign_channel(4, channel_assignment_data);
  // ----- Channel 6: Assign Thermistor 44006 10K@25C -----
  channel_assignment_data =
    (long) SENSOR_TYPE__THERMISTOR_44006_10K_25C |
    (long) THERMISTOR_RSENSE_CHANNEL__2 |
    (long) THERMISTOR_DIFFERENTIAL |
    (long) THERMISTOR_EXCITATION_MODE__SHARING_ROTATION |
    (long) THERMISTOR_EXCITATION_CURRENT__AUTORANGE;
  assign_channel(6, channel_assignment_data);
  // ----- Channel 8: Assign Thermistor 44006 10K@25C -----
  channel_assignment_data =
    (long) SENSOR_TYPE__THERMISTOR_44006_10K_25C |
    (long) THERMISTOR_RSENSE_CHANNEL__2 |
    (long) THERMISTOR_DIFFERENTIAL |
    (long) THERMISTOR_EXCITATION_MODE__SHARING_ROTATION |
    (long) THERMISTOR_EXCITATION_CURRENT__AUTORANGE;
  assign_channel(8, channel_assignment_data);
  // ----- Channel 10: Assign Thermistor 44008 30K@25C -----
  channel_assignment_data =
    (long) SENSOR_TYPE__THERMISTOR_44008_30K_25C |
    (long) THERMISTOR_RSENSE_CHANNEL__2 |
    (long) THERMISTOR_DIFFERENTIAL |
    (long) THERMISTOR_EXCITATION_MODE__SHARING_NO_ROTATION |
    (long) THERMISTOR_EXCITATION_CURRENT__AUTORANGE;
  assign_channel(10, channel_assignment_data);

}

void configure_global_parameters()
{
  // -- Set global parameters
  write_single_byte(0xF0, TEMP_UNIT__C |
                    REJECTION__50_60_HZ);
  // -- Set any extra delay between conversions (in this case, 0*100us)
  write_single_byte(0xFF, 0);
}

// -------------- Run the LTC2983 -------------------------------------
void loop()
{
  float temperature_result;
  byte channel_number;

  int channels_to_measure[] = {4, 6, 8, 10};
  int num_measured_channels = sizeof(channels_to_measure)/sizeof(channels_to_measure[0]);


  for (int i = 0; i < num_measured_channels; i++)
  {
    channel_number = channels_to_measure[i];
    convert_channel(channel_number);

    read_voltage_or_resistance_results( int(channel_number));
    read_temperature_results( int(channel_number));

  }

}