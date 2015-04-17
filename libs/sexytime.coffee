# Node Modules
_ = require 'underscore'


class SexyTime

    # These are items that will be output alone
    actions: [
        'Strip Tease'
        'Put on something sexy'
        'Massage with lotion'
    ]


    # What part of the body or what you will do
    what: [
        'Lips'
        'Chest'
        'Butt'
        'Back'
        'Private Parts ;)'
        'Thighs'
        'Neck'
        'Ears'
        'Stomach'
        'All Over'
    ]


    # How you should interact with the what
    how: [
        'Spank'
        'Lick'
        'Suck'
        'Blow'
        'Kiss'
        'Rub'
        'Touch'
        'Anything You Want ;)'
        'Whip'
        'Feather'
        'Nibble'
        'Massage'
    ]


    # How long you should do it for
    howLong: [
        '10 Seconds'
        '10 Seconds'
        '30 Seconds'
        '30 Seconds'
        '1 Minute'
        'As long as you want ;)'
    ]


    # This allows you to ban certain interactions with certain parts
    banList:
        Lips: [
            'Spank'
            'Whip'
        ]
        Chest: [
            'Spank'
            'Whip'
        ]
        Butt:  [
            'Suck'
            'Lick'
        ]
        Back: [
            'Spank'
            'Whip'
        ]
        'Private Parts ;)': [
            'Spank'
            'Whip'
            'Nibble'
        ]
        Thighs: [
            'Spank'
            'Whip'
        ]
        Neck: [
            'Spank'
            'Whip'
        ]
        Ears: [
            'Spank'
            'Whip'
        ]
        Stomach: [
            'Spank'
            'Whip'
            'Nibble'
            'Suck'
        ]


    ###
    @function: play
    @description: Returns all the data needed to play the game.
    ###

    play: ->
        whatOpts = _.union @what, @actions
        what = whatOpts[Math.round(Math.random()*10000)%whatOpts.length]

        if what in @actions
            return {
                type: 'Sexy Action'
                action: what
            }

        okToDo =  _.difference @how, @banList[what]

        return {
            type: 'Sexy Fun'
            what: what
            how: okToDo[Math.round(Math.random()*10000)%okToDo.length]
            howLong: @howLong[Math.round(Math.random()*10000)%@howLong.length]
            isBlindFolded: if Math.round(Math.random()*10000)%2 is 1 then 'Yes' else 'No'
        }



module.exports = new SexyTime()