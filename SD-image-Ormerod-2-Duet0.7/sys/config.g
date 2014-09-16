; Configuration file for RepRap Ormerod 2
; RepRapPro Ltd
;
; Copy this file to config.g if you have an Ormerod 2
; If you are updating a config.g that you already have you
; may wish to go through it and this file checking what you
; want to keep from your old file.
; 
M111 S0                             ; Debug off
M550 PMy RepRapPro Ormerod 2        ; Machine name (can be anything you like)
M551 Preprap                        ; Machine password (currently not used)
M540 PBE:EF:DE:AD:FE:ED 				; MAC Address
M552 P192.168.1.14                  ; IP address
M553 P255.255.255.0                 ; Netmask
M554 P192.168.1.1                   ; Gateway
M555 P2                             ; Set output to look like Marlin
G21                                 ; Work in millimetres
G90                                 ; Send absolute corrdinates...
M83                                 ; ...but relative extruder moves
M305 P0 R4700                       ; Thermistor series resistor for Duet v0.7
M305 P1 R4700                       ; Thermistor series resistor for Duet v0.7         
M906 X600 Y600 Z600 E600				; Set motor currents (mA)
M569 P0 S0									; Reverse the X motor
M92 E420                            ; Set extruder steps per mm
M558 P3                             ; Use a modulated Z probe on a Duet v0.7
G31 Z2.3 P542                       ; Set the probe height and threshold (deliberately too high to avoid bed crashes on initial setup)
M557 P0 X60 Y0                      ; Four... 
M557 P1 X60 Y185                    ; ...probe points...
M557 P2 X210 Y185                   ; ...for bed...
M557 P3 X210 Y0                     ; ...levelling
M556 S78 X0 Y0 Z0                   ; Put your axis compensation here
M201 X800 Y800 Z15 E1000            ; Accelerations (mm/s^2)
M203 X15000 Y15000 Z100 E3600       ; Maximum speeds (mm/min)
M566 X600 Y600 Z30 E20              ; Minimum speeds mm/minute
M563 P1 D0 H1                       ; Define tool 1
G10 P1 S-273 R-273                        ; Set tool 1 operating and standby temperatures
