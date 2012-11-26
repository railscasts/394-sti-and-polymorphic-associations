# RailsCasts Episode #394: STI and Polymorphic Associations

http://railscasts.com/episodes/394-sti-polymorphic-associations

Requires Ruby 1.9.2 or higher.


### Commands used in this episode

```
rails g migration add_type_to_users type
rails g migration remove_guest_from_users guest:boolean
rake db:migrate
rails g migration remove_member_from_users username email password_digest type
rails g model MemberProfile username email password_digest
rails g model GuestProfile
rails g migration add_profile_to_users profile_id:integer profile_type
```
