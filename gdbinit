source ~/.gdb/reverseEngineeringNet.gdbinit

set disassembly-flavor att

set print asm-demangle on
set print demangle on
context-off

define ctx
    context
    end 
document ctx
    Alias to the context list
end

define po
    set $_PREV_CONTEXT_STATUS = $SHOW_CONTEXT
    set $SHOW_CONTEXT = 0
    print-object $arg0 
    set $SHOW_CONTEXT = $_PREV_CONTEXT_STATUS
end

    
