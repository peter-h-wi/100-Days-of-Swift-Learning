// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

var timer = 30

while timer >= 0 {
    print(timer)
    timer -= 1
}

print("Your food is ready!")

timer = 30

while timer >= 0 {
    print(timer)

    if (timer == 10) {
        print("I am too hungry to wait!")
        break
    }
    timer -= 1
} 