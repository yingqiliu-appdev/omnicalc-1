class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
    
  end

  def calculate_square
    
    @num = params.fetch("number").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb"})

  end

  def blank_square_root_form
    
    render({ :template => "calculation_templates/square_root_form.html.erb"})

  end

  def calculate_square_root
    @num_sqrt = params.fetch("number_sqrt").to_f
    @sqrt_calc = @num_sqrt ** (0.5)

    render({ :template => "calculation_templates/square_root_results.html.erb"})
    
  end

  def blank_payment_form

    render({ :template => "calculation_templates/payment_form.html.erb"})
    
  end  

  def calculate_payment

    @int_float = params.fetch("apr").to_f
    @years_float = params.fetch("years").to_f
    @principal_float = params.fetch("principal").to_f

    @interest = @int_float.round(6).to_s( :percentage)
    @years = @years_float.to_i
    @principal = @principal_float.to_s( :currency)
   
    @payment = (@principal_float*(@int_float/12)*((1+@int_float/12)**(@years_float*12))/(((1+@int_float/12)**(@years_float*12))-1)).to_f.to_s( :currency)

    render({ :template => "calculation_templates/payment_results.html.erb"})
    
  end

  def blank_random_form

    render({ :template => "calculation_templates/random_form.html.erb"})
    
  end

  def calculate_random

    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/rand_results.html.erb"})
    
  end

end
