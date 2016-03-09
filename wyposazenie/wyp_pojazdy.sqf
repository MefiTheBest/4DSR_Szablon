if (!local _unit) exitWith {};			//nie tykać
if (!isServer) exitWith {};				//nie tykać

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
	
	//Dla BWP-1, KTO ROSOMAK
	case "bwp":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaMdms,35];
				_jednostka addItemCargoGlobal [_amunicjaAlex,10];
				_jednostka addItemCargoGlobal [_amunicjaKm,5];
				_jednostka addItemCargoGlobal [_amunicjaPALLAD,10];
				_jednostka addItemCargoGlobal [_amunicjaRpgVL,10];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaIgla,3];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaBerylZeSmugowymi,35];
				_jednostka addItemCargoGlobal [_amunicjaAlex,10];
				_jednostka addItemCargoGlobal [_amunicjaKm,5];
				_jednostka addItemCargoGlobal [_amunicjaPALLAD,10];
				_jednostka addItemCargoGlobal [_amunicjaRpgVL,10];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaIgla,3];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaM4ZeSmugowymi ,15];
				_jednostka addItemCargoGlobal [_amunicjaM4BezSmugowych ,20];
				_jednostka addItemCargoGlobal [_amunicjaSr25,10];
				_jednostka addItemCargoGlobal [_amunicjaKmUsa,5];
				_jednostka addItemCargoGlobal [_amunicjaGranatnikM4,10];
				_jednostka addItemCargoGlobal [_amunicjaM136,10];
				_jednostka addItemCargoGlobal [_m136,10];
				_jednostka addItemCargoGlobal [_amunicjaJavelin,3];
				_jednostka addItemCargoGlobal [_amunicjaStinger,3];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,50];
		_jednostka addItemCargoGlobal [_bandazUciskowy,15];
		_jednostka addItemCargoGlobal [_morfina,10];
		_jednostka addItemCargoGlobal [_adrenalina,10];
		_jednostka addItemCargoGlobal [_atropina,10];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,8];
		_jednostka addItemCargoGlobal [_malyLadunekWybuchowy,5];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		};
		
	// MEDEVAC 
	case "medevac":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal [_bandazUciskowy ,15];
				_jednostka addItemCargoGlobal [_bandazElastyczny ,15];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_bandazUciskowy ,15];
				_jednostka addItemCargoGlobal [_bandazElastyczny ,15];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_bandazUciskowy ,15];
				_jednostka addItemCargoGlobal [_bandazElastyczny ,15];
			};
		};
		_jednostka addItemCargoGlobal [_bandazUciskowy,50];
		_jednostka addItemCargoGlobal [_bandazElastyczny ,50];
		_jednostka addItemCargoGlobal [_morfina,30];
		_jednostka addItemCargoGlobal [_adrenalina,30];
		_jednostka addItemCargoGlobal [_atropina,30];
		_jednostka addItemCargoGlobal [_staza,10];
		_jednostka addItemCargoGlobal [_kajdanki,20];
		_jednostka addItemCargoGlobal [_zatyczkiDoUszu,20];
		_jednostka addItemCargoGlobal [_osocze500ml,10];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		};
		
	// BLACK HOWK
	case "smiglowiec":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaMdms ,75];
				_jednostka addItemCargoGlobal [_amunicjaAlex,25];
				_jednostka addItemCargoGlobal [_amunicjaKm,10];
				_jednostka addItemCargoGlobal [_amunicjaPALLAD,20];
				_jednostka addItemCargoGlobal [_amunicjaRpgVL,20];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,5];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaBerylZeSmugowymi ,75];
				_jednostka addItemCargoGlobal [_amunicjaAlex,25];
				_jednostka addItemCargoGlobal [_amunicjaKm,10];
				_jednostka addItemCargoGlobal [_amunicjaPALLAD,20];
				_jednostka addItemCargoGlobal [_amunicjaRpgVL,20];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,5];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaM4ZeSmugowymi ,25];
				_jednostka addItemCargoGlobal [_amunicjaM4BezSmugowych ,50];
				_jednostka addItemCargoGlobal [_amunicjaSr25,25];
				_jednostka addItemCargoGlobal [_amunicjaKmUsa,10];
				_jednostka addItemCargoGlobal [_amunicjaGranatnikM4,20];
				_jednostka addItemCargoGlobal [_amunicjaM136,20];
				_jednostka addItemCargoGlobal [_m136,20];
				_jednostka addItemCargoGlobal [_amunicjaJavelin,5];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,50];
		_jednostka addItemCargoGlobal [_bandazUciskowy,20];
		_jednostka addItemCargoGlobal [_morfina,10];
		_jednostka addItemCargoGlobal [_adrenalina,10];
		_jednostka addItemCargoGlobal [_atropina,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];

	};	
	
	// POJAZD SAPERSKI
	case "saperski":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaMdms ,15];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaBerylZeSmugowymi ,15];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaM4ZeSmugowymi ,15];
				_jednostka addItemCargoGlobal [_amunicjaM4BezSmugowych ,15];
			};
		};
		_jednostka addItemCargoGlobal [_malyLadunekWybuchowy,10];
		_jednostka addItemCargoGlobal [_duzyLadunekWybuchowy,10];
		_jednostka addItemCargoGlobal [_zapalnikM26,3];
		_jednostka addItemCargoGlobal [_bandazUciskowy,10];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,2];
		_jednostka addItemCargoGlobal [_bialyDym,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,10];
		_jednostka addItemCargoGlobal [_flaraCzerwona,10];
	};	
	
	// POJAZD PIECHOTY
	case "samochod":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaMdms,25];
				_jednostka addItemCargoGlobal [_amunicjaRpgVL,8];
				_jednostka addItemCargoGlobal [_amunicjaKm,5];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,2];
				_jednostka addItemCargoGlobal [_amunicjaIgla,2];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaBerylZeSmugowymi,25];
				_jednostka addItemCargoGlobal [_amunicjaRpgVL,8];
				_jednostka addItemCargoGlobal [_amunicjaKm,5];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,2];
				_jednostka addItemCargoGlobal [_amunicjaIgla,2];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaM4ZeSmugowymi ,25];
				_jednostka addItemCargoGlobal [_amunicjaM4BezSmugowych ,25];
				_jednostka addItemCargoGlobal [_amunicjaM136,8];
				_jednostka addItemCargoGlobal [_m136,8];
				_jednostka addItemCargoGlobal [_amunicjaKmUsa,5];
				_jednostka addItemCargoGlobal [_amunicjaJavelin,2];
				_jednostka addItemCargoGlobal [_amunicjaStinger,2];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,20];
		_jednostka addItemCargoGlobal [_granatBojowy,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		_jednostka addItemCargoGlobal [_bandazUciskowy,10];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
	};
	
	// CIEŻARÓWKI ZAOPATRZENIOWE
	case "zaopatrzenie":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaMdms,50];
				_jednostka addItemCargoGlobal [_amunicjaAlex,10];
				_jednostka addItemCargoGlobal [_amunicjaKm,8];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaIgla,3];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaBerylZeSmugowymi,50];
				_jednostka addItemCargoGlobal [_amunicjaAlex,10];
				_jednostka addItemCargoGlobal [_amunicjaKm,8];
				_jednostka addItemCargoGlobal [_amunicjaSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaIgla,3];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaM4ZeSmugowymi ,25];
				_jednostka addItemCargoGlobal [_amunicjaM4BezSmugowych ,25];
				_jednostka addItemCargoGlobal [_amunicjaSr25,10];
				_jednostka addItemCargoGlobal [_amunicjaKmUsa,8];
				_jednostka addItemCargoGlobal [_amunicjaJavelin,3];
				_jednostka addItemCargoGlobal [_amunicjaStinger,3];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,30];
		_jednostka addItemCargoGlobal [_granatBojowy,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		_jednostka addItemCargoGlobal [_bandazUciskowy,20];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
	};
	
	// POJAZDY NAPRAWCZE
	case "naprawczy":{
		switch (_rodzajSil) do {
			case "kawaleriaPowietrznaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaMdms ,15];
			};
			case "piechotaPolska":{
				_jednostka addItemCargoGlobal [_amunicjaBerylZeSmugowymi ,15];
			};
			case "piechotaAmerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaM4ZeSmugowymi ,15];
				_jednostka addItemCargoGlobal [_amunicjaM4BezSmugowych ,15];
			};
		};
		_jednostka addItemCargoGlobal [_narzedzia,2];
	};
	
	// DLA SNAJPERÓW
	case "zwiadowcy":{
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
				_jednostka addItemCargoGlobal ["Leupold_Mk4" ,1];
				_jednostka addItemCargoGlobal ["optic_DMS" ,2];
				_jednostka addItemCargoGlobal ["optic_LRPS" ,2];
				_jednostka addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag" ,5];
				_jednostka addItemCargoGlobal ["ACE_HandFlare_Red" ,4];
				_jednostka addItemCargoGlobal ["B_IR_Grenade" ,5];
				_jednostka addItemCargoGlobal ["Chemlight_yellow" ,2];
				_jednostka addItemCargoGlobal ["SmokeShellGreen" ,5];
				_jednostka addItemCargoGlobal ["SmokeShellRed" ,5];
				_jednostka addItemCargoGlobal ["SmokeShell" ,20];
				_jednostka addItemCargoGlobal ["HandGrenade" ,5];
				_jednostka addItemCargoGlobal [_bandazUciskowy ,20];
				_jednostka addItemCargoGlobal [_morflina ,10];
				_jednostka addItemCargoGlobal [_adrenalina ,5];
				_jednostka addItemCargoGlobal [_atropina ,5];
				_jednostka addItemCargoGlobal [_osocze500ml ,5];
				_jednostka addItemCargoGlobal [_solFizjologiczna500ml ,10];
	};
}
