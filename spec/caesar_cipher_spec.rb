require_relative 'spec_helper'

describe CaesarCipher do
	before :each do
		@cipher = CaesarCipher.new "This is a sentence!", 13
	end

	describe "write/read attributes" do
		it "has phrase 'This is a different sentence!'" do
			@cipher.input_phrase = "This is a different sentence!"
			expect(@cipher.input_phrase).to eq "This is a different sentence!"	
		end

		it "has shift of 20" do
			@cipher.shift = 20
			expect(@cipher.shift).to eq 20
		end
	end

	describe "read initialized attributes" do
		it "has phrase 'This is a sentence!'" do
			expect(@cipher.input_phrase).to eq "This is a sentence!"	
		end

		it "has shift of 13" do
			expect(@cipher.shift).to eq 13
		end
	end

	describe "#encode" do
		it "has encoded phrase 'Guvf vf n fragrapr!'" do
			expect(@cipher.encode).to eq "Guvf vf n fragrapr!"
		end
	end

	describe "#decode" do
		it "has decoded phrase 'This is a sentence!'" do
			@cipher.input_phrase = "Guvf vf n fragrapr!"
			expect(@cipher.decode).to eq "This is a sentence!"
		end
	end
end

