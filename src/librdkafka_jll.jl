# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule librdkafka_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("librdkafka")
JLLWrappers.@generate_main_file("librdkafka", UUID("7943bfb0-7437-5acd-a008-22777931c7aa"))
end  # module librdkafka_jll
