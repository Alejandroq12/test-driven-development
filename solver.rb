class Solver
  def factorial(n)
    raise ArgumentError, 'Input number must be non-negative.' if n < 0
    return 1 if n.zero?

    # recursive approach
    n * factorial(n-1)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(n)
    return 'fizzbuzz' if (n % 3).zero? && (n % 5).zero?
    return 'fizz' if (n % 3).zero?
    return 'buzz' if (n % 5).zero?
    n.to_s
  end
end