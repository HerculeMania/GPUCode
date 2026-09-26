# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/HP/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(GPU_default_default_XC8_assemble_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=18F4431"
        "${DEBUGGER_NAME}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=wordwrite"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__18F4431__"
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
endfunction()
function(GPU_default_default_XC8_assemblePreprocess_rule target)
    set(options
        "-c"
        "${MP_EXTRA_AS_PRE}"
        "-mcpu=18F4431"
        "-x"
        "assembler-with-cpp"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=wordwrite"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__18F4431__"
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
endfunction()
function(GPU_default_default_XC8_compile_rule target)
    set(options
        "-c"
        "${MP_EXTRA_CC_PRE}"
        "-mcpu=18F4431"
        "${DEBUGGER_NAME}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=wordwrite"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__18F4431__"
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
endfunction()
function(GPU_default_link_rule target)
    set(options
        "-Wl,-Map=mem.map"
        "${MP_EXTRA_LD_PRE}"
        "-mcpu=18F4431"
        "${DEBUGGER_NAME}"
        "-Wl,--defsym=__MPLAB_BUILD=1"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8"
        "-fno-short-double"
        "-fno-short-float"
        "-memi=wordwrite"
        "-O0"
        "-maddrqual=ignore"
        "-mwarn=-3"
        "-msummary=-psect,-class,+mem,-hex,-file"
        "-ginhx32"
        "-Wl,--data-init"
        "-mno-keep-startup"
        "-mno-download"
        "-mno-default-config-bits"
        "-std=c99"
        "-gdwarf-3"
        "-mstack=compiled:auto:auto:auto"
        "-Wl,--memorysummary,memoryfile.xml")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
endfunction()
