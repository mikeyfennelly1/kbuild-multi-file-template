savedcmd_/home/mfennelly/projects/scrap/c/test-kmod/src/sysinfo.mod := printf '%s\n'   job.o procfs.o sysinfo_dev.o | awk '!x[$$0]++ { print("/home/mfennelly/projects/scrap/c/test-kmod/src/"$$0) }' > /home/mfennelly/projects/scrap/c/test-kmod/src/sysinfo.mod
