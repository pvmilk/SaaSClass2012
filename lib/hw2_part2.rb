class CartesianProduct
  include Enumerable
  # your code here
  def initializea(a, b)
      @r = []
      a.each do |i|
          b.each do |j|
              @r << [i, j]

          end
      end
  end

  def each
      r.each do |k|
          yield
      end
      {return k}
  end


end
