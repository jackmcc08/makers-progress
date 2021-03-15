# RSPEC Cheat Sheet

- RSPEC Style Guide: https://github.com/rubocop-hq/rspec-style-guide

- RSPEC Stubs - https://www.tutorialspoint.com/rspec/rspec_stubs.htm (READ!!!)
- https://www.futurelearn.com/info/blog/stubs-mocks-spies-rspec (READ!!!)

- Try to write out the example
    - Given
    - When
    - Then

- Only write the simplest code to pass the tests

- Are you meant to test in isolation? I.e. use doubles

- You shouldn't really test state (What the instance variables are set out)

#### Process
- write the smallest possible test case

- some standard formats below


## RSPEC Write Up

#### Basic Format is below

- Do not leave gaps except between examples
- Leave one empty line after let, subject or before/after blocks
- group let/subject - seperate before/after
- Context blocks should have a positive and a negative.
    - Context should be used to describe all the examples within
- prefer let over instance variables
- use # for instance methods | . for class methods

``` Ruby
describe Article do
  subject { FactoryBot.create(:someInstance) }
  let(:user) { FactoryBot.create(:user) }

  before (:example) do
    @user = User.new
  end

  describe '#summary' do
    context 'when there is a summary' do
      it 'returns the summary' do
        # ...
      end
    end

    context 'when there is no summary' do
      it 'returns the summary' do
        # ...
      end
    end
  end
end


```
#### Setup

- Let
    -
- Subject
    - Use Subject to reduce repetition
    - use Named subject when you can (only use non-named when it is not referenced)
- Before
    - Can have a context or example - use example to explicity refer to a certain scope
- After


- Pending
    - Use pending to avoid running a test

``` Ruby

# LET


# SUBJECT
subject(:equipment) { hero.equipment }

# BEFORE
before (:example) do

end

# AFTER
after do

end

# PENDING
  pending "refuses to be written"

```

#### Matchers

- generally use it
- use specify if there is no example
- use it for one liners, unless specify reads better
- Do not be concerned with duplicating code for setting up tests properly

```Ruby
describe Article do
  subject { FactoryBot.create(:article) }

  it 'is not published on creation' do
    is_expected.not_to be_published
  end


  expect { article.publish }.to change(Article, :count).by(1)
end
# Equals
  expect(a).to eq | eql "test string"
  expect(a).to be | equal b

# PREDICATE MATCHERS
  expect(subject.published?).to be true
  ==
  expect(subject).to be_published

# Built-in matchers
  expect(article.title).to include 'string'

# Be matchers
  expect(Article.author).to be true | false
  expect(Article.author).to be_truthy | be_falsey
  expect(Article.author).not_to be_nil
  expect(Article.author).to be_an(Author)

# Comparison matchers
  expect(actual).to be > | >= | < | <= expected
  expect(actual).to be_between(min, max).inclusive | exclusive
  expect(actual).to match(/regex/)

# Class/Type
  expect(actual).to be_instance_of(Class)
  expect(actual).to be_kind_of(Class or Parent Class)
  expect(actual).to respond_to(:method)

# Error matchers
  expect {block}.to raise_error(ErrorClass)
  expect {block}.to raise_error("error message")
  expect {block}.to raise_error(ErrorClass, "error message")

# Receiving
  expect(subject).to receive(:method)
  expect(subject).not_to receive(:method)
  expect(subject).to have_received(:method) # use with spies

```
#### Mocks, Stubs, Spies, Doubles

- Don't stub methods of the object under test
- FactoryBot
    - You can use FactoryBot to reate test data
- Time
    - Always use Timecop instead of stubbing Time or Date
- HTTP
    - Always stub websites
- Doubles
    - Prefer verifying doubles over normal double
    - Use doubles with isolated tests (not integration tests)
    - Verifying doubles must confirm to a class and its available methods (will throw an error)

- Stubs
    - Allow you to set up the expectation of receiving a message and produce a canned response
- Mocks
    - tbd
- Spies
    - tbd
    - a double that you don't have to actually allow methods
    - Records the messages / number of times you have received a message and then release it at the end of a test

```Ruby
subject(:article) { FactoryBot.create(:article) }

# DOUBLES
# good - verifying instance double
article = instance_double('Article')
allow(article).to receive(:author).and_return(nil)

presenter = described_class.new(article)
expect(presenter.title).to include('by an unknown author')

# good - verifying object double
article = object_double(Article.new, valid?: true)
expect(article.save).to be true

# good - verifying partial double
allow(Article).to receive(:find).with(5).and_return(article)

# good - verifying class double
notifier = class_double('Notifier')
expect(notifier).to receive(:notify).with('suspended as')

# Other
student1 = double('student')


# STUBS
allow(student1).to receive(:name) { 'Hiro Protagonist' }


# MOCKS
# tbd

# SPIES
# tbd

# SET INSTANCE VARIABLES
secret_diary.instance_variable_set(:@unlocked, true)

```

#### Shared Examples
- user shared examples to reduce code duplication

``` Ruby

```

Other:

```Ruby
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

describe "SecretDiary" do
  test_diary = SecretDiary.new

  it "can lock the diary" do
    expect(test_diary.lock).to eq "Diary is now locked"
  end

  it "can unlock the diary" do
    expect(test_diary.unlock).to eq "Diary is now unlocked"
  end
end
````

- list of options

```Ruby
# Testing if a subject responds to a method (no output necessary)  
it { is_expected.to respond_to :release_bike }

it "takes an argument for capacity over DEFAULT_CAPACITY" do
    expect(DockingStation).to receive(:new).with(25)
    DockingStation.new(25)
  end


```
- setting up variables

```ruby

```

- Testing errors

```ruby

```
