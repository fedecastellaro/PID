# PID
Implementation of a PID algorithm in C in PID.c and PID.h files.


## Execute
```Makefile
  make       # Compiles and executes the program example
  make clean # Removes .o files and executable program.
```
## TO DO:
 - Set a dynamic integration clamping.
 
## Changes (need a revision):

Modified Anti-wind-up via integrator clamping part. The following code was commented:

```c
    // if (pid->integrator > pid->limMaxInt) {

    //     pid->integrator = pid->limMaxInt;

    // } else if (pid->integrator < pid->limMinInt) {

    //     pid->integrator = pid->limMinInt;

    // }
```
And replaced for the line:

```c
  pid->integrator = pid->out - (proportional + pid->differentiator);
```

Seems to work better than the original way, but a further revision to verify the response is required.

