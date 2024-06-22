# frozen_string_literal: true

require 'system_helper'
RSpec.describe 'maine page' do
  it 'checks company name is present' do
    visit static_pages_path(:en)

    expect(page).to have_content('MoneyBox')
  end
end
