require 'rails_helper'

RSpec.describe "Get points", :type => :request do
  it 'returns points' do
      p1 = create(:point, x: 1.12,  y: 1.12)
      p2 = create(:point, x: 10.12, y: 1.12)
      p3 = create(:point, x: 0.12,  y: 0)

    get "/points"

    expected_response = [p1, p2, p3].map { |p| p.slice(:id, :x, :y) }.to_json
    expect(response.body).to eq(expected_response)
  end
end
