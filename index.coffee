require 'colors'
_ = require 'underscore'


what = [
	'lips'
	'chest'
	'butt'
	'back'
	'private parts'
	'thighs'
	'neck'
	'ears'
	'stomach'
	'all over'
	'strip tease'
	'put on something sexy'
	'massage with lotion'
]

how = [
	'spank'
	'lick'
	'suck'
	'blow'
	'kiss'
	'rub'
	'touch'
	'anything you want'
	'whip'
	'feather'
	'nibble'
	'massage'
]

howLong = [
	'10 seconds'
	'10 seconds'
	'30 seconds'
	'30 seconds'
	'1 minute'
	'As long as you want ;)'
]

isBlindFolded = false

banList = 
	lips: [
		'spank'
		'whip'
	]
	chest: [
		'spank'
		'whip'
	]
	butt:  [
		'suck'
		'lick'
	]
	back: [
		'spank'
		'whip'
	]
	'private parts': [
		'spank'
		'whip'
		'nibble'
	]
	thighs: [
		'spank'
		'whip'
	]
	neck: [
		'spank'
		'whip'
	]
	ears: [
		'spank'
		'whip'
	]
	stomach: [
		'spank'
		'whip'
		'nibble'
		'suck'
	]


console.log '##########################################################################'
console.log '############           Are you ready to get intimate         #############'
console.log '##########################################################################'
console.log 'Here is what your partner will be doing to you :D'


value1 = what[Math.round(Math.random()*10000)%what.length]

console.log "What: #{value1}".red

unless value1 in ['strip tease', 'put on something sexy', 'massage with lotion']
	okToDo =  _.difference how, banList[value1]
	value2 = okToDo[Math.round(Math.random()*10000)%okToDo.length]
	value3 = howLong[Math.round(Math.random()*10000)%howLong.length]
	isBlindFolded = if Math.round(Math.random()*10000)%2 is 1 then 'yes' else 'no'
	
	console.log "How: #{value2}".blue
	console.log "How Long: #{value3}".green
	console.log "Am I blind folded? #{isBlindFolded}".yellow


console.log 'Have fun and be safe.'


