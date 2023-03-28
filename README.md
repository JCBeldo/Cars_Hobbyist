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