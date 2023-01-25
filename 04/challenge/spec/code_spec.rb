require 'code'

describe CatFacts do
    
    it ' should return a controlled cat fact' do
        cat_fact = double (:cat)
        allow(cat_fact).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return({"fact":"Female cats are polyestrous","length":28}.to_json)
        fact = CatFacts.new(cat_fact)
        expect(fact.provide()).to eq("Cat fact: Female cats are polyestrous")
    end
end