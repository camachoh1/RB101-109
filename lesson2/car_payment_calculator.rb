def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to your Car Loan Calculator!")

name = ''
loop do
  prompt("Please enter your name:")
  name = gets.chomp
  if name.empty?
    prompt("Please enter a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

# main loop starts
loop do
  loan_amount = nil
  loop do
    prompt("Please enter the loan amount:")
    loan_amount = gets.chomp

    if loan_amount.to_f <= 0 || loan_amount.empty?
      prompt("Invalid input. 0 or negtive numbers are not allowed.")
    else
      break
    end
  end

  loan_in_years = nil
  loop do
    prompt("Please enter the loan duration in years:")
    loan_in_years = gets.chomp

    if loan_in_years.to_i <= 0 || loan_in_years.empty?
      prompt("Invalid input. 0 or negtive numbers not allowed.")
    else
      break
    end
  end

  apr = nil
  loop do
    prompt("Please enter the Anual Percentage Rate (APR):")
    apr = gets.chomp

    if apr.empty? || apr.to_f <= 0.001
      prompt("Please enter a valid APR.")
    else
      break
    end
  end

  annual_int_rate = apr.to_f / 100

  monthly_int_rate = annual_int_rate.to_f / 12

  loan_in_months = loan_in_years.to_i * 12

  monthly_payments =
    loan_amount.to_f * (monthly_int_rate.to_f / (1 - (1 + monthly_int_rate.to_f)**(-loan_in_months.to_i)))

  prompt("Calculating...")

  result_prompt = <<-MSG
  Thank you, #{name}!
  - Your monthly interest rate is #{monthly_int_rate.round(4)}.
  - For a period of #{loan_in_months} months.
  - Your monthly payments will be: #{monthly_payments.round(2)}
  MSG

  prompt(result_prompt)

  prompt("Would you like to perform another calculation?")
  prompt("Press Y to continue or any other key to exit.")
  continue = gets.chomp.downcase

  break if continue != 'y'
  system('clear')
end

prompt("Thanks for using your Car Loan Calculator!")
prompt("Good bye!")
