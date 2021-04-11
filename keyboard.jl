module Win32Keyboard

export GetKeysState, GetKeyState

# Get key status
function GetKeyState(k::Char)::Int16
    ccall((:GetAsyncKeyState, "User32"), Int16, (Int32,), Int(k))
end

# Get keys state from a string
function GetKeysState(ks::String)::Dict{Char, Int16}
    Dict(k => getKeyState(k) for k in ks)
end

end
