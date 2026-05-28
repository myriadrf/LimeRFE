Transmitter Block
#################

Connectors
**********

* J2 as input connector for all bands 
* J3 as output connector, but without 30 MHz (HF) and 50–70 MHz (6 & m) bands 
* J4 as output connector, but without 30 MHz (HF), 50–70 MHz (6 & 4 m) and all Cellular bands (Band 1, 2, 3, 7 and 38)
* J5 as output connector, only for 30 MHz (HF) and 50–70 MHz (6 & 4 m) bands
  
Sub-blocks
********** 

* Cellular transmitter 
* HAM-Wideband transmitter
  
From the TX input of the LimeRFE board, the signal is guided to Cellular or HAM-Wideband transmitter. Depending on selected configuration (primarily regarding the frequency of received signal), the signal is guided through various switches and filters to the amplifiers units. After amplification, the signal passes again through various switches, duplexers and filters. Table 3 gives full, in details, description of signal paths, depending on chosen TX configuration.

Configuration
*************

.. list-table:: Table 3. TX configurations and corresponding RF signal path
   :header-rows: 1

   * - Type
     - Channel/Band
     - Signal path
   * - Wideband
     - 1–1000 MHz
     - J2 / HMC544A / MASW-008566 / QPA6489ATR13 / RD01MUS2B / SKY13418 /

       SKYA21003 / (J4) or (SKY13414 / J3)
   * - Wideband
     - 1000–4000 MHz
     - J2 / HMC544A / SKY13414 / QPA6489ATR13 / SKY13415 / MAAM-009286 /

       SKY13418 / SKYA21003 / (J4) or (SKY13414 / J3)
   * - HAM
     - 30 MHz 
  
       (HF)
     - J2 / HMC544A / MASW-008566 / RD01MUS2B / RD16HHF1 /

       EE2-5NU-L / filter 30 MHz / EE2-5NU-L / EE2-5NU-L / J5
   * - HAM
     - 50–70 MHz
        
       (6 & 4 m)
     - J2 / HMC544A / MASW-008566 / RD01MUS2B / RD16HHF1 /

       EE2-5NU-L / filter 70 MHz / EE2-5NU-L / EE2-5NU-L / J5
   * - HAM
     - 144–146 MHz 
      
       (2 m)
     - J2 / HMC544A / MASW-008566 / RD01MUS2B / AFT09MS007NT1 /

       filter 145 MHz / HMC544A / SKY13418 / SKYA21003 / (J4) or (SKY13414 / J3)
   * - HAM
     - 220–225 MHz 
      
       (1.25 m)
     - J2 / HMC544A / MASW-008566 / RD01MUS2B / AFT09MS007NT1 /

       filter 225 MHz / HMC544A / SKY13418 / SKYA21003 / (J4) or (SKY13414 / J3)
   * - HAM
     - 430–440 MHz 
      
       (70 cm)
     - J2 / HMC544A / SKY13414 / RD01MUS2B / AFT09MS007NT1 /

       filter 435 MHz / SKY13418 / SKYA21003 / (J4) or (SKY13414 / J3)
   * - HAM
     - 902–928 MHz 
       
       (33 cm)
     - J2 / HMC544A / SKY13414 / QPA6489ATR13 / SKY13415 / RFM04U6P /

       filter 930 MHz / SKY13418 / SKYA21003 / (J4) or (SKY13414 / J3)
   * - HAM
     - 1240–1325 MHz 
       
       (23 cm)
     - J2 / HMC544A / SKY13414 / QPA6489ATR13 / SKY13415 / RD01MUS2B / 
      
       RD01MUS2B / filter 1280 MHz / SKY13418 / SKYA21003 / 
       
       (J4) or (SKY13414 / J3)
   * - HAM
     - 2300–2450 MHz 
       
       (13 cm)
     - J2 / HMC544A / SKY13414 / QPA6489ATR13 / SKY13415 / QPA9426 /

       filter 2400 MHz / SKY13418 / SKYA21003 / (J4) or (SKY13414 / J3)
   * - HAM
     - 3300–3500 MHz
     - J2 / HMC544A / SKY13414 / QPA6489ATR13 / SKY13415 / MAAM-009560 /

       filter 3500 MHz / SKY13418 / SKYA21003 / (J4) or (SKY13414 / J3)
   * - Cellular
     - Band 1
     - J2 / HMC544A / SKY13414 / RFGA2054 / SKY13415 / B39212B9451P810 /

       SKY13414 / QPA9419 (TQP9421) / SKY13414 / QPQ1282 / SKY13415 / SKY13414 / J3
   * - Cellular
     - Band 2 / 
       
       PCS-1900
     - J2 / HMC544A / SKY13414 / RFGA2054 / SKY13415 / B39202B9477P810 /

       SKY13414 / QPA9419 (TQP9421) / SKY13414 / TQM963014 / SKY13415 / SKY13414 / 
       
       J3
   * - Cellular
     - Band 3 / 
       
       DCS-1800
     - J2 / HMC544A / SKY13414 / RFGA2054 / SKY13415 / F6QA1G842M2AN-J /

       SKY13414 / QPA9419 (TQP9421) / SKY13414 / QPQ1297 (TQQ6103) / SKY13415 / 
       
       SKY13414 / J3
   * - Cellular
     - Band 7
     - J2 / HMC544A / SKY13414 / RFGA2054 / SKY13415 / F6QA2G655M2QH-J /

       SKY13414 / QPA9426 / SKY21003 / TQQ6107 (QPQ1270) / SKY13415 / SKY13414 / 
       
       J3
   * - Cellular
     - Band 38
     - J2 / HMC544A / SKY13414 / RFGA2054 / SKY13415 / SKY13414 / QPA9426 /

       SKY21003 / SKY13370 / 885026 / SKY13415 / SKY13414 / J3