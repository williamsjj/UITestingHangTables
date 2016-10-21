#UI Testing Table View Hang Demo Project#

This project demonstrates UI Testing hanging when there's a UITableView in the view hierarchy with more than 500 rows in it.

 
Could be 1 section with 500 rows, or 10 sections with 50 rows...number of sections doesn't matter.  Doesn't matter that only a small subset of the rows are visible and cells have actually been generated.
 
The hang occurs when either accessing the app hierarchy:
 
```swift
app.tables["OuterTableView"]
```
 
Or creating an expectation that waits for a view element to appear:

```swift
expectation(for: NSPredicate(format: "exists == 1"),  
                    evaluatedWith: app.tables["OuterTableView"],  
                    handler: nil);  
waitForExpectations(timeout: 5, handler: nil)  
```
 
Created a radar bug report (# [28884023](rdar://28884023]) 
