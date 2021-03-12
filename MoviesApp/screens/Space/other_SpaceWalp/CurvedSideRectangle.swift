
import Foundation
import SwiftUI


struct CurvedSideRectangle: Shape {
    
    var myOffset: CGFloat = 150
    
    var animatableData: CGFloat {
            get{return myOffset}
            set{myOffset = newValue}
        }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.midY + myOffset))
        path.closeSubpath()
        
        return path
    }
    
    
}
