#!/bin/csh -v
#########################################################
# An example source module to accompany...
#
# "Using POSIX Threads: Programming with Pthreads"
#     by Brad nichols, Dick Buttlar, Jackie Farrell
#     O'Reilly & Associates, Inc.
#
#########################################################
# perf.csh
# 
# script for testing performance of various implementations
# of ATM server
#
rm .a*
#
set torun = "serial"
if ($torun == "serial") then
#
# Increasing clients, serial server
#
echo "Increasing clients, serial server: atm_svr_serial -c 0 1"
#
atm_svr_serial -c 0 1 &
sleep 5
aldtest -n 1 30 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 5
aldtest -n 2 15 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 5
aldtest -n 3 10 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 5
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 5
aldtest -n 10 3 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 5
aldtest -n 15 2 2 
kill -9 %atm_svr
rm .a*
#
endif
#
# Increasing clients, multi-process server
#
echo "Increasing clients, server: atm_svr_processes -c 0 1"
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 1 30 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 2 15 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 3 10 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 10 3 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 15 2 2 
kill -9 %atm_svr
rm .a*
#
# Increasing clients, multi-threaded server
#
echo "Increasing clients,server: atm_svr -c 0 1"
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 1 30 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 2 15 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 3 10 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 10 3 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 15 2 2 
kill -9 %atm_svr
rm .a*
#
exit

#!/bin/csh
#
if ($torun == "serial") then
#
# Increasing Contention, serial server
#
echo "Increasing contention,server: atm_svr_serial -c 0 1"
#
atm_svr_serial -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 3
aldtest -c 5 6 2 4 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 3
aldtest -c 5 6 2 3 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 3
aldtest -c 5 6 2 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_serial -c 0 1 &
sleep 3
aldtest -c 5 6 2 1 
kill -9 %atm_svr
rm .a*
#
endif
#
# Increasing Contention, multi-process server
#
echo "Increasing contention,server: atm_svr_processes -c 0 1"
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -c 5 6 2 4 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -c 5 6 2 3 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -c 5 6 2 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -c 5 6 2 1 
kill -9 %atm_svr
rm .a*
#
# Increasing Contention, multi-threaded server
#
echo "Increasing contention,server: atm_svr -c 0 1"
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 4 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 3 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 1 
kill -9 %atm_svr
rm .a*
#
#
# Different Locking Schemes: One Lock, multi-threaded server
#
echo "Different Locking Schemes, server: atm_svr_mtx1 -c 0 1"
#
atm_svr_1mtx -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_1mtx -c 0 1 &
sleep 3
aldtest -c 5 6 2 4 
kill -9 %atm_svr
rm .a*
#
atm_svr_1mtx -c 0 1 &
sleep 3
aldtest -c 5 6 2 3 
kill -9 %atm_svr
rm .a*
#
atm_svr_1mtx -c 0 1 &
sleep 3
aldtest -c 5 6 2 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_1mtx -c 0 1 &
sleep 3
aldtest -c 5 6 2 1 
kill -9 %atm_svr
rm .a*
#
# Different Locking Schemes: No Locks, multi-threaded server
#
echo "Different Locking Schemes, server: atm_svr_nosync -c 0 1"
#
atm_svr_nosync -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_nosync -c 0 1 &
sleep 3
aldtest -c 5 6 2 4 
kill -9 %atm_svr
rm .a*
#
atm_svr_nosync -c 0 1 &
sleep 3
aldtest -c 5 6 2 3 
kill -9 %atm_svr
rm .a*
#
atm_svr_nosync -c 0 1 &
sleep 3
aldtest -c 5 6 2 2 
kill -9 %atm_svr
rm .a*
#
atm_svr_nosync -c 0 1 &
sleep 3
aldtest -c 5 6 2 1 
kill -9 %atm_svr
rm .a*
#
exit
#
# Different Locking Schemes: Per-Account Locks, threaded
#
echo "Different Locking Schemes, server: atm_svr -c 0 1"
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 5 6 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 4 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 3 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 2 
kill -9 %atm_svr
rm .a*
#
atm_svr -c 0 1 &
sleep 3
aldtest -c 5 6 2 1 
kill -9 %atm_svr
rm .a*
#
exit


#!/bin/csh
#
if ($torun == "serial") then
#
#Increasing Transaction Size, Serial
#
echo "Increasing Transaction Size, server: atm_svr_serial -c 0 1"
#
atm_svr_serial -c 0 1 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr_serial -c 1 2"
#
atm_svr_serial -c 1 2 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr_serial -c 2 3"
#
atm_svr_serial -c 2 3 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr_serial -c 3 4"
#
atm_svr_serial -c 3 4 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
endif
#
#Increasing Transaction Size, multi-process
#
echo "Increasing Transaction Size, server: atm_svr_processes -c 0 1"
#
atm_svr_processes -c 0 1 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr_processes -c 1 2"
#
atm_svr_processes -c 1 2 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr_processes -c 2 3"
#
atm_svr_processes -c 2 3 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr_processes -c 3 4"
#
atm_svr_processes -c 3 4 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
#Increasing Transaction Size, multi-threaded
#
echo "Increasing Transaction Size, server: atm_svr -c 0 1"
#
atm_svr -c 0 1 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr -c 1 2"
#
atm_svr -c 1 2 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr -c 2 3"
#
atm_svr -c 2 3 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing Transaction Size, server: atm_svr -c 3 4"
#
atm_svr -c 3 4 &
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
##
## 
##
if ($torun == "serial") then
#
#Increasing CPU Intensive, serial
# 
echo "Increasing CPU Intensive, server: atm_svr_serial -c 0 3"
#
atm_svr_serial -c 0 3
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing CPU Intensive, server: atm_svr_serial -c 1 2"
#
atm_svr_serial -c 1 2
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing CPU Intensive, server: atm_svr_serial -c 2 1"
#
atm_svr_serial -c 2 1
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing CPU Intensive, server: atm_svr_serial -c 3 0"
#
atm_svr_serial -c 3 0
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
endif
#
#Increasing CPU Intensive, multi-threaded
# 
echo "Increasing CPU Intensive, server: atm_svr -c 0 3"
#
atm_svr -c 0 3
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing CPU Intensive, server: atm_svr_serial -c 1 2"
#
atm_svr -c 1 2
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing CPU Intensive, server: atm_svr_serial -c 2 1"
#
atm_svr -c 2 1
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*
#
echo "Increasing CPU Intensive, server: atm_svr_serial -c 3 0"
#
atm_svr -c 3 0
sleep 3
aldtest -n 5 6 2
kill -9 %atm_svr
rm .a*