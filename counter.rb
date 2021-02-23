  def increment(value)
    value + 1
  end

  def pipe(int, *methods)
    total = int
    methods.each do |method|
      total = method.call(total)
    end
    total
  end

p pipe(5, method(:increment))# => 6
p pipe(5, method(:increment), method(:increment), method(:increment))# => 8
# Ruby 無法在引數裡面帶 method, 所以使用外部帶入的方式
