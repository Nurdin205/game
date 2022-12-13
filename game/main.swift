import Foundation


var heroe = [ "воин", "маг", "медик", "защитник", "босс"]
var hp = [1000,1000,1000,1500]
var attack = [200, 300, 0, 100,200]
var hpBoss = 5000
var round = 0
while hpBoss > 0{
    round += 1
    hpBoss -= (attack[0] + attack[1] + attack[2] + attack[3])
    if round % 2 == 0{
        hp[0] = hp[0] + 200
        hp[1] = hp[1] + 200
        hp[3] = hp[3] + 200
    }
    if hpBoss > 0 {
        hp[0] = hp[0] - 200
        hp[1] = hp[1] - 200
        hp[2] = hp[3] - 200
        hp[3] = hp[3] - 200
        }
    if hpBoss <= 0 && hp.reduce (0, +) > 0 {
        print("Герои победили за \(round) раундов")
        print("\(heroe[0]) нанес \(round * attack[0]) урона")
        print("\(heroe[1]) нанес \(round * attack[1]) урона")
        print("\(heroe[2]) нанес \(round * attack[2]) урона")
        print("\(heroe[3]) нанес \(round * attack[3]) урона")
        print("\(heroe[4]) нанес \(round * attack[4]) урона, но медик вылечил каждого \(round / 2 * 200)")
    }
    if hpBoss <= 0 && hp.reduce (0, +) < 0 {
        print("Все умерли за \(round) раундов")
    }
    if hpBoss >= 0 && hp.reduce (0, +) < 0{
        print("Босс победил за \(round) раундов")
    }
    }

