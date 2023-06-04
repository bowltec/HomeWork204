//
//  ViewController.swift
//  HomeWork204
//
//  Created by Андрей Блинов on 04.06.2023.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IBOutlets
    @IBOutlet var resultRGBView: UIView!
    
    @IBOutlet var redLightScale: UILabel!
    @IBOutlet var greenLightScale: UILabel!
    @IBOutlet var blueLightScale: UILabel!
    
    @IBOutlet var redLightSetting: UISlider!
    @IBOutlet var greenLightSetting: UISlider!
    @IBOutlet var blueLightSetting: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightSliderAction()
        greenLightSliderAction()
        blueLightSliderAction()
        
        setupResultView()
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
    }
    
// MARK: - IBActions
    @IBAction func redLightSliderAction() {
        redLightScale.text = Double(round(100 * redLightSetting.value) / 100).formatted()
    }
    
    @IBAction func greenLightSliderAction() {
        greenLightScale.text = Double(round(100 * greenLightSetting.value) / 100).formatted()
    }
    
    @IBAction func blueLightSliderAction() {
        blueLightScale.text = Double(round(100 * blueLightSetting.value) / 100).formatted()
    }
    
// MARK: - Private Methods
    private func setupResultView() {
        resultRGBView.layer.cornerRadius = 20
        resultRGBView.backgroundColor = .black
    }
    
    private func setupRedSlider() {
        redLightSetting.value = 0.5
        redLightSetting.minimumValue = 0.0
        redLightSetting.maximumValue = 1
        redLightSetting.minimumTrackTintColor = .red
        redLightSetting.maximumTrackTintColor = .darkGray
        redLightSetting.thumbTintColor = .black
    }
    
    private func setupGreenSlider() {
        greenLightSetting.value = 0.5
        greenLightSetting.minimumValue = 0.0
        greenLightSetting.maximumValue = 1.0
        greenLightSetting.minimumTrackTintColor = .green
        greenLightSetting.maximumTrackTintColor = .darkGray
        greenLightSetting.thumbTintColor = .black
    }
    
    private func setupBlueSlider() {
        blueLightSetting.value = 0.5
        blueLightSetting.minimumValue = 0.0
        blueLightSetting.maximumValue = 1.0
        blueLightSetting.minimumTrackTintColor = .blue
        blueLightSetting.maximumTrackTintColor = .darkGray
        blueLightSetting.thumbTintColor = .black
    }
    

}

