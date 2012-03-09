class CartesianProduct
  include Enumerable
  # your code here
  def initialize(a, b)
    @r = []
    a.each do |i|
      b.each do |j|
        @r << [i, j]
      end
    end
  end

  def each
      @r.each{|k| yield k if block_given?}
  end

end
