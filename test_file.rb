
load 'ruby_intro_SS_sslabde_scheriy.rb'

def scores
  correct = 0
  wrong = 0
  full = 35

  # Q1
  begin
    double_elem([1,2,3]) == [2,4,6] ? correct += 1 : wrong += 1
  rescue StandardError
    wrong += 1
  end

  # Q2
  begin
    missing_num([1,2,3,4,5,6,7,8,9,10]) == 0  ? correct += 1 : wrong += 1
  rescue StandardError
    wrong += 1
  end

  # Q3
  begin
    check_product?([1,2,3,4,5,6],15) == true ? correct += 1 : wrong += 1
  rescue StandardError
    wrong += 1
  end

  # Q4
  begin
    concatenate_words('Hello', 'Kugou') == 'Hello Kugou' ? correct += 1 : wrong += 1
  rescue StandardError
    wrong += 1
  end
 
  # Q5
  begin
    valid_parentheses?('{]') == false ? correct += 1 : wrong += 1
  rescue StandardError
    wrong += 1
 end
  # Q6
  begin
    longest_common_prefix(%w[aaaaaaaa aa aabc]) == 'aa' ? correct += 1 : wrong += 1
  rescue StandardError
    wrong += 1
 end
  # Q7
  begin
    s1 = Student.new('Saurabh', "11:59 pm")
  rescue StandardError
    s1 = nil
  end

  begin
    s1.arrive_on_time_for_class? == false ? correct += 1 : wrong += 1
  rescue StandardError
    wrong += 1
  end

  ((correct * full).to_f / (wrong + correct)).round(2)
end

puts scores
