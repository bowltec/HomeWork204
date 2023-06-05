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
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultRGBView.layer.cornerRadius = 20
        
        setup(slider: redSlider)
        setup(slider: greenSlider)
        setup(slider: blueSlider)
        setupLabels()
        setupView()
    }
    
// MARK: - IBActions
    @IBAction func sliderAction() {
        setupLabels()
        setupView()
    }

    
// MARK: - Private Methods
    private func setupView() {
        resultRGBView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: 1)
    }
    
    private func setupLabels() {
        redLabel.text = (round(100 * redSlider.value) / 100).formatted()
        greenLabel.text = (round(100 * greenSlider.value) / 100).formatted()
        blueLabel.text = (round(100 * blueSlider.value) / 100).formatted()
    }
    
    private func setup(slider: UISlider) {
        switch slider {
        case redSlider:
            slider.minimumTrackTintColor = .red
        case greenSlider:
            slider.minimumTrackTintColor = .green
        default:
            slider.minimumTrackTintColor = .blue
        }
        slider.maximumTrackTintColor = .darkGray
        slider.thumbTintColor = .black
    }

}
