#!/usr/bin/env python3

# Arthur:    Scotty Jokon
# Date:      12/11/2023
# Purpose:  Psutil
# Resource: https://chat.openai.com/share/2c0077e2-8d58-4d80-839f-397640698d00


import psutil

def get_system_info():
    # Time spent by normal processes executing in user mode
    user_time = psutil.cpu_times().user

    # Time spent by processes executing in kernel mode
    system_time = psutil.cpu_times().system

    # Time when the system was idle
    idle_time = psutil.cpu_times().idle

    # Time spent by priority processes executing in user mode
    priority_user_time = psutil.cpu_times().nice

    # Time spent waiting for I/O to complete
    io_wait_time = psutil.cpu_times().iowait

    # Time spent for servicing hardware interrupts
    irq_time = psutil.cpu_times().irq

    # Time spent for servicing software interrupts
    soft_irq_time = psutil.cpu_times().softirq

    # Time spent by other operating systems running in a virtualized environment
    steal_time = psutil.cpu_times().steal

    # Time spent running a virtual CPU for guest operating systems under the control of the Linux kernel
    guest_time = psutil.cpu_times().guest

    # Create a dictionary to store the results
    system_info = {
        "User Time": user_time,
        "System Time": system_time,
        "Idle Time": idle_time,
        "Priority User Time": priority_user_time,
        "IO Wait Time": io_wait_time,
        "IRQ Time": irq_time,
        "Soft IRQ Time": soft_irq_time,
        "Steal Time": steal_time,
        "Guest Time": guest_time,
    }

    return system_info

if __name__ == "__main__":
    # Fetch and print the system information
    system_info = get_system_info()
    for key, value in system_info.items():
        print(f"{key}: {value} seconds")