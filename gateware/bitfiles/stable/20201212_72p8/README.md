Hermes-Lite 2.x Gateware
========================

## 20201212_72p8 Release

This is a stable candidate release and includes gateware files for main and variant HL2s. The main additional 72 branch updates are:

* DHCP fixes and enhancements from Philip Gladstone N1DQ.
* Default 20ms TX buffer latency, 12ms PTT hangtime.


See the [gateware](https://github.com/softerhardware/Hermes-Lite2/wiki/Updating-Gateware) wiki page for more details on how to update the gateware. Most people will use the file root and suffix in bold below, hl2b5up_main.rbf, for programming over ethernet.

### Variants

* **hl2b5up_main - Main gateware for Hermes-Lite 2.0 build5 and later** Includes all programming file types. This is what most people will use. Use the hl2b5up_main.rbf file for network update with Quisk, SparkSDR or hermeslite.py.
* variants/hl2b3to4_main - Main gateware for Hermes-Lite 2.0 beta3 or beta4. Includes all programming file types.
* variants/hl2b2_main - Main gateware for Hermes-Lite 2.0 beta2. Includes all programming file types.
* variants/hl2b5_cicrx - 10RX only gateware for Hermes-Lite 2.0 build5 and later. This only supports 192kHz receivers. This uses only CIC filters and consequently only about 70kHz of the spectrum is usable. This is for multiband skimming.
* variants/hl2b3to4_cicrx - 10RX only gateware for Hermes-Lite 2.0 beta3 or beta4. This only supports 192kHz receivers. This uses only CIC filters and consequently only about 70kHz of the spectrum is usable. This is for multiband skimming.
* variants/hl2b5up_ak4951v3 - AK4951V3 companion board gateware for Hermes-Lite 2. build5 and later. This only support 3 receivers due to the increase in TX buffer size to support longer latencies.


### File Types

* **.rbf - Raw binary format for programming over ethernet using openhpsdr protocol 1**
* .jic - Nonvolatile EEPROM programming with Quartus
* .sof - Volatile FPGA-only programming with Quartus
* jic.jam - Nonvolatile EEPROM programming with JAM/STAPL player as used in the Raspberry Pi setup image
* sof.jam - Volatile FPGA-only programming with JAM/STAPL player as used in the Raspberry Pi setup image
* .svf - Volatile FPGA-only programming with urjtag or openocd

If your HL2 does not yet have gateware which supports network gateware updates and only a .rbf file is provided for your desired variant, first update to the main gateware and then update to your variant.




