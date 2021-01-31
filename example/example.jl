using Images
using TestImages
using PixelArt

img = load("img.jpg")
img_pixel = pixel(img)

save("img_pixel.jpg", img_pixel)
