//
//  Perceptron.swift
//  SwiftNeuro
//
//  Created by GAPT on 6/11/24.
//

import Foundation

class Perceptron {
    var weights: [Double]
    var bias: Double
    var activationFunction: (Double) -> Double
    
    init(numInputs: Int, activationFunction: @escaping (Double) -> Double) {
            self.weights = (0..<numInputs).map { _ in Double.random(in: -1...1) }
            self.bias = Double.random(in: -1...1)
            self.activationFunction = activationFunction
        }
    
    func output(for inputs: [Double]) -> Double {
            let weightedSum = zip(inputs, weights).map { $0 * $1 }.reduce(bias, +)
            return activationFunction(weightedSum)
        }
}
