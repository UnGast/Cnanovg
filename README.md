# Cnanovg - Swift wrapper package for NanoVG

NanoVG is a 2D drawing library written in C. It exposes an API very similar to the HTML canvas API. The API calls are buffered and then drawn via a backend like OpenGL (default). Ports to other backends exist as well.

To make it work with Swift a few blocks were moved around in the NanoVG source code.

# How to use

First add `.package(url: "https://github.com/UnGast/Cnanovg.git", .branch("master"))` to your package as a dependency.

NanoVG can be used with different OpenGL versions. This wrapper package currently only exposes the implementation for OpenGL 3.2 core.
To use it, add `.product(name: "CnanovgGL3", package: "Cnanovg")` as a dependency to the target you intend to use NanoVG in.

Then you can simply `import CnanovgGL3` in your code.

You can find examples for how to use the api in the [NanoVG repository](https://github.com/memononen/nanovg).

# Dependencies

[NanoVG on Github](https://github.com/memononen/nanovg)

NanoVG uses libraries from [stb](https://github.com/nothings/stb)