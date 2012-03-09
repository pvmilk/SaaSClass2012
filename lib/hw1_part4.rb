### Part IV - basic OOP

class Dessert
<<<<<<< HEAD
    def initialize(name, calories)
        # your code here
        @name = name
        @calories = calories
    end
    attr_accessor :name
    attr_accessor :calories

    def healthy?
        # your code here
        @calories < 200
    end

    def delicious?
        # your code here
        true
    end
end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
        # your code here
        super(name, calories)
        @flavor = flavor
    end
    attr_accessor :flavor

    def delicious?
        # your code here
        if @flavor.downcase == "black licorice" then
            false
        else
            true
        end
    end
=======
  def initialize(name, calories)
    # your code here
  end

  def healthy?
    # your code here
  end

  def delicious?
    # your code here
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # your code here
  end

  def delicious?
    # your code here
  end
>>>>>>> upstream/master
end
