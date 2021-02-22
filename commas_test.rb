require './commas'

RSpec.describe Commas do
  describe 'test' do

    before do
      @commas = Commas.new
    end

    it '每三位數一個逗點' do
      expect(@commas.set(9527)).to eq '9,527'
      expect(@commas.set(3345678)).to eq '3,345,678'
    end

    it '顯示小數位' do
      expect(@commas.set(1234.45)).to eq '1,234.45'
    end

    it '可輸入負數' do
      expect(@commas.set(-1234.45)).to eq '-1,234.45'
    end

  end
end
