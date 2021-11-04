# Autogenerated wrapper script for SymEngine_jll for x86_64-apple-darwin
export libsymengine

using GMP_jll
using MPFR_jll
using MPC_jll
JLLWrappers.@generate_wrapper_header("SymEngine")
JLLWrappers.@declare_library_product(libsymengine, "@rpath/libsymengine.0.8.dylib")
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll, MPFR_jll, MPC_jll)
    JLLWrappers.@init_library_product(
        libsymengine,
        "lib/libsymengine.0.8.1.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
