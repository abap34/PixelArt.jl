using PixelArt
using Test
using TestImages

@testset "PixelArt.jl" begin
    img = testimage("l")
    @test typeof(pixel(img)) <: AbstractArray 
    # A wrong path often causes passing nothing.
    @test_throws MethodError pixel(nothing) 
end
