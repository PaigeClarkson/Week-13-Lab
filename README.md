# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One-hot and binary encodings are two different ways of representing states in a finite state machine. In a one-hot design, every state gets its own flip-flop, so only one bit is high at any given time. That makes the next-state logic more simple and fast, but it uses a lot more flip-flops. Binary encoding does the opposite. It compacts all the states into a compact representation, which saves lots of hardware and power, making it great for big state machines. Binary needs more combinational logic to decode and compute the next state, so it usually isn’t as fast and can be harder to debug. In conclusion, one-hot is bigger but faster and simpler, while binary is smaller but usually slower and more complex.


### Which method did your team find easier, and why?
I found the one-hot encoding method easier to work with because the logic is much more straightforward. In a one-hot system, each state gets its own flip-flop, and only one bit is high at a time, which makes it very simple to see exactly which state the finite state machine is in. This also makes the next-state logic easier to design and debug, since transitions often require just checking or setting a single bit rather than decoding multi-bit combinations. 

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
When deciding between one-hot and binary state encoding, the choice depends largely on hardware resource constraints and performance requirements. One-hot encoding uses a separate flip-flop for each state, which increases flip-flop usage but significantly simplifies the combinational logic, making it faster and often more suitable for FPGAs that have abundant flip-flops but limited logic resources. In contrast, binary encoding minimizes flip-flop usage by representing states with the fewest possible bits, making it more area-efficient but potentially slower due to more complex next-state decoding. Therefore, one-hot is preferred when speed and simplicity are the priority, while binary is chosen when conserving flip-flops and minimizing resource usage is more critical.


