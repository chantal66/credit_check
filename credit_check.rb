
class CreditCheck

  def initialize(card_number)
    @card_number = card_number

    @valid = false

  end 

  
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
 

  def total 
    greater_than_9_and_adding.reduce(:+)
  end

  def valid
    if total % 10 == 0
      'number is valid'
    else 
      'number is invalid'
    end   
  end 
end
#puts valid(total)  

valid_card_1 = CreditCheck.new('5541808923795240')
puts valid_card_1.valid
valid_card_2 = CreditCheck.new('5541801923795240')
puts valid_card_2.valid
valid_card_3 = CreditCheck.new('342804633855673') #American Express
puts valid_card_3.valid
valid_card_3 = CreditCheck.new('342801633855673') #American Express
puts valid_card_3.valid





