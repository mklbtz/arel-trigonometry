require 'arel'

module Arel
  module Expressions
    def asin
      Arel::Nodes::Arcsine.new([self])
    end

    def atan
      Arel::Nodes::Arctangent.new([self])
    end

    def atan2 other
      Arel::Nodes::Arctangent2.new([self, other])
    end

    def cos
      Arel::Nodes::Cosine.new([self])
    end

    def cube_root
      Arel::Nodes::CubeRoot.new([self])
    end

    def pow other
      Arel::Nodes::Pow.new([self, other])
    end

    def rads
      Arel::Nodes::Radians.new([self])
    end

    def round other
      Arel::Nodes::Round.new([self, other])
    end

    def sin
      Arel::Nodes::Sine.new([self])
    end

    def sqrt
      Arel::Nodes::SquareRoot.new([self])
    end

    def tan
      Arel::Nodes::Tangent.new([self])
    end
  end
end
