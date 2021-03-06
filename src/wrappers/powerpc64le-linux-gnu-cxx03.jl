# Autogenerated wrapper script for SymEngine_jll for powerpc64le-linux-gnu-cxx03
export libsymengine

using GMP_jll
using MPFR_jll
using MPC_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libsymengine`
const libsymengine_splitpath = ["lib", "libsymengine.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsymengine_path = ""

# libsymengine-specific global declaration
# This will be filled out by __init__()
libsymengine_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsymengine = "libsymengine.so.0.6"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SymEngine")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (GMP_jll.PATH_list, MPFR_jll.PATH_list, MPC_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (GMP_jll.LIBPATH_list, MPFR_jll.LIBPATH_list, MPC_jll.LIBPATH_list,))

    global libsymengine_path = normpath(joinpath(artifact_dir, libsymengine_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsymengine_handle = dlopen(libsymengine_path)
    push!(LIBPATH_list, dirname(libsymengine_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

