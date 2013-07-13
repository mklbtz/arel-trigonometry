shared_examples 'trigonometry examples' do
  let(:query) { project(function).to_sql }
  let(:result) { parse_results(execute(query)) }

  context 'arcsine' do
    let(:function) { Arel::Nodes::Arcsine.new(1) }
    specify { expect(result.to_f).to be_within(0.000_000_001).of(1.570_796_326) }
  end

  context 'arctangent' do
    let(:function) { Arel::Nodes::Arctangent.new(1) }
    specify { expect(result.to_f).to be_within(0.000_000_001).of(0.785_398_163) }
  end

  context 'arctangent2' do
    let(:function) { Arel::Nodes::Arctangent2.new(1, 2) }
    specify { expect(result.to_f).to be_within(0.000_000_001).of(0.463_647_609) }
  end

  context 'cosine' do
    let(:function) { Arel::Nodes::Cosine.new(1) }
    specify { expect(result.to_f).to be_within(0.000_000_001).of(0.540_302_305) }
  end

  context 'cube root' do
    let(:function) { Arel::Nodes::CubeRoot.new(16) }
    specify { expect(result.to_i).to eq 2 }
  end

  context 'pow' do
    let(:function) { Arel::Nodes::Pow.new(4, 2) }
    specify { expect(result.to_i).to eq 16 }
  end

  context 'radians' do
    let(:function) { Arel::Nodes::Radians.new(180) }
    specify { expect(result.to_f).to be_within(0.000_000_001).of(3.141_592_653) }
  end

  context 'sine' do
    let(:function) { Arel::Nodes::Sine.new(360) }
    specify { expect(result.to_f).to be_within(0.000_000_001).of(0.958_915_723) }
  end

  context 'square root' do
    let(:function) { Arel::Nodes::SquareRoot.new(16) }
    specify { expect(result.to_i).to eq 4 }
  end

  context 'tangent' do
    let(:function) { Arel::Nodes::Tangent.new(1) }
    specify { expect(result.to_f).to be_within(0.000_000_001).of(1.557_407_724) }
  end
end
