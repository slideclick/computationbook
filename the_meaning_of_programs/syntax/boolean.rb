# encoding: utf-8

class Boolean < Struct.new(:value)
  def to_s
    #value.to_s
	(if value then 'True' else 'False' end).to_s
  end

  def inspect
    "«#{self}»"
  end
end
