// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/27/2021

import UIKit

do {
    try checkEmail("email.email")
    print("This email is allowed.")
} catch {
    print("This is an invalid email.")
}

// by using "try", we can acknowledge which parts of our code can cause errors.
