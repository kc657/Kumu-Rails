#### Inspiration:
Our dear founder demanded a way for students to share their class notes with each other. Then he left to go work on something else.

(Obligatory analogy - *Reddit for Evernote*)

____
#### Enter KUMU:
**Kumu** - a peer-reviewed note-sharing platform for students.
Visit [Kumu](http://kumuapp.herokuapp.com/)
____

**Wire Frames**

![Wireframes](http://i.imgur.com/KXPbFG3.jpg)

--------------------------------------------------------------------------------

**User Stories**
* The User:
	* A student who joins a classroom to learn their specific topic. After a lecture, students share their notes and feedback with eachother.
	* Students interact with each other's notes through comments and up / down voting. Additionally the App will feature the ability to create an account, have custom information on a user profile, and keep track of user stats.
	* Students can join multiple topics/classrooms.
___
#### Database Structure:

![Kumu ERD](http://i.imgur.com/xtV36jX.jpg "ERD")

--------------------------------------------------------------------------------

# Core Tech

Ruby on Rails PostgreSQL Hosted on Heroku

**Required Gems:**

- `acts_as_votable`
- `paperclip`
- `materialize`
- `redcarpet`
- `coderay`
- `bcrypt`

--------------------------------------------------------------------------------

## Challenges

- Thumbs_up Gem didn't work for voting, had to try another.
- DB structure, associating posts with topics.

--------------------------------------------------------------------------------

## Future Development

- Tagging System for Posts
- Text-based search for post content
- Show users that upvoted a post
- Show posts the a user voted on.
- Integrate Paperclip in posts.
