# Assignment: Ninja Gold

- Practice passing data to a template
- Practice using forms
- Practice using Django session
<hr>
Recreate the Ninja Gold game, but this time with Django.

As a reminder, you're going to create a mini-game that helps a ninja make some money! When you start the game, your ninja should have 0 gold. The ninja can do activities at different places (farm, cave, house, quest) and earn different amounts of gold. In the case of a quest, your ninja can earn or lose up to 50 gold. Your job is to create a web app that allows this ninja to earn gold and to display past activities of this ninja.

### Guidelines

- Refer to the wireframe below.
- Have the four forms appear when the user goes to http://localhost:8000
- Use a hidden input tag in each form to pass the relevant location to the server
- Have `/process_money` determine how much gold the user should have
- For now, save the activity log in session

![](1652725586__ninja_gold_quest.png)

- [x] Create a new project/app

- [x] Have the root route render the main Ninja Gold page

- [x] Have the "/process_money" POST route increase/decrease the user's gold by an appropriate amount and redirect to the root route

- [ ] NINJA BONUS: Refactor your code so the location is being passed in the URL rather than via a form

- [ ] SENSEI BONUS: Have the user specify the win conditions before starting, and then implement them in the game (# of moves, goal for gold)
