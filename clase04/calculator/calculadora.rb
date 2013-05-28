class Calculadora
  def suma(a, b)
  	a + b
  end

  def resta(a, b)
  	a - b
  end

  def multiplica(a, b)
  	a * b  	
  end

  def not_zero(g)
  	g != 0
  end

  def divide(a, b)
  	not_zero(b) ? a / b : 0
  end

end