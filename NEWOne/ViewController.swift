//
//  ViewController.swift
//  NEWOne
//
//  Created by masapon on 2018/02/22.
//  Copyright © 2018年 karinton. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //オーディオ
    let summer  = Bundle.main.bundleURL.appendingPathComponent("summer.mp3")
    let catmusic1  = Bundle.main.bundleURL.appendingPathComponent("cat2.mp3")
    let catmusic2  = Bundle.main.bundleURL.appendingPathComponent("cat4.mp3")
    let catmusic3  = Bundle.main.bundleURL.appendingPathComponent("cat8.mp3")
    let catmusic4  = Bundle.main.bundleURL.appendingPathComponent("cat13.mp3")
    var summerPlayer = AVAudioPlayer()
    var catmusic1Player = AVAudioPlayer()
    var catmusic2Player = AVAudioPlayer()
    var catmusic3Player = AVAudioPlayer()
    var catmusic4Player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
        summerPlayer = try AVAudioPlayer(contentsOf: summer,fileTypeHint:nil )
        summerPlayer.numberOfLoops = -1
        summerPlayer.play()
            
        }catch{
            print(" エラーだぜ")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Junkenimage: UIImageView!
    
    @IBOutlet weak var Junkentext: UILabel!
    
    var ddnumber = 0
    var hikakupon = 0
    
    @IBAction func Junkenpon(_ sender: Any) {
        
        //乱数生成
       //ddnumber = Int(arc4random_uniform(3))
        //前回と同じ結果が出ないようになるまでリピートする
        repeat{
            //比較用の変数で乱数生成
            hikakupon = Int(arc4random_uniform(10))
        }while hikakupon == ddnumber
        
        ddnumber = hikakupon
        
            if ddnumber == 0{
                Junkenimage.image = UIImage(named: "cat1")
                Junkentext.text = "にゃぁぁぁぁあ"
                
                do{
                    catmusic1Player = try AVAudioPlayer(contentsOf: catmusic1,fileTypeHint:nil )
                    catmusic1Player.numberOfLoops = 1
                    catmusic1Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
                
            }else if ddnumber == 1{
                Junkenimage.image = UIImage(named: "cat2")
                Junkentext.text = "ぎゃぁぁぁぁぁああ"
                
                do{
                    catmusic2Player = try AVAudioPlayer(contentsOf: catmusic2,fileTypeHint:nil )
                    catmusic2Player.numberOfLoops = 1
                    catmusic2Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
                
                
            }else if ddnumber == 2{
                Junkenimage.image = UIImage(named: "cat3")
                Junkentext.text = "ギャァぁぁーーーす"
                
                do{
                    catmusic3Player = try AVAudioPlayer(contentsOf: catmusic3,fileTypeHint:nil )
                    catmusic3Player.numberOfLoops = 1
                    catmusic3Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
            }else if ddnumber == 3{
                Junkenimage.image = UIImage(named: "cat4")
                Junkentext.text = "にゃはぁぁぁぁん"
                
                do{
                    catmusic4Player = try AVAudioPlayer(contentsOf: catmusic4,fileTypeHint:nil )
                    catmusic4Player.numberOfLoops = 1
                    catmusic4Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
                
            }else if ddnumber == 4{
                Junkenimage.image = UIImage(named: "cat5")
                Junkentext.text = "ニャンんンオオオおお"
                
                do{
                    catmusic1Player = try AVAudioPlayer(contentsOf: catmusic1,fileTypeHint:nil )
                    catmusic1Player.numberOfLoops = 1
                    catmusic1Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
                
            }else if ddnumber == 5{
                Junkenimage.image = UIImage(named: "cat6")
                Junkentext.text = "にゃぁぁぁぁおおおお"
                
                do{
                    catmusic2Player = try AVAudioPlayer(contentsOf: catmusic2,fileTypeHint:nil )
                    catmusic2Player.numberOfLoops = 1
                    catmusic2Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
                
            }else if ddnumber == 6{
                Junkenimage.image = UIImage(named: "cat7")
                Junkentext.text = "にゃぁ♡"
                
                do{
                    catmusic3Player = try AVAudioPlayer(contentsOf: catmusic3,fileTypeHint:nil )
                    catmusic3Player.numberOfLoops = 1
                    catmusic3Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
                
            }else if ddnumber == 7{
                Junkenimage.image = UIImage(named: "cat8")
                Junkentext.text = "きゅう♡"
                
                do{
                    catmusic4Player = try AVAudioPlayer(contentsOf: catmusic4,fileTypeHint:nil )
                    catmusic4Player.numberOfLoops = 1
                    catmusic4Player.play()
                    
                }catch{
                    print(" エラーだぜ")
                }
                
            }
        //数字が2以上でddnumberの中身を0に戻す
           // if  ddnumber > 2{
            //ddnumber = 0
            //}else{
            //ddnumber =  ddnumber + 1
            //}
        }
    }
