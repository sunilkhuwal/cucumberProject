###################################
#Developer: Sunil Kumar           #
###################################
class PrintArray

  #This function is used to print the array/hash values
  def printArrayOrHashValues(stringArrayOrHash)
    if(stringArrayOrHash.kind_of?(Array))
      puts "Is this an array parameter:- #{stringArrayOrHash.kind_of?(Array)}"
      stringArrayOrHash.each do |str|
        puts "Array:- #{str}"
      end
    elsif(stringArrayOrHash.kind_of?(Hash))
      puts "Is this a hash parameter #{stringArrayOrHash.kind_of?(Hash)}"
      stringArrayOrHash.each do |key, value|
        puts "The hash key is #{key} and the value is #{value}."
      end
    else
      puts "The given parameter should be of Array or Hash type. Thanks"
    end
  end
end

#Create a new array
addobject = PrintArray.new

#Printing array with string
addobject.printArrayOrHashValues(['My', 'Name', 'is', 'Sunil'])

#Printing array with hash values
addobject.printArrayOrHashValues({'1' => 'My', '2' => 'Name', '3' => 'is', '4' => 'Sunil'})

#Error on providing the parameter which is not array or hash
addobject.printArrayOrHashValues('1')


