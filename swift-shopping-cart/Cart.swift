
//Cart.swift
//  swift-shopping-cart

//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.


//1. Write a method named totalPriceInCents() that takes no arguments and returns an Int. This method should return the total cost of all the items in the items array.

//2. Write a method named add(item:) that takes one argument of type Item and provides no return. This method should add the argument to the end of the items property array.

//3. Write a method named remove(item:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item.

//4. Write a method named items(withName:) that takes one string argument (called name) and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.

//5. Write a method named items(withMinPrice:) that takes one integer argument (called price) and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.

//6. Write a method named items(withMaxPrice:) that take one integer argument (called price) and return an array of type Item. The method should collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument.




class Cart {
    
    var items: [Item] = []
    
    
    func totalPriceInCents() -> Int {
        
        var totalPriceOfItems = 0
        
        for i in items {
            
            totalPriceOfItems += i.priceInCents
            
        }
        
        return totalPriceOfItems
    }
    
    
    //2. Write a method named add(item:) that takes one argument of type Item and provides no return. This method should add the argument to the end of the items property array.

    
    func add(item: Item) {
        
        items.append(item)
    }
    
    
    //3. Write a method named remove(item:) that takes one argument of type Item and provides no return. This method should remove an instance from the items array that matches the argument item.
    
    
    func remove(item: Item) {
    
        for (index, j) in items.enumerated() {
            
            if item.name == j.name {
            
            items.remove(at: index)
            
            }
            
        }
        
    }
    
        
//        func remove(item:Item) {
//            items = items.filter{$0 != item}
//        }
    
        
        
    
    //4. Write a method named items(withName:) that takes one string argument (called name) and returns an array of type Item. This method should collect all of the items in the items property array whose name property matches the submitted string argument.
    
    func items(withName name: String) -> [Item] {
        
        var matchingItems = [Item]()
        
        for a in items {
            
            if name == a.name {
                
               // let theseItemsMatch = Item(name: name, priceInCents: a.priceInCents)
                
                matchingItems.append(a)
                
            }
            
        }
        return matchingItems
    }
    
    
    
    //5. Write a method named items(withMinPrice:) that takes one integer argument (called price) and returns an array of type Item. This method should collect all of the items in the items property array whose priceInCents property is greater than or equal to the submitted integer argument.


    
    func items(withMinprice price: Int) -> [Item] {
        
        var itemsGreaterThanOrEqualTo = [Item]()
        
        for b in items {
            
            if price <= b.priceInCents {
                
                itemsGreaterThanOrEqualTo.append(b)

            }
        }
        
        return itemsGreaterThanOrEqualTo
    }
    
    
    
    //6. Write a method named items(withMaxPrice:) that take one integer argument (called price) and return an array of type Item. The method should collect all of the items in the items property array whose priceInCents property is less than or equal to the submitted integer argument.
    
    
    func items(withMaxprice price: Int) -> [Item] {
        
        var itemsLessThanOrEqualTo = [Item]()
        
        for c in items {
            
            if price >= c.priceInCents {
                
                itemsLessThanOrEqualTo.append(c)
                
            }
        }
        
        return itemsLessThanOrEqualTo
    }
    
    
    
}
