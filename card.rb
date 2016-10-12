class Card

  attr_accessor :face, :suite, :value



  def initialize(face, suite)
    self.face = face
    self.suite = suite
    card_value
  end


  def card_value
    if face == "A"
      self.value = 14
    elsif face == "K"
      self.value = 13
    elsif face == "Q"
      self.value = 12
    elsif face == "J"
      self.value = 11
    else
      self.value = face.to_i
    end
  end









end
# Card CLASS ends HERE--
