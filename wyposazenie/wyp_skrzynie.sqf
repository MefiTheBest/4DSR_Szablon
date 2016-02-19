if (!local _unit) exitWith {};			//nie tykać
if (!isServer) exitWith {};			//nie tykać
private ["_type", "_unit"]; 			//nie tykać
_typJednostki = _this select 0;			//nie tykać
_jednostka = _this select 1;			//nie tykać
_rodzajSil = _this select 2;			//nie tykać

// CZYSZCZENIE WYPOSAŻENIA
clearWeaponCargoGlobal _jednostka;
clearMagazineCargoGlobal _jednostka;
clearItemCargoGlobal _jednostka;
clearBackpackCargo _jednostka;

#include "wyp_definicje.sqf" //NIE TYKAĆ

switch (_typJednostki) do {

	// DLA SNAJPERÓW
	case "snajperska":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal ["PSZ_Tor" ,1];
				_jednostka addItemCargoGlobal ["PSZ_Alex338" ,1];
				_jednostka addItemCargoGlobal ["R3F_M107_DES" ,1];
				_jednostka addItemCargoGlobal ["PSZ_127x99_Tor_7_R" ,10];
				_jednostka addItemCargoGlobal ["PSZ_86x70_Alex_5" ,10];
				_jednostka addItemCargoGlobal ["R3F_10Rnd_127x99_PEI_M107" ,2];
				_jednostka addItemCargoGlobal ["PSZ_9x19_P99_16" ,4];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal ["PSZ_Tor" ,1];
				_jednostka addItemCargoGlobal ["PSZ_Alex338" ,1];
				_jednostka addItemCargoGlobal ["R3F_M107_DES" ,1];
				_jednostka addItemCargoGlobal ["PSZ_127x99_Tor_7_R" ,10];
				_jednostka addItemCargoGlobal ["PSZ_86x70_Alex_5" ,10];
				_jednostka addItemCargoGlobal ["R3F_10Rnd_127x99_PEI_M107" ,2];
				_jednostka addItemCargoGlobal ["PSZ_9x19_P99_16" ,4];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_m2010 ,1];
				_jednostka addItemCargoGlobal [_m107 ,1];
				_jednostka addItemCargoGlobal [_sr25 ,1];
				_jednostka addItemCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag" ,10];
				_jednostka addItemCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010" ,10];
				_jednostka addItemCargoGlobal ["R3F_10Rnd_127x99_PEI_M107" ,2];
				_jednostka addItemCargoGlobal ["rhsusf_mag_7x45acp_MHP" ,4];
			};
		};
				_jednostka addItemCargoGlobal [_dwojnog ,2];
				_jednostka addItemCargoGlobal ["Leupold_Mk4",1];
				_jednostka addItemCargoGlobal ["optic_DMS",2];
				_jednostka addItemCargoGlobal ["optic_LRPS",2];
				_jednostka addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",5];
				_jednostka addItemCargoGlobal ["ACE_HandFlare_Red",4];
				_jednostka addItemCargoGlobal ["B_IR_Grenade",5];
				_jednostka addItemCargoGlobal ["Chemlight_yellow",2];
				_jednostka addItemCargoGlobal ["SmokeShellGreen",5];
				_jednostka addItemCargoGlobal ["SmokeShellRed",5];
				_jednostka addItemCargoGlobal ["SmokeShell",20];
				_jednostka addItemCargoGlobal ["HandGrenade",5];
				_jednostka addItemCargoGlobal ["ACE_Kestrel4500" ,2];
				_jednostka addItemCargoGlobal ["ACE_DAGR",2];
				_jednostka addItemCargoGlobal ["ACE_ATragMX",2];
				_jednostka addItemCargoGlobal ["ACE_Sandbag_empty",2];
				_jednostka addItemCargoGlobal ["ACE_microDAGR",2];
				_jednostka addItemCargoGlobal ["ACE_MapTools",2];
				_jednostka addItemCargoGlobal ["ACE_RangeCard",2];
	};
	
	case "piechota":{
		switch (_rodzajSil) do {
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi ,50];
				_jednostka addItemCargoGlobal [_amunicjaDoKm ,20];
				_jednostka addItemCargoGlobal [_bialyDym ,100];
				_jednostka addItemCargoGlobal [_granatBojowy ,100];
				_jednostka addItemCargoGlobal [_amunicjaDoRpgVL ,20];
				_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD ,40];
			};
		};
	};
	case "medyczne":{
				_jednostka addItemCargoGlobal [_bandaz ,200];
				_jednostka addItemCargoGlobal [_bandazElastyczny ,200];
				_jednostka addItemCargoGlobal [_morfina ,40];
				_jednostka addItemCargoGlobal [_adrenalina ,40];
				_jednostka addItemCargoGlobal [_atropina ,25];
				_jednostka addItemCargoGlobal [_osocze500ml ,40];
				_jednostka addItemCargoGlobal [_solFizjologiczna500ml ,40];
				_jednostka addItemCargoGlobal [_staza ,20];
				_jednostka addItemCargoGlobal [_apteczka ,10];
	};
}
