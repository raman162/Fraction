#Defining class
class Fraction
  def initialize(num, den)
    @num=num
    @den=den
  end

  def add(num,den)
    l=@den.lcm(den)
    n1=@num*(l/@den)
    n2=num*(l/den)
    @num=n1+n2
    @den=l
  end
  
  


end

