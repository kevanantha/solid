class FeeCalculator
  def calculate(product, user, vat)
    # calculation
  end
end

class ProductController
  def show
    @fee = FeeCalculator.new.calculate(product, user, vat)
  end
end

# ===

# case: ada developer request setelah calculation, database harus di save ke db

class FeeCalculator
  def calculate(product, user, vat, save_result)
    # calculation

    if save_result
      # storing result into db
    end
  end
end

class ProductController
  def show
    @fee = FeeCalculator.new.calculate(product, user, vat, false)
  end
end

class OrderController
  def create
    @fee = FeeCalculator.new.calculate(product, user, vat, true)
  end
end

# ===
# ===

class FeeCalculator
  def calculate(product, user, vat)
    # calculation
  end

  def save(fee)
    # storing result into db
  end
end

class OrderController
  def create
    fee = fee_calculator.calculate(product, user, vat)
    fee_calculator.save(fee)
  end

  private

  def fee_calculator
    FeeCalculator.new
  end
end
