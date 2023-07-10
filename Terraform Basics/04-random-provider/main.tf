resource random_integer rint{
    min = 80
    max = 200
}

# Above, we used another provider called random and used a function of random called random_integer.
# We entered the name we wanted to give to this resource.
# We also gave the required parameters or arguments.
# Running TF Init will download the random provider.
# Running TF Plan will confirm the parameters that will be used.
# Running TF Apply will give a value to rint and store it in the result variable which is part of this method.
# How do we know what are required params and how to call the result ? ":"
    # [https://letmegooglethat.com/?q=terraform+random]

output name {
    value = random_integer.rint.result
}

# The output keyword is another type of block in TF. Think of it as the print function in any other programming language.
# This is just to show us the value when we run terraform apply command again after writing this.
# This displays the value from the result of the random integer function, after assigning it to a var called name.
# How do we know this ? : [https://letmegooglethat.com/?q=terraform+output]

# Lets do this again based on the documentation with the string function:

resource random_string rstring{
    length = 15
}

output name2 {
    value = random_string.rstring.result
}

# The point is that we can generate random values and make use of it in our HCL/TF script to make unique names or 
# generate id's or passwords or uuid's etc.
