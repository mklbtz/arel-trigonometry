require 'arel'

module Arel
  module Nodes
    %w[
      Arcsine
      Arctangent
      Cosine
      CubeRoot
      Radians
      Sine
      SquareRoot
      Tangent
    ].each do |name|
      const_set name, Class.new(Unary)
    end
    Arctangent2 = Class.new(Binary)
    Pow = Class.new(Binary)
  end
end
