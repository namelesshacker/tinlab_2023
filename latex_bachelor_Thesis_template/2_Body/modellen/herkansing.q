//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
//NO_QUERY

/*

*/
//NO_QUERY

/*

*/
//NO_QUERY

/*
EEn stopluch staat altijd op groen als de deuren open staan en de pomp niet bezig is.
*/
A[] (stoplicht.Groen &&)

/*
Een stoplicht staat altijd op rood als de pomp bezig is

*/
//NO_QUERY

/*
Een stoplicht kan op groen staan als de deuren dicht zijn

*/
//NO_QUERY

/*
EEn stoplicht staat altijd op groen als de deuren open zijn

*/
//NO_QUERY

/*
Een deur kan nooit open staan als stopliht op rood en pomp is bezig

*/
//NO_QUERY

/*
Een deur kan nooit open gaar nadat stoplicht op groen is gezet

*/
//NO_QUERY

/*
Een deur gaat alleen open na wachttijd van enkele seconden, de pomp is niet actief en een schip is in AtArrivalState

*/
//NO_QUERY

/*
In geen enkele staat van de sluis behalve tussen de lowergate && uppergate en uppergate&&lowergate en de staten AtArrivalLow en AtEnteringHigh is de wachttijd langer dan 5 tijdseenheden

*/
A[] (sluis

/*
Voor alle paden gelft dat als water level hoger is dan water_hoog dan is pomp_water altjd false

*/
 (level > pomp.water_hoog --> !pomp.pomp_water)

/*
Voor alle paden in een pomp geldt dat als water level lager is dan water_laag pomp_water_weg is altijd false

*/
 (level<pomp.water_laag   -->(pomp.pomp_water_weg))

/*
Het zal nooit gebeuren dat een pomp water toevoegt als deuren open zjn, geen schip in sluis en stoplicht op groen

*/
E<>  (pomp.pomp_water &&! (deur.Dicht) && stoplicht.Groen)

/*
Het kan gebeuren dat bij pomp_water het stoplicht op rood staat, het schip in de sluis && deur is dicht, &&waterstand gelijk aan water_laag

*/
E<>  (pomp.pomp_water && stoplicht.Rood &&  deur.Dicht && level==pomp.water_laag)

/*
Er is een mogelijkheid  dat vanuit pomp_water get stoplicht op rood wordt gezet en water_level gelijk is aan water_laag

*/
E<>  (pomp.pomp_water && stoplicht.Rood && level==pomp.water_laag)

/*
Het kan voorkomen dat bij state pomp_water het waterniveay gelijk is aan water_laag
*/
E<> (pomp.pomp_water && level==pomp.water_laag)

/*

*/
A[] not (deur.open_high && sluis.water != sluis.water_hoog)

/*

*/
A[] not (deur.open_low && sluis.water != sluis.water_laag)

/*

*/
schip.AtEnteringHigh-->schip.AtEnteringHigh

/*

*/
A[] not (deur.open_low && deur.open_high)

/*

*/
schip.AtEnteringHigh-->stoplicht.Groen

/*

*/
deur.open_high-->stoplicht.Groen

/*

*/
schip.AtEnteringHigh-->deur.Dicht

/*

*/
deur.Dicht-->stoplicht.Rood

/*

*/
deur.open_low-->stoplicht.Groen

/*

*/
E<> (schip.AtEnteringHigh&&stoplicht.Groen)

/*

*/
deur.open_high-->deur.Dicht

/*

*/
sensor.Init-->sensor.Init

/*
Voor alle paden gelt dat er een mogelijkheid is dat deur is open\/dicht en sluis nivelleert omhoog\/omlaag 
*/
A[]  ((deur.open_high||deur.open_low||deur.open_low||deur.open_high||deur.open_low||deur.open_low) && (sluis.nivelleer_omlaag||sluis.nivelleer_omhoog||sluis.nivelleer_omlaag||sluis.nivelleer_omhoog))

/*
 als sluis omlaag nivelleert is er een ogoelijkheid dat de deur laag open is
*/
sluis.nivelleer_omlaag-->deur.open_low

/*

*/
A[]not deadlock
