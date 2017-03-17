

  
  @card_number = "4929735477250543"

  valid = false

  # creating my temporary card`
  def temp_card 
    @card_number.reverse.split('')
  end

  def numbers
    temp_card.map do |x| 
      x.to_i
    end
  end  

  p numbers

  def multiply_by_2
    numbers.map.with_index do |value, index|
        
        if index.odd?
          #binding.pry 
          value*2
        else
          value  
        end  
    end
  end    

  p multiply_by_2


  def greater_than_9_and_adding 
    multiply_by_2.map do |item|
      if item > 9 
        x = item.to_s
        y = x[0].to_i + x[1].to_i
      else
        item
      end
    end    
  end  
  p greater_than_9_and_adding

  def total 
    greater_than_9_and_adding.reduce(:+)
  end

  p total

  def valid(total) 
    if total % 10 == 0
      'number is valid'
    else 
      'number is invalid'
    end   
  end 

puts valid(total)  





