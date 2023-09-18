hero('Axe').
hero('Pudge').
hero('Trent Protector').
hero('Mars').
hero('Alchemist').
hero('Bristelbeck').
hero('Centaur Warrunner').
hero('Chaos Knight').
hero('Dragon Knight').
hero('Dawnbreaker').
hero('Anti Mage').
hero('Arc Warden').
hero('Bloodseeker').
hero('Bounty Hunter').
hero('Clinkz').
hero('Faceless Void').
hero('Gyrocopter').
hero('Phantom Assassin').
hero('Drow Ranger').
hero('Monkey King').
hero('Grimstroke').
hero('Crystal Maiden').
hero('Disruptor').
hero('Enchantress').
hero('Jakiro').
hero('Lich').
hero('Lina').
hero('Lion').
hero('Oracle').
hero('Puck').

popular('Axe' , 1, fact).  % популярность 1
popular('Alchemist' , 2, fact).  % популярность 2
popular('Anti Mage' , 3, fact).  % популярность 3
popular('Arc Warden' , 4, fact).  % популярность 4
popular('Bloodseeker' , 5, fact).  % популярность 5
popular('Bounty Hunter' , 6, fact).  % популярность 6
popular('Bristelbeck' , 7, fact).  % популярность 7
popular('Centaur Warrunner' , 8,fact).  % популярность 8
popular('Chaos Knight' , 9, fact).  % популярность 9
popular('Clinkz' , 10,fact).  % популярность 10
popular('Crystal Maiden' , 11, fact).  % популярность 11
popular('Dawnbreaker' , 12, fact). % популярность 12
popular('Disruptor', 13, fact). % популярность 13
popular('Dragon Knight', 14, fact).  % популярность14
popular('Drow Ranger', 15, fact). % популярность 15
popular('Enchantress' , 16, fact).  % популярность 16
popular('Faceless Void' , 17, fact).  % популярность 17
popular('Grimstroke' , 18, fact).  % популярность 18
popular('Gyrocopter' , 19, fact).  % популярность 19
popular('Jakiro' , 20, fact).  % популярность 20
popular('Lich' , 21,fact).  % популярность 21
popular('Lina' , 22, fact).  % популярность 22
popular('Lion' , 23,fact).  % популярность 23
popular('Mars' , 24, fact).  % популярность 24
popular('Monkey King' , 25, fact). % популярность 25
popular('Oracle', 26, fact). % популярность 26
popular('Phantom Assassin', 27, fact).  % популярность 27
popular('Puck', 28, fact). % популярность 28
popular('Pudge', 29, fact). % популярность 29
popular('Trent Protector', 30, fact). % популярность 30

is_popular(X,rule) :- popular(X, Y, fact), Y>=10. % если популярность больше 10, то герой популярный
no_popular(X,rule) :- popular(X, Y, fact), Y<10. % если популярность меньше 10, то герой непопулярный

winrate('Axe' , 46, fact).  % популярность 1
winrate('Alchemist' , 51, fact).  % популярность 2
winrate('Anti Mage' , 34, fact).  % популярность 3
winrate('Arc Warden' , 43, fact).  % популярность 4
winrate('Bloodseeker' , 47, fact).  % популярность 5
winrate('Bounty Hunter' , 52, fact).  % популярность 6
winrate('Bristelbeck' , 60, fact).  % популярность 7
winrate('Centaur Warrunner' , 52,fact).  % популярность 8
winrate('Chaos Knight' , 54, fact).  % популярность 9
winrate('Clinkz' , 41,fact).  % популярность 10
winrate('Crystal Maiden' , 61, fact).  % популярность 11
winrate('Dawnbreaker' , 55, fact). % популярность 12
winrate('Disruptor', 34, fact). % популярность 13
winrate('Dragon Knight', 72, fact).  % популярность14
winrate('Drow Ranger', 22, fact). % популярность 15
winrate('Enchantress' , 91, fact).  % популярность 16
winrate('Faceless Void' , 56, fact).  % популярность 17
winrate('Grimstroke', 74, fact).  % популярность 18
winrate('Gyrocopter' , 53, fact).  % популярность 19
winrate('Jakiro' , 22, fact).  % популярность 20
winrate('Lich' , 43,fact).  % популярность 21
winrate('Lina' , 64, fact).  % популярность 22
winrate('Lion' , 72,fact).  % популярность 23
winrate('Mars' , 41, fact).  % популярность 24
winrate('Monkey King' , 32, fact). % популярность 25
winrate('Oracle', 55, fact). % популярность 26
winrate('Phantom Assassin', 43, fact).  % популярность 27
winrate('Puck', 61, fact). % популярность 28
winrate('Pudge', 99, fact). % популярность 29
winrate('Trent Protector', 47, fact). % популярность 30

is_winrate(X,rule) :- winrate(X, Y, fact), Y>=50. % если winrate>50, то герой имеет большой винрейт

father('Pudge', 'Axe'). % Пудж отец Акса
father('Pudge', 'Dawnbreaker'). % Пудж отец Давнбреакер
father('Axe', 'Lina'). % Акс отец Лины
father('Anti Mage', 'Lion'). % Анти Маг отец Лиона
mother('Dawnbreaker', 'Lich'). % Давнбреакер мать лича
mother('Drow Ranger', 'puck'). % Дров Ренджер мама пака
brother(X,Y) :- father(Z,X),father(Z,Y).
brother(X,Y) :- mother(Z,X),mather(Z,Y).
grandpa(X,Y) :- father(X, Z), father(Z, Y). % если X отец Z ,а Z отец Y, то X Дедушка Y
grandpa(X,Y) :- father(X, Z), mother(Z,Y). % если X отец Z ,а Z мама Y, то X Дедушка Y
uncle(X,Y) :- father(Z,Y),brother(X,Z), X \= Z. % если Z отец Y,а X брат Z,то X и Y братья
uncle(X,Y) :- mother(Z,Y),brother(X,Z), X \= Z. % если Z мать Y,а X брат Z,то X и Y братья