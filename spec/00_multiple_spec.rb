require_relative '../lib/00_multiple'



describe "#somme_de_multiple_3_ou_5" do

  it "should return the sum of multiples of 3 and 5 lower than the input" do
    expect(somme_de_multiple_3_ou_5(10)).to eq(23)
    expect(somme_de_multiple_3_ou_5(11)).to eq(33)
    expect(somme_de_multiple_3_ou_5(0)).to eq(0)
    expect(somme_de_multiple_3_ou_5(3)).to eq(0)
  end

  it "should not calculate if the input is not a natural number" do
    expect(somme_de_multiple_3_ou_5(-1||1.4)).to eq("Entrer un nombre entier naturel seulement!")
  end

end

describe "#sommeMultiple" do

  it "calcule la somme jusqu'a 1000" do
    expect(sommeMultiple(3||5)).to eq(234168)
  end

end
