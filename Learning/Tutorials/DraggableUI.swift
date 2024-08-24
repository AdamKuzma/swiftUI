//
//  DraggableUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/24/24.
//

import SwiftUI

struct DraggableCircle: View {
    @Binding var position: CGPoint
    @Binding var velocity: CGSize
    let color: Color
    let applyMomentum: Bool
    
    @State private var isAnimating = false
    @State private var lastDragPosition: CGPoint?
    @State private var lastUpdateTime: Date?
    
    let frictionCoefficient: CGFloat = 0.95
    let minimumVelocity: CGFloat = 0.1
    let circleRadius: CGFloat = 30 // Half of the circle's width
    
    @State private var screenSize: CGSize = .zero
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { value in
                if isAnimating {
                    isAnimating = false
                }
                
                let currentPosition = limitPositionToScreenBounds(value.location)
                let currentTime = Date()
                
                if let lastPosition = lastDragPosition, let lastTime = lastUpdateTime {
                    let deltaX = currentPosition.x - lastPosition.x
                    let deltaY = currentPosition.y - lastPosition.y
                    let deltaTime = currentTime.timeIntervalSince(lastTime)
                    
                    velocity = CGSize(
                        width: deltaX / CGFloat(deltaTime),
                        height: deltaY / CGFloat(deltaTime)
                    )
                }
                
                position = currentPosition
                lastDragPosition = currentPosition
                lastUpdateTime = currentTime
            }
            .onEnded { _ in
                lastDragPosition = nil
                lastUpdateTime = nil
                if applyMomentum {
                    isAnimating = true
                }
            }
    }
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: circleRadius * 2, height: circleRadius * 2)
            .position(position)
            .gesture(drag)
            .onChange(of: isAnimating) { _ in
                if isAnimating && applyMomentum {
                    animateWithFriction()
                }
            }
            .background(
                GeometryReader { geometry in
                    Color.clear.onAppear {
                        screenSize = geometry.size
                    }
                }
            )
    }
    
    private func animateWithFriction() {
        guard abs(velocity.width) > minimumVelocity || abs(velocity.height) > minimumVelocity else {
            isAnimating = false
            return
        }
        
        withAnimation(.linear(duration: 0.3)) {
            let newPosition = CGPoint(
                x: position.x + velocity.width * 0.1,
                y: position.y + velocity.height * 0.1
            )
            position = limitPositionToScreenBounds(newPosition)
        }
        
        // Check for collisions with screen edges
        if position.x <= circleRadius || position.x >= screenSize.width - circleRadius {
            velocity.width *= -0.5 // Reverse direction and reduce velocity
        }
        if position.y <= circleRadius || position.y >= screenSize.height - circleRadius {
            velocity.height *= -0.5 // Reverse direction and reduce velocity
        }
        
        velocity = CGSize(
            width: velocity.width * frictionCoefficient,
            height: velocity.height * frictionCoefficient
        )
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            animateWithFriction()
        }
    }
    
    private func limitPositionToScreenBounds(_ position: CGPoint) -> CGPoint {
        return CGPoint(
            x: min(max(position.x, circleRadius), screenSize.width - circleRadius),
            y: min(max(position.y, circleRadius), screenSize.height - circleRadius)
        )
    }
}

struct DraggableCircles: View {
    @State private var blackPosition = CGPoint(x: 100, y: 100)
    @State private var redPosition = CGPoint(x: 200, y: 200)
    @State private var blackVelocity = CGSize.zero
    @State private var redVelocity = CGSize.zero
    
    var body: some View {
        ZStack {
            DraggableCircle(position: $blackPosition, velocity: $blackVelocity, color: .black, applyMomentum: false)
            DraggableCircle(position: $redPosition, velocity: $redVelocity, color: .red, applyMomentum: true)
        }
    }
}

struct DraggableUI: View {
    var body: some View {
        DraggableCircles()
    }
}

#Preview {
    DraggableUI()
}
