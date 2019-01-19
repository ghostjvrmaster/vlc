include(${CMAKE_ROOT}/Modules/FindPkgConfig.cmake)

macro(pkg_check_module_helper _name _version _outvar)
    pkg_check_modules(${_name} ${_name}${version})
    if(${_name}_FOUND)
        set(${_outvar} ON)
    endif()
endmacro()