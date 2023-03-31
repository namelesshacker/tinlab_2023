//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
//NO_QUERY

/*

*/
//NO_QUERY

/*

*/
A[] not (Schip_l(0).Cross1 && not (Sluisdeur_l.Closed || Sluisdeur_r.Closed)

/*

*/
//NO_QUERY

/*

*/
A[] not (Schip_l(0).Cross2 && not (Sluisdeur_l.Open || Sluisdeur_r.Closed || nivelleer.Nivelleren || Sluisdeur_r.Open || Sluisdeur_l.Closed || Schip_l(1).Safe))

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

*/
A[] not deadlock
