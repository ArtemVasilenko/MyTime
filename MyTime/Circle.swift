import UIKit


@IBDesignable

class Circle: UIView {
    
    @IBInspectable var mainColor: UIColor = UIColor.blue
        {
        didSet { print("mainColor was set here") }
    }
    @IBInspectable var ringColor: UIColor = UIColor.orange
        {
        didSet { print("bColor was set here") }
    }
    @IBInspectable var ringThickness: CGFloat = 4
        {
        didSet { print("ringThickness was set here") }
    }
    
    @IBInspectable var isSelected: Bool = true

    override func draw(_ rect: CGRect) {
        drawRingFittingInsideView()
    }
    
    
    func drawRingFittingInsideView() {
        
        let halfSize: CGFloat = min(bounds.size.width/3, bounds.size.height/3)
        let desiredLineWidth: CGFloat = 1
        
        let circlPath = UIBezierPath(arcCenter: CGPoint(x: halfSize, y: halfSize), radius: CGFloat(halfSize - (desiredLineWidth/2)), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlPath.cgPath
        
        shapeLayer.fillColor = UIColor.blue.cgColor
        shapeLayer.strokeColor = UIColor.blue.cgColor
        shapeLayer.lineWidth = desiredLineWidth
        
        layer.addSublayer(shapeLayer)
        
    }

}
