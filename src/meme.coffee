# Description:
#   Get a meme from http://memecaptain.com/
#   API Docs at:
#   github.com/mmb/meme_captain_web/blob/master/doc/api/create_meme_image.md
#
# Dependencies:
#   None
#
# Commands:
#   hubot Y U NO <text> - Meme: Y U NO GUY w/ bottom caption
#   hubot I don't always <something> but when i do <text> - Meme: The Most Interesting man in the World
#   hubot <text> (SUCCESS|NAILED IT) - Meme: Success kid w/ top caption
#   hubot <text> ALL the <things> - Meme: ALL THE THINGS
#   hubot <text> TOO DAMN <high> - Meme: THE RENT IS TOO DAMN HIGH guy
#   hubot Yo dawg <text> so <text> - Meme: Yo Dawg
#   hubot All your <text> are belong to <text> - Meme: All your <text> are belong to <text>
#   hubot If <text>, <question> <text>? - Meme: Philosoraptor
#   hubot <text>, BITCH PLEASE <text> - Meme: Yao Ming
#   hubot <text>, COURAGE <text> - Meme: Courage Wolf
#   hubot ONE DOES NOT SIMPLY <text> - Meme: Boromir
#   hubot IF YOU <text> GONNA HAVE A BAD TIME - Meme: Ski Instructor
#   hubot IF YOU <text> TROLLFACE <text> - Meme: Troll Face
#   hubot Aliens guy <text> - Meme: Aliens guy
#   hubot Brace yourself <text> - Meme: Ned Stark braces for <text>
#   hubot Iron Price <text> - Meme: To get <text>? Pay the iron price!
#   hubot Not sure if <something> or <something else> - Meme: Futurama Fry
#   hubot <text>, AND IT'S GONE - Meme: Bank Teller
#   hubot WHAT IF I TOLD YOU <text> - Meme: Morpheus "What if I told you"
#   hubot WTF <text> - Meme: Picard WTF
#   hubot IF <text> THAT'D BE GREAT - Meme: Generates Lumberg
#   hubot MUCH <text> (SO|VERY) <text> - Meme: Generates Doge
#   hubot <text>, <text> EVERYWHERE - Meme: Generates Buzz Lightyear
#   hubot khanify <text> - Meme: Has Shatner yell your phrase
#   hubot pun | bad joke eel <text>? <text> - Meme: Bad joke eel
#   hubot pun | bad joke eel <text> / <text> - Meme: Bad joke eel
# Author:
#   bobanj
#   cycomachead, Michael Ball <cycomachead@gmail.com>
#   peelman, Nick Peelman <nick@peelman.us>
#   ericjsilva, Eric Silva
#   lukewaite, Luke Waite

memeGenerator = require "./lib/memecaptain.coffee"

