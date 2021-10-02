// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

for i in 1...24 {
    if (i%12) == 0 {
        print("AM/PM switched") 
        continue // then it will not execute "print(i)" below.
    }
    print(i)
}