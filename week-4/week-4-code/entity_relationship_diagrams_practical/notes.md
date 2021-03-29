Miro Board: https://miro.com/app/board/o9J_lNFUAbc=/


## Exercise 1

Diagram the following:

Slack has many organisations. Each organisation has many Slack channels. Each organisation has one owner.


Slack -----> organisations --------> Channels
      (one to many)       (one to many)

Organisation -----> Owner
         (one to one)


Slack.new(organisation)
organisation = [
   1 = Organisation.new(channels_1, owner_1)
   2 = Organisation.new(channels_2, owner_2)
 ]
owner_1 = Owner.new
owner_2 = Owner.new
channels_1 = [
  Channel.new
  Channel.new
]
channels_2 = [
  Channel.new
  Channel.new
]

## Exercise 2

Model Makers Academy


## Exercise 3

Each member can go to many meet-ups. Each meet up can have many members.

class Meetup
  def initialize(name)
    @name = name
  end

  attr_reader :name
end

class Member
  def initialize(name)
    @name = name
  end

  attr_reader :name
end

class Membership
  def initialize(member, Meetup)
    @student = student
    @slack_channel = slack_channel
  end

  attr_reader :student, :slack_channel
end

fred = Student.new("Fred")
george = Student.new("George")
appreciations = SlackChannel.new("appreciations")
blue_july = SlackChannel.new("blue-july2017")

memberships = [
  Membership.new(fred, appreciations),
  Membership.new(george, appreciations),
  Membership.new(fred, blue_july),
]

## Exercise 4

Twitter (including hashtags)

Twitter
Tweets
Hashtags
Tweeters
