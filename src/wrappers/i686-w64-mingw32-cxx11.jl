# Autogenerated wrapper script for librdkafka_jll for i686-w64-mingw32-cxx11
export librdkafka

using Lz4_jll
using Zstd_jll
using Zlib_jll
using OpenSSL_jll
using CyrusSASL_jll
JLLWrappers.@generate_wrapper_header("librdkafka")
JLLWrappers.@declare_library_product(librdkafka, "librdkafka.dll")
function __init__()
    JLLWrappers.@generate_init_header(Lz4_jll, Zstd_jll, Zlib_jll, OpenSSL_jll, CyrusSASL_jll)
    JLLWrappers.@init_library_product(
        librdkafka,
        "bin\\librdkafka.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
