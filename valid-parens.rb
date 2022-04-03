# @param {String} s
# @return {Boolean}

def is_valid(s)
    arr_s = s.split("")

    arr_stack = []
  
    arr_s.each do |item|
      case item
        when "("
          arr_stack.push( "(" )
        when ")"
          if arr_stack[arr_stack.length-1] == "("
            arr_stack.pop()
          else 
            return false
          end
        when "["
          arr_stack.push( "[" )
        when "]"
          if arr_stack[arr_stack.length-1] == "["
            arr_stack.pop()
          else 
            return false
          end
        when "{"
          arr_stack.push( "{" )
        when "}"
          if arr_stack[arr_stack.length-1] == "{"
            arr_stack.pop()
          else 
            return false
          end
      end
    end

    return ( arr_stack.length == 0 )

end


p is_valid( "(){()})" )