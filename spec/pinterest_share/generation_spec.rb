require 'spec_helper'

module PinterestShare
  describe Generation do
    describe '.new' do

      it "should require the necessary fields" do
        expect { Generation.new }.to raise_error(ArgumentError)
        expect { Generation.new(foo: 'bar') }.to raise_error(ArgumentError)
      end

      context "when passing the necessary fields" do
        it 'should require them to be valid HTTP URLs' do
          options = REQUIRED_FIELDS.each_with_object({}) do |field, memo|
            memo[field] = 'foo'
          end
          expect { Generation.new(options) }.to raise_error(InvalidHttpUrl)
        end
      end

      it "should use only the allowed fields" do
        options = REQUIRED_FIELDS.each_with_object({}) do |field, memo|
          memo[field] = 'http://www.foo.com'
        end
        options[:foo] = 'bar'
        generated_url = Generation.new(options).to_s
        generated_query = URI.parse(generated_url).query
        generated_parameters = URI.decode_www_form(generated_query).map do |item|
          item.first.to_sym
        end
        (generated_parameters - ALLOWED_FIELDS).should eq([])
      end

    end
  end
end
