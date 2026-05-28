Receiver Block
##############

Connectors
**********

* J3 as input connector for all bands
* J5 as input connector, but without bands: HAM 902 – 928 MHz (33 cm), HAM 1240 – 1325 MHz (23 cm), HAM 2300 – 2450 (13 cm), 3300 – 3500 MHz (9 cm), Cellular Band 1, Cellular Band 2 / PCS – 1900, Cellular Band 3 / DCS – 1800, Cellular Band 7 and Cellular Band 38;
* J1 as output connector for all bands
  
Sub-blocks
********** 

* Cellular receiver
* HAM/Wideband receiver

From the RX input of the LimeRFE board, the signal is guided to Cellular or HAM/Wideband receive sub-blocks. Once again, depending on selected configuration (primarily regarding the frequency of received signal), the signal is guided through various switches, filters and duplexers to the amplifier units. After amplification, the signal passes again through various switches and filters and is brought to the variable attenuator. This software controlled attenuator can change attenuation 0 − 14 dB in steps of 2 dB. Table 2 gives full, in details, description of signal paths, depending on chosen RX configuration.

Configuration
*************

.. list-table:: Table 2. RX configurations and corresponding RF signal path
   :header-rows: 1

   * - Type
     - Channel/Band
     - Signal path
   * - Wideband
     - 1–1000 MHz
     - (J3 / SKY13414) or (J5 / EE2-5NU-L) / HMC544A / GALI-74+ / PE4245 /

       (AM/FM Notch filter) or (bypass) / PE4245 / MASW-008566 / bypass /

       MASW-008566 / HMC544A / F1956NBGI8 / J1
   * - Wideband
     - 1000–4000 MHz
     - J3 / SKY13414 / TQP3M9008 / SKY13415 / bypass / SKY13416
  
       HMC544A / F1956NBGI8 / J1
   * - HAM
     - 30 MHz 
      
       (HF)
     - (J5 / EE2-5NU-L) or (J3 / SKY13414) / HMC544A / GALI-74+ / PE4245 /
  
       (AM/FM Notch filter) or (bypass) / PE4245 / MASW-008566 / HMC5444A /

       filter 0–30 MHz / HMC544A / MASW-008566 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 50–70 MHz
  
       (6 & 4 m)
     - (J5 / EE2-5NU-LI) or (J3 / SKY13414) / HMC544A / GALI-74+ / PE4245 
      
       (AM/FM Notch filter) or (bypass) / PE4245 / MASW-008566 / HMC5444A /

       filter 50–70 MHz / HMC544A / MASW-008566 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 144–146 MHz
  
       (2 m)
     - (J3 / SKY13414) or (J5 / EE2-5NU-L) / HMC544A / GALI-74+ / PE4245 /
  
       (AM/FM Notch filter) or (bypass) / PE4245 / MASW-008566 / HMC544A /

       filter 140–150 MHz / HMC544A / MASW-008566 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 220–225 MHz
  
       (1.25 m)
     - (J3 / SKY13414) or (J5 / EE2-5NU-L) / HMC544A / GALI-74+ / PE4245 /
      
       (AM/FM Notch filter) or (bypass) / PE4245 / MASW-008566 / HMC544A /
       
       filter 219–225 MHz / HMC544A / MASW-008566 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 430–440 MHz
  
       (70 cm)
     - (J3 / SKY13414) or (J5 / EE2-5NU-L) / HMC544A / GALI-74+ / PE4245 /
      
       (AM/FM Notch filter) or (bypass) / PE4245 / MASW-008566 /

       filter 400–450 MHz / MASW-008566 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 902–928 MHz
     
       (33 cm)
     - J3 / SKY13414 / TQP3M9008 / SKY13415 / filter 902–928 MHz /
      
       SKY13416 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 1240–1325 MHz
      
       (23 cm)
     - J3 / SKY13414 / TQP3M9008 / SKY13415 / filter 1.22–1.42 GHz /
      
       SKY13416 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 2300–2450 MHz
      
       (13 cm)
     - J3 / SKY13414 / TQP3M9008 / SKY13415 / filter 2.3–2.5 GHz /
      
       SKY13416 / HMC544A / F1956NBGI8 / J1
   * - HAM
     - 3300–3500 MHz
     - J3 / SKY13414 / TQP3M9008 / SKY13415 / filter 3.3–3.7 GHz /
      
       SKY13416 / HMC544A / F1956NBGI8 / J1
   * - Cellular
     - Band 1
     - J3 / SKY13414 / SKY13415 / QPQ1282 / SKY13415 / TQP3M9037 /
      
       SKY13416 / HMC544A / F1956NBGI8 / J1
   * - Cellular
     - Band 2 /
  
       PCS-1900
     - J3 / SKY13414 / SKY13415 / TQM963014 / SKY13415 / TQP3M963014 /
  
       SKY13416 / HMC544A / F1956NBGI8 / J1
   * - Cellular
     - Band 3 /
  
       DCS-1800
     - J3 / SKY13414 / SKY13415 / QPQ1297 (TQQ6103) / SKY13415 /
  
       TQP3M9037 / SKY13416 / HMC544A / F1956NBGI8 / J1
   * - Cellular
     - Band 7
     - J3 / SKY13414 / SKY13415 / TQQ6107 (QPQ1270) / SKY13415 /
  
       TQP3M9037 / SKY13416 / HMC544A / F1956NBGI8 / J1
   * - Cellular
     - Band 38
     - J3 / SKY13414 / SKY13415 / 885026 / SKY13370 / SKY13415 /
  
       TQP3M9037 / SKY13416 / HMC544A / F1956NBGI8 / J1