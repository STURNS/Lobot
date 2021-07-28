
function(Lobot_SetProperty property val)
    set_property(TARGET demoapp PROPERTY ${property} ${val})
endfunction()

function(Lobot_GetProperty property val)
    get_property(var TARGET demoapp PROPERTY ${property})
    set(${val} ${var} PARENT_SCOPE)
endfunction()

