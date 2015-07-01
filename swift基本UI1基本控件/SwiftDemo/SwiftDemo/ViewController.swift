//
//  ViewController.swift
//  SwiftDemo
//
//  Created by 1 on 15/6/30.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

import UIKit

//声明一个协议，直接在类后面追加
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    var label:UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height
        
        var rect = CGRectMake(0, 20, width, 44)
        self.label = UILabel(frame: rect)
        self.label!.backgroundColor = UIColor.redColor()
        label!.textAlignment = NSTextAlignment.Center
        label!.text = "hello label !"
        self.view.addSubview(label!)
        
        
        rect = CGRectMake(0, 64, width, height - 64)
        var tview = UITableView(frame: rect)

        tview.separatorColor = UIColor.cyanColor()
        tview.dataSource = self
        tview.delegate = self
        //类的名字直接.self获取当前的类
        tview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tview)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        return 100
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        //强转
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel!.text = "row \(indexPath.row)"
        
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
    
        self.label!.text = "row \(indexPath.row)"
    }

}

