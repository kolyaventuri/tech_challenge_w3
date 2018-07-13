def search_range(nums, target)
  range = [-1, -1]

  nums.each_with_index do |num, i|
    if num == target
      if range.first < 0
        range[0] = i
      end
      range[1] = i
    elsif range.last > 0
      return range
    end
  end

  range
end
