//
//  ViewController.swift
//  Lesson_2_SwiftBook
//
//  Created by Серик Восканян on 21.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switchForm: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: Segmented Control
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        //MARK: Slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        mainLabel.text = String(slider.value)
        
        // MARK: TextField
        textField.backgroundColor = .white
        
        //пример смены клавиатуры
//        textField.keyboardType = .numberPad
        
        
        // MARK: Button
        mainButton.layer.cornerRadius = 10
        mainButton.setTitle("Готово", for: .normal)
        
        //MARK: Date Picker
        
        
        
    }

    @IBAction func segmentedControllAction(_ sender: Any) {
        
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран сегмент с индексом 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Выбран сегмент с индексом 1"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Выбран сегмент с индексом 2"
            mainLabel.textColor = .green
        default: break
        }
    }
    
    @IBAction func sliderAction() {
        mainLabel.text = String(Int(slider.value))
    }
    
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        mainLabel.text = text
    }
        
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        mainLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
    @IBAction func toggleElements(_ sender: Any) {
     
        segmentedControll.isHidden = !switchForm.isOn
        mainLabel.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        mainButton.isHidden = !switchForm.isOn
        datePicker.isHidden = !switchForm.isOn
    }
}


