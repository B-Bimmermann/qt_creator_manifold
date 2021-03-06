########################################################################
# Set the path
QSIM_PATH     = $$(QSIM_PREFIX)
MANIFOLD_PATH = $$(MANIFOLD_PREFIX)
OPENMPI_PATH  = /usr/include/openmpi
########################################################################




########################################################################
########################################################################
########################################################################
########################################################################
########################################################################





########################################################################
# Include OPENMPI, QSIM & MANIFOLD
INCLUDEPATH += \
$${OPENMPI_PATH} \
$${QSIM_PATH} \
$${MANIFOLD_PATH}
########################################################################


# http://stackoverflow.com/questions/2580934/how-to-specify-different-debug-release-output-directories-in-qmake-pro-file
########################################################################
# Set the build directory and the name
DESTDIR     = $${MANIFOLD_PATH}/simulator/smp/QsimProxy/
TARGET      = smp_l1l2
########################################################################


########################################################################
# Show Manifold sources
SOURCES += \
    $${MANIFOLD_PATH}/simulator/smp/QsimProxy/smp_l1l2.cc \
    $${MANIFOLD_PATH}/simulator/smp/QsimProxy/smp_llp.cc
########################################################################

########################################################################
# Show all Manifold sources
#SOURCES += \
#    $${MANIFOLD_PATH}/kernel/clock.cc \
#    $${MANIFOLD_PATH}/kernel/component.cc \
#    $${MANIFOLD_PATH}/kernel/link.cc \
#    $${MANIFOLD_PATH}/kernel/lookahead.cc \
#    $${MANIFOLD_PATH}/kernel/manifold.cc \
#    $${MANIFOLD_PATH}/kernel/messenger.cc \
#    $${MANIFOLD_PATH}/kernel/quantum_scheduler.cc \
#    $${MANIFOLD_PATH}/kernel/scheduler.cc \
#    $${MANIFOLD_PATH}/kernel/stat_engine.cc \
#    $${MANIFOLD_PATH}/kernel/syncalg.cc
########################################################################

########################################################################
# Show Makefiles
DISTFILES += \
    $${MANIFOLD_PATH}/simulator/smp/QsimProxy/Makefile \
    $${MANIFOLD_PATH}/simulator/smp/QsimProxy/Makefile.kitfox
########################################################################


########################################################################
# Get QSIM header files
HEADERS += \
    $${QSIM_PATH}/include/arm.h \
    $${QSIM_PATH}/include/arm64.h \
    $${QSIM_PATH}/include/capstone.h \
    $${QSIM_PATH}/include/m68k.h \
    $${QSIM_PATH}/include/mgzd.h \
    $${QSIM_PATH}/include/mips.h \
    $${QSIM_PATH}/include/platform.h \
    $${QSIM_PATH}/include/ppc.h \
    $${QSIM_PATH}/include/qsim-arm-regs.h \
    $${QSIM_PATH}/include/qsim-arm64-regs.h \
    $${QSIM_PATH}/include/qsim-load.h \
    $${QSIM_PATH}/include/qsim-prof.h \
    $${QSIM_PATH}/include/qsim-regs.h \
    $${QSIM_PATH}/include/qsim-vm.h \
    $${QSIM_PATH}/include/qsim-x86-regs.h \
    $${QSIM_PATH}/include/qsim.h \
    $${QSIM_PATH}/include/qsim_magic.h \
    $${QSIM_PATH}/include/sparc.h \
    $${QSIM_PATH}/include/systemz.h \
    $${QSIM_PATH}/include/x86.h \
    $${QSIM_PATH}/include/xcore.h
########################################################################

########################################################################
# Get MANIFOLD header files
HEADERS += \
    $${MANIFOLD_PATH}/kernel/clock.h \
    $${MANIFOLD_PATH}/kernel/common-defs.h \
    $${MANIFOLD_PATH}/kernel/component-decl.h \
    $${MANIFOLD_PATH}/kernel/component.h \
    $${MANIFOLD_PATH}/kernel/link-decl.h \
    $${MANIFOLD_PATH}/kernel/link.h \
    $${MANIFOLD_PATH}/kernel/lookahead.h \
    $${MANIFOLD_PATH}/kernel/manifold-decl.h \
    $${MANIFOLD_PATH}/kernel/manifold-event.h \
    $${MANIFOLD_PATH}/kernel/manifold.h \
    $${MANIFOLD_PATH}/kernel/message.h \
    $${MANIFOLD_PATH}/kernel/messenger.h \
    $${MANIFOLD_PATH}/kernel/quantum_scheduler.h \
    $${MANIFOLD_PATH}/kernel/scheduler.h \
    $${MANIFOLD_PATH}/kernel/serialize.h \
    $${MANIFOLD_PATH}/kernel/stat.h \
    $${MANIFOLD_PATH}/kernel/stat_engine.h \
    $${MANIFOLD_PATH}/kernel/syncalg.h
