### Part V - advanced OOP

class Class
<<<<<<< HEAD
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s
        attr_reader attr_name                         # create the attribute's getter
        attr_reader attr_name + '_history'            # create bar_history getter
        # your code here, use %Q for multiline strings
        class_eval %Q{ 
            def #{attr_name}=(attr_name)
                if (!@#{attr_name}_history) then
                    @#{attr_name}_history = [nil]
                end
                @attr_name = attr_name
                @#{attr_name}_history += [attr_name]
            end
        }
    end
=======
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name + '_history'
    class_eval '' # your code here, use %Q for multiline strings
  end
>>>>>>> upstream/master
end
