require './calculadora'
describe Calculadora do
  before do
  	@calculadora = Calculadora.new
  end	

  describe "#suma" do
  	it "should return 0 when adding 0 to 0" do
  	  @calculadora.suma(0,0).should == 0
  	end
  end

  describe "#suma" do
    it "should return 7 when adding 4 to 3" do
      @calculadora.suma(4,3).should == 7	
    end
  end

  describe "#resta" do
  	it "should return 3 when substracting 4 from 7" do
  	  @calculadora.resta(7, 4).should == 3
  	end	
  end

  describe "#multiplicacion" do
  	it "should return 20 when multiplying 5 with 4" do
  	  @calculadora.multiplica(5, 4).should == 20
  	end
  end

  describe "#not_zero" do
  	it "should return false if the number is 0" do
      @calculadora.not_zero(0).should == false
  	end
  end
  
  describe "#not_zero" do
  	it "should return true if the number is not 0" do
      @calculadora.not_zero(5).should == true
  	end
  end

  describe "divide" do
    it "should return 5 when dividing 20 by 4" do
      @calculadora.divide(20, 4).should == 5	
    end
  end

  describe "divide" do
    it "should return 5 when dividing 20 by 0" do
      @calculadora.divide(20, 0).should == 0	
    end
  end
end