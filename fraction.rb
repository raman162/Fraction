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

  def radd(fraction)
    num=fraction.getnum()
    den=fraction.getden()
    l=@den.lcm(den)
    n1=@num*(l/@den)
    n2=num*(l/den)
    n3=n1+n2
    return Fraction.new(n3, l)

  end

  def getnum()
    return @num
  end

  def getden()
    return @den
  end
  
  def self.multiplication(fraction1,fraction2)
    num1=fraction1.getnum()
    num2=fraction2.getnum()
    den1=fraction1.getden() 
    den2=fraction2.getden()
    num3=num1*num2
    den3=den1*den2
    fraction3=Fraction.new(num3,den3)
    return fraction3
  end

  def print()
    puts "#{@num}/#{@den}"
  end

end

half=Fraction.new(1,2)
threeq=Fraction.new(3,4)
addfrac=half.radd(threeq)
multfrac=Fraction.multiplication(half,threeq)
addfrac.print()
multfrac.print()
