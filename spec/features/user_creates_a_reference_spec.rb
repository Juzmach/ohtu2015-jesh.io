feature 'User creates a reference' do
	scenario 'they see the form after clicking new reference' do
		visit references_path

		click_link 'New Reference'
		expect(page).to have_content('New Reference')
	end

	scenario 'they cannot create an empty reference' do
		visit new_reference_path

		click_button 'Create Reference'
		expect(page).to have_content('5 errors prohibited this reference from being saved')
	end

	scenario 'they can create when all the requirements are met' do
		visit new_reference_path

		fill_in('Author', with: "Mr. Capybara")
		fill_in('Title', with: "Mr. Capybara's journal")
		fill_in('Year', with: 1999)
		fill_in('Publisher', with: "Paddington's Books Ltd.")

		click_button 'Create Reference'
		expect(page).to have_content("Mr. Capybara's journal")
	end
end