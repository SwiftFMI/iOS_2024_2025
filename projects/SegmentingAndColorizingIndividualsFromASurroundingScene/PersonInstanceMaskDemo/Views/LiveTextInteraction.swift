//
//  LiveTextInteraction.swift
//  PersonInstanceMaskDemo
//
//  Created by Emil Atanasov on 01/06/25.
//  Copyright © 2025 Apple. All rights reserved.
//


import UIKit
import SwiftUI
import VisionKit


@MainActor
struct LiveTextInteraction: UIViewRepresentable {
    @Binding var image: UIImage?
    let interaction = ImageAnalysisInteraction()
    let imageView = LiveTextImageView()
    let analyzer = ImageAnalyzer()
    let configuration = ImageAnalyzer.Configuration([.text, .visualLookUp])
    
    
    func makeUIView(context: Context) -> UIImageView {
        interaction.setSupplementaryInterfaceHidden(true, animated: true)
        imageView.image = image
        imageView.addInteraction(interaction)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    
    func updateUIView(_ uiView: UIImageView, context: Context) {
        Task {
            uiView.image = image
            do {
                if let image = uiView.image {
                    let analysis = try await analyzer.analyze(image, configuration: configuration)
                    interaction.analysis = analysis;
                    interaction.preferredInteractionTypes = .textSelection
//                    interaction.selectableItemsHighlighted = true
                    let highlighted = interaction.selectableItemsHighlighted
//                    interaction.analysis = analysis // highlighted == false
                    if highlighted
                    {
                        DispatchQueue.main.async
                        {
                            interaction.selectableItemsHighlighted = highlighted
                        }
                    }
                    interaction.setContentsRectNeedsUpdate()
                }
            } catch {
                // catch
            }
        }
        
    }
}


class LiveTextImageView: UIImageView {
    // Use intrinsicContentSize to change the default image size
    // so that we can change the size in our SwiftUI View
    override var intrinsicContentSize: CGSize {
        .zero
    }
}
