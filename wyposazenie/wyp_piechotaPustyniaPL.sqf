private ["_type", "_unit"]; 			//nie tykać
_typJednostki = _this select 0;			//nie tykać
_jednostka = _this select 1;			//nie tykać
if (!local _unit) exitWith {};			//nie tykać

// CZYSZCZENIE WYPOSAŻENIA
removeAllWeapons _jednostka;
removeAllItems _jednostka;
removeAllAssignedItems _jednostka;
removeUniform _jednostka;
removeVest _jednostka;
removeBackpack _jednostka;
removeHeadgear _jednostka;
removeGoggles _jednostka;

#include "wyp_definicje.sqf" //NIE TYKAĆ

// DODAWANIE RZECZY OGÓLNYCH
_jednostka forceAddUniform "PSZ_U_PL_DES_wz2010_Crye_Folded";
_jednostka addHeadgear "PSZ_H_wz2005_DES_ESS";
_jednostka linkItem _mapa;
_jednostka linkItem _krotkieRadio;
_jednostka linkItem _kompas;
_jednostka linkItem _dagr;
_jednostka linkItem _gps;
_jednostka linkItem _noktowizja;
_jednostka addItemToUniform _kajdanki;
_jednostka addItemToUniform _kajdanki;
_jednostka addItemToUniform _stroboskop;
_jednostka addItemToUniform _stroboskop;
_jednostka addItemToUniform _beret;
_jednostka addItemToUniform _zatyczkiDoUszu;
_jednostka addGoggles "rhs_googles_yellow";   

