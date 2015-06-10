require 'colors'
_        = require 'underscore'
readline = require 'readline'
sexytime = require './libs/sexytime'


rli = readline.createInterface
	input: process.stdin
	output: process.stdout

playerNames = ['Player 1', 'Player 2']
playerColors = ['cyan', 'magenta']
playersTurn = Math.round(Math.random()*1000)%playerNames.length
startPlayer = playerNames[playersTurn%playerNames.length]
round = 0

what =

how =

howLong =

isBlindFolded = false

banList =


startGane = ->
	rli.question ' Press enter to start', ->
		playRound()


playRound = ->
	if startPlayer is playerNames[playersTurn%playerNames.length]
		process.stdout.write '\u001B[2J\u001B[0;0f'
		round++
		console.log "                                 Round #{round}"
		console.log ''

	color = playerColors[playersTurn%playerNames.length]
	player = playerNames[playersTurn%playerNames.length]
	data = sexytime.play()

	console.log ' ##########################################################################'[color]
	console.log " ############                    #{player}                     #############"[color]
	console.log ' ##########################################################################'[color]
	console.log ''

	unless data.type in ['Role Play Fantasy']
		console.log ' Here is what your partner will be doing to you :D'
		console.log ''


	if data.type is 'Sexy Fun'
		console.log " What: #{data.what}"[color]
		console.log " How: #{data.how}"[color]
		console.log " How Long: #{data.howLong}"[color]
		console.log " Am I blind folded? #{data.isBlindFolded}"[color]
	else if data.type is 'Role Play Fantasy'
		console.log " Act out the following fantasy. If both of you can't take it anymore feel "
		console.log " free to take the fantasy to your climax. ;)"
		console.log ""
		console.log " Role Play Fantasy: #{data.action}"[color]
	else
		console.log " Action: #{data.action}"[color]

	playersTurn++

	console.log ''

	rli.question ' Press enter to continue', ->
		console.log ''
		console.log ''

		playRound()



startGane()
