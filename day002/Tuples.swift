// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/23/2021

import UIKit

var name = (first: "Peter", middle: "Hankyu", last: "Wi")
name.0 // "Peter"
name.first // "Peter"
name.1 // "Hankyu"
name.last // "Wi"

// name.5 would not work.

// 1. You can change the values inside a tuple
// 2. You can't change the types of the value
// 3. You can't add/remove items from a tuple, which is fixed in size.
// 4. You can access through numerical positions or by naming them.