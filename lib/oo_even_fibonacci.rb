# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
  
  def sum
    array = [1,2]
    n = 0
    while array[n] < @limit
      array << array[n] + array[n + 1]
      n += 1
    end  
    array.delete_if {|n| n.odd? || n > @limit}.reduce(:+)
  end  
end

=begin
  
Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:
1,2,3,5,8,13,21,34,55,89...
By considering the terms in the Fibonacci sequence whose values do not
exceed four million, find the sum of the even-valued terms.
  
=end