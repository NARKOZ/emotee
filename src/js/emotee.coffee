###
originally based on http://amachang.sakura.ne.jp/misc/aamaker/
with inspiration from http://twitter.com/emotebot
###

# config
c =
  color: [ 'pink', 'gray', '#ffd300', 'red', 'blue', 'green', 'orange', 'black' ]
  head: [
    [ '(', ')' ],
    [ '|', '|' ],
    [ '｜', '｜' ]
  ]
  eyes: [
    [ '◕', '◕' ],
    [ '╹', '╹' ],
    [ '＞', '＜' ],
    [ '＾', '＾' ],
    [ '・', '・' ],
    [ '´', '`' ],
    [ '≧', '≦' ],
    [ 'ﾟ', 'ﾟ' ],
    [ ''', ''' ],
    [ '❛', '❛' ],
    [ '⊙', '⊙' ],
    [ '￣', '￣' ],
    [ '´・', '・`' ],
    [ '`・', '・´' ],
    [ '･ิ', '･ิ' ],
    [ '◕ˇ', 'ˇ◕' ]
  ]
  cheeks: [
    [ '', '' ],
    [ '*', '' ],
    [ '', '*' ],
    [ '', '#' ],
    [ '#', '' ],
    [ '✿', '' ],
    [ '', '✿' ],
    [ '', '；' ],
    [ '；', '' ],
    [ '｡', '' ],
    [ '', '｡' ],
    [ '', '▰' ],
    [ '▰', '' ],
    [ '', '๑' ],
    [ '๑', '' ],
    [ '｡', '｡' ],
    [ '▰', '▰' ],
    [ '๑', '๑' ]
  ]
  mouth: [ 'ω', '∀', '▽', '△', 'Д', '□', '～', 'ー', 'ェ', 'ρ', 'o' ]
  hands: [
    [ '', '', '', '', '' ],
    [ '', '', 'm', '', '' ],
    [ '', '', 'ლ', '', '' ],
    [ 'ლ', '', '', 'ლ', '' ],
    [ '', '｢', '', '', '｢' ],
    [ '', 'n', '', '', 'η' ],
    [ '', '∩', '', '∩', '' ],
    [ '∩', '', '', '', '∩' ],
    [ 'ヽ', '', '', '', 'ノ' ],
    [ '┐', '', '', '', '┌' ],
    [ '╮', '', '', '', '╭' ],
    [ '<', '', '', '', '/' ],
    [ '╰', '', '', ' ', '' ],
    [ 'o', '', '', '', 'o' ],
    [ 'o', '', '', '', 'ツ' ],
    [ '', '', '', '', 'ﾉｼ' ],
    [ '', ' つ', '', '', 'つ' ],
    [ '', ' ', '', '', 'o彡ﾟ' ]
  ]

color = document.getElementById 'color'
elem  = document.getElementById 'smilie'
style = elem.style

random      = (n)     -> Math.floor Math.random() * n
randSelect  = (array) -> array[random(array.length)]

restoreOptions = ->
  for i in [0...color.children.length]
    color[i].selected = 'true' if color[i].value is localStorage['color']

saveColor = ->
  if color.value is 'default'
    localStorage.removeItem 'color'
  else
    localStorage['color'] = color.value
  generate()

generate = ->
  head        = randSelect c.head
  eyes        = randSelect c.eyes
  cheeks      = randSelect c.cheeks
  mouth       = randSelect c.mouth
  hands       = randSelect c.hands
  style.color = if localStorage['color'] then localStorage['color'] else randSelect c.color

  elem.textContent = [
    hands[0], head[0], hands[1] or (if hands[3] then '' else cheeks[0]), eyes[0], hands[2] or
    mouth, eyes[1], hands[3] or (if hands[1] then '' else cheeks[1]), head[1], hands[4]
  ].join ''

generate()

elem.onclick = -> generate()

unless color is null
  color.onchange = -> saveColor()
  window.onload = -> restoreOptions()
