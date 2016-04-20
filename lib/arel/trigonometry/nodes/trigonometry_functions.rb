require 'arel'

module Arel
  module Nodes
    %w[
      Arcsine
      Arctangent
      Arctangent2
      Cosine
      CubeRoot
      Pow
      Radians
      Round
      Sine
      SquareRoot
      Tangent
    ].each do |name|
      c = const_set name, Class.new(Function)
      c.send(:include, Arel::Expressions)
      c.send(:include, Arel::Predications)
      c.send(:include, Arel::Math)
    end
  end
end
