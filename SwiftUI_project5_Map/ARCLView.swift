
import SwiftUI
import CoreLocation
import ARCL

struct ARCLView: View {
    var sceneLocationView = SceneLocationView()
    
    var body: some View {
        return ARCLViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARCLViewContainer: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ARCLViewController {
        return ARCLViewController()
    }
    
    func updateUIViewController(_ uiView: ARCLViewController, context: Context) {}
    
}

struct ARCLView_Previews: PreviewProvider {
    static var previews: some View {
        ARCLView()
    }
}
