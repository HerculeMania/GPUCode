include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(GPU_pic32mx_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group pic32mx_toolchain
if(GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemble)
add_library(GPU_pic32mx_pic32mx_toolchain_assemble OBJECT ${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemble})
    GPU_pic32mx_pic32mx_toolchain_assemble_rule(GPU_pic32mx_pic32mx_toolchain_assemble)
    list(APPEND GPU_pic32mx_library_list "$<TARGET_OBJECTS:GPU_pic32mx_pic32mx_toolchain_assemble>")

endif()

# Handle files with suffix S, for group pic32mx_toolchain
if(GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemblePreprocess)
add_library(GPU_pic32mx_pic32mx_toolchain_assemblePreprocess OBJECT ${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemblePreprocess})
    GPU_pic32mx_pic32mx_toolchain_assemblePreprocess_rule(GPU_pic32mx_pic32mx_toolchain_assemblePreprocess)
    list(APPEND GPU_pic32mx_library_list "$<TARGET_OBJECTS:GPU_pic32mx_pic32mx_toolchain_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group pic32mx_toolchain
if(GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_compile)
add_library(GPU_pic32mx_pic32mx_toolchain_compile OBJECT ${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_compile})
    GPU_pic32mx_pic32mx_toolchain_compile_rule(GPU_pic32mx_pic32mx_toolchain_compile)
    list(APPEND GPU_pic32mx_library_list "$<TARGET_OBJECTS:GPU_pic32mx_pic32mx_toolchain_compile>")

endif()


# Main target for this project
add_executable(GPU_pic32mx_image_0FFe5IaX ${GPU_pic32mx_library_list})

set_target_properties(GPU_pic32mx_image_0FFe5IaX PROPERTIES
    OUTPUT_NAME "pic32mx"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${GPU_pic32mx_output_dir}")
target_link_libraries(GPU_pic32mx_image_0FFe5IaX PRIVATE ${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_link})
# Add the link options from the rule file.
GPU_pic32mx_link_rule( GPU_pic32mx_image_0FFe5IaX)



