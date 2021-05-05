class SlotMachine
  def score(reels)
    if reels.uniq.length == 1
      return three_of_a_kind(reels.first)
    elsif reels.uniq.length == 2
      return two_of_a_kind(reels)
    else
      0
    end
  end

  private

  def three_of_a_kind(reel)
    case reel
    when 'joker' then 50
    when 'star' then 40
    when 'bell' then 30
    when 'seven' then 20
    when 'cherry' then 10
    end
  end

  def two_of_a_kind(reels)
    return 0 unless reels.include?('joker')

    if reels.count('joker') == 2
      return 25
    elsif reels.count('star') == 2
      return 20
    elsif reels.count('bell') == 2
      return 15
    elsif reels.count('seven') == 2
      return 10
    elsif reels.count('cherry') == 2
      return 5
    end
  end
end
