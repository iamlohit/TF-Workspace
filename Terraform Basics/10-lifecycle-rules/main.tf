resource random_integer rand_int {
    min = 20
    max = 400

        lifecycle {
        #   create_before_destroy = true
        # prevent_destroy = true
        ignore_changes = [ min, max ]
        }
}

# Let's say in its first TA run the value was x.
# If we change the value of max to say 120, and re run TA, then

# By default:
# First the old value will be destroyed and then the new value with new id will be created.

# This could easily be a database instead of an integer, in such a case, we generally would not want that.
# We can have 3 possible scenarios:
    # 1 - First create resource and then destroy old one.
    # 2 - Never destroy a resource
    # 3 - Ignore changes to the resource - specific tag or all

# This is where lifecycle rules come in.

# │ Resource random_integer.rand_int has lifecycle.prevent_destroy set, but the plan calls for this resource to be destroyed. To avoid this error and continue with
# │ the plan, either disable lifecycle.prevent_destroy or reduce the scope of the plan using the -target flag.