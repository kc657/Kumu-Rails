README.md

- how do I install this application?

>Inspiration:
>
> Our dear founder demanded a way for students to > share their class notes with each other. Then he > left to go work on something else.
>
> (Obligatory analogy - Reddit for Evernote)

This is not appropriate for a README.md. If you plan on having this as part of your portfolio piece (i.e. viewable by employers) remove this.

> Stupid Text talking about the importance of sharing notes?

Really?


<hr>

` rake db:migrate ` will not work properly.  

> PG::UndefinedTable: ERROR:  relation "topics" does not exist

- You'll need to remove the plural version of topic most likely

- In your database you have topics, posts, classrooms, and users, how do they all fit together? Is `topics` in your ERD actually classroom?


Gif is too large which makes your site too slow.  Optimize the gif for web use or drop.

Your about us link takes a user to your github repository. You should link it as such.  

After I click on Login, The (permanent) hamburger only  brings me to this page.  Hamburger is now useless

Profile page has `User picture here`. Maybe a default image would be more helpful?

## User Profile

What is the join or create classroom text with the line around it?


## Edit Profile
There are two 'update' buttons. Update user and update profile. Why?  

Update password field is plaintext. It should be password input type

Hamburger button does nothing
