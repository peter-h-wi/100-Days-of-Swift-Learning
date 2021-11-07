// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/23/2021

import UIKit

// Set is unordered set.
let lastname = Set(["Kim", "Park", "Lee"])

// The duplicates get ignored.
let lastname2 = Set(["Kim", "Park", "Lee", "Kim", "Park"])

// Good if the set contains item X.
// Takes O(1)