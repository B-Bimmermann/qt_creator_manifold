########################################################################
# Set the path
QSIM_PATH     = $$(QSIM_PREFIX)
OPENMPI_PATH  = /usr/include/openmpi
########################################################################

########################################################################
# Set the template
TEMPLATE = app
########################################################################


########################################################################
# Include OPENMPI, QSIM & MANIFOLD
INCLUDEPATH += \
$${OPENMPI_PATH} \
$${QSIM_PATH}
########################################################################


########################################################################
# Set the build directory and the name
# Set the build directory and the name
DESTDIR     = $${QSIM_PATH}
TARGET      = qsim-fastforwarder
##
#DESTDIR     = $${QSIM_PATH}/tests
#TARGET      = tester
#######################################################################

########################################################################
# Show QSIM sources
SOURCES +=  \
    $${QSIM_PATH}/des/des.test.cpp \
    $${QSIM_PATH}/examples/arm64/cachesim.cpp \
    $${QSIM_PATH}/examples/arm64/cs_disas.cpp \
    $${QSIM_PATH}/examples/arm64/simple.cpp \
    $${QSIM_PATH}/examples/x86/cachesim.cpp \
    $${QSIM_PATH}/examples/x86/io-test.cpp \
    $${QSIM_PATH}/examples/x86/qtm.cpp \
    $${QSIM_PATH}/examples/x86/simple.cpp \
    $${QSIM_PATH}/examples/x86/test.cpp \
    $${QSIM_PATH}/examples/x86/utrace.cpp \
    $${QSIM_PATH}/examples/x86/virt_rw.cpp \
    $${QSIM_PATH}/examples/x86/vistrace.cpp \
    $${QSIM_PATH}/qdb/help.cpp \
    $${QSIM_PATH}/qdb/qdb.cpp \
    $${QSIM_PATH}/simplesim/cache.cpp \
    $${QSIM_PATH}/simplesim/cpu.cpp \
    $${QSIM_PATH}/simplesim/data.cpp \
    $${QSIM_PATH}/simplesim/des.cpp \
    $${QSIM_PATH}/simplesim/main.cpp \
    $${QSIM_PATH}/tests/arm64/contention.cpp \
    $${QSIM_PATH}/tests/arm64/icount.cpp \
    $${QSIM_PATH}/tests/arm64/memory.cpp \
    $${QSIM_PATH}/tests/arm64/threads.cpp \
    $${QSIM_PATH}/tests/x86/icount.cpp \
    $${QSIM_PATH}/tests/x86/memory.cpp \
    $${QSIM_PATH}/tests/x86/reg.cpp \
    $${QSIM_PATH}/tests/tester.cpp \
    $${QSIM_PATH}/fastforwarder.cpp \
    $${QSIM_PATH}/qsim-load.cpp \
    $${QSIM_PATH}/qsim-prof.cpp \
    $${QSIM_PATH}/qsim.cpp \
    $${QSIM_PATH}/statesaver.cpp \
    $${QSIM_PATH}/initrd/mark_app.c \
    $${QSIM_PATH}/initrd/qsim_io.c \
    $${QSIM_PATH}/initrd/test_inst.c \
    $${QSIM_PATH}/initrd/test_mem.c \
    $${QSIM_PATH}/initrd/test_threads.c
########################################################################

########################################################################
# Show build files
DISTFILES += \
    $${QSIM_PATH}/initrd/getbusybox.sh \
    $${QSIM_PATH}/linux/getkernel.sh \
    $${QSIM_PATH}/tests/runme_orig.sh \
    $${QSIM_PATH}/arm-build.sh \
    $${QSIM_PATH}/build-qemu.sh \
    $${QSIM_PATH}/mkstate.sh \
    $${QSIM_PATH}/setup.sh \
    $${QSIM_PATH}/setup_sudo.sh \
    $${QSIM_PATH}/q_setup.sh \
    $${QSIM_PATH}/Makefile
########################################################################

########################################################################
# Get header files
HEADERS += \
    $${QSIM_PATH}/des/des.h \
    $${QSIM_PATH}/examples/arm64/cs_disas.h \
    $${QSIM_PATH}/qdb/banner.h \
    $${QSIM_PATH}/qdb/qdb.h \
    $${QSIM_PATH}/qdb/util.h \
    $${QSIM_PATH}/simplesim/cache.h \
    $${QSIM_PATH}/simplesim/cpu.h \
    $${QSIM_PATH}/simplesim/data.h \
    $${QSIM_PATH}/simplesim/debug.h \
    $${QSIM_PATH}/simplesim/des.h \
    $${QSIM_PATH}/mgzd.h \
    $${QSIM_PATH}/qsim-arm-regs.h \
    $${QSIM_PATH}/qsim-arm64-regs.h \
    $${QSIM_PATH}/qsim-context.h \
    $${QSIM_PATH}/qsim-func.h \
    $${QSIM_PATH}/qsim-load.h \
    $${QSIM_PATH}/qsim-prof.h \
    $${QSIM_PATH}/qsim-regs.h \
    $${QSIM_PATH}/qsim-vm.h \
    $${QSIM_PATH}/qsim-x86-regs.h \
    $${QSIM_PATH}/qsim.h \
    $${QSIM_PATH}/qsim_magic.h \
    $${QSIM_PATH}/statesaver.h
########################################################################

