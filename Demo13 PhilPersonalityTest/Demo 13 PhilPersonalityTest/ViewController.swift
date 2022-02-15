//
//  ViewController.swift
//  Demo 13 PhilPersonalityTest
//
//  Created by LukeLin on 2022/2/14.
//

import UIKit

class ViewController: UIViewController, ResultViewControllerProtocol {
    
    @IBOutlet var startButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var questiontitleLabel: UILabel!
    @IBAction func startButtonpress(_ sender: UIButton) {
        titleLabel.isHidden = true
        startButton.isHidden = true
        viewDidLoad()
    }
    
    //protocol的func for restartButton
    func resultdismissed() {
        
        for i in 0...optionbuttons.count - 1 {
            optionbuttons[i].isHidden = true
        }
        questionnumber = 0
        optionbuttons = [UIButton]()
        testscore = 0
        optionnumberarray = [Int]()
        titleLabel.isHidden = false
        startButton.isHidden = false
        questiontitleLabel.isHidden = true
        
        
    }
    
    @objc func optionButtonpress(_ sender: UIButton) {
        
        //利用tag辨識按下的按鈕為第幾個,並加上分數
        
        switch sender.tag {
        case 0:
            testscore += Questions[questionnumber].choices[0].score[0]
        case 1:
            testscore += Questions[questionnumber].choices[0].score[1]
        case 2:
            testscore += Questions[questionnumber].choices[0].score[2]
        case 3:
            testscore += Questions[questionnumber].choices[0].score[3]
        case 4:
            testscore += Questions[questionnumber].choices[0].score[4]
        case 5:
            testscore += Questions[questionnumber].choices[0].score[5]
        case 6:
            testscore += Questions[questionnumber].choices[0].score[6]
        default:
            break
        }
        print("testscore = \(testscore)")
        
        //辨識是否還有題目,如果沒有就進入下個VC看結果
        if questionnumber < 9 {
        
        //更新至下一題
        questionnumber += 1
        viewDidLoad()
            
        } else {
            print(optionbuttons.count)
            //轉場至下一個VC看結果
            performSegue(withIdentifier: "showresult", sender: sender)
  
        }
        
    }
    
    var questionnumber = 0
    var optionbuttons = [UIButton]()
    var testscore = 0
    var optionnumberarray: [Int] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if startButton.isHidden == true {
            
            //顯示題目(因應protocal func),更新題目
            questiontitleLabel.isHidden = false
            questiontitleLabel.text = Questions[questionnumber].questions
            
            //創造選項按鈕
            for number in 0...Questions[questionnumber].choices[0].content.count - 1 {
            
            //按鈕水平位置
            let X: Int = 45
            
            //按鈕垂直位置(下個按鈕位置)
            var Y: Int = 300
            Y += (number % Questions[questionnumber].choices[0].content.count - 1 ) * 90
                
            //一個新的按鈕
            optionbuttons.append(UIButton(type: .system))
            
            //設定新按鈕的位置、大小、字體、tag
            optionbuttons[number].frame = CGRect(x: X, y: Y, width: 300, height: 31)
            optionbuttons[number].tag = Int(number)
            
            //顯示按鈕的標題
            optionbuttons[number].setTitle(Questions[questionnumber].choices[0].content[number], for: .normal)
            optionbuttons[number].setTitleColor(.white, for: .normal)
            
            //將tag存進陣列以便於func optionButtonpress()辨識
            optionnumberarray.append(number)

            //連接按鈕Target(Action)
            optionbuttons[number].addTarget(self, action: #selector(ViewController.optionButtonpress(_:)), for: .touchUpInside)
        
                
            view.addSubview(optionbuttons[number])
                
            }
          }
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

         let controller = segue.destination as? ResultViewController

             controller?.testscore = testscore
        
             controller?.delegate = self

         }
      }
       

            
            
        
        
    



