require 'rails_helper'

RSpec.describe "hello", :type => :request do
  it 'returns ok' do
    get "/"

    parsed_body = JSON.parse(response.body)
    expect(parsed_body).to eq('ok')
  end
end
