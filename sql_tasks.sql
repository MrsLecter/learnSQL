1.1 How can you produce a list of facilities that charge a fee to members?

SELECT * FROM cd.facilities
WHERE membercost != '0'

1.2 How can you produce a list of facilities that charge a fee to members, 
and that fee is less than 1/50th of the monthly maintenance cost? 
Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost < monthlymaintenance/50 AND membercost >  0

1.3 How can you produce a list of all facilities with the word 'Tennis' in their name?

SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%'

1.4 How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.

SELECT * FROM cd.facilities
WHERE facid=1 OR facid=5

1.5 How can you produce a list of members who joined after the start of September 2012? 
Return the memid, surname, firstname, and joindate of the members in question.

SELECT cd.members.memid, cd.members.surname, 
cd.members.firstname, cd.members.joindate
FROM cd.members
WHERE cd.members.joindate >= '2012-09-01'

1.6 How can you produce an ordered list of the first 10 surnames in 
the members table? The list must not contain duplicates.
  
SELECT DISTINCT surname FROM cd.members
ORDER BY surname ASC
LIMIT 10

1.7 You, for some reason, want a combined list of all surnames and all facility names.
 Yes, this is a contrived example :-). Produce that list!

SELECT cd.members.surname AS surname FROM cd.members
UNION
SELECT cd.facilities.name FROM cd.facilities

1.8 
  
