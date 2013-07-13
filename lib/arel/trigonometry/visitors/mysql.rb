require 'arel/trigonometry/visitors/common_trigonometry_visitors'

module Arel
  module Visitors
    class MySQL
      include CommonTrigonometryVisitors

      def visit_Arel_Nodes_CubeRoot o
        "POW(#{visit o.expr}, 1/3)"
      end
    end
  end
end
