# MicroP lab

ATMEGA328P Lab

## Software needed

- Atmel Studio 7
- [XLoader](https://drive.google.com/file/d/1BTLT7Clmqs_WUpZJBSc3pkpbzsU62Ep4/view?usp=share_link)
- Proteus 8 (simulation)

## Hardware needed

- Arduino **UNO** (SMD or DIP doesn't matter)

## Getting started

- Open solution and `main.asm` file in Atmel Studio 7
- Build solution <kbd>F7</kbd>
- HEX file will be generated in `Debug` folder
- Open XLoader and select HEX file
- Select COM port
- Baud rate doesn't matter
- Click `Upload` button

![XLoader](https://i.imgur.com/euAKa3I.png)

## Experiments

### Experiment 3A

#### Task 1: One input, one output

##### Circuit diagram

![Exp1-Task1_bb](https://user-images.githubusercontent.com/60868965/205410039-24f589ea-aa8e-47fd-911a-49c254935f87.png)

##### Results

https://user-images.githubusercontent.com/60868965/205410389-ee21f3c8-700f-4939-8cc5-d5a168b2f76f.mp4

#### Task 2: Multiple inputs, multiple outputs

##### Circuit diagram

![Exp1-Task2_bb](https://user-images.githubusercontent.com/60868965/205410047-6a007103-037e-44a5-aac1-f27afa1f2853.png)

##### Results

https://user-images.githubusercontent.com/60868965/205410410-2f159ac2-c1e3-400c-9558-a2189d66711d.mp4

#### Task 3: Running lights

##### Circuit diagram

![Exp1-Task3_bb](https://user-images.githubusercontent.com/60868965/205410059-98c01fd8-94d4-4e53-ab3b-0bb8c289d9e8.png)

##### Results

https://user-images.githubusercontent.com/60868965/205410421-fd98b6d9-ae6f-4110-a745-3ff79d0ca877.mp4

### Experiment 3B

#### [Task 1](/Exp2-Task1/): Display digit `4` to 7-segment display **without** using HD74LS48P decoder.

##### Circuit diagram

![Exp2-Task1_bb](https://user-images.githubusercontent.com/60868965/205410015-5f49501b-2f41-46b3-afce-49a292adfba5.png)

##### Results

![7segtask1](https://user-images.githubusercontent.com/60868965/205414368-95878d2d-1f94-4c34-985d-244ff4ccd8f3.jpg)

#### [Task 2](/Exp2-Task2/): Display digit `4` to 7-segment **using** HD74LS48P decoder.

##### Circuit diagram

![Exp2-Task2_bb](https://user-images.githubusercontent.com/60868965/205410024-90264992-5cb7-4bb7-ac56-cc17c94c603e.png)

##### Results

_oops, appear to be missing. Imagine the result as below but instead of changing numbers, it just shows static digit 4._

#### [Task 3](/Exp2-Task3/): Count 0-9 on the 7-Segment Display

_I wrote a whole article about this task [here](https://iqfareez.com/blog/count-09-using-arduino-uno-atmega328p-in-assembly)_

##### Circuit diagram

Same as [above](#circuit-diagram-4)

##### Results

https://user-images.githubusercontent.com/60868965/205410284-ea86715a-1123-4808-be48-d9f8a945cbf6.mp4

### Experiment 4

_Proteus simulation only, no real circuit_

You may need to add [Arduino UNO Library for Proteus V2.0](https://www.theengineeringprojects.com/2021/03/arduino-uno-library-for-proteus-v2.html)

#### [Task 1](/Exp4-Task1/): Drive the DC motor in a clockwise and counterclockwise direction

##### Circuit diagram

![motor-direction-1](https://user-images.githubusercontent.com/60868965/205409882-db26e93f-85d8-4169-a145-00a9beef1b24.SVG)

##### Results

https://user-images.githubusercontent.com/60868965/205409807-53c31810-1a06-454f-aa2e-1bbf304cd524.mp4

[[Watch on YouTube]](https://youtu.be/-ITYjvB3d9s)

#### [Task 2](/Exp4-Task2/): Control the speed of the motor using PWM

##### Circuit diagram

![motor-speed-2](https://user-images.githubusercontent.com/60868965/205511533-b7de3d07-e51d-4811-9120-2a0f6fe33588.SVG)

##### Results

https://user-images.githubusercontent.com/60868965/205511538-f7160f55-728a-4192-870f-17105472be79.mp4

[[Watch on YouTube]](https://youtu.be/G-6NhrX2K1Q)

## Project

We make a **Rakaat Counter**!

> Sejadah Raka’at Counter aims to automate the counting of prayer cycles (raka’at) during prayers in mosques and other places of worship. The system utilizes a combination of mechanical, electrical, and software components to accurately and efficiently count the number of prayer cycles performed by individuals in a designated area. This project aims to provide an accurate and convenient solution for keeping track of an individual's prayer activity and helping to get rid of feelings of misgiving.

|                                           |                                           |
| :---------------------------------------: | :---------------------------------------: |
| ![image1](https://imgur.com/gy2YQ2D.png)  | ![image2](https://imgur.com/7haNwWe.png)  |
| Watch [Video1](https://imgur.com/hraWHLO) | Watch [Video2](https://imgur.com/jjfFFIz) |
