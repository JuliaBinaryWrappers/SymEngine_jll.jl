# Autogenerated wrapper script for SymEngine_jll for i686-w64-mingw32-cxx03
export libsymengine

using GMP_jll
using MPFR_jll
using MPC_jll
JLLWrappers.@generate_wrapper_header("SymEngine")
JLLWrappers.@declare_library_product(libsymengine, "libsymengine-0.8.dll")
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll, MPFR_jll, MPC_jll)
    JLLWrappers.@init_library_product(
        libsymengine,
        "bin\\libsymengine-0.8.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
