# As part of a data processing pipeline, complete the implementation of the pipeline method:

# The pipeline method should accept a variable number of functions, and it should return a new function that accepts one parameter arg.
# The returned function should call the first function in pipeline with the parameter arg, and call the second function with the result of the first function.
# The returned function should continue calling each function in pipeline in order, following the same pattern, and return the value from the last function.
# For example, calling pipeline(-> (x) { x * 3 }, -> (x) { x + 1 }, -> (x) { x / 2 }), and then calling the returned function with 3 should return 5.

def pipeline(*funcs)
  -> (arg) {
    # puts(funcs[0].call(arg))
    # write your code here  
    funcs.each do |f|
        arg = f.call(arg)
    end
    return arg
    puts(arg)
  }
end

fun = pipeline(-> (x) { x * 3 }, -> (x) { x + 1 }, -> (x) { x / 2 })
puts (fun.call(3)) # should print 5