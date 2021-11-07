// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/27/2021

import UIKit

// throw errors from functions when something goes wrong

enum EmailError: Error {
    case obvious
}

func checkEmail(_ email: String) throws -> Bool {
    if email == "email@email" {
        throw EmailError.obvious
    }

    return true
}