#require 'execjs/json'
require_relative '../syntax/variable'

class Variable
  def to_ruby
    "-> e { e[#{name.inspect}] }"
  end

  def to_javascript
    "function (e) { return e[#{ExecJS::JSON.encode(name)}]; }"
  end
  # expression = Add.new(Number.new(3), Number.new(1))
  # _({'x':2})
  def to_py
    "lambda e: e[#{name.inspect}] "
  end
end
