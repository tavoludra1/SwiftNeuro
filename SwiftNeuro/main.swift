//
//  main.swift
//  SwiftNeuro
//
//  Created by GAPT on 5/11/24.
//

import Foundation

let perceptron = Perceptron(numInputs: 2, activationFunction: { $0 > 0 ? 1 : 0 }) // Step activation function

let inputs: [Double] = [1.0, 2.0]
let output = perceptron.output(for: inputs)
print(output) // Output will be 1 or 0
