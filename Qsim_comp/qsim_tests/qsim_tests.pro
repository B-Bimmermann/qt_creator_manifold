########################################################################
# Set the path
QSIM_PATH     = $$(QSIM_PREFIX)
OPENMPI_PATH  = /usr/include/openmpi
LINUX_PATH  = /media/bimmermann/petalinux_stick/petalinux-2016-4/project/zcu102/xilinx-zcu102-zu9-es2-rev1.0-2016.4/build/tmp/work-shared/plnx_aarch64/kernel-source
autostart_PATH  = /media/bimmermann/petalinux_stick/petalinux-2016-4/project/zcu102/xilinx-zcu102-zu9-es2-rev1.0-2016.4/project-spec/meta-user/recipes-apps/autostart/autostart
qsim_io_PATH  = /media/bimmermann/petalinux_stick/petalinux-2016-4/project/zcu102/xilinx-zcu102-zu9-es2-rev1.0-2016.4/project-spec/meta-user/recipes-apps/qsim-io/qsim-io
########################################################################

########################################################################
# Set the template
TEMPLATE = app
########################################################################


########################################################################
# Set the build directory and the name
DESTDIR     = $${QSIM_PATH}/tests/
TARGET      = tester
#######################################################################



########################################################################
# Include OPENMPI, QSIM & MANIFOLD
INCLUDEPATH += \
$${OPENMPI_PATH} \
$${LINUX_PATH} \
$${autostart_PATH} \
$${qsim_io_PATH}
########################################################################

DISTFILES += \
    $${QSIM_PATH}/tests/arm64/runme.sh \
    $${QSIM_PATH}/tests/x86/runme.sh \
    $${QSIM_PATH}/tests/runme_orig.sh

SOURCES += \
    $${QSIM_PATH}/tests/arm64/contention.cpp \
    $${QSIM_PATH}/tests/arm64/icount.cpp \
    $${QSIM_PATH}/tests/arm64/memory.cpp \
    $${QSIM_PATH}/tests/arm64/threads.cpp \
    $${QSIM_PATH}/tests/x86/icount.cpp \
    $${QSIM_PATH}/tests/x86/memory.cpp \
    $${QSIM_PATH}/tests/x86/reg.cpp \
    $${QSIM_PATH}/tests/tester.cpp
