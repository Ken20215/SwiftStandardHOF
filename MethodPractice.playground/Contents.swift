import UIKit

struct RandomPrize {
    private var prizes: [String] =  ["ぬいぐるみ", "キーホルダー", "シール", "フィギュア", "ボールペン"]
    private var originalPrizes: [String] = []
    
    func drawPrize() -> String {
        return  prizes.randomElement() ?? ""
    }
    
    func drawMultiplePrizes(count: Int) -> [String] {
        var results: [String] = []
        for count in 0..<count {
            if let prize = prizes.randomElement() {
                results.append(prize)
            }
        }
        return results
    }
}

var randoumPrize = RandomPrize()
print("\(randoumPrize.drawPrize())")
print("\(randoumPrize.drawMultiplePrizes(count: 5))")
