# encoding: utf-8

class Variable < Struct.new(:name)
  def to_s
    name.to_s
  end

  def inspect
    "«#{self}»"
  end
  def to_pyL
  	(name.to_s)[0...-1]
  end	
end
