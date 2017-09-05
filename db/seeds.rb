# Example Classroom Entry
Classroom.create({name: "Ruby Gems", description: "Best explanations of the top ruby plugins and add-ons"})

Post.create({name: "Paperclip", description: "Paperclip is a popular Ruby gem for attaching files to resources in a Rails App using ActiveRecord", url: "https://github.com/thoughtbot/paperclip", content:"##Ruby Gem: Paperclip, by thoughtbot

### Overview ###

Paperclip is a popular Ruby gem for attaching files to resources in a Rails App using ActiveRecord. The gem is intended for attachments of various file types, but this gist will focus on a quick overview of attaching images. For this example, we are adding images into the bog app exercise (part of the General Assembly WDI curriculum), adding images for creatures in the bog.

### Basic steps for implementing Paperclip for image uploads and rendering in a Rails app ###

### 1. Installations ###
Install Image Magic with brew
`brew install imagemagick`

Edit Gemfile with
`gem 'paperclip', '~> 5.0.0'`

run
`$ bundle install`

Restart your server

### 2. Edit your model ###

Using # after the dimensions specified will crop the image into a square (e.g. for a thumbnail)

### 3. Migrate ###

Create a migration using
`rails generate paperclip creature image`

You may need to add the rails version number after `ActiveRecord::Migration` in the first line

```
class AddAttachmentImageToCreatures < ActiveRecord::Migration[5.1]
  def self.up
    change_table :creatures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :creatures, :image
  end
end

```
Run
`rails db:migrate`

### 4. Update your views for the new instance/edit instance ###

```
<div>
  <h2>Add a new creature</h2>
  <%= form_for @creature, html:{ multipart: true } do |f| %>
  <span>Name</span>
  <%= f.text_field :name %>
  <span>Image</span>
  <%= f.file_field :image %>
  ...

```

### 5. Modify your controller ###

All you should need to update is the `creature_params`
```
private

  def creature_params
    params.require(:creature).permit(:name, :image, :description)
  end

```

### 6. Modify show/index views (render the images) ###

```
<% @creatures.each do |element|%>
<div><%= element.name %></div>
<div><%= element.description %></div>
<div><%= image_tag element.image.url(:medium) %></div>
<% end %>
```

thoughtbot Github repo- https://github.com/thoughtbot/paperclip

A helpful YouTube video that goes through this process-
https://www.youtube.com/watch?v=Z5W-Y3aROVE"})

Post.create({name: "RuboCop", description: "Inspects your code for you to check for code styling, layout, and issues", url: "http://rubocop.readthedocs.io/en/latest/", content:"# RuboCop

![Cops](https://media.giphy.com/media/3o7TKynapnSWtRUTfi/giphy.gif)

[Full documentation here!](http://rubocop.readthedocs.io/en/latest/)


**RuboCop** is a static code analyzer. It automatically reports errors on your `Ruby` syntax
and it can also fix some of those problems automatically for you.

**Among the Cops that are included in the version, we have:**

* Style
* Layout
* Lint
* Performance
* Naming
* and many others that can be checked on [Cops-link](http://rubocop.readthedocs.io/en/latest/cops/).

For this example, we are going to focus on the one called **Naming**.



## **Naming**

This Cop, checks for naming issues on our code, such as method name, constant name, file name, etc.

The documentation for specific Naming Cops, can be found on the [Naming Cops section](http://rubocop.readthedocs.io/en/latest/cops_naming/)




Installation is pretty standard, on your terminal run the following  line:

```ruby
$ gem install rubocop
```

If you rather install RuboCop using Bundle Install, don't require it on your Gemfile:

`gem 'rubocop', '~> 0.49.1', require: false`
"})

Post.create({name: "Mustache", description:"A templating engine to help remove logic from markup",url: "www.github.com/mustache/mustache", content:"

### Use Mustache in Ruby on Rails

This gist and lightning talk are merely the tip of the iceberg as far as what Mustache is capable of. For starters, it could replace ERB if you prefer to write clean, logic-less HTML code. It could take an entire morning to walk through setting up and implementing Mustache in a Rails setting, but feel free to explore using the demos and documentation provided by the developers of Mustache.

## Resources

Try out the following links:

- [RubyGems](https://rubygems.org/gems/mustache/versions/1.0.5)
- [Github and Docs](https://github.com/mustache/mustache)
- [Homepage (includes manual and demo)](https://mustache.github.io/)
"})
