using PixelArt
using Documenter

makedocs(;
    modules=[PixelArt],
    authors="Yuchi Yamaguchi",
    repo="https://github.com/abap34/PixelArt.jl/blob/{commit}{path}#L{line}",
    sitename="PixelArt.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://abap34.github.io/PixelArt.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/abap34/PixelArt.jl",
)
