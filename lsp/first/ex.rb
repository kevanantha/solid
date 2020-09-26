class Human
  def talk
    ''
  end

  def height
    ''
  end
end

# ===

class HomoHabilis < Human
  def talk
    'Agrrr!'
  end

  def height
    '1.29m'
  end
end

class HomoSapiens < Human
  def talk
    'Hello!'
  end

  def height
    '1.70m'
  end
end

# ===

habilis = HomoHabilis.new
sapiens = HomoSapiens.new

def introduce_human(human)
  puts "Hi, I'm #{human.height} height and I say #{human.talk}"
end

introduce_human(habilis) # => Hi, I'm 1.29m height and I say Agrrr!
introduce_human(sapiens) # => Hi, I'm 1.70m height and I say Hello!


# ===
# ===

class HomoSapiens < Human
  def talk
    'Hello!'
  end

  def height
    { men: '1.70m', women: '1.62' }
  end
end
