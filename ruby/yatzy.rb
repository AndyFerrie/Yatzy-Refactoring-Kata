class Yatzy
  def self.chance(dice)
    sum = 0
    for i in dice
      sum += i   
    end
    sum
  end

  def self.yatzy(dice)
    sum = 0
    for i in dice
      sum += i   
    end
    if sum / 5 == dice[0]
      50
    else
      0
    end
  end

  def self.countSingles(dice, num)
    sum = 0
    for i in dice
      if i == num
        sum += num
      end
    end
    sum
  end

  def self.ones(dice)
    countSingles(dice, 1)
  end

  def self.twos(dice)
    countSingles(dice, 2)
  end

  def self.threes(dice)
    countSingles(dice, 3)
  end

  def self.fours(dice)
    countSingles(dice, 4)
  end

  def self.fives(dice)
    countSingles(dice, 5)
  end

  def self.sixes(dice)
    countSingles(dice, 6)
  end

  def self.score_pair(dice)
    hightolow = dice.sort.reverse
    for i in hightolow
      if dice.count(i) >= 2
        return i*2
      else
        0
      end
    end
  end

  def self.two_pair(dice)
    score = 0
    array = []
    for i in dice
      if dice.count(i) > 1 && !array.include?(i)
        array.push(i)
        score += i*2
      end
    end
    if array.length > 1
      score
    else
      0
    end
  end

  def self.three_of_a_kind(dice)
    for i in dice
      if dice.count(i) >= 3
        return i*3
      else
        0
      end
    end
  end

  def self.four_of_a_kind(dice)
    for i in dice
      if dice.count(i) >= 4
        return i*4
      else
        0
      end
    end
  end

  def self.smallStraight(dice)
    if dice.sort == [1, 2, 3, 4, 5]
      15
    else
      0
    end
  end

  def self.largeStraight(dice)
    if dice.sort == [2, 3, 4, 5, 6]
      20
     else
      0
     end
  end

  def self.fullHouse(dice)
    for i in dice
      if dice.count(i) == 2
        two = true
      elsif dice.count(i) == 3
        three = true
      end
      if two && three
        return dice.sum
      end
    end
    0
  end

end
