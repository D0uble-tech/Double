//
//  ViewController.swift
//  Sound
//
//  Created by Motonari Sakuma on 2022/02/05.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton: UIButton!
    
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton: UIButton!

    //ドラムのサウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ピアノのサウンドファイルを読み込んで、プレイヤーをつくる
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ギターのサウンドファイルを読み込んで、プレイヤーをつくる
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()

    }
    @IBAction func touchUpDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
        
    }
    
    @IBAction func touchDownPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButton(){
        
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    @IBAction func touchDownguitarButton(){
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpguitarButton(){
        
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
        
    }
    
}

