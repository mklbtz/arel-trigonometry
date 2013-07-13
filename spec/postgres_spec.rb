require 'pg'
require 'spec_helper'
require 'arel/trigonometry/postgresql'

describe 'Trigonometry functions in PostgreSQL', :postgres do
  def parse_results results
    results.first.values.first
  end

  include_examples 'trigonometry examples'
end
