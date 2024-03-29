# Option L (Trip Buddy 2)
Make an application where users may keep track of their travel plans!

![](pythonTripBuddy2.png)

For a red belt:
- Login and Registration with validations
 - Validation errors should appear on the page
 - Logout feature - the user should not be able to enter the app if not logged in
- Dashboard
 - Dashboard should say "Hello {{user}}"
 - Display all the trips the logged user made
 - Clicking the destination of a trip should route to the details page
 - Clicking the remove link deletes the trip from the database
 - Clicking the edit link should route to the edit page
- Create a trip
- Validations for empty input fields
Minimum length of three characters for the destination and plan
Display errors with flash messages
Redirect back to the dashboard after making a trip or clicking the cancel button
Edit a trip
Same validations apply as when creating a trip
Redirect back to the dashboard after editing
The dashboard should show the changes made to the trip
Trip details
- Display the start date, end date, created date, last updated date, destination, plan, and creator for the trip
- HTML and CSS reflect the wireframe to at least 75% accuracy
For a black belt:
- You must be able to deploy your work to Amazon EC2 and provide the IP address or subdomain/domain name to where your work has been deployed
    - Please note that Heroku deployment is not honored
- Include the bottom table on the dashboard for joined trips
A user may join trips that other users created
- The newly made trip should appear in the top table on the dashboard
Only the creator of a trip may remove or edit
- Joining a trip moves the trip from the bottom table to the top table
Users may cancel a trip they joined, which means they no longer wish to go on the trip and the trip moves back to the bottom table
- Include date validations when creating and editing trips
    - Trips must take place in the future
    - Trips must end after they begin
- Show flash messages informing the user if they attempt to time travel
- In the trip details, display who is joining the trip
- Do not include the creator of the trip as someone who joined the trip
Also:
 - If you are using Flask, include a file with the SQL script to create your database (this can be copied when you forward engineer your ERD)
    - Remove your github repo after deploying.
    - The wireframe is available for download here.
Don’t worry about:
 - What the prompts are asking for. Just ask if you are unsure about what the goals are!
Privacy Policy
