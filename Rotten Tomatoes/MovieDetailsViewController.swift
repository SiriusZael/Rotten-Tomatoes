//
//  MovieDetailsViewController.swift
//  Rotten Tomatoes
//
//  Created by Matt Rucker on 8/26/15.
//  Copyright (c) 2015 tumblr. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!

    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["synopsis"] as? String
        synopsisLabel.sizeToFit()
        var contentSizeHeight = titleLabel.frame.size.height + synopsisLabel.frame.size.height + 60
        scrollView.contentSize = CGSizeMake(self.view.frame.width, contentSizeHeight)
        var urlString = movie.valueForKeyPath("posters.thumbnail") as! String
        var url = NSURL(string: urlString)!
        imageView.setImageWithURL(url)
        
        // get higher resoluation image url and load it
        var range = urlString.rangeOfString(".*cloudfront.net/", options: .RegularExpressionSearch)
        if let range = range {
            urlString = urlString.stringByReplacingCharactersInRange(range, withString: "https://content6.flixster.com/")
        }
        
        url = NSURL(string: urlString)!
        imageView.setImageWithURL(url)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
