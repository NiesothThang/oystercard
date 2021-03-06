require 'oystercard'

describe Oystercard do
    it 'balance is equal to zero' do
      expect(subject.balance).to eq 0
    end
    it 'expected to refelct top up balance' do
        subject.top_up(10)
      expect(subject.top_up(5)).to eq 15
    end

  it 'throws an error when balance exceeds limit' do
    expect { subject.top_up(Oystercard::MAX_BALANCE + 1) }.to raise_error "unable to top-up: max limit is £#{Oystercard::MAX_BALANCE}"     
  end

  it 'is expected to reflect deduct amount on balance' do
    subject.top_up(10)
    expect(subject.deduct(4)).to eq 6
  end    

  it 'shows whether the oystercard is being used on a journey' do
      expect(subject.in_journey?).to eq false
  end

  it 'shows that the oystercard is in an active journey after toucing in' do
      expect(subject.touch_in).to eq true
  end

  it 'shows that the oystercard is not in a journey after touching out' do
      expect(subject.touch_out).to eq false
  end
end