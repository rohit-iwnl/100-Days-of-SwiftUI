import Cocoa

struct Game{
    var score = 0 {
        didSet{
            print("Score is now \(score)")
        }
    }
}

struct Player{
    let name : String
    let number : Int
    
    init(name: String){
        self.name = name
        number = Int.random(in: 1...99)
    }
}

struct Account{
    private(set) var funds = 0 {
        didSet{
            print("Current balance is now \(funds)")
        }
    }
    
    mutating func deposit(amount : Int){
        funds += amount
        
    }
    
    mutating func withdraw(amount : Int) -> Bool{
        if funds < amount {
            return false
        } else {
            funds -= amount
            return true
        }
    }
}

var game = Game()

game.score += 10
game.score -= 5

var player = Player(name: "Rohit")
print(player)

var account = Account()
print(account)
account.deposit(amount: 1000)

print(account.funds)

account.deposit(amount: 1000)
