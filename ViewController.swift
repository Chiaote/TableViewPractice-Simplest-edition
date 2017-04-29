//
//  ViewController.swift
//  TableViewPractice
//
//  Created by 倪僑德 on 2017/4/10.
//  Copyright © 2017年 Chiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    //用於等下顯示魚label的字串
    var testListArray = ["1","2","3","4","5","6"]
    var testNameArray = ["a","b","c","d","e","f"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //將兩個必要func實體化 - 這個section有幾個cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testListArray.count
    }
    
    //設定現在要回傳的cell為哪一個cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 將cell指定為客製化的class,其中tableView與indexPath都是本func會傳入的兩個變數
        let cell : CustomerCell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell", for: indexPath) as! CustomerCell
        //另外cell for row at indexPath中不會有cell = nil的情況, 因dequeueReusableCell(withIdentifier: , for: )本身會在沒有cell時創建一個cell
        
        //將cell內的label替換掉
        cell.nameOfRankingList.text = testNameArray[indexPath.row]
        cell.numberOfRankingList.text = testListArray[indexPath.row]
        
        return cell
    }
    
}
