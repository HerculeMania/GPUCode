# The following variables contains the files used by the different stages of the build process.
set(GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemble)
set_source_files_properties(${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemblePreprocess)
set_source_files_properties(${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_assemblePreprocess})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../configurationBits.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../libraries/i2c/i2c.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../libraries/pwm/epwm.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../main.c")
set_source_files_properties(${GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(GPU_pic32mx_pic32mx_toolchain_FILE_TYPE_link)
set(GPU_pic32mx_image_name "pic32mx.elf")
set(GPU_pic32mx_image_base_name "pic32mx")

# The output directory of the final image.
set(GPU_pic32mx_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/GPU")

# The full path to the final image.
set(GPU_pic32mx_full_path_to_image ${GPU_pic32mx_output_dir}/${GPU_pic32mx_image_name})

# Potential output file extensions
set(output_extensions
    .hex
    .hxl
    .mum
    .o
    .sdb
    .sym
    .cmf)
list(TRANSFORM output_extensions PREPEND "${GPU_pic32mx_output_dir}/${GPU_pic32mx_image_base_name}")
