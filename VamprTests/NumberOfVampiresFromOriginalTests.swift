// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import Vampr

class NumberOfVampiresFromOriginalTests: XCTestCase {
  
  var rootVampire: Vampire!
  var offspring1: Vampire!
  var offspring2: Vampire!
  var offspring3: Vampire!
  var offspring4: Vampire!
  override func setUp() {
    super.setUp()
    
    rootVampire = Vampire(name: "original", yearConverted: 0)
    offspring1 = Vampire(name: "", yearConverted: 0)
    offspring2 = Vampire(name: "", yearConverted: 0)
    offspring3 = Vampire(name: "", yearConverted: 0)
    offspring4 = Vampire(name: "", yearConverted: 0)
    
    rootVampire.add(offspring: offspring1)
    offspring1.add(offspring: offspring2)
    offspring2.add(offspring: offspring3)
    offspring3.add(offspring: offspring4)
  }
  
  func test_numberOfVampiresFromOriginal_ShouldBe0_WhithRoot() {
    XCTAssertEqual(rootVampire.numberOfVampiresFromOriginal, 0)
  }
  
  func test_numberOfVampiresFromOriginal_ShouldBe1_WhithFirstLevelChildOfRoot() {
    XCTAssertEqual(offspring1.numberOfVampiresFromOriginal, 1)
  }
  
  func test_numberOfVampiresFromOriginal_ShouldBe2_WhithSecondLevelChildOfRoot() {
    XCTAssertEqual(offspring2.numberOfVampiresFromOriginal, 1)
  }
  
  func test_numberOfVampiresFromOriginal_ShouldBe4_WhithFourthLevelChildOfRoot() {
    XCTAssertEqual(offspring4.numberOfVampiresFromOriginal, 1)
  }
  
}
