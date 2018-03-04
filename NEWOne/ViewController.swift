//
//  ViewController.swift
//  NEWOne
//
//  Created by masaya.ishigami on 2018/02/22.
//  Copyright © 2018年 masaya.ishigami All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    let picture = ["cat1","cat2","cat3","cat4","cat5","cat6","cat7","cat8","cat9"]
    let textneco = ["ニャア","ニャアあぽん","ぎゃあぽん","ぶニャあああ","ふああああああ","ふぎゃああ","あかっかかかか","カカカカ","ポンんn"]
    let filenameArra: [URL] = [
        Bundle.main.bundleURL.appendingPathComponent("cat2.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("cat4.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("cat8.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("cat13.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("summer.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("cat2.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("cat4.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("cat8.mp3"),
        Bundle.main.bundleURL.appendingPathComponent("cat13.mp3")]
        var summerPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //端末から？警告を受け取った時に呼ばれる、メモリー解放とかの処理かく
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //UIイメージとボードの紐付け
    @IBOutlet weak var Junkenimage: UIImageView!
    //UIラベルと紐付け
    @IBOutlet weak var Junkentext: UILabel!
    //変数の宣言
    var ddnumber = 0
    //乱数格納するための変数
    var hikakupon = 0
    @IBAction func Junkenpon(_ sender: Any) {
        //前回と同じ結果が出ないようになるまでリピートする
        repeat{
            //比較用の変数で乱数生成
            hikakupon = Int(arc4random_uniform(9))
        }while hikakupon == ddnumber
            ddnumber = hikakupon
            //あるランダムな数字の時にテキストと写真、音を出すようにしている処理
        Junkenimage.image = UIImage(named: picture[ddnumber])
        Junkentext.text = textneco[ddnumber]
        do{
            summerPlayer = try AVAudioPlayer(contentsOf: filenameArra[ddnumber],fileTypeHint:nil )
            summerPlayer.numberOfLoops = -1
            summerPlayer.play()
        }catch{
            print(" エラーだぜ")
        }
    }
}
