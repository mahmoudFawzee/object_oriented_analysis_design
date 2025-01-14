we will create application for sell and manage guitars store
 
step 1 : do what customer want 

## ?what to do ?
    we will user can add search for guitars
    Guitar{
        serialNumber:string,
        price:double,
        builder:String,
        model:String,
        type:String,
        backWood:String,
        topWood:String,
        getters,
        setters,
    } 
    Inventory{
        guitars:List,
        addGuitar(String,double,String,String,String,String),
        getGuitar(String):Guitar,
        search(Guitar):Guitar?,
    }
## done

stop 2 : apply oo principles to add flexibility
    remove unused vars on search method
    we did that : 
        in search instead of get a guitar object for the search we 
        just make an object called guitar spec to hold the 4 props
        that user tell us for the guitar he need.
## done

stop 3 : strive for a maintainable reusable design.
    in this case we will remove the comparisons in the search method 
    and make the comparison in the guitarSpec object directly
    so we can reuse it in another objects.        