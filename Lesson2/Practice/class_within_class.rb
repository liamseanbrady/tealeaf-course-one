class Outer

  class Inner

  end

end

outer = Outer.new

inner = Outer::Inner.new

puts Outer::Inner.ancestors