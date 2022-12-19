# Optimization of a PID Controller
Transfer function of an elevator:

![\Large G(s)=\frac{P(s)}{T(s)}=\frac{1}{s^3+2s^2}](https://latex.codecogs.com/svg.latex?\Large&space;G(s)=\frac{P(s)}{T(s)}=\frac{1}{s^3+2s^2+11s}) 

T(s) = Torque, P(s) = Position

![\Large P(t)=4.5-4.5cos(\frac{\pi\t}{10})](https://latex.codecogs.com/svg.latex?\Large&space;P(t)=4.5-4.5cos(\frac{\pi\t}{10})) 

**Problem Description:**
* I simulated the transfer function in MATLAB simulink, with a PID controller.
* I defined three cost functions in MATLAB and tried out each one: 1. Integral Time Absolute Error (ITAE) 2. Integral Absolute Error (IAE) 3. Integral Time Square Error (ITSE) 4. Integral Square Error (ISE)
* 
