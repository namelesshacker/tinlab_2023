Wat is het verschil tussen system- en softwareengineering?
https://www.geeksforgeeks.org/difference-between-system-engineer-and-software-engineer/#:~:text=01.-,A%20System%20Engineer%20is%20a%20person%20who%20deals%20with%20the,of%20software%20applications%2Fsoftware%20products.
https://er.yuvayana.org/difference-between-software-engineering-and-system-engineering/
https://www.roberthalf.com/blog/salaries-and-skills/what-it-takes-to-be-a-software-engineer-or-systems-engineer
https://www.quora.com/What-is-the-difference-between-a-system-and-a-software
https://www.computersciencedegreehub.com/faq/software-engineering-vs-software-development/
https://www.differencebetween.com/difference-between-software-engineering-and-vs-system-engineering/

Wat zijn requirements en specications?
https://agilescrumgroup.nl/product-backlog/
https://nl.wikipedia.org/wiki/Requirementsanalyse
http://www.chilico.nl/artikelen/businessrequirements/business_en_functionelerequirements.html
https://iir.nl/blog/goede-requirements-zijn-het-fundament-van-de-informatievoorziening/
https://qualitybs.wordpress.com/2015/03/13/hoe-maak-je-een-user-requirement-specification-voor-operationele-systemen/
https://www.bpmcompany.eu/in-hoeverre-zijn-requirements-en-specificaties-nuttig/
https://www.reaco.nl/blog/wat-zijn-agile-requirements/
Er bestaat ook een 6-variabelen model. . .Wat is dat?
https://www.uni-due.de/imperia/md/content/swe/papers/icsoft16a.pdf
Wat voor soorten requirements zijn er zoal te vinden?
Hoe verkrijgt men requirements?
Wat voor requirement elicitation technieken zijn er zoal?
Wat is het verschil tussen functionele en niet-functionele
requirements?
Wat verstaat men onder mode confusion?
http://automation.forthillgroup.com/themes/mode-confusion
https://www.linkedin.com/pulse/confusion-cockpit-understanding-human-performance-david-thompson/
Wat verstaat men onder de automatiseringsparadox?


Zoek uit:
wat er mis ging met de Therac
wat er mis ging tijdens vlucht 1951
wat de kernramp in Tsjernobyl in 1986 veroorzaakte
Zoek naast bovenstaande rampen nog drie gevallen uit, waarin een
systeem faalde en beoordeel deze volgens het onderscheid
hardware/software/gebruik
4 variabelen model
requirements vs. specications




scenario
2 schepen van beneden
2 schepen, een boven, een beneden
3 schepen, 1 boven 2 beneden


Het model begint met een lege queue en een lage waterstand.
Een model wacht 10 seconden na de eerste binnenkomst van een schip op een volgend schip.
Elk schip dat komt als de  sluis bezig is wordt afgehandeld als de pomp nog niet is begonnen.
Als de pomp is begonnen en er komt een schip aan dan moet deze wachten.
Wachtende schepen worden toegevoegd aan een lijst.
Op het moment dat de deuren open zijn en de sluis leeg dan kunnen wachtende schepen binnenvaren.



gate 
guard (len>1 en len <2) geeft deadlock

Schip template
Schip geeft signaal
Si




deuren dicht
gate is leeg
schip 1 komt aan van links en geeft signaal
deur gaat open
deur gaat dicht
nog ruimte voor 1
wact max 20 sec voor ander schip
schipt 2 komt aan van links en geeft signaal
deur gaat open
deur gaat dicht
gat is vol
waterpijl bijwerken
schip 3 komt aan van rechts
gat is vol
schip moet wachten
schip 3 heeft prioriteit
waterpijl is bijgewerkt
deur gaat open
schip 1 gaat weg
schip 2 gaat weg
deur gaat dicht
schip 3 meld zich
schip 3 heeft prioriteit en mag in gate






zoek een regel
.*(\r?\n|$)


behoudt 
\{[^{}]*\}

vervang de rest

@online{ID,	ALTauthor = {author},	ALTeditor = {editor},	title = {title},	date = {date},	url = {},}

