include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(GPU_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(GPU_default_default_XC8_FILE_TYPE_assemble)
add_library(GPU_default_default_XC8_assemble OBJECT ${GPU_default_default_XC8_FILE_TYPE_assemble})
    GPU_default_default_XC8_assemble_rule(GPU_default_default_XC8_assemble)
    list(APPEND GPU_default_library_list "$<TARGET_OBJECTS:GPU_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(GPU_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(GPU_default_default_XC8_assemblePreprocess OBJECT ${GPU_default_default_XC8_FILE_TYPE_assemblePreprocess})
    GPU_default_default_XC8_assemblePreprocess_rule(GPU_default_default_XC8_assemblePreprocess)
    list(APPEND GPU_default_library_list "$<TARGET_OBJECTS:GPU_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(GPU_default_default_XC8_FILE_TYPE_compile)
add_library(GPU_default_default_XC8_compile OBJECT ${GPU_default_default_XC8_FILE_TYPE_compile})
    GPU_default_default_XC8_compile_rule(GPU_default_default_XC8_compile)
    list(APPEND GPU_default_library_list "$<TARGET_OBJECTS:GPU_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(GPU_default_image_Zs62FFKp ${GPU_default_library_list})

set_target_properties(GPU_default_image_Zs62FFKp PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${GPU_default_output_dir}")
target_link_libraries(GPU_default_image_Zs62FFKp PRIVATE ${GPU_default_default_XC8_FILE_TYPE_link})
# Add the link options from the rule file.
GPU_default_link_rule( GPU_default_image_Zs62FFKp)



