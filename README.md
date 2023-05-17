# Nhomp-Game
# Video showcase link: https://clipchamp.com/watch/sh5fMjuXx5s
A mini arcade game machine that me and my group created from scratch - no microcontrollers, no drivers, no high-level languages like Python, and no operating systems - using Au Alchitry, a Field-Programmable Gate Array (FPGA) 
development board used to simulate an arithmetic logic unit (ALU) and Beta CPU, under a budget of $70.
In the au_top module, it contains the code for the beta CPU datapath, which basically connects the outputs and inputs of the other modules, so that the game works as intended.
In the game_CU module, it contains the code for the control unit of the game, which is represented as an FSM (Finite State Machine). This code contains the game logic, which tells the machine what will happen when the user presses certain buttons.
In the ws2812b_writer module, it contains the code to drive the LED Matrix (Type WS2812B) that we used as the game screen.
In the alu_unit module, it contains the code that simulates the arithmetic logic unit (ALU) whose task is to perform logic calculations (whose codes are contained in adder, boolean, compare, and shifter unit).
![image](https://github.com/dl3on/Nhomp-Game/assets/124175480/67a75490-f010-4cb1-9f6b-efdb81acc07c)
