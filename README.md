- [x] done

User Story 1, Hobbyist Index #displays ALL records of one model

For each Hobbyist table
As a visitor
When I visit '/hobbyists'
Then I see the name of each Hobbyist record in the system

- [x] done

User Story 2, Hobbyist Show #displays info for ONE record/model

As a visitor
When I visit '/hobbyists/:id'
Then I see the Hobbyist with that id including the Hobbyist's attributes
(data from each column that is on the Hobbyist table)

- [x] done

User Story 3, Car Index 

As a visitor
When I visit '/cars'
Then I see each Car in the system including the Car's attributes
(data from each column that is on the Car table)
- [x] done

User Story 4, Car Show 

As a visitor
When I visit '/cars/:id'
Then I see the Car with that id including the Car's attributes
(data from each column that is on the Car table)
- [x] done

User Story 5, Hobbyist Cars Index 

As a visitor
When I visit '/hobbyists/:hobbyist_id/cars'
Then I see each Car that is associated with that Hobbyist with each Car's attributes
(data from each column that is on the Car table)

ActiveRecord
- [x] done

User Story 6, Hobbyist Index sorted by Most Recently Created 

As a visitor
When I visit the Hobbyist index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created
- [x] done

User Story 7, Hobbyist Car Count

As a visitor
When I visit a Hobbyist's show page
I see a count of the number of Cars associated with this Hobbyist

Usability
- [x] done

User Story 8, Car Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Car Index
- [x] done

User Story 9, Hobbyist Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Hobbyist Index
- [x] done

User Story 10, Hobbyist Car Index Link

As a visitor
When I visit a Hobbyist show page ('/hobbyists/:id')
Then I see a link to take me to that Hobbyist's `Cars` page ('/hobbyists/:id/cars')

# Iteration 2
CRUD
- [x] done

User Story 11, Hobbyist Creation 

As a visitor
When I visit the Hobbyist Index page
Then I see a link to create a new Hobbyist record, "New Hobbyist"
When I click this link
Then I am taken to '/Hobbyists/new' where I  see a form for a new Hobbyist record
When I fill out the form with a new Hobbyist's attributes:
And I click the button "Create Hobbyist" to submit the form
Then a `POST` request is sent to the '/Hobbyists' route,
a new Hobbyist record is created,
and I am redirected to the Hobbyist Index page where I see the new Hobbyist displayed.
- [] done

User Story 12, Hobbyist Update 

As a visitor
When I visit a Hobbyist show page
Then I see a link to update the Hobbyist "Update Hobbyist"
When I click the link "Update Hobbyist"
Then I am taken to '/Hobbyists/:id/edit' where I  see a form to edit the Hobbyist's attributes:
When I fill out the form with updated information
And I click the button to submit the form
Then a `PATCH` request is sent to '/Hobbyists/:id',
the Hobbyist's info is updated,
and I am redirected to the Hobbyist's Show page where I see the Hobbyist's updated info
- [] done

User Story 13, Hobbyist Car Creation 

As a visitor
When I visit a Hobbyist Cars Index page
Then I see a link to add a new adoptable Car for that Hobbyist "Create Car"
When I click the link
I am taken to '/Hobbyists/:Hobbyist_id/cars/new' where I see a form to add a new adoptable Car
When I fill in the form with the Car's attributes:
And I click the button "Create Car"
Then a `POST` request is sent to '/Hobbyists/:Hobbyist_id/cars',
a new Car object/row is created for that Hobbyist,
and I am redirected to the Hobbyist Cars Index page where I can see the new Car listed
- [] done

User Story 14, Car Update 

As a visitor
When I visit a Car Show page
Then I see a link to update that Car "Update Car"
When I click the link
I am taken to '/cars/:id/edit' where I see a form to edit the Car's attributes:
When I click the button to submit the form "Update Car"
Then a `PATCH` request is sent to '/cars/:id',
the Car's data is updated,
and I am redirected to the Car Show page where I see the Car's updated information
ActiveRecord
- [] done

User Story 15, Car Index only shows `true` Records 

As a visitor
When I visit the Car index
Then I only see records where the boolean column is `true`
- [] done

User Story 16, Sort Hobbyist's Cars in Alphabetical Order by name 

As a visitor
When I visit the Hobbyist's Cars Index Page
Then I see a link to sort Cars in alphabetical order
When I click on the link
I'm taken back to the Hobbyist's Cars Index Page where I see all of the Hobbyist's Cars in alphabetical order
Usability
- [] done

User Story 17, Hobbyist Update From Hobbyist Index Page 

As a visitor
When I visit the Hobbyist index page
Next to every Hobbyist, I see a link to edit that Hobbyist's info
When I click the link
I should be taken to that Hobbyist's edit page where I can update its information just like in User Story 12
- [] done

User Story 18, Car Update From Cars Index Page 

As a visitor
When I visit the `cars` index page or a Hobbyist `cars` index page
Next to every Car, I see a link to edit that Car's info
When I click the link
I should be taken to that `cars` edit page where I can update its information just like in User Story 14
