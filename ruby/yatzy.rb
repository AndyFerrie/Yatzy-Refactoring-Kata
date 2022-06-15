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

  def self.countMultiples(dice, num)
    hightolow = dice.sort.reverse
    for i in hightolow
      if dice.count(i) >= num
        return i*num
      else
        0
      end
    end
  end

  def self.score_pair(dice)
    countMultiples(dice, 2)
  end

  def self.three_of_a_kind(dice)
    countMultiples(dice, 3)
  end

  def self.four_of_a_kind(dice)
    countMultiples(dice, 4)
  end
  
  def self.two_pair(dice)
    score = 0
    array = []
    hightolow = dice.sort.reverse
    for i in hightolow
      if dice.count(i) > 1 && !array.include?(i)
        array.push(i)
        score += i*2
      end
    end
    score
  end

 

  def self.smallStraight( d1,  d2,  d3,  d4,  d5)
    tallies = [0]*6
    tallies[d1-1] += 1
    tallies[d2-1] += 1
    tallies[d3-1] += 1
    tallies[d4-1] += 1
    tallies[d5-1] += 1
    (tallies[0] == 1 and
      tallies[1] == 1 and
      tallies[2] == 1 and
      tallies[3] == 1 and
      tallies[4] == 1) ? 15 : 0
  end

  def self.largeStraight( d1,  d2,  d3,  d4,  d5)
    tallies = [0]*6
    tallies[d1-1] += 1
    tallies[d2-1] += 1
    tallies[d3-1] += 1
    tallies[d4-1] += 1
    tallies[d5-1] += 1
    if (tallies[1] == 1 and tallies[2] == 1 and tallies[3] == 1 and tallies[4] == 1 and tallies[5] == 1)
      return 20
    end
    return 0
  end

  def self.fullHouse( d1,  d2,  d3,  d4,  d5)
    tallies = []
    _2 = false
    i = 0
    _2_at = 0
    _3 = false
    _3_at = 0

    tallies = [0]*6
    tallies[d1-1] += 1
    tallies[d2-1] += 1
    tallies[d3-1] += 1
    tallies[d4-1] += 1
    tallies[d5-1] += 1

    for i in Array 0..5
      if (tallies[i] == 2)
        _2 = true
        _2_at = i+1
      end
    end

    for i in Array 0..5
      if (tallies[i] == 3)
        _3 = true
        _3_at = i+1
      end
    end

    if (_2 and _3)
      return _2_at * 2 + _3_at * 3
    else
      return 0
    end
  end
end
