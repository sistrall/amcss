require 'spec_helper'

describe Amcss::Css::Selector do
  describe '.from' do
    context 'with variation or trait' do
      subject { Amcss::Css::Selector.from('Calendar', 'big') }

      it 'has the correct value' do
        expect(subject.value).to eq('[am-Calendar~="big"]')
      end
    end

    context 'without variation or trait' do
      subject { Amcss::Css::Selector.from('Calendar') }

      it 'has the correct value' do
        expect(subject.value).to eq('[am-Calendar]')
      end
    end
  end

  describe '#new' do
    subject { Amcss::Css::Selector }

    it 'prepare an Amcss::Css::Selector' do
      expect(subject.new('*')).to be_an(Amcss::Css::Selector)
    end
  end

  describe '#to_s' do
    subject { Amcss::Css::Selector.new('html > body') }

    it 'returns a suitable HTML attribute' do
      expect(subject.to_s).to eq 'html > body'
    end
  end
end
