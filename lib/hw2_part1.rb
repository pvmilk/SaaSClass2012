# metaprogramming to the rescue!

# HW2-1a
class Numeric
  @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      super
    end
  end
end

# HW2-1b
class String
  def palindrome?()
    pre_str = self.gsub(/\W/, "").downcase
    pre_str.eql? pre_str.reverse
  end
end

# HW2-1c
module Enumerable
  def palindrome?()
    self.to_a.eql? self.to_a.reverse
  end
end

