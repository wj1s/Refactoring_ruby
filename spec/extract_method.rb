class ExtractMethod
  @@name = "foo"

  def printOwning(previousAmount)
    puts "*******************"
    puts "*******test********"
    puts "*******************"

    previousAmount = previousAmount * 1.2
    displayName = @@name + "_display"

    tmp = 5
    3.times do
      previousAmount += tmp
    end

    tmp = 10
    tmp.times do
      puts "name:"+displayName
    end

    puts "Done!"
    puts "name:"+displayName
    puts "amount:"+previousAmount.to_s
    return previousAmount
  end

end