switch (_typJednostki) do {

	// WYPOSAŻENIE DOWÓDCY
	case "dow":{
		_jednostka addVest "PSZ_V_UKO_H_DES_CO_Headset";
		_jednostka addItemToUniform _eotech;
		_jednostka addmagazines [_flaraCzerwona,4];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneNiebieskie,4];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addBackpack "tf_rt1523g_sage";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_atropina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon _bocznaFlara;
		_jednostka addItemToBackpack _bateriaDoWskaznika;
		_jednostka addWeapon _wskaznikLaserowy;
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;  

	};
	
	// WYPOSAŻENIE MEDYKA
	case "med":{
		_jednostka addVest "PSZ_V_UKO_H_DES_M_Headset";
		_jednostka addItemToUniform _eotech;
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_granatHukowy,2];
		_jednostka addBackpack "PSZ_B_wz93_Medical_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,30];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,15];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,15];
		(unitBackpack _jednostka) addItemCargoGlobal [_atropina,15];
		(unitBackpack _jednostka) addItemCargoGlobal [_staza,8];
		(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,4];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon _bocznaFlara;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_Medic"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE GRENADIERA
	case "grenadier":{
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addItemToUniform _eotech;
		_jednostka addmagazines [_zielonyDym,3];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneZielone,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		_jednostka addWeapon _berylZGranatnikiem;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE STRZELCA RTO
	case "rto":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneZolte,2];
		_jednostka addBackpack "tf_rt1523g_sage";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,15];
		(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE MECHANIKA
	case "mechanik":{
		removeUniform _jednostka;
		_jednostka forceAddUniform "PSZ_U_PL_DES_wz2010_Polar";
		_jednostka addItemToUniform _kajdanki;
		_jednostka addItemToUniform _kajdanki;
		_jednostka addItemToUniform _stroboskop;
		_jednostka addItemToUniform _stroboskop;
		_jednostka addItemToUniform _beret;
		_jednostka addItemToUniform _zatyczkiDoUszu;
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneZielone,2];
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_narzedzia,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,15];
		(unitBackpack _jednostka) addItemCargoGlobal [_zielonyDym,6];
		_jednostka addWeapon _miniBeryl;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder"; 
		[this,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE AMUNICYJNEGO KM
	case "amunicyjnykm":{
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addItemToUniform _eotech;
		_jednostka addmagazines [_niebieskiDym,3];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addBackpack "PSZ_B_wz97_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_zapasowaLufa,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoKm,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE CELOWNICZEGO KM
	case "celowniczykm":{
		_jednostka addItemToUniform "PSZ_AccO_PCS5";
		_jednostka addVest "PSZ_V_UKO_L_DES_MG_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoKm,2];
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		_jednostka addWeapon _km;
		_jednostka addPrimaryWeaponItem _celownikDlaKm;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE CELOWNICZEGO RPG
	case "celowniczyrpg":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addItemToUniform "rhs_acc_1pn93_2";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,4];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		_jednostka addWeapon _miniBeryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		_jednostka addWeapon _rpg7;
		_jednostka addSecondaryWeaponItem _celownikDlaRpg;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE AMUNICYJNEGO RPG
	case "amunicyjnyrpg":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneCzerwone,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addBackpack "PSZ_B_wz97_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;  
	};
	
	case "snajper":{
		removeAllWeapons _jednostka;
		removeAllItems _jednostka;
		removeAllAssignedItems _jednostka;
		removeVest _jednostka;
		removeBackpack _jednostka;
		removeHeadgear _jednostka;
		removeGoggles _jednostka;
		_jednostka addVest "PSZ_V_Kontraktor_DES";
		_jednostka linkItem _mapa;
		_jednostka linkItem _krotkieRadioSnajperow;
		_jednostka linkItem _kompas;
		_jednostka linkItem _dagr;
		_jednostka linkItem _gps;
		_jednostka linkItem _noktowizjaGen4;
		_jednostka addItemToUniform _kajdanki;
		_jednostka addItemToUniform _kajdanki;
		_jednostka addItemToUniform _stroboskop;
		_jednostka addItemToUniform _stroboskop;
		_jednostka addItemToUniform _beret;
		_jednostka addItemToUniform _zatyczkiDoUszu;
		_jednostka addmagazines [_amunicjaDoTora,2];
		_jednostka addmagazines [_amunicjaDoP99,4];
		_jednostka addmagazines [_bialyDym,2];
		_jednostka addmagazines [_czerwonyDym,2];
		_jednostka addmagazines [_swiatloChemiczneZolte,2];
		_jednostka addmagazines [_granatIR,2];
		_jednostka addmagazines [_flaraCzerwona,3];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addBackpack "PSZ_B_wz97_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoTora,8];
		_jednostka addItemToBackpack "ACE_DAGR";
		_jednostka addItemToBackpack "ACE_ATragMX";
		_jednostka addItemToBackpack "ACE_microDAGR";
		_jednostka addItemToBackpack "ACE_MapTools";
		_jednostka addHeadgear "PSZ_H_Booniehat_DES";
		_jednostka addWeapon "PSZ_Tor";
		_jednostka addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
		_jednostka addWeapon "PSZ_P99";
		_jednostka addHandgunItem "muzzle_snds_L";
		_jednostka addWeapon "ACE_Vector";
	};
	
	case "obserwator":{
		removeAllWeapons _jednostka;
		removeAllItems _jednostka;
		removeAllAssignedItems _jednostka;
		removeVest _jednostka;
		removeBackpack _jednostka;
		removeHeadgear _jednostka;
		removeGoggles _jednostka;
		_jednostka addVest "PSZ_V_Kontraktor_DES";
		_jednostka linkItem _mapa;
		_jednostka linkItem _krotkieRadioSnajperow;
		_jednostka linkItem _kompas;
		_jednostka linkItem _dagr;
		_jednostka linkItem _gps;
		_jednostka linkItem _noktowizjaGen4;
		_jednostka addItemToUniform _kajdanki;
		_jednostka addItemToUniform _kajdanki;
		_jednostka addItemToUniform _stroboskop;
		_jednostka addItemToUniform _stroboskop;
		_jednostka addItemToUniform _beret;
		_jednostka addItemToUniform _zatyczkiDoUszu;
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,2];
		_jednostka addmagazines [_amunicjaDoP99,4];
		_jednostka addmagazines [_bialyDym,2];
		_jednostka addmagazines [_czerwonyDym,2];
		_jednostka addmagazines [_swiatloChemiczneZolte,2];
		_jednostka addmagazines [_granatIR,2];
		_jednostka addmagazines [_flaraCzerwona,3];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addBackpack "PSZ_B_wz97_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,20];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_atropina,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_staza,4];
		(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,8];
		_jednostka addItemToBackpack "ACE_DAGR";
		_jednostka addItemToBackpack "ACE_ATragMX";
		_jednostka addItemToBackpack "ACE_microDAGR";
		_jednostka addItemToBackpack "ACE_MapTools";
		_jednostka addHeadgear "PSZ_H_Booniehat_DES";
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "PSZ_P99";
		_jednostka addHandgunItem "muzzle_snds_L";
		_jednostka addWeapon "ACE_Vector";
	};
	
	case "saperladunki":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		_jednostka addItemToBackpack _zastawDoRozbrajania;
		_jednostka addItemToBackpack _zapalnikM26;
		_jednostka addItemToBackpack _zapalnik;
		_jednostka addItemToBackpack _duzyLadunekWybuchowy;
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		_jednostka addWeapon _bocznaFlara;
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	case "saper":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
		_jednostka addBackpack "PSZ_B_wz93_DES";
		_jednostka addItemToBackpack _zastawDoRozbrajania;
		_jednostka addItemToBackpack _zapalnikM26;
		_jednostka addItemToBackpack _zapalnik;
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		_jednostka addItemToBackpack "MineDetector";
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		_jednostka addWeapon _bocznaFlara;
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	case "strzelecwyborowy":{
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoAlexa,10];
		_jednostka addmagazines [_swiatloChemiczneZolte,2];
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoAlexa,2];
		_jednostka addWeapon _alex;
		_jednostka addPrimaryWeaponItem _celownikSOS;
		_jednostka addWeapon _bocznaFlara;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE AMUNICYJNEGO SPIKE
	case "amunicyjnyspike":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset"; 
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_swiatloChemiczneZielone,2];
		_jednostka addBackpack "PSZ_B_wz97_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_zielonyDym,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoSPIKE,1];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE CELOWNICZEGO SPIKE
	case "celowniczyspike":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _adrenalina;
		_jednostka addItem _adrenalina;
		_jednostka addmagazines [_zielonyDym,2];
		_jednostka addmagazines [_bialyDym,5];
		_jednostka addBackpack "PSZ_B_wz97_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoSPIKE,2];
		_jednostka addWeapon _miniBeryl;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon _spike;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE AMUNICYJNEGO PLOT
	case "amunicyjnyplot":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_swiatloChemiczneZielone,2];
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _adrenalina;
		_jednostka addItem _adrenalina;
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoIgly,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,15];
		_jednostka addWeapon _beryl;
		_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE CELOWNICZEGO PLOT
	case "celowniczyplot":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _adrenalina;
		_jednostka addItem _adrenalina;
		_jednostka addBackpack "PSZ_B_wz93_DES";
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoIgly,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,15];
		_jednostka addWeapon _miniBeryl;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon _igla;
		_jednostka addWeapon "Rangefinder"; 
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	
	
	// WYPOSAŻENIE AMUNICYJNEGO MOŹDZIEŻA
	case "amunicyjnymk":{
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";	
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _adrenalina;
		_jednostka addItem _adrenalina;
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_swiatloChemiczneZielone,2];
		_jednostka addmagazines [_bialyDym,8];
		_jednostka addmagazines [_zielonyDym,3];
		_jednostka addBackpack "rhs_M252_Bipod_Bag";
		_jednostka addWeapon _miniBeryl;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon _bocznaFlara;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
	// WYPOSAŻENIE OPERATORA MOŹDZIEŻA
	case "operatormk":{
		_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";	
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _bandaz;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _morfina;
		_jednostka addItem _adrenalina;
		_jednostka addItem _adrenalina;
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
		_jednostka addmagazines [_swiatloChemiczneZielone,2];
		_jednostka addmagazines [_bialyDym,8];
		_jednostka addmagazines [_zielonyDym,3];
		_jednostka addBackpack "rhs_M252_Gun_Bag";
		_jednostka addWeapon _miniBeryl;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon _bocznaFlara;
		_jednostka addWeapon "Rangefinder";
		[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
	};
	
}
