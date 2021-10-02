// author:  Peter Wi
// Github:  peter-h-wi
// Date:    09/26/2021

import UIKit

func printIntro() {
    let intro = """
    Welcome to our BiggyJibby community!

    Share your unique fashion idea with your community.
    We will deliver your idea to people who can give you a specialized feedback.
    """

    print(intro)
}

printIntro()

// When to creat own functions
// 1. when you want the same functionality in many places
// 2. breaking up code (long function ==> smaller functions)
// 3. function composition: building new functions with existing functions