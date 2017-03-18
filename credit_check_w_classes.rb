
class CreditCheck
  
  def initialize(card_number)
    @card_number = card_number

    @valid = false

  end  
  
  
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
valid_card_1 = CreditCheck.new('5541808923795240')
puts valid_card_1.valid
valid_card_2 = CreditCheck.new('5541801923795240')
puts valid_card_2.valid
valid_card_3 = CreditCheck.new('342804633855673') #American Express
puts valid_card_3.valid
valid_card_3 = CreditCheck.new('342801633855673') #American Express
puts valid_card_3.valid





# num_1  = numbers[-16]*2  
# num_2  = numbers[-15]
# num_3  = numbers[-14]*2 
# num_4  = numbers[-13]
# num_5  = numbers[-12]*2  
# num_6  = numbers[-11]
# num_7  = numbers[-10]*2
# num_8  = numbers[-9]
# num_9  = numbers[-8]*2
# num_10 = numbers[-7]
# num_11 = numbers[-6]*2
# num_12 = numbers[-5]
# num_13 = numbers[-4]*2
# num_14 = numbers[-3]
# num_15 = numbers[-2]*2
# num_16 = numbers[-1]

#   temp_num_1 = num_1.to_s
#   if num_1 > 9
#     p temp_num_1
#     p temp_num_1 = temp_num_1[0].to_i + temp_num_1[1].to_i 
#   else
#     p num_1  
#   end


#     temp_num_2 = num_3.to_s
#   if num_3 > 9
#     p temp_num_2 
#     p temp_num_2 = temp_num_2[0].to_i + temp_num_2[1].to_i
#   else
#     p num_3 
#   end

#     temp_num_3 = num_5.to_s
#   if num_5 > 9
#     p temp_num_3 
#     p temp_num_3 = temp_num_3[0].to_i + temp_num_3[1].to_i
#   else
#     p num_5
#   end

#       temp_num_4 = num_7.to_s
#   if num_7 > 9
#     p temp_num_4 
#     p temp_num_4 = temp_num_4[0].to_i + temp_num_4[1].to_i
#   else
#     p num_7
#   end

#       temp_num_5 = num_9.to_s
#   if num_9 > 9
#     p temp_num_5 
#     p temp_num_5 = temp_num_5[0].to_i + temp_num_5[1].to_i
#   else
#     p num_9
#   end

#       temp_num_6 = num_11.to_s
#   if num_11 > 9
#     p temp_num_6 
#     p temp_num_6 = temp_num_6[0].to_i + temp_num_6[1].to_i
#   else
#     p num_11
#   end

#     temp_num_7 = num_13.to_s
#   if num_13 > 9
#     p temp_num_7 
#     p temp_num_7 = temp_num_7[0].to_i + temp_num_7[1].to_i
#   else
#     p num_13
#   end

#      temp_num_8 = num_15.to_s
#   if num_15 > 9
#     p temp_num_8 
#     p temp_num_8 = temp_num_8[0].to_i + temp_num_8[1].to_i
#   else
#     p num_15
#   end

#   p temp_card_number = num_1 + num_2 + num_3 + num_4 + num_5 + num_6 +num_7 + 
#                        num_8 + num_9 + num_10 + num_11 + num_12 + num_13 + 
#                        num_14 + num_15 + num_16



