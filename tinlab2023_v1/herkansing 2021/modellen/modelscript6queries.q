//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
A[] not (Deuren.hoog_open && Sluis.water != Sluis.water_hoog)

/*

*/
A[] not (Deuren.laag_open && Sluis.water != Sluis.water_laag)

/*

*/
Ship.ship_can_move-->Ship.ship_can_move

/*

*/
A[] not (Deuren.laag_open && Deuren.hoog_open)

/*

*/
Ship.ship_can_move-->Stoplicht.Green

/*

*/
Deuren.hoog_open-->Stoplicht.Green

/*

*/
Ship.ship_can_move-->Deuren.Closed

/*

*/
Deuren.Closed-->Stoplicht.Red

/*

*/
Deuren.hoog_open-->Deuren.Closed

/*

*/
Deuren.laag_open-->Deuren.Closed

/*

*/
(Deuren.hoog_open||Deuren.laag_open)-->(Deuren.laag_open||Deuren.hoog_open)

/*

*/
Stoplicht.Green-->Stoplicht.Green

/*

*/
Sensor.Wait-->Sensor.Wait

/*

*/
A[] not ((Deuren.hoog_open||Deuren.laag_open||Deuren.Opening_laag||Deuren.Opening_hoog||Deuren.Closing_hoog||Deuren.Closing_laag) && (Sluis.Draining||Sluis.Filling||Sluis.draining2||Sluis.Filling2))

/*

*/
A[] not (Stoplicht.Green && not (Deuren.hoog_open||Deuren.laag_open||Deuren.stopgaplow1||Deuren.stopgaplow2||Deuren.stopgaphigh1||Deuren.stopgaphigh2))

/*

*/
E<> (Ship.ship_can_move&&Stoplicht.Green)

/*

*/
Deuren.laag_open-->Stoplicht.Green

/*

*/
Sluis.Draining-->Deuren.laag_open

/*

*/
A[] not deadlock
