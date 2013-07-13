require 'arel/trigonometry/visitors/common_trigonometry_visitors'

module Arel
  module Visitors
    class PostgreSQL
      include CommonTrigonometryVisitors
    end
  end
end
