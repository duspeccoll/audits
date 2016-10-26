class Audit

  def initialize
  end

  def self.date?(dates)
    if dates.length == 1
      if dates[0]["expression"] == "Date Not Yet Determined"
        return false
      else
        return true
      end
    else
      return true
    end
  end

  def self.extent?(extents)
    if extents.nil?
      return false
    else
      numbers = extents.map{ |e| e["number"] }.delete_if{ |x| x == "0" }
      if numbers.empty?
        return false
      else
        return true
      end
    end
  end

  def self.abstract?(notes)
    if notes.nil?
      return false
    else
      types = notes.map{ |n| n["type"] }.delete_if { |x| x != "abstract" }
      if types.empty?
        return false
      else
        return true
      end
    end
  end

end
