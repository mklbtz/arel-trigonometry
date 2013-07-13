module Arel
  module Visitors
    module CommonTrigonometryVisitors
      private

      def visit_Arel_Nodes_Arcsine o
        "ASIN(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Arctangent o
        "ATAN(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Arctangent2 o
        "ATAN2(#{visit o.left}, #{visit o.right})"
      end

      def visit_Arel_Nodes_Cosine o
        "COS(#{visit o.expr})"
      end

      def visit_Arel_Nodes_CubeRoot o
        "CBRT(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Pow o
        "POW(#{visit o.left}, #{visit o.right})"
      end

      def visit_Arel_Nodes_Radians o
        "RADIANS(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Sine o
        "SIN(#{visit o.expr})"
      end

      def visit_Arel_Nodes_SquareRoot o
        "SQRT(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Tangent o
        "TAN(#{visit o.expr})"
      end
    end
  end
end
