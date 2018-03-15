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

import Foundation

class Vampire {
  
  var name: String
  var yearConverted: Int
  var offspring: [Vampire] = []
  var creator: Vampire?
  
  init(name: String, yearConverted: Int) {
    self.name = name
    self.yearConverted = yearConverted
  }
  
  // MARK: Simple tree methods
  
  /// Adds the vampire as an offspring of this vampire
  func add(offspring: Vampire) {
    self.offspring.append(offspring)
    offspring.creator = self
  }
  
  /// The total number of vampires created by that vampire
  var numberOfOffspring: Int {
    return self.offspring.count
  }
  
  /// Returns the number of vampires away from the original vampire this vampire is
  var numberOfVampiresFromOriginal: Int {
    var numberFromOV = 0
    var currentOffspring = self
    
    while true {
      guard let creator = currentOffspring.creator else {break}
      numberFromOV += 1
      currentOffspring = creator
    }
    return numberFromOV
  }
  
  /// Returns true if this vampire is more senior than the other vampire. (Who is closer to the original vampire)
  func isMoreSenior(than vampire: Vampire) -> Bool {
    if self.numberOfVampiresFromOriginal < vampire.numberOfVampiresFromOriginal {
      return true
    }
    return false
  }
  
  // MARK: Stretch 
  
  /**
   
   
   Node lca(Node node, int n1, int n2)
   {
   if (node == null)
   return null;
   
   // If both n1 and n2 are smaller than root, then LCA lies in left
   if (node.data > n1 && node.data > n2)
   return lca(node.left, n1, n2);
   
   // If both n1 and n2 are greater than root, then LCA lies in right
   if (node.data < n1 && node.data < n2)
   return lca(node.right, n1, n2);
   
   return node;
   }
   
    Returns the closest common ancestor of two vampires.
    The closest common anscestor should be the more senior vampire if a direct ancestor is used.
 
    - Example:
      * when comparing Ansel and Sarah, Ansel is the closest common anscestor.
      * when comparing Ansel and Andrew, Ansel is the closest common anscestor.
   */
  func closestCommonAncestor(vampire: Vampire) -> Vampire {
    
    guard let creator = vampire.creator else {return vampire}
    
    //if 
    return vampire
  }
}
