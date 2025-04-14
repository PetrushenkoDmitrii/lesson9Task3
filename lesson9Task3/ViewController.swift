//
//  ViewController.swift
//  lesson9Task3
//
//  Created by Дмитрий Петрушенко on 01/04/2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let customView = View()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupActions()
    }
    
    func setupActions() {
        customView.button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
    
    }
   
    
    @objc
    private func handleTap() {
        let screenWeight = UIScreen.main.bounds.width
        let squareSize = screenWeight / 6
        let screenHeight = UIScreen.main.bounds.height
        let squareHeight = screenHeight / squareSize
        
        for i in 0..<Int(squareHeight) {
            for j in 0..<Int(squareSize) {
                let square = UIView()
                square.frame = CGRect(x: CGFloat(j) * squareSize, y: CGFloat(i) * squareSize, width: squareSize, height: squareSize)
                let colors: [UIColor] = [.red, .green, .blue, .yellow, .orange, .purple]
                let randomColor = colors.randomElement()
                square.backgroundColor = randomColor
                self.view.addSubview(square)
            }
        }
    }

}




#Preview(traits: .portrait) {
    ViewController()
}
 /*
  
  В третьей задаче. Вам нужно создать кнопку. По нажатию на которую вся вью заполнится квадратами. Здесь вам нужно использовать циклы и немного математики. Например вы хотите чтобы в ряд помещалось 5 квадратов. Делите ширину экрана на 5. Получаете ширину соответсвенно и высоту одного квадрата. Далее чтобы понят ьсколько квадратов у вас будет по высоте. Берете высоту экрана и делите её на высоту одно квадрата. Таким образом у вас получится. 2 цикла один будет рисовать квадраты в ряду другой переходить на следующий ряд.

  */
