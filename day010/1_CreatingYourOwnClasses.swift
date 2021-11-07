// author:  Peter Wi
// Github:  peter-h-wi
// Date:    10/05/2021
// Source for learning: Hacking With Swift by Paul Hudson

import UIKit

class Car {
    var name: String
    var yearProduced: Int

    init(name: String, yearProduced: Int) {
        self.name = name
        self.yearProduced = yearProduced
    }
}
// $65, 9:25 pm - 11:59 am
let civic2015 = Car(name: "Civic", yearProduced: 2015)


/* [ Classes vs. Structs ]
1. Classes do not come with synthesized memberwise initializers.
2. One class can be built upon ("inherit from") another class, gaining its properties and methods.
3. Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
4. Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
5. Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.
*/

