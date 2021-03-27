G21    ; Units in mm (mm)
M149 C ; Units in Celsius
; Filament settings: Disabled
M200 S0 D1.75
; Steps per unit:
M92 X80.00 Y80.00 Z800.00 E98.77
; Maximum feedrates (units/s):
M203 X500.00 Y500.00 Z5.00 E60.00
; Maximum Acceleration (units/s2):
M201 X5000.00 Y5000.00 Z100.00 E1000.00
; Acceleration (units/s2): P<print_accel> R<retract_accel> T<travel_accel>
M204 P800.00 R1000.00 T500.00
; Advanced: B<min_segment_time_us> S<min_feedrate> T<min_travel_feedrate> J<junc_dev>
M205 B20000.00 S0.00 T0.00 J0.08
; Home offset:
M206 X0.00 Y0.00 Z0.00
; Auto Bed Leveling:
M420 S0 Z10.00
G29 W I0 J0 Z0.22775
G29 W I1 J0 Z0.06025
G29 W I2 J0 Z-0.13100
G29 W I0 J1 Z0.19150
G29 W I1 J1 Z0.14275
G29 W I2 J1 Z-0.12900
G29 W I0 J2 Z-0.09100
G29 W I1 J2 Z-0.30275
G29 W I2 J2 Z-0.39950
; Material heatup parameters:
M145 S0 H180 B70 F0
M145 S1 H240 B110 F0
; PID settings:
M301 P30.97 I3.02 D79.45
M304 P177.76 I33.09 D636.54
Recv: ; Controller Fan
M710 S255 I0 A1 D60 ; (100% 0%)
; Z-Probe Offset (mm):
M851 X55.00 Y-5.00 Z-2.62
; Stepper driver current:
M906 X800 Y800 Z800
M906 T0 E800
Recv: 
; Driver stepping mode:
M569 S1 X Y Z
M569 S1 T0 E
; Linear Advance:
M900 K1.00
; Filament load/unload lengths:
M603 L350.00 U550.00