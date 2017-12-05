class String
  alias_method :old_size, :size

  def size
    "lo rompi"
  end
end

puts "sarasa".size
puts "sarasa".old_size