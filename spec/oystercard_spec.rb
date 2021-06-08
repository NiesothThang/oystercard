require 'oystercard'

describe Oystercard do
    it 'balance is equal to zero' do
      expect(subject.balance).to eq 0
    end
    it 'expected to refelct top up balance' do
        subject.top_up(10)
      expect(subject.top_up(5)).to eq 15
    end
      
end