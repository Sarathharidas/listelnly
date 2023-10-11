import SwiftUI

struct ContentView: View {
    @State private var opacity: Double = 1.0
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Listenly")
                    .font(.custom("Arial Rounded MT Bold", size: 40))
                    .foregroundColor(Color.blue)
                    .opacity(opacity)
                    .onAppear() {
                        withAnimation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                            self.opacity = 0.5
                        }
                    }
                
                Text("Coming Soon!")
                    .font(.custom("Arial Rounded MT Bold", size: 24))
                    .foregroundColor(Color.blue)
                    .opacity(opacity)
                    .onAppear() {
                        withAnimation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                            self.opacity = 0.5
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
