//
//  ButtonTestController.swift
//  CornerRadiusTest
//
//  Created by Sunny on 2017/9/14.
//  Copyright © 2017年 Sunny. All rights reserved.
//

import UIKit


class ButtonTestCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.btn1.layer.cornerRadius = 5
        self.btn2.layer.cornerRadius = 5
        self.btn3.layer.cornerRadius = 5
        self.btn4.layer.cornerRadius = 5
        self.btn5.layer.cornerRadius = 5
        
        self.btn1.layer.masksToBounds = true
        self.btn2.layer.masksToBounds = true
        self.btn3.layer.masksToBounds = true
        self.btn4.layer.masksToBounds = true
        self.btn5.layer.masksToBounds = true
    }
}



class ButtonTestController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10000
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : ButtonTestCell! = tableView.dequeueReusableCell(withIdentifier: "ButtonTestCell", for: indexPath) as! ButtonTestCell
        
        cell.titleLabel.text = String(indexPath.row)
        
        // Configure the cell...
        
        return cell
    }
    


}