########################################################################

########################################################################
# Get OPENMPI header files
HEADERS += \
    $${OPENMPI_PATH}/mpp/shmem.h \
    $${OPENMPI_PATH}/openmpi/ompi/attribute/attribute.h \
    $${OPENMPI_PATH}/openmpi/ompi/class/ompi_free_list.h \
    $${OPENMPI_PATH}/openmpi/ompi/class/ompi_rb_tree.h \
    $${OPENMPI_PATH}/openmpi/ompi/class/ompi_seq_tracker.h \
    $${OPENMPI_PATH}/openmpi/ompi/communicator/comm_helpers.h \
    $${OPENMPI_PATH}/openmpi/ompi/communicator/comm_request.h \
    $${OPENMPI_PATH}/openmpi/ompi/communicator/communicator.h \
    $${OPENMPI_PATH}/openmpi/ompi/datatype/ompi_datatype.h \
    $${OPENMPI_PATH}/openmpi/ompi/datatype/ompi_datatype_internal.h \
    $${OPENMPI_PATH}/openmpi/ompi/debuggers/debuggers.h \
    $${OPENMPI_PATH}/openmpi/ompi/debuggers/msgq_interface.h \
    $${OPENMPI_PATH}/openmpi/ompi/debuggers/ompi_common_dll_defs.h \
    $${OPENMPI_PATH}/openmpi/ompi/debuggers/ompi_msgq_dll_defs.h \
    $${OPENMPI_PATH}/openmpi/ompi/errhandler/errcode-internal.h \
    $${OPENMPI_PATH}/openmpi/ompi/errhandler/errcode.h \
    $${OPENMPI_PATH}/openmpi/ompi/errhandler/errhandler.h \
    $${OPENMPI_PATH}/openmpi/ompi/errhandler/errhandler_predefined.h \
    $${OPENMPI_PATH}/openmpi/ompi/file/file.h \
    $${OPENMPI_PATH}/openmpi/ompi/group/group.h \
    $${OPENMPI_PATH}/openmpi/ompi/group/group_dbg.h \
    $${OPENMPI_PATH}/openmpi/ompi/info/info.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/allocator/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/allocator/allocator.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/bcol/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/bcol/bcol.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/bml/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/bml/base/bml_base_btl.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/bml/bml.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/btl/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/btl/base/btl_base_error.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/btl/btl.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/coll/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/coll/base/coll_tags.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/coll/coll.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/common/sm/common_sm.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/common/sm/common_sm_rml.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/common/verbs/common_verbs.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/common/verbs_usnic/common_verbs_usnic.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/crcp/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/crcp/crcp.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/dpm/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/dpm/dpm.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/fbtl/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/fbtl/fbtl.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/fcoll/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/fcoll/fcoll.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/fs/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/fs/fs.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/io/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/io/base/io_base_request.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/io/io.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mpool/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mpool/base/mpool_base_mem_cb.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mpool/base/mpool_base_tree.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mpool/grdma/mpool_grdma.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mpool/mpool.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mtl/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mtl/base/mtl_base_datatype.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/mtl/mtl.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/op/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/op/base/functions.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/op/op.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/osc/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/osc/base/osc_base_obj_convert.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/osc/osc.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/base/pml_base_bsend.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/base/pml_base_recvreq.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/base/pml_base_request.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/base/pml_base_request_dbg.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/base/pml_base_sendreq.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/pml.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pml/pml_constants.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pubsub/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/pubsub/pubsub.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/rcache/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/rcache/rcache.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/rte/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/rte/orte/rte_orte.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/rte/rte.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/sbgp/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/sbgp/sbgp.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/sharedfp/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/sharedfp/sharedfp.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/topo/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/topo/topo.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/vprotocol/base/base.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/vprotocol/base/vprotocol_base_request.h \
    $${OPENMPI_PATH}/openmpi/ompi/mca/vprotocol/vprotocol.h \
    $${OPENMPI_PATH}/openmpi/ompi/message/message.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/c/profile/defines.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/c/bindings.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/comm.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/comm_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/constants.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/datatype.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/datatype_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/errhandler.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/errhandler_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/exception.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/file.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/file_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/functions.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/functions_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/group.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/group_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/info.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/info_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/intercomm.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/intercomm_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/intracomm.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/intracomm_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/mpicxx.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/op.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/op_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/request.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/request_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/status.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/status_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/topology.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/topology_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/win.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/cxx/win_inln.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/fortran/mpif-h/profile/defines.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/fortran/mpif-h/bindings.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/fortran/mpif-h/prototypes_mpi.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/fortran/mpif-h/status-conversion.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/tool/profile/defines.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpi/tool/mpit-internal.h \
    $${OPENMPI_PATH}/openmpi/ompi/mpiext/mpiext.h \
    $${OPENMPI_PATH}/openmpi/ompi/op/op.h \
    $${OPENMPI_PATH}/openmpi/ompi/patterns/comm/coll_ops.h \
    $${OPENMPI_PATH}/openmpi/ompi/patterns/comm/commpatterns.h \
    $${OPENMPI_PATH}/openmpi/ompi/patterns/net/coll_ops.h \
    $${OPENMPI_PATH}/openmpi/ompi/patterns/net/netpatterns.h \
    $${OPENMPI_PATH}/openmpi/ompi/patterns/net/netpatterns_knomial_tree.h \
    $${OPENMPI_PATH}/openmpi/ompi/peruse/peruse-internal.h \
    $${OPENMPI_PATH}/openmpi/ompi/proc/proc.h \
    $${OPENMPI_PATH}/openmpi/ompi/request/grequest.h \
    $${OPENMPI_PATH}/openmpi/ompi/request/request.h \
    $${OPENMPI_PATH}/openmpi/ompi/request/request_dbg.h \
    $${OPENMPI_PATH}/openmpi/ompi/request/request_default.h \
    $${OPENMPI_PATH}/openmpi/ompi/runtime/mpiruntime.h \
    $${OPENMPI_PATH}/openmpi/ompi/runtime/ompi_cr.h \
    $${OPENMPI_PATH}/openmpi/ompi/runtime/ompi_info_support.h \
    $${OPENMPI_PATH}/openmpi/ompi/runtime/ompi_module_exchange.h \
    $${OPENMPI_PATH}/openmpi/ompi/runtime/params.h \
    $${OPENMPI_PATH}/openmpi/ompi/win/win.h \
    $${OPENMPI_PATH}/openmpi/ompi/constants.h \
    $${OPENMPI_PATH}/openmpi/ompi/frameworks.h \
    $${OPENMPI_PATH}/openmpi/ompi/memchecker.h \
    $${OPENMPI_PATH}/openmpi/ompi/totalview.h \
    $${OPENMPI_PATH}/openmpi/ompi/types.h \
    $${OPENMPI_PATH}/openmpi/ompi/version.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_atomic_lifo.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_bitmap.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_free_list.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_graph.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_hash_table.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_hotel.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_list.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_object.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_pointer_array.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_ring_buffer.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_tree.h \
    $${OPENMPI_PATH}/openmpi/opal/class/opal_value_array.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_convertor.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_convertor_internal.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype_checksum.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype_copy.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype_internal.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype_memcpy.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype_pack.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype_prototypes.h \
    $${OPENMPI_PATH}/openmpi/opal/datatype/opal_datatype_unpack.h \
    $${OPENMPI_PATH}/openmpi/opal/dss/dss.h \
    $${OPENMPI_PATH}/openmpi/opal/dss/dss_internal.h \
    $${OPENMPI_PATH}/openmpi/opal/dss/dss_types.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/backtrace/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/backtrace/backtrace.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_component_repository.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_framework.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_param.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_param_internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_pvar.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_var.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_var_enum.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_var_group.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/base/mca_base_vari.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/compress/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/compress/compress.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/crs/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/crs/crs.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/db/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/db/db.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/db/db_types.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/dl/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/dl/dl.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/compat/sys/queue.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/buffer.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/buffer_compat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/bufferevent.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/bufferevent_compat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/bufferevent_ssl.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/bufferevent_struct.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/dns_compat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/dns_struct.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/event-config.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/event.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/event_compat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/event_struct.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/http.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/http_compat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/http_struct.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/keyvalq_struct.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/listener.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/rpc.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/rpc_compat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/rpc_struct.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/tag.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/tag_compat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/thread.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/include/event2/util.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/WIN32-Code/event2/event-config.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/WIN32-Code/tree.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/bufferevent-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/changelist-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/defer-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evbuffer-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evdns.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/event-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/event.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evhttp.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evmap-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evrpc-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evrpc.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evsignal-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evthread-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/evutil.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/ht-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/http-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/iocp-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/ipv6-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/log-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/minheap-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/mm-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/opal_rename.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/ratelim-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/strlcpy-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent/util-internal.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/libevent2021/libevent2021.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/event/event.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/hwloc/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/hwloc/hwloc.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/if/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/if/if.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/installdirs/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/installdirs/installdirs.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memchecker/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memchecker/memchecker.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memcpy/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memcpy/base/memcpy_base_default.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memcpy/memcpy.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memory/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memory/base/empty.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/memory/memory.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/pstat/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/pstat/pstat.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/sec/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/sec/sec.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/shmem/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/shmem/shmem.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/shmem/shmem_types.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/timer/base/base.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/timer/base/timer_base_null.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/timer/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/mca/mca.h \
    $${OPENMPI_PATH}/openmpi/opal/memoryhooks/memory.h \
    $${OPENMPI_PATH}/openmpi/opal/memoryhooks/memory_internal.h \
    $${OPENMPI_PATH}/openmpi/opal/runtime/opal.h \
    $${OPENMPI_PATH}/openmpi/opal/runtime/opal_cr.h \
    $${OPENMPI_PATH}/openmpi/opal/runtime/opal_info_support.h \
    $${OPENMPI_PATH}/openmpi/opal/runtime/opal_params.h \
    $${OPENMPI_PATH}/openmpi/opal/runtime/opal_progress.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/alpha/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/amd64/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/amd64/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/arm/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/arm/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/arm64/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/arm64/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/ia32/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/ia32/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/ia64/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/ia64/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/mips/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/mips/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/osx/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/powerpc/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/powerpc/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/sparcv9/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/sparcv9/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/sync_builtin/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/win32/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/win32/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/architecture.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/atomic.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/atomic_impl.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/cma.h \
    $${OPENMPI_PATH}/openmpi/opal/sys/timer.h \
    $${OPENMPI_PATH}/openmpi/opal/threads/condition.h \
    $${OPENMPI_PATH}/openmpi/opal/threads/mutex.h \
    $${OPENMPI_PATH}/openmpi/opal/threads/mutex_unix.h \
    $${OPENMPI_PATH}/openmpi/opal/threads/thread_usage.h \
    $${OPENMPI_PATH}/openmpi/opal/threads/threads.h \
    $${OPENMPI_PATH}/openmpi/opal/threads/tsd.h \
    $${OPENMPI_PATH}/openmpi/opal/util/alfg.h \
    $${OPENMPI_PATH}/openmpi/opal/util/arch.h \
    $${OPENMPI_PATH}/openmpi/opal/util/argv.h \
    $${OPENMPI_PATH}/openmpi/opal/util/basename.h \
    $${OPENMPI_PATH}/openmpi/opal/util/bit_ops.h \
    $${OPENMPI_PATH}/openmpi/opal/util/cmd_line.h \
    $${OPENMPI_PATH}/openmpi/opal/util/convert.h \
    $${OPENMPI_PATH}/openmpi/opal/util/crc.h \
    $${OPENMPI_PATH}/openmpi/opal/util/daemon_init.h \
    $${OPENMPI_PATH}/openmpi/opal/util/error.h \
    $${OPENMPI_PATH}/openmpi/opal/util/fd.h \
    $${OPENMPI_PATH}/openmpi/opal/util/few.h \
    $${OPENMPI_PATH}/openmpi/opal/util/if.h \
    $${OPENMPI_PATH}/openmpi/opal/util/keyval_parse.h \
    $${OPENMPI_PATH}/openmpi/opal/util/malloc.h \
    $${OPENMPI_PATH}/openmpi/opal/util/net.h \
    $${OPENMPI_PATH}/openmpi/opal/util/numtostr.h \
    $${OPENMPI_PATH}/openmpi/opal/util/opal_environ.h \
    $${OPENMPI_PATH}/openmpi/opal/util/opal_getcwd.h \
    $${OPENMPI_PATH}/openmpi/opal/util/opal_pty.h \
    $${OPENMPI_PATH}/openmpi/opal/util/os_dirpath.h \
    $${OPENMPI_PATH}/openmpi/opal/util/os_path.h \
    $${OPENMPI_PATH}/openmpi/opal/util/output.h \
    $${OPENMPI_PATH}/openmpi/opal/util/path.h \
    $${OPENMPI_PATH}/openmpi/opal/util/printf.h \
    $${OPENMPI_PATH}/openmpi/opal/util/qsort.h \
    $${OPENMPI_PATH}/openmpi/opal/util/show_help.h \
    $${OPENMPI_PATH}/openmpi/opal/util/show_help_lex.h \
    $${OPENMPI_PATH}/openmpi/opal/util/stacktrace.h \
    $${OPENMPI_PATH}/openmpi/opal/util/strncpy.h \
    $${OPENMPI_PATH}/openmpi/opal/util/sys_limits.h \
    $${OPENMPI_PATH}/openmpi/opal/util/uri.h \
    $${OPENMPI_PATH}/openmpi/opal/align.h \
    $${OPENMPI_PATH}/openmpi/opal/constants.h \
    $${OPENMPI_PATH}/openmpi/opal/frameworks.h \
    $${OPENMPI_PATH}/openmpi/opal/hash_string.h \
    $${OPENMPI_PATH}/openmpi/opal/opal_portable_platform.h \
    $${OPENMPI_PATH}/openmpi/opal/opal_socket_errno.h \
    $${OPENMPI_PATH}/openmpi/opal/prefetch.h \
    $${OPENMPI_PATH}/openmpi/opal/types.h \
    $${OPENMPI_PATH}/openmpi/opal/version.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/dfs/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/dfs/dfs.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/dfs/dfs_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/errmgr/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/errmgr/base/errmgr_private.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/errmgr/errmgr.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/ess/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/ess/ess.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/filem/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/filem/filem.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/grpcomm/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/grpcomm/grpcomm.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/grpcomm/grpcomm_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/iof/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/iof/base/iof_base_setup.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/iof/iof.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/iof/iof_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/odls/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/odls/base/odls_private.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/odls/odls.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/odls/odls_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/oob/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/oob/oob.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/plm/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/plm/base/plm_private.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/plm/plm.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/plm/plm_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/ras/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/ras/base/ras_private.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/ras/ras.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/ras/ras_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rmaps/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rmaps/base/rmaps_private.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rmaps/rmaps.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rmaps/rmaps_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rml/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rml/base/rml_contact.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rml/rml.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/rml/rml_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/routed/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/routed/routed.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/routed/routed_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/sensor/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/sensor/base/sensor_private.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/sensor/sensor.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/sensor/sensor_types.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/snapc/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/snapc/snapc.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/sstore/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/sstore/sstore.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/state/base/base.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/state/base/state_private.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/state/state.h \
    $${OPENMPI_PATH}/openmpi/orte/mca/state/state_types.h \
    $${OPENMPI_PATH}/openmpi/orte/orted/orted.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/data_type_support/orte_dt_support.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/orte_cr.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/orte_data_server.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/orte_globals.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/orte_info_support.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/orte_locks.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/orte_quit.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/orte_wait.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/runtime.h \
    $${OPENMPI_PATH}/openmpi/orte/runtime/runtime_internals.h \
    $${OPENMPI_PATH}/openmpi/orte/util/comm/comm.h \
    $${OPENMPI_PATH}/openmpi/orte/util/dash_host/dash_host.h \
    $${OPENMPI_PATH}/openmpi/orte/util/hostfile/hostfile.h \
    $${OPENMPI_PATH}/openmpi/orte/util/hostfile/hostfile_lex.h \
    $${OPENMPI_PATH}/openmpi/orte/util/context_fns.h \
    $${OPENMPI_PATH}/openmpi/orte/util/error_strings.h \
    $${OPENMPI_PATH}/openmpi/orte/util/hnp_contact.h \
    $${OPENMPI_PATH}/openmpi/orte/util/name_fns.h \
    $${OPENMPI_PATH}/openmpi/orte/util/nidmap.h \
    $${OPENMPI_PATH}/openmpi/orte/util/parse_options.h \
    $${OPENMPI_PATH}/openmpi/orte/util/pre_condition_transports.h \
    $${OPENMPI_PATH}/openmpi/orte/util/proc_info.h \
    $${OPENMPI_PATH}/openmpi/orte/util/regex.h \
    $${OPENMPI_PATH}/openmpi/orte/util/session_dir.h \
    $${OPENMPI_PATH}/openmpi/orte/util/show_help.h \
    $${OPENMPI_PATH}/openmpi/orte/constants.h \
    $${OPENMPI_PATH}/openmpi/orte/frameworks.h \
    $${OPENMPI_PATH}/openmpi/orte/types.h \
    $${OPENMPI_PATH}/openmpi/orte/version.h \
    $${OPENMPI_PATH}/openmpi/oshmem/info/info.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/atomic/base/base.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/atomic/atomic.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/memheap/base/base.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/memheap/memheap.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/scoll/base/base.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/scoll/scoll.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/spml/base/base.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/spml/base/spml_base_atomicreq.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/spml/base/spml_base_getreq.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/spml/base/spml_base_putreq.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/spml/base/spml_base_request.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/spml/base/spml_base_request_dbg.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/spml/spml.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/sshmem/base/base.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/sshmem/sshmem.h \
    $${OPENMPI_PATH}/openmpi/oshmem/mca/sshmem/sshmem_types.h \
    $${OPENMPI_PATH}/openmpi/oshmem/op/op.h \
    $${OPENMPI_PATH}/openmpi/oshmem/proc/proc.h \
    $${OPENMPI_PATH}/openmpi/oshmem/proc/proc_group_cache.h \
    $${OPENMPI_PATH}/openmpi/oshmem/request/request.h \
    $${OPENMPI_PATH}/openmpi/oshmem/request/request_dbg.h \
    $${OPENMPI_PATH}/openmpi/oshmem/runtime/oshmem_info_support.h \
    $${OPENMPI_PATH}/openmpi/oshmem/runtime/oshmem_shmem_preconnect.h \
    $${OPENMPI_PATH}/openmpi/oshmem/runtime/params.h \
    $${OPENMPI_PATH}/openmpi/oshmem/runtime/runtime.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/c/profile/defines.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/fortran/profile/defines.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/fortran/profile/pbindings.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/fortran/profile/prototypes_pshmem.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/fortran/bindings.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/fortran/prototypes_shmem.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/fortran/shmem_fortran_pointer.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/shmem_api_logger.h \
    $${OPENMPI_PATH}/openmpi/oshmem/shmem/shmem_lock.h \
    $${OPENMPI_PATH}/openmpi/oshmem/util/oshmem_util.h \
    $${OPENMPI_PATH}/openmpi/ompi_config.h \
    $${OPENMPI_PATH}/openmpi/opal_config.h \
    $${OPENMPI_PATH}/openmpi/opal_config_bottom.h \
    $${OPENMPI_PATH}/openmpi/opal_config_top.h \
    $${OPENMPI_PATH}/openmpi/opal_stdint.h \
    $${OPENMPI_PATH}/openmpi/orte_config.h \
    $${OPENMPI_PATH}/openshmem/oshmem/constants.h \
    $${OPENMPI_PATH}/openshmem/oshmem/frameworks.h \
    $${OPENMPI_PATH}/openshmem/oshmem/types.h \
    $${OPENMPI_PATH}/openshmem/oshmem/version.h \
    $${OPENMPI_PATH}/openshmem/oshmem_config.h \
    $${OPENMPI_PATH}/mpi-ext.h \
    $${OPENMPI_PATH}/mpi.h \
    $${OPENMPI_PATH}/mpi_portable_platform.h \
    $${OPENMPI_PATH}/mpif-config.h \
    $${OPENMPI_PATH}/mpif-constants.h \
    $${OPENMPI_PATH}/mpif-ext.h \
    $${OPENMPI_PATH}/mpif-externals.h \
    $${OPENMPI_PATH}/mpif-handles.h \
    $${OPENMPI_PATH}/mpif-io-constants.h \
    $${OPENMPI_PATH}/mpif-io-handles.h \
    $${OPENMPI_PATH}/mpif-sentinels.h \
    $${OPENMPI_PATH}/mpif-sizeof.h \
    $${OPENMPI_PATH}/mpif.h \
    $${OPENMPI_PATH}/pshmem.h \
    $${OPENMPI_PATH}/pshmemx.h \
    $${OPENMPI_PATH}/shmem-compat.h \
    $${OPENMPI_PATH}/shmem.h \
    $${OPENMPI_PATH}/shmemx.h \
    $${OPENMPI_PATH}/openmpi/opal/util/fd.c
########################################################################





