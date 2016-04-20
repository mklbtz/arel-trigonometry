shared_examples 'trigonometry examples' do
  let(:query) { project(function).to_sql }
  let(:result) { parse_results(execute(query)) }
  let(:threshold) { 0.000_000_001 }

  context 'arcsine' do
    let(:function) { Arel::Nodes::Arcsine.new([1]) }
    specify { expect(result.to_f).to be_within(threshold).of(Math.asin(1)) }
  end

  context 'arctangent' do
    let(:function) { Arel::Nodes::Arctangent.new([1]) }
    specify { expect(result.to_f).to be_within(threshold).of(Math.atan(1)) }
  end

  context 'arctangent2' do
    let(:function) { Arel::Nodes::Arctangent2.new([1, 2]) }
    specify { expect(result.to_f).to be_within(threshold).of(Math.atan2(1, 2)) }
  end

  context 'cosine' do
    let(:function) { Arel::Nodes::Cosine.new([1]) }
    specify { expect(result.to_f).to be_within(threshold).of(Math.cos(1)) }
  end

  context 'cube root' do
    let(:function) { Arel::Nodes::CubeRoot.new([16]) }
    specify { expect(result.to_i).to eq 2 }
  end

  context 'pow' do
    let(:function) { Arel::Nodes::Pow.new([4, 2]) }
    specify { expect(result.to_i).to eq 16 }
  end

  context 'radians' do
    let(:function) { Arel::Nodes::Radians.new([1]) }
    specify { expect(result.to_f).to be_within(threshold).of(Math::PI / 180) }
  end

  context 'round' do
    let(:function) { Arel::Nodes::Round.new([1.8]) }
    specify { expect(result.to_f).to be_within(threshold).of(2) }
  end

  context 'sine' do
    let(:function) { Arel::Nodes::Sine.new([1]) }
    specify { expect(result.to_f).to be_within(threshold).of(Math.sin(1)) }
  end

  context 'square root' do
    let(:function) { Arel::Nodes::SquareRoot.new([16]) }
    specify { expect(result.to_i).to eq 4 }
  end

  context 'tangent' do
    let(:function) { Arel::Nodes::Tangent.new([1]) }
    specify { expect(result.to_f).to be_within(threshold).of(Math.tan(1)) }
  end
end
