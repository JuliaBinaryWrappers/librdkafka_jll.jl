# Autogenerated wrapper script for librdkafka_jll for aarch64-linux-musl
export librdkafka

using Lz4_jll
using Zstd_jll
using Zlib_jll
using OpenSSL_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `librdkafka`
const librdkafka_splitpath = ["lib", "librdkafka.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
librdkafka_path = ""

# librdkafka-specific global declaration
# This will be filled out by __init__()
librdkafka_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const librdkafka = "librdkafka.so.1"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"librdkafka")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Lz4_jll.PATH_list, Zstd_jll.PATH_list, Zlib_jll.PATH_list, OpenSSL_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Lz4_jll.LIBPATH_list, Zstd_jll.LIBPATH_list, Zlib_jll.LIBPATH_list, OpenSSL_jll.LIBPATH_list,))

    global librdkafka_path = normpath(joinpath(artifact_dir, librdkafka_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global librdkafka_handle = dlopen(librdkafka_path)
    push!(LIBPATH_list, dirname(librdkafka_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

