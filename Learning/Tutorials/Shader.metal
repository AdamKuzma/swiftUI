#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;

[[ stitchable ]] half4 text3dEffect(float2 position, SwiftUI::Layer layer, float2 dragLocation, float2 dragVelocity) {
    return half4(1.0, 0.0, 0.0, 1.0);  // Render solid red
}
