require 'spec_helper'
require_relative './support/test_data'

feature 'Bill View' do
  let(:test_data) { TestData.data }

  context 'When viewing bill page' do
    before :each do
      allow(RetrieveBillData).to receive(:call).and_return(test_data)
      visit '/'
    end

    it 'displays bill generated date' do
      expect(page).to have_content 'generated on: 11/01/2015'
    end

    it 'displays the bill period dates' do
      expect(page).to have_content '26/01/2015 - 25/02/2015'
    end

    it 'displays the due date' do
        expect(page).to have_content 'due on: 25/01/2015'
    end

    it 'displays the bill total amount' do
      expect(page).to have_content '£136.03'
    end

    it 'displays the package total amount' do
      expect(page).to have_content '£71.40'
    end

    it 'displays the call charges total amount' do
      expect(page).to have_content '£59.64'
    end

    it 'displays the Sky Store total charge' do
      expect(page).to have_content '£24.97'
    end

    it 'displays a list of subsrcribed packages' do
      expect(page).to have_content 'TV'
      expect(page).to have_content 'Talk'
      expect(page).to have_content 'Broadband'
      expect(page).to have_content 'Variety with movies HD'
      expect(page).to have_content 'Sky talk anytime'
      expect(page).to have_content 'Fibre unlimited'
      expect(page).to have_content '£50.00'
      expect(page).to have_content '£5.00'
      expect(page).to have_content '£16.40'
    end

    it 'displays a list of call charges' do
      expect(page).to have_content '07716393769'
      expect(page).to have_content '02074351359'
      expect(page).to have_content "00:23:03"
      expect(page).to have_content "£2.13"
    end

    it 'displays list of rentals' do
      expect(page).to have_content "50 shades of grey"
      expect(page).to have_content "£4.99"
    end

    it 'displays list of But and keep purchases' do
      expect(page).to have_content "That's what she said"
      expect(page).to have_content "Broke back mountain"
      expect(page).to have_content "£9.99"
    end
  end
end
