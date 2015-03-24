require_relative '../syntax/add'

class Add
  def to_ruby
    "-> e { (#{left.to_ruby}).call(e) + (#{right.to_ruby}).call(e) }"
  end

  def to_javascript
    "function (e) { return (#{left.to_javascript}(e)) + (#{right.to_javascript}(e)); }"
  end
  
  def to_py
     "lambda e: (#{left.to_py})(e) + (#{right.to_py})(e)"
  end  
  
end
