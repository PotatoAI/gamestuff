## Get key status
function getKeyState(k::Char)::Int16
    ccall((:GetAsyncKeyState, "User32"), Int16, (Int32,), Int(k))
end

## Get keys state from a string
function getKeysState(ks::String)::Dict{Char, Int16}
    Dict(k => getKeyState(k) for k in ks)
end

getKeysState("WSAD")
