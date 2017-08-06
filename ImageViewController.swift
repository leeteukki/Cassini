//
//  ImageViewController.swift
//  catini
//
//  Created by Lena Lee on 2017. 8. 6..
//  Copyright © 2017년 Lena Lee. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController
{

    var imageURL : NSURL?
    {
        didSet {
            image = nil
            fetchImage()
        }
    }
    
    
    private func fetchImage() {
        if let url = imageURL {
            if let imageData = NSData(contentsOf: url as URL) {
                image = UIImage(data: imageData as Data)
            }
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    {
        didSet{
            scrollView.contentSize = imageView.frame.size
        }
    }
    private var imageView = UIImageView()
    
    private var image: UIImage? {
        get{
            return imageView.image
        }
        set{
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        imageURL = NSURL(string: DemoURL.Stanford)
    }
}
