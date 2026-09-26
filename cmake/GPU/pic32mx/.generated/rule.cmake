# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/HP/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(GPU_pic32mx_pic32mx_toolchain_assemble_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=32AK1216GC41036"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__32AK1216GC41036__"
        PRIVATE "XPRJ_pic32mx=pic32mx")
endfunction()
function(GPU_pic32mx_pic32mx_toolchain_assemblePreprocess_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=32AK1216GC41036"
        "-x"
        "assembler-with-cpp"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__32AK1216GC41036__"
        PRIVATE "XPRJ_pic32mx=pic32mx")
endfunction()
function(GPU_pic32mx_pic32mx_toolchain_compile_rule target)
    set(options
        "-c"
        "${MP_EXTRA_CC_PRE}"
        "-mcpu=32AK1216GC41036"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__32AK1216GC41036__"
        PRIVATE "XPRJ_pic32mx=pic32mx")
endfunction()
function(GPU_pic32mx_link_rule target)
    set(options
        "-Wl,-Map=mem.map"
        "${MP_EXTRA_LD_PRE}"
        "-mcpu=32AK1216GC41036"
        "-Wl,--defsym=__MPLAB_BUILD=1"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32"
        "-fno-short-double"
        "-fno-short-float"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-osccal"
        "-mno-resetbits"
        "-mno-save-resetbits"
        "-mno-download"
        "-mno-stackcall"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto"
        "-Wl,--memorysummary,memoryfile.xml")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_pic32mx=pic32mx")
endfunction()
