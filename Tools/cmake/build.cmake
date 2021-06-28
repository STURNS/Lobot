
function(Lobot_SetProperty property val)
    set_property(TARGET PROPERTY ${property} ${val})
endfunction()

function(Lobot_GetProperty property val)
    get_property(TARGET PROPERTY ${property} ${val})
endfunction()