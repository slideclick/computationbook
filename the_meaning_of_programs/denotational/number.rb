#require 'execjs/json'
require_relative '../syntax/number'

class Number
  def to_ruby
    "-> e { #{value.inspect} }"
  end

  def to_javascript
    "function (e) { return #{ExecJS::JSON.encode(value)}; }"
  end
  
  def to_py
    "lambda e: #{value.inspect}"
  end  
  
end
