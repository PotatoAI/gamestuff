module Screenshot

export ScreenshotWindow

function ScreenshotWindow(winname::String, filename::String)
    run(`magick import -window $winname $filename`)
end

end
