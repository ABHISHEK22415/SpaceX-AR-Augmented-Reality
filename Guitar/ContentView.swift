//
//  ContentView.swift
//  Guitar
//
//  Created by Abhishek Muttath on 6/15/23.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
       
    }
}

struct ARViewContainer: UIViewRepresentable
{
    
    func makeUIView(context: Context) -> some ARView {
        let arView=ARView(frame:.zero)
        
        // load the AR Astaunot
        
        let asAnchor = try! Experience.loadValue()
        
        // adding the anchor
        arView.scene.anchors.append(asAnchor)
        
        
        return arView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //none as of now
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
