__precompile__() # this module is safe to precompile
module PyCallCoolProp

export PropsSI, CoolProp

using PyCall

const CoolProp = PyNULL()
const PropsSI  = PyNULL()

function __init__()
    copy!(CoolProp, pyimport_conda("CoolProp.CoolProp", "CoolProp"))
    copy!(PropsSI, pyimport_conda("CoolProp.CoolProp", "CoolProp").PropsSI)
end

end
