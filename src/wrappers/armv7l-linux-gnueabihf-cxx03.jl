# Autogenerated wrapper script for librdkafka_jll for armv7l-linux-gnueabihf-cxx03
export librdkafka

using Lz4_jll
using Zstd_jll
using Zlib_jll
using OpenSSL_jll
JLLWrappers.@generate_wrapper_header("librdkafka")
JLLWrappers.@declare_library_product(librdkafka, "librdkafka.so.1")
function __init__()
    JLLWrappers.@generate_init_header(Lz4_jll, Zstd_jll, Zlib_jll, OpenSSL_jll)
    JLLWrappers.@init_library_product(
        librdkafka,
        "lib/librdkafka.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
