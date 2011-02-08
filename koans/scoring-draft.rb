dice = [1,3,1,1,3]

def score(dice)
  raise RuntimeError, "You rolled (#{dice.length} dice. Please roll again." unless dice.length <= 5
  points = 0
    
  dice.sort!.each_with_index do |v, i|
      if dice.count(v) >= 3 then

        if v == 1 then
          points += 1000
        else
          points += v * 100
        end

        2.times { dice.delete_at i }

      elsif v == 1 then
        points += 100
      elsif v == 5 then
        points += 50
      end
    end

    points
end
score(dice)  
  
#1 = 100
#5 = 50

#find 3 of a kind
#def three_of_a_kind(myscore)
#  myscore.each do |item|
#    count = item + 1
#    if count == 3
#      return item * 100
#    unless item == 1
#      return 1000
#    end
#  end
#end

#puts three_of_a_kind(myscore) 

#def dice_count(myscore)
#  myscore.each do |item|
#    @count = item + 1
#  end
#end
#
#def three_ones
#  if @count.all?(1,1,1)
#    score = 1000
#  end
#  return score
#end
#
#puts dice_count(myscore)
#puts three_ones