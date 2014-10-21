# bowling_spec.rb
require 'bowling'

describe Bowling, "#score" do
	bowling = Bowling.new
	#it "returns 0 for all gutter game" do
    #	5 .times { bowling.roll(10) }
    #	expect(bowling.score).to eq(10)
	#end
	it "should score 177 when bowl follows these order" do
	    expect(bowling.score([10,8,1,2,8,5,4,10,10,10,5,5,10,10,0,0])).to eq(177)    
	end

	it "should score 300 for all strike" do
	    expect(bowling.score(12.times.map { 10 })).to eq(300)    
	end

	it "should score 0 for a gutter game" do
	    expect(bowling.score(12.times.map { 0 })).to eq(0)
	end
	  
	it "should score 20 for a game of all ones"  do
	    expect(bowling.score(20.times.map { 1 })).to eq(20)    
	end
	  
	it "should score a 20 when a 5 is thrown after a spare" do
	    expect(bowling.score([5,5,5] + 17.times.map { 0 } )).to eq(20)    
	end
	  
	it "should score a 24 when a strike is followed by a 3 and 4" do
	    expect(bowling.score([10,3,4] + 17.times.map { 0 })).to eq(24)    
	end

	it "should score 10 when a strike is followed by two gutter balls" do
	    expect(bowling.score([10] + 19.times.map { 0 })).to eq(10)    
	end

	it "should score 20 when a gutter is followed by rolls of 10 and 5 pins" do
	    expect(bowling.score([0,10,5] + 17.times.map { 0 })).to eq(20)    
	end
	  
	it "should score 150 for rolls of all 5" do
	    expect(bowling.score(21.times.map { 5 })).to eq(150)     
	end	
end