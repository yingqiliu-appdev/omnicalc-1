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

    @interest = params.fetch("apr").to_f.round(4).to_s( :percentage)
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_f.to_s( :currency)

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
