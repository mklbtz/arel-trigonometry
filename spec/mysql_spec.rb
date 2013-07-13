require 'mysql2'
require 'spec_helper'
require 'arel/trigonometry/mysql'

describe 'Trigonometry functions in MySQL', :mysql do
  def parse_results results
    results.first.first
  end

  include_examples 'trigonometry examples'
end
