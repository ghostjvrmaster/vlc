macro(check_include_file _headerFile _outVar)
    check_c_source_compiles("
#include <${_headerFile}>
int main() {}"
            ${_outVar})
endmacro()