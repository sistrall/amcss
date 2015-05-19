require 'spec_helper'

describe Amcss::Configuration do
  context "by default" do
    describe '.prefix' do
      it 'returns nil' do
        expect(subject.prefix).to be nil
      end
    end
  end
end