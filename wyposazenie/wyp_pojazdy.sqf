private ["_type", "_unit"]; 			//nie tykać
_typJednostki = _this select 0;			//nie tykać
_jednostka = _this select 1;			//nie tykać
if (!local _unit) exitWith {};			//nie tykać

// CZYSZCZENIE WYPOSAŻENIA
clearWeaponCargoGlobal _jednostka;
clearMagazineCargoGlobal _jednostka;
clearItemCargoGlobal _jednostka;
clearBackpackCargo _jednostka;

#include "wyp_definicje.sqf" //NIE TYKAĆ

switch (_typJednostki) do {
	
	//Dla BWP-1, KTO ROSOMAK
	case "bwp":{
		_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,35];
		_jednostka addItemCargoGlobal [_amunicjaDoAlexa,10];
		_jednostka addItemCargoGlobal [_amunicjaDoKm,5];
		_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,10];
		_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,10];
		_jednostka addItemCargoGlobal [_bialyDym,50];
		_jednostka addItemCargoGlobal [_bandaz,15];
		_jednostka addItemCargoGlobal [_morfina,10];
		_jednostka addItemCargoGlobal [_adrenalina,10];
		_jednostka addItemCargoGlobal [_atropina,10];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,8];
		_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,3];
		_jednostka addItemCargoGlobal [_amunicjaDoIgly,3];
		_jednostka addItemCargoGlobal [_malyLadunekWybuchowy,5];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_granatZapalajacy,5];
		};
		
	// BLACK HOWK MEDEVAC 
	case "blackhowkmed":{
		_jednostka addItemCargoGlobal [_bandaz,50];
		_jednostka addItemCargoGlobal [_morfina,30];
		_jednostka addItemCargoGlobal [_adrenalina,30];
		_jednostka addItemCargoGlobal [_atropina,30];
		_jednostka addItemCargoGlobal [_staza,10];
		_jednostka addItemCargoGlobal [_kajdanki,20];
		_jednostka addItemCargoGlobal [_zatyczkiDoUszu,20];
		_jednostka addItemCargoGlobal [_osocze500ml,10];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_granatZapalajacy,5];
		};
		
	// BLACK HOWK
	case "blackhowk":{
		_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi ,75];
		_jednostka addItemCargoGlobal [_amunicjaDoAlexa,25];
		_jednostka addItemCargoGlobal [_amunicjaDoKm,10];
		_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,20];
		_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,20];
		_jednostka addItemCargoGlobal [_bialyDym,50];
		_jednostka addItemCargoGlobal [_bandaz,20];
		_jednostka addItemCargoGlobal [_morfina,10];
		_jednostka addItemCargoGlobal [_adrenalina,10];
		_jednostka addItemCargoGlobal [_atropina,10];
		_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,5];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_granatZapalajacy,5];

	};	
	
	// POJAZD SAPERSKI
	case "saperski":{
		_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,15];
		_jednostka addItemCargoGlobal [_malyLadunekWybuchowy,10];
		_jednostka addItemCargoGlobal [_duzyLadunekWybuchowy,10];
		_jednostka addItemCargoGlobal [_zapalnikM26,3];
		_jednostka addItemCargoGlobal [_bandaz,10];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,2];
		_jednostka addItemCargoGlobal [_bialyDym,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,10];
		_jednostka addItemCargoGlobal [_granatZapalajacy,10];
	};	
	
	// POJAZD SAPERSKI
	case "humvee":{
		_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,25];
		_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,8];
		_jednostka addItemCargoGlobal [_amunicjaDoKm,5];
		_jednostka addItemCargoGlobal [_bialyDym,20];
		_jednostka addItemCargoGlobal [_granatBojowy,10];
		_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,2];
		_jednostka addItemCargoGlobal [_amunicjaDoIgly,2];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_granatZapalajacy,5];
		_jednostka addItemCargoGlobal [_bandaz,10];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
	};
	
	// CIEŻARÓWKI ZAOPATRZENIOWE
	case "zaopatrzenie":{
		_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,50];
		_jednostka addItemCargoGlobal [_amunicjaDoAlexa,10];
		_jednostka addItemCargoGlobal [_amunicjaDoKm,8];
		_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,3];
		_jednostka addItemCargoGlobal [_amunicjaDoIgly,3];
		_jednostka addItemCargoGlobal [_bialyDym,30];
		_jednostka addItemCargoGlobal [_granatBojowy,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_granatZapalajacy,5];
		_jednostka addItemCargoGlobal [_bandaz,20];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
	};
	
	// POJAZDY NAPRAWCZE
	case "naprawczy":{
		_jednostka addItemCargoGlobal [_narzedzia,2];
	};
}
