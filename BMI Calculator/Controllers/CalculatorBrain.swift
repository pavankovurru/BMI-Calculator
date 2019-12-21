
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float , weight: Float) {
        // The imperial BMI formula = Weight (LBS) x 703 ÷ Height (Inches²)
        // The metric BMI formula = Weight (KG) ÷ Height (Metres²)
        
        let bmiValue =  (weight * 703) / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Perftect!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else{
        bmi = BMI(value: bmiValue, advice: "Eat Less Pies!", color: #colorLiteral(red: 0.8151006103, green: 0.3289628327, blue: 0.1606219113, alpha: 1))
        }

    }
    
    func getBmiValue() -> String {
        let bmiValue1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
    
    
    
    
}
