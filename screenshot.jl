module Screenshot

export ScreenshotWindow

function ScreenshotWindow(winname::String, filename::String)
    run(`magick.exe import -window $winname $filename`)
end

end
