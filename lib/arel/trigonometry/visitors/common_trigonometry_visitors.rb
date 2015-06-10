module Arel
  module Visitors
    module CommonTrigonometryVisitors
      private

      def visit_Arel_Nodes_Arcsine o, collector
        "ASIN(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Arctangent o, collector
        "ATAN(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Arctangent2 o, collector
        "ATAN2(#{visit o.left}, #{visit o.right})"
      end

      def visit_Arel_Nodes_Cosine o, collector
        "COS(#{visit o.expr})"
      end

      def visit_Arel_Nodes_CubeRoot o, collector
        "CBRT(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Pow o, collector
        "POW(#{visit o.left}, #{visit o.right})"
      end

      def visit_Arel_Nodes_Radians o, collector
        "RADIANS(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Sine o, collector
        "SIN(#{visit o.expr})"
      end

      def visit_Arel_Nodes_SquareRoot o, collector
        "SQRT(#{visit o.expr})"
      end

      def visit_Arel_Nodes_Tangent o, collector
        "TAN(#{visit o.expr})"
      end
    end
  end
end
