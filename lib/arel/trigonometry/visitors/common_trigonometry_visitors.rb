module Arel
  module Visitors
    module CommonTrigonometryVisitors
      private

      def visit_Arel_Nodes_Arcsine o, collector
        aggregate "ASIN", o, collector
      end

      def visit_Arel_Nodes_Arctangent o, collector
        aggregate "ATAN", o, collector
      end

      def visit_Arel_Nodes_Arctangent2 o, collector
        aggregate "ATAN", o, collector
      end

      def visit_Arel_Nodes_Cosine o, collector
        aggregate "COS", o, collector
      end

      def visit_Arel_Nodes_CubeRoot o, collector
        aggregate "CBRT", o, collector
      end

      def visit_Arel_Nodes_Pow o, collector
        aggregate "POW", o, collector
      end

      def visit_Arel_Nodes_Radians o, collector
        aggregate "RADIANS", o, collector
      end

      def visit_Arel_Nodes_Sine o, collector
        aggregate "SIN", o, collector
      end

      def visit_Arel_Nodes_SquareRoot o, collector
        aggregate "SQRT", o, collector
      end

      def visit_Arel_Nodes_Tangent o, collector
        aggregate "TAN", o, collector
      end
    end
  end
end
