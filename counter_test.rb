require './counter'

describe '#pipe' do

  it '1次 increment 轉成數字 1，pipe(5, method(:increment)) 回傳 6' do
    expect(pipe(5, method(:increment))).to be 6
  end

  it '3次 increment 轉成數字 1 三次，pipe(5, method(:increment), method(:increment), method(:increment)) 回傳 8' do
    expect(pipe(5, method(:increment), method(:increment), method(:increment))).to be 8
  end

end
