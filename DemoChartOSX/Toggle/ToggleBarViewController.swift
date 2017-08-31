//
//  TogglePieViewController
//  minimalTunes
//
//  Created by John Moody on 12/1/16.
//  Copyright © 2016 John Moody. All rights reserved.
//

import Cocoa
import Charts

class ToggleBarViewController: DemoBaseViewController
{
    @IBOutlet weak var theBox: NSBox!
    
    var chartView : BarChartView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeBox()
    }
    
    @IBAction func toggleButton(_ sender: NSButton) {
        let option = sender.title
        
        switch option {
        case "BarBorders":
            for set in (chartView?.data!.dataSets)! {
                if let set = set as? BarChartDataSet {
                    set.barBorderWidth = set.barBorderWidth == 2.0 ? 0.0 : 2.0
                }
            }
            chartView?.needsDisplay = true

        default:
            super.handleOption(option, forChartView: chartView!)
        }
    }
    
    func makeBox() {
      //  self.window?.appearance = NSAppearance(named: NSAppearanceNameVibrantDark)
        theBox.fillColor = NSColor(patternImage: NSImage(named: "Inverted Gradient")!)
        theBox.contentView?.isHidden = false
        theBox.boxType = .custom
        theBox.borderType = .bezelBorder
        theBox.borderWidth = 1.1
        theBox.cornerRadius = 3
        theBox.fillColor = NSColor(patternImage: NSImage(named: "Gradient")!)
        
    }

}
