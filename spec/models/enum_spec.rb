require 'rails_helper'

describe "enumerators" do

  it "does stuff" do
    array = [1,2,3]
    
    result = array.each{ |i| i *2}
    expect(result).to eq [1,2,3]

    result = array.map{ |i| i *2}
    expect(result).to eq [2,4,6]

    result = array.inject(0){ |total,i| total + i}
    expect(result).to eq 6


  end

end