import Foundation
import UIKit


@objc public class RNQrcodeGenView: UIView {
    lazy var filter = CIFilter(name: "CIQRCodeGenerator")
    lazy var imageView = UIImageView()
    
    override init(frame: CGRect) {
        let frame = CGRect(origin: .zero, size: .init(width: 320, height: 320))
        super.init(frame: frame)
        addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
    @objc func encode(_ value: String) -> Void {
        guard let filter = filter,
            let data = value.data(using: .isoLatin1, allowLossyConversion: false) else {
                return
        }
        
        filter.setValue(data, forKey: "inputMessage")
        
        guard let ciImage = filter.outputImage else {
            return
        }
        
        let transformed = ciImage.transformed(by: CGAffineTransform.init(scaleX: 10, y: 10))
        let invertFilter = CIFilter(name: "CIColorInvert")
        invertFilter?.setValue(transformed, forKey: kCIInputImageKey)
        
        let alphaFilter = CIFilter(name: "CIMaskToAlpha")
        alphaFilter?.setValue(invertFilter?.outputImage, forKey: kCIInputImageKey)
        
        if let outputImage = alphaFilter?.outputImage  {
            imageView.image = UIImage() // reset any previous UIImage
            imageView.tintColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.00)
            imageView.backgroundColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
            imageView.image = UIImage(ciImage: outputImage, scale: 2.0, orientation: .up)
                .withRenderingMode(.alwaysTemplate)
        }
    }
}

