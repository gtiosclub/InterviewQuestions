/*
 Convert a BST into a Doubly-Linked-List in place
 - No dupliates
 - Left pointer will be a previous pointer
 - Right pointer will be a next pointer
 */

/* Solution is tentative, may not be most optimal robust solution. If any issues in code, please submit an issue.*/

class Node {
    var left:Node?
    var right:Node?
    var data:Int
    
    init(data:Int) {
        self.data = data;
    }
}

class BST {
    var root:Node?
    var DLL:Bool = false
    
    func addNode(data:Int) {
        root = addNode(data: data, node: root)
    }
    
    func addNode(data:Int, node:Node?) -> Node? {
        if let node = node {
            if (node.data == data) {
                print("lol no duplicates")
            } else if node.data > data {
                node.left = addNode(data: data, node: node.left)
            } else if node.data < data {
                node.right = addNode(data: data, node: node.right)
            }
        } else {
            return Node(data:data)
        }
        return node
    }
    
    func printInOrder() {
        if (DLL) {
            print("DLL Mode, printInOrder() fail")
            return
        }
        inOrder(node: root)
    }
    
    func inOrder(node:Node?) {
        if let node = node {
            inOrder(node: node.left)
            print("\(node.data) ", terminator: "")
            inOrder(node: node.right)
        }
    }
    
    func printInOrderLinkedList() {
        var current = root
        while (current?.left != nil) {
            current = current?.left
        }
        while (current != nil) {
            print("\(current!.data) ", terminator: "")
            current = current?.right
        }
        print()
    }
    
    func convertDLL(node:Node?) -> Node? {
        DLL = true
        if let node = node {
            var left = convertDLL(node: node.left)
            var right = convertDLL(node: node.right)
            //at this point, left and right subtrees should be linked lists
            //get node's closest predecessor
            while (left?.right != nil) {
                left = left?.right
            }
            //get node's closest successor
            while (right?.left != nil) {
                right = right?.left
            }
            //set proper DLL
            left?.right = node
            node.left = left
            right?.left = node
            node.right = right
        } else {
            //nil
            return node
        }
        return node
    }
}

var bst:BST = BST()
bst.addNode(data: 3)
bst.addNode(data: 1)
bst.addNode(data: 2)
bst.addNode(data: 6)
bst.addNode(data: 4)
bst.addNode(data: 5)
bst.addNode(data: 8)
bst.addNode(data: 7)
bst.addNode(data: 10)
bst.addNode(data: 9)

bst.convertDLL(node: bst.root)
bst.printInOrderLinkedList()

//bst.printInOrder()
