using Images
using Clustering


function img_to_arr(img)
    return convert(Array{Float64}, channelview(img))
end


"""
    pixel(img, [, n_color, w, h]) -> Array{RGB{Float64}}

# Examples

```jldoctest
julia> using PixelArt

julia> using Images

julia> img = load("img.jpg");

julia> img_pixel = pixel(img);

julia> save("img_pixel.jpg", img_pixel)
```
"""
function pixel(img::AbstractArray; n_color=5, w=64, h=64) 
    img = imresize(img, (w, h))
    img = reshape(img_to_arr(img), (3, :))
    color_class = kmeans(img, n_color)
    img = hcat((x -> color_class.centers[:, x]).(color_class.assignments)...)
    return convert(Array{RGB{Float64}}, colorview(RGB, reshape(img, (3, w, h))))
end


