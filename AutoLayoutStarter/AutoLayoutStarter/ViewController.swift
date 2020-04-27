//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let mainView: UIView = {
    let main = UIView()
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.backgroundColor = .green
    return main
  }()
  
  let purpleBox: UIView = {
    let purple = UIView(frame: CGRect.zero)
    purple.translatesAutoresizingMaskIntoConstraints = false
    purple.backgroundColor = .purple
    return purple
      }()
      
    
  let blueBox1: UIView = {
    let blue = UIView(frame: CGRect.zero)
    blue.heightAnchor.constraint(equalToConstant: 50).isActive = true
    blue.widthAnchor.constraint(equalToConstant: 50).isActive = true
    blue.backgroundColor = .blue
    return blue
    }()
    
    let blueBox2: UIView = {
      let blue = UIView(frame: CGRect.zero)
      blue.heightAnchor.constraint(equalToConstant: 50).isActive = true
      blue.widthAnchor.constraint(equalToConstant: 50).isActive = true
      blue.backgroundColor = .blue
      return blue
      }()
    
    let blueBox3: UIView = {
      let blue = UIView(frame: CGRect.zero)
      blue.heightAnchor.constraint(equalToConstant: 50).isActive = true
      blue.widthAnchor.constraint(equalToConstant: 50).isActive = true
      blue.backgroundColor = .blue
      return blue
      }()
    
    let transparentBox1: UIView = {
      let box = UIView(frame: CGRect.zero)
      box.widthAnchor.constraint(equalToConstant: 50).isActive = true
      return box
      }()
    
    let transparentBox2: UIView = {
      let box = UIView(frame: CGRect.zero)
      box.widthAnchor.constraint(equalToConstant: 50).isActive = true
        return box
      }()
    
    let orangeBox1: UIView = {
      let box = UIView(frame: CGRect.zero)
      box.translatesAutoresizingMaskIntoConstraints = false
      box.heightAnchor.constraint(equalToConstant: 40).isActive = true
      box.widthAnchor.constraint(equalToConstant: 90).isActive = true
      box.backgroundColor = .orange

      return box
      }()

    let orangeBox2: UIView = {
      let box = UIView(frame: CGRect.zero)
      box.translatesAutoresizingMaskIntoConstraints = false
      box.heightAnchor.constraint(equalToConstant: 40).isActive = true
      box.widthAnchor.constraint(equalToConstant: 60).isActive = true
      box.backgroundColor = .orange
      return box
      }()
    
    let redBox: UIView = {
      let box = UIView(frame: CGRect.zero)
        box.translatesAutoresizingMaskIntoConstraints = false
      box.heightAnchor.constraint(equalToConstant: 60).isActive = true
      box.widthAnchor.constraint(equalToConstant: 170).isActive = true
      box.backgroundColor = .red
      return box
      }()
    
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    mainView.addSubview(purpleBox)
    mainView.addSubview(redBox)
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    purpleBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
    purpleBox.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20).isActive = true
    purpleBox.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.6, constant: 0).isActive = true
    purpleBox.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    let vStackView = UIStackView(arrangedSubviews: [transparentBox1, blueBox1, blueBox2, blueBox3, transparentBox2])

    vStackView.translatesAutoresizingMaskIntoConstraints = false
    vStackView.axis = .vertical
    vStackView.alignment = .center
    vStackView.distribution = .equalSpacing
    view.addSubview(vStackView)

    
    NSLayoutConstraint.activate([
    vStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    vStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    vStackView.heightAnchor.constraint(equalTo: mainView.heightAnchor),
    vStackView.widthAnchor.constraint(equalToConstant: 100),
    ])
    
    
    redBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
    redBox.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20).isActive = true
    
    NSLayoutConstraint.activate([
    redBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
    redBox.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
    ])

    let orangeStackView = UIStackView(arrangedSubviews: [orangeBox1, orangeBox2])

    orangeStackView.translatesAutoresizingMaskIntoConstraints = false
    orangeStackView.axis = .horizontal
    orangeStackView.spacing = 10
    orangeStackView.backgroundColor = .red
    view.addSubview(orangeStackView)

    NSLayoutConstraint.activate([
    orangeStackView.centerXAnchor.constraint(equalTo: redBox.centerXAnchor),
    orangeStackView.centerYAnchor.constraint(equalTo: redBox.centerYAnchor),
//    orangeStackView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
    orangeStackView.widthAnchor.constraint(equalToConstant: 150),
    ])

    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