module.exports = (robot) ->
  robot.respond /Y U NO (.+)/i, (msg) ->
    memeGenerator msg, 'NryNmg', 'Y U NO', msg.match[1]

  robot.respond /aliens guy (.+)/i, (msg) ->
    memeGenerator msg, 'sO-Hng', '', msg.match[1]

  robot.respond /iron price (.+)/i, (msg) ->
    memeGenerator msg, 'q06KuA', msg.match[1], 'Pay the iron price'

  robot.respond /brace yourself (.+)/i, (msg) ->
    memeGenerator msg, '_I74XA', 'Brace Yourself', msg.match[1]

  robot.respond /(.+) (ALL the .+)/i, (msg) ->
    memeGenerator msg, 'Dv99KQ', msg.match[1], msg.match[2]

  robot.respond /(I DON'?T ALWAYS .*) (BUT WHEN I DO,? .*)/i, (msg) ->
    memeGenerator msg, 'V8QnRQ', msg.match[1], msg.match[2]

  robot.respond /(.*)(SUCCESS|NAILED IT.*)/i, (msg) ->
    memeGenerator msg, 'AbNPRQ', msg.match[1], msg.match[2]

  robot.respond /(.*) (\w+\sTOO DAMN .*)/i, (msg) ->
    memeGenerator msg, 'RCkv6Q', msg.match[1], msg.match[2]

  robot.respond /(NOT SURE IF .*) (OR .*)/i, (msg) ->
    memeGenerator msg, 'CsNF8w', msg.match[1], msg.match[2]

  robot.respond /(YO DAWG .*) (SO .*)/i, (msg) ->
    memeGenerator msg, 'Yqk_kg', msg.match[1], msg.match[2]

  robot.respond /(All your .*) (are belong to .*)/i, (msg) ->
    memeGenerator msg, '76CAvA', msg.match[1], msg.match[2]

  robot.respond /(.*)\s*BITCH PLEASE\s*(.*)/i, (msg) ->
    memeGenerator msg, 'jo9J0Q', msg.match[1], msg.match[2]

  robot.respond /(.*)\s*COURAGE\s*(.*)/i, (msg) ->
    memeGenerator msg, 'IMQ72w', msg.match[1], msg.match[2]

  robot.respond /ONE DOES NOT SIMPLY (.*)/i, (msg) ->
    memeGenerator msg, 'da2i4A', 'ONE DOES NOT SIMPLY', msg.match[1]

  robot.respond /(IF YOU .*\s)(.* GONNA HAVE A BAD TIME)/i, (msg) ->
    memeGenerator msg, 'lfSVJw', msg.match[1], msg.match[2]

  robot.respond /(.*)TROLLFACE(.*)/i, (msg) ->
    memeGenerator msg, 'mEK-TA', msg.match[1], msg.match[2]

  robot.respond /(IF .*), ((ARE|CAN|DO|DOES|HOW|IS|MAY|MIGHT|SHOULD|THEN|WHAT|WHEN|WHERE|WHICH|WHO|WHY|WILL|WON\'T|WOULD)[ \'N].*)/i, (msg) ->
    memeGenerator msg, '-kFVmQ', msg.match[1], msg.match[2] + (if msg.match[2].search(/\?$/)==(-1) then '?' else '')

  robot.respond /(.*)(A+ND IT\'S GONE.*)/i, (msg) ->
    memeGenerator msg, 'uIZe3Q', msg.match[1], msg.match[2]

  robot.respond /WHAT IF I TOLD YOU (.*)/i, (msg) ->
    memeGenerator msg, 'fWle1w', 'WHAT IF I TOLD YOU', msg.match[1]

  robot.respond /(WHY THE (FUCK|FRIEND)) (.*)/i, (msg) ->
    memeGenerator msg, 'z8IPtw', msg.match[1], msg.match[3]

  robot.respond /WTF (.*)/i, (msg) ->
    memeGenerator msg, 'z8IPtw', 'WTF', msg.match[1]

  robot.respond /(IF .*)(THAT'D BE GREAT)/i, (msg) ->
    memeGenerator msg, 'q1cQXg', msg.match[1], msg.match[2]

  robot.respond /((?:WOW )?(?:SUCH|MUCH) .*) ((SUCH|MUCH|SO|VERY|MANY) .*)/i, (msg) ->
    memeGenerator msg, 'AfO6hw', msg.match[1], msg.match[2]

  robot.respond /(.+, .+)(EVERYWHERE.*)/i, (msg) ->
    memeGenerator msg, 'yDcY5w', msg.match[1], msg.match[2]

  robot.respond /KHANIFY (.+)$/i, (msg) ->
    # Characters we can duplicate to make it KHAAAAAANy
    extendyChars = ['a', 'e', 'o', 'u']
    khan = ''

    # Only duplicate the first vowel (except i) we find
    extended = false

    for c in msg.match[1]
      if c in extendyChars and not extended
        khan += c for _ in [1..6]
        extended = true
      else
        khan += c

    # If there were no vowels, we need more 'oomph!'
    khan += if extended then '!' else '!!!!!'

    memeGenerator msg, 'DoLEMA', '', khan

  robot.respond /(?:bad joke eel|pun)(.+\?) (.+)/i, (msg) ->
    memeGenerator msg, 'R35VNw', msg.match[1], msg.match[2]

  robot.respond /(?:bad joke eel|pun)(.+) \/ (.+)/i, (msg) ->
    memeGenerator msg, 'R35VNw', msg.match[1], msg.match[2]

