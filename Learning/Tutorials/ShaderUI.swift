import SwiftUI

struct Text3D: ViewModifier {
    func body(content: Content) -> some View {
        content
            .visualEffect { content, proxy in
                content.layerEffect(
                    ShaderLibrary.text3dEffect(
                        .float2(Float(proxy.size.width), Float(proxy.size.height)),
                        .float2(0.0, 0.0),
                        .float2(0.0, 0.0)
                    ), maxSampleOffset: .zero)
            }
    }
}

struct ShaderUI: View {
    var body: some View {
        Text("Hello, World!")
            .font(.system(size: 48, weight: .bold))
            .modifier(Text3D())
    }
}

#Preview {
    ShaderUI()
}
