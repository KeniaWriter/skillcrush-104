############################
#Magic 8-Ball Ruby Script

#Accept a question for the 8-Ball
puts "What is your \"Yes/No\" question?"
question = gets.chomp

#Create Magic-8-Ball List of Possible Answers
possible_answers = ["It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"]

#Generate a random answer from the possible_answers array
magic_answer = possible_answers[rand(0..19)]

############################
#Setup of twilio-ruby REST API

#Require rubygems and twilio-ruby gems so we have access to the code
require 'rubygems'
require 'twilio-ruby'

#set account sid & token values
account_sid = "AC315f574407072c59e65cdbe55a812add"
auth_token = "6bfb2754300e3df56f7dc0bed12ef7c6"

#instantiate client object
@client = Twilio::REST::Client.new(account_sid,auth_token)

############################
#Twilio Text

#create & text message
message = @client.account.messages.create(
    :from => "+1 424-233-4244",
    :to => "+1 702-612-6622",
    :body => "You asked: #{question} The Magic 8-Ball says: #{magic_answer}"
    )

#print message info to the terminal
puts "The following message was texted to #{message.to}:"
puts message.body