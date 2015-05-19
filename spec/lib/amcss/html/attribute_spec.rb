require 'spec_helper'

describe Amcss::Html::Attribute do
  subject { Amcss::Html::Attribute.new('am-BlockName', 'deep') }

  describe '.from' do
    subject { Amcss::Html::Attribute.from('Calendar', 'big', 'rounded') }

    it 'prepare an Amcss::Html::Attribute from a module and a list of traits' do
      expect(subject).to be_an(Amcss::Html::Attribute)
    end

    it 'has the correct name and value' do
      expect(subject.name).to eq('am-Calendar')
      expect(subject.value).to eq('big rounded')
    end
  end

  describe '#new' do
    subject { Amcss::Html::Attribute }

    it 'prepare an Amcss::Html::Attribute' do
      expect(subject.new('am-Module', 'big')).to be_an(Amcss::Html::Attribute)
    end
  end

  describe '#to_hash' do
    it 'returns an hash ready to be merge to some view helper option' do
      expect(subject.to_hash).to eq({"am-BlockName" => 'deep'})
    end
  end

  describe '#to_s' do
    it 'returns a suitable HTML attribute' do
      expect(subject.to_s).to eq 'am-BlockName="deep"'
    end
  end
end
