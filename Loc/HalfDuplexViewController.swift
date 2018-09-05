//
//  HalfDuplexViewController.swift
//  Loc
//
//  Created by Wikipedia Brown on 8/29/18.
//  Copyright © 2018 IamGoodBad. All rights reserved.
//

import UIKit
import AVFoundation

class HalfDuplexViewController: UIViewController {
    
    let halfDuplexButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let audioEngine = AVAudioEngine()
    let bus = 0
    let dataSource = StreamingAudioDataSource()
    var inputNode: AVAudioInputNode?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        AVAudioSession.sharedInstance().requestRecordPermission { (granted) in
            print(granted)
        }
        inputNode = audioEngine.inputNode
        dataSource.goOnline()
    }
    
    func setupViews() {
        view.addSubview(halfDuplexButton)
        halfDuplexButton.addTarget(self, action: #selector(buttonTouchDown), for: .touchDown)
        halfDuplexButton.addTarget(self, action: #selector(buttonTouchUp), for: .touchUpInside)
        NSLayoutConstraint.activate([
            halfDuplexButton.topAnchor.constraint(equalTo: view.topAnchor),
            halfDuplexButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            halfDuplexButton.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            halfDuplexButton.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    @objc private func buttonTouchDown() {

        let bufferSize: AVAudioFrameCount = 128
        let format = inputNode?.inputFormat(forBus: bus)

        inputNode?.installTap(onBus: bus, bufferSize: bufferSize, format: format) { (avAudioPCMBuffer, avAudioTime) in
            let nsData = self.audioBufferToNSData(PCMBuffer: avAudioPCMBuffer)
            let data = nsData.base64EncodedString(options: NSData.Base64EncodingOptions.lineLength64Characters)
            self.dataSource.streamAudio(buffer: data)
        }
        
        audioEngine.prepare()
        let _ = try? audioEngine.start()
        
        print("buttonTouchDown")
    }
    
    @objc private func buttonTouchUp() {
        audioEngine.inputNode.removeTap(onBus: bus)
        audioEngine.stop()
        audioEngine.reset()
        dataSource.goOffline()
        dataSource.listenToAudio()
        print("buttonTouchUp")
    }
    
    func audioBufferToNSData(PCMBuffer: AVAudioPCMBuffer) -> NSData {
        let channelCount = 2  // given PCMBuffer channel count is 1
        let channels = UnsafeBufferPointer(start: PCMBuffer.floatChannelData, count: channelCount)
        let data = NSData(bytes: channels[0], length:Int(PCMBuffer.frameLength * PCMBuffer.format.streamDescription.pointee.mBytesPerFrame))

        
        return data
    }

}
