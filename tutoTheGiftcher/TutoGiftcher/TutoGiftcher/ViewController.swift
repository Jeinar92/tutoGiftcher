//
//  ViewController.swift
//  TutoGiftcher
//
//  Created by user160732 on 14/05/2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
  
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var contentWidth:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        for image in 0...6{
            let imageToDisplay = UIImage(named: "\(image).png")
            let imageView = UIImageView(image: imageToDisplay)
            
            let xCoordinate = view.frame.midX + view.frame.width * CGFloat(image)
            contentWidth += view.frame.width
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: xCoordinate - 150 , y: (view.frame.height / 2) - 300 , width: 300, height: 600)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(375))
        
        if (scrollView.contentOffset.x >= 2250){
            //enable button to like choose
        }
        
    }


}

