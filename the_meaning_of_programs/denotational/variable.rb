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
  # copy the output to iPython, eval(string), then
  # _({'x':2})
  # expression = Add.new(Variable.new(:x), Number.new(1))
  # varible not work

  def to_py
    "lambda e: e[#{to_pyL}}] "
  end
end
