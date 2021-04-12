//var dataRes: Array<Any>?
//
//print(dataRes ?? "its nil")


// null safty checker in dart/flutter
// myArray != null ? do somethings : print(error in getting time latps)

// Nil Optional Safty for Swift 5
// optional var ?? somethings else
// exp 1
// For getting data from a Server Side as Array of Dict as a Real Response
var data: Array<Dictionary<String, String>>?
// Fulled with Server Side Data as Response
data = [
    ["Name": "Alireza", "Family": "Soltani Neshan", "Age": "20"],
    ["Name": "Ali", "Family": "Soltani Neshan", "Age": "12"],
]

//data = []

print(data != [] ? data! : "Not Found!!")


//var name: String?
//
//name = "Alireza"
//
////    optional ?? Default value
//print(name ?? "Soltani")
