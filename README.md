### Purpose:
This repository contains some MATLAB code to test the conversion of a meow sound clip to a roar sound.  
For now I am testing how accurate I can make the resulting roar to an actual Lion's roar.  

### Progress: 
- Completed proof-of-concept MATLAB file, which successfully modifies a meow .wav file into a sound resembling a lion's roar.

### DSP Techniques used:
- FIR Filters
- Rate Change systems
- Signal modulation

### Future Developments:
- Make the conversion almost 1:1 accurate to an actual lion's roar sound by analyzing the frequency response of the converted sound to that of a lion's roar.
- Simplify the design to use as short an FIR filter as possible.
- Implement the conversion on a DSP using C.
- Design hardware and firmware to create a device that will be attached to a cat and convert its' meows to roars using a mic, a DSP, a speaker, and a battery.
