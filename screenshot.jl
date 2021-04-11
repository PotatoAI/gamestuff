module Screenshot

export ScreenshotWindow

function ScreenshotWindow(winname::String, filename::String)
    ENV["DISPLAY"] = ":0"
    run(`magick.exe import -window $winname $filename`)
end

end
