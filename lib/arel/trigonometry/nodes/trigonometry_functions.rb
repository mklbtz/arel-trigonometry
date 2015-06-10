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
      const_set name, Class.new(Function)
    end
    Arctangent2 = Class.new(Function)
    Pow = Class.new(Function)
  end
end
