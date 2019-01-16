macro(ConfigureModule)
    set(extra_args ${ARGN})
    list(LENGTH extra_args num_extra_args)

    set(_outputPath "")

    if (${num_extra_args} GREATER 0)
        list(GET extra_args 0 _outputPath)
    endif ()
    if (${num_extra_args} GREATER 1)
        list(GET extra_args 1 outputName)

        set(_moduleString ${outputName})
        set(_outputName ${outputName}_plugin)
    else ()
        set(_outputName ${PROJECT_NAME})
    endif ()

    set(CMAKE_C_STANDARD 11)
    set(CMAKE_CXX_STANDARD 14)

    unset(MODULE_STRING)
    remove_definitions(-DMODULE_STRING)
    set(MODULE_STRING ${_moduleString})
    add_definitions(-DMODULE_STRING="${MODULE_STRING}")
    if (HAVE_DYNAMIC_PLUGINS)
        add_definitions(-D__PLUGIN__)
    else ()
        add_definitions(-DMODULE_NAME="${MODULE_STRING}")
    endif ()

    include_directories(
            ${vlc_INCLUDE_DIR}
            ${vlc_INCLUDE_DIR}/vlc
            ${vlc_CONFIG_H_DIR}
            ${MODULE_INCLUDE_DIRS})

    add_library(${PROJECT_NAME} SHARED
            ${SRC_FILES})

    if (DEFINED _outputName)
        set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME ${_outputName})
    endif ()

    target_link_libraries(${PROJECT_NAME}
            ${MODULE_LIBRARIES})

    add_dependencies(${PROJECT_NAME}
            compat)

    install(TARGETS ${PROJECT_NAME}
            LIBRARY
            DESTINATION ${PLUGINDIR}/${_outputPath})
endmacro()

macro(ConfigureModuleGroup)
    add_custom_target(${PROJECT_NAME})

    if (DEFINED PLUGINS)
        foreach (plugin IN LISTS PLUGINS)
            _AddModuleGroupDependency(${plugin})
        endforeach ()
    endif ()

    if (DEFINED SUBMODULES)
        foreach (submodule IN LISTS SUBMODULES)
            _AddModuleGroupSubmoduleDependency(${submodule})
        endforeach ()
    endif ()
endmacro()

macro(_AddModuleGroupDependency plugin)
    add_subdirectory(${plugin})
    add_dependencies(${PROJECT_NAME}
            ${PROJECT_NAME}_${plugin}_plugin)
endmacro()

macro(_AddModuleGroupSubmoduleDependency module)
    add_subdirectory(${module})
    add_dependencies(${PROJECT_NAME}
            ${PROJECT_NAME}_${module})
endmacro()

# This file is included once per submodule/module. Ensure these are cleared before importing a new module.
unset(PLUGINS)
unset(SUBMODULES)