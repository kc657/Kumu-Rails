
Visit [Kumu](http://kumuapp.herokuapp.com/)

#### TLDR:
**Kumu** is a peer-reviewed note-sharing platform for students.
____
**Wire Frames**

![Wireframes](http://i.imgur.com/KXPbFG3.jpg)
___
**User Stories**
* The User:
	* A student who joins a classroom to learn a specific topic. Students will interact with lectures posted by an instructor; posting notes and feedback.
	* Students interact with each other's notes through comments and up / down voting. Additionally the App will feature the ability to create an account, have custom information on a user profile, and keep track of user stats.
	* Users can join topics multiple topics.
___
#### Database Structure:

![Kumu ERD](http://i.imgur.com/xtV36jX.jpg "ERD")

___
#### Core Tech
Ruby on Rails
PostgreSQL
Hosted on Heroku

**Required Gems:**
- `acts_as_votable`
- `paperclip`
- ` materialize`
- `redcarpet`
- `coderay`
- `bcrypt`
___
###Challenges
- Thumbs_up Gem didn't work for voting, had to try another.
- DB structure, associating posts with topics.
____
###Future Development

- Tagging System for Posts
- Text-based search for post content
- Show users that upvoted a post
- Show posts the a user voted on.
- Integrate Paperclip in posts.
