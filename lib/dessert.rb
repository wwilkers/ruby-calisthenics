class Dessert
  attr_accessor :name
  attr_accessor :calories
#Ooh a piece of candy initialize the sweets
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    #is it less than 200
    return @calories < 200
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  #initialize tiny sweets
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    # naming convention for jelly beans
    @name = flavor + " jelly bean"
  end
  def delicious?
    # return flavor != abomination
    return @flavor != "licorice"
  end
end