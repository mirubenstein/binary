class Binary

  def self.to_decimal(binary)
    raise ArgumentError, 'Must contain only 0s or 1s.' if binary.match?(/[^01]/)
    binary.reverse.chars.map(&:to_i).each.with_index.sum do |bit, index|
      bit * 2**index
    end
  end
end


module BookKeeping
  VERSION = 3
end
