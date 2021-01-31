# PixelArt.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://abap34.github.io/PixelArt.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://abap34.github.io/PixelArt.jl/dev)
[![Build Status](https://travis-ci.com/abap34/PixelArt.jl.svg?branch=master)](https://travis-ci.com/abap34/PixelArt.jl)


🔥 **Automatically generate retro and stylish pixel art.**


<img src="example/img.jpg" width="200">

⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬

<img src="example/img_pixel.jpg" width="200">


# Usage

```julia
julia> using Images

julia> using PixelArt

julia> img = load("img.jpg");

julia> img_pixel = pixel(img);

julia> save("img_pixel.jpg", img_pixel)
```

