function [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR6000

%%
Table={'[6Li]+',6.01546,6.01343,6.01749;
        '[7Li]+',7.01546,7.01312,7.0178;
        '[9Be]+',9.01163,9.0087,9.01456;
        '[10B]+',10.01239,10.00917,10.01561;
        '[11B]+',11.00876,11.00527,11.01225;
        '[12C]+',11.99945,11.99569,12.00321;
        '[13C]+',13.00281,12.99878,13.00684;
        '[14N]+',14.00253,13.99824,14.00682;
        '[15N]+',14.99956,14.99501,15.00411;
        '[16O]+',15.99437,15.98958,15.99916;
        'OH+',17.00219,16.99715,17.00723;
        '[18O]+',17.99861,17.99333,18.00389;
        'H2O+',18.01002,18.00474,18.0153;
        'H3O+',19.01784,19.01232,19.02336;
        '[23Na]+',22.98922,22.98282,22.99562;
        '[24Mg]+',23.98449,23.97788,23.9911;
        '[25Mg]+',24.98529,24.97847,24.99211;
        '[26Mg]+',25.98204,25.97502,25.98906;
        'C2H2+',26.0151,26.00807,26.02213;
        '[27Al]+',26.98099,26.97376,26.98822;
        'C2H3+',27.02293,27.0157,27.03016;
        '[28Si]+',27.97638,27.96896,27.9838;
        'N2+',28.0056,27.99817,28.01303;
        '[29Si]+',28.97595,28.96833,28.98357;
        'HN2+',29.01342,29.0058,29.02104;
        '[30Si]+',29.97322,29.96541,29.98103;
        'NO+',29.99744,29.98963,30.00525;
        '[31P]+',30.97321,30.96521,30.98121;
        '[15N]O+',30.99447,30.98647,31.00247;
        'NOH+',31.00527,30.99727,31.01327;
        '[32S]+',31.97152,31.96334,31.9797;
        'O2+',31.98928,31.98109,31.99747;
        '[33S]+',32.97091,32.96254,32.97928;
        'O2H+',32.99711,32.98874,33.00548;
        '[34S]+',33.96732,33.95877,33.97587;
        'O[18O]+',33.99353,33.98498,34.00208;
        '[35Cl]+',34.9683,34.95958,34.97702;
        '[36S]+',35.96653,35.95763,35.97543;
        '[36Ar]+',35.967,35.9581,35.9759;
        'HCl+',35.97613,35.96723,35.98503;
        '[37Cl]+',36.96535,36.95628,36.97442;
        '[36Ar]H+',36.97482,36.96574,36.9839;
        '[38Ar]+',37.96218,37.95294,37.97142;
        '[39K]+',38.96316,38.95375,38.97257;
        '[38Ar]H+',38.97001,38.96059,38.97943;
        '[40Ar]+',39.96183,39.95225,39.97141;
        '[40Ca]+',39.96204,39.95246,39.97162;
        '[41K]+',40.96128,40.95153,40.97103;
        'ArH+',40.96966,40.95991,40.97941;
        '[42Ca]+',41.95807,41.94816,41.96798;
        'ArH2+',41.97748,41.96757,41.98739;
        '[43Ca]+',42.95822,42.94815,42.96829;
        '[44Ca]+',43.95493,43.9447,43.96516;
        'CO2+',43.98928,43.97904,43.99952;
        '[45Sc]+',44.95536,44.94497,44.96575;
        'CHO2+',44.99711,44.98671,45.00751;
        '[46Ti]+',45.95208,45.94153,45.96263;
        '[46Ca]+',45.95314,45.94259,45.96369;
        'NO2+',45.99235,45.98179,46.00291;
        '[47Ti]+',46.95121,46.9405,46.96192;
        '[48Ti]+',47.9474,47.93654,47.95826;
        '[48Ca]+',47.95199,47.94113,47.96285;
        '[49Ti]+',48.94732,48.9363,48.95834;
        '[50Ti]+',49.94424,49.93307,49.95541;
        '[50Cr]+',49.9455,49.93433,49.95667;
        '[50V]+',49.94661,49.93544,49.95778;
        '[51V]+',50.94341,50.93209,50.95473;
        'ClO+',50.96322,50.9519,50.97454;
        '[52Cr]+',51.93996,51.92849,51.95143;
        '[36Ar]O+',51.96191,51.95044,51.97338;
        '[53Cr]+',52.9401,52.92848,52.95172;
        '[37Cl]O+',52.96027,52.94865,52.97189;
        '[54Cr]+',53.93833,53.92656,53.9501;
        '[54Fe]+',53.93906,53.92729,53.95083;
        'ArN+',53.96491,53.95314,53.97668;
        '[55Mn]+',54.9375,54.92558,54.94942;
        '[56Fe]+',55.93439,55.92232,55.94646;
        'ArO+',55.95675,55.94468,55.96882;
        '[57Fe]+',56.93485,56.92264,56.94706;
        'ArOH+',56.96457,56.95235,56.97679;
        '[58Fe]+',57.93273,57.92037,57.94509;
        '[58Ni]+',57.93479,57.92243,57.94715;
        '[59Co]+',58.93265,58.92015,58.94515;
        '[60Ni]+',59.93024,59.91759,59.94289;
        '[61Ni]+',60.93051,60.91772,60.9433;
        '[62Ni]+',61.9278,61.91486,61.94074;
        '[63Cu]+',62.92905,62.91597,62.94213;
        '[64Ni]+',63.92742,63.9142,63.94064;
        '[64Zn]+',63.92859,63.91537,63.94181;
        '[65Cu]+',64.92724,64.91388,64.9406;
        '[66Zn]+',65.92548,65.91197,65.93899;
        '[67Zn]+',66.92658,66.91293,66.94023;
        '[68Zn]+',67.9243,67.91051,67.93809;
        '[137Ba]++',68.45237,68.43851,68.46623;
        '[69Ga]+',68.92503,68.9111,68.93896;
        '[138Ba]++',68.95208,68.93815,68.96601;
        '[70Ge]+',69.9237,69.90963,69.93777;
        '[70Zn]+',69.92477,69.9107,69.93884;
        '[71Ga]+',70.92415,70.90994,70.93836;
        '[72Ge]+',71.92153,71.90718,71.93588;
        '[73Ge]+',72.92291,72.90842,72.9374;
        '[74Ge]+',73.92063,73.906,73.93526;
        '[74Se]+',73.92193,73.9073,73.93656;
        '[75As]+',74.92105,74.90628,74.93582;
        'ArCl+',74.93069,74.91592,74.94546;
        '[76Se]+',75.91867,75.90376,75.93358;
        '[76Ge]+',75.92085,75.90594,75.93576;
        'Ar[36Ar]+',75.92938,75.91447,75.94429;
        '[77Se]+',76.91937,76.90432,76.93442;
        'Ar[37Cl]+',76.92774,76.91269,76.94279;
        '[78Se]+',77.91676,77.90157,77.93195;
        '[78Kr]+',77.91982,77.90463,77.93501;
        'Ar[38Ar]+',77.92457,77.90938,77.93976;
        '[79Br]+',78.91779,78.90246,78.93312;
        '[80Kr]+',79.91583,79.90036,79.9313;
        '[80Se]+',79.91597,79.9005,79.93144;
        'Ar2+',79.92422,79.90875,79.93969;
        '[81Br]+',80.91574,80.90013,80.93135;
        '[82Kr]+',81.91294,81.89719,81.92869;
        '[82Se]+',81.91615,81.9004,81.9319;
        '[83Kr]+',82.91359,82.8977,82.92948;
        '[84Kr]+',83.91096,83.89493,83.92699;
        '[84Sr]+',83.91288,83.89685,83.92891;
        '[85Rb]+',84.91124,84.89507,84.92741;
        '[86Sr]+',85.90871,85.8924,85.92502;
        '[86Kr]+',85.91006,85.89375,85.92637;
        '[87Sr]+',86.90833,86.89188,86.92478;
        '[87Rb]+',86.90863,86.89218,86.92508;
        '[88Sr]+',87.90506,87.88847,87.92165;
        '[89Y]+',88.9053,88.88857,88.92203;
        '[90Zr]+',89.90416,89.88729,89.92103;
        '[91Zr]+',90.9051,90.88809,90.92211;
        '[92Zr]+',91.90449,91.88734,91.92164;
        '[92Mo]+',91.90626,91.88911,91.92341;
        '[93Nb]+',92.90583,92.88854,92.92312;
        '[94Mo]+',93.90454,93.88711,93.92197;
        '[94Zr]+',93.90577,93.88834,93.9232;
        '[95Mo]+',94.90529,94.88772,94.92286;
        '[96Mo]+',95.90413,95.88641,95.92185;
        '[96Ru]+',95.90705,95.88933,95.92477;
        '[96Zr]+',95.90772,95.89,95.92544;
        '[97Mo]+',96.90547,96.88761,96.92333;
        '[98Ru]+',97.90474,97.88674,97.92274;
        '[98Mo]+',97.90486,97.88686,97.92286;
        '[99Ru]+',98.90539,98.88725,98.92353;
        '[100Ru]+',99.90367,99.88539,99.92195;
        '[100Mo]+',99.90693,99.88865,99.92521;
        '[101Ru]+',100.90503,100.8866,100.92346;
        '[102Ru]+',101.9038,101.88523,101.92237;
        '[102Pd]+',101.90506,101.88649,101.92363;
        '[103Rh]+',102.90496,102.88625,102.92367;
        '[104Pd]+',103.90349,103.88464,103.92234;
        '[104Ru]+',103.90488,103.88603,103.92373;
        '[105Pd]+',104.90454,104.88554,104.92354;
        '[106Pd]+',105.90294,105.8838,105.92208;
        '[106Cd]+',105.90591,105.88677,105.92505;
        '[107Ag]+',106.90455,106.88527,106.92383;
        '[108Pd]+',107.90334,107.88391,107.92277;
        '[108Cd]+',107.90364,107.88421,107.92307;
        '[109Ag]+',108.9042,108.88463,108.92377;
        '[110Cd]+',109.90245,109.88273,109.92217;
        '[110Pd]+',109.9046,109.88488,109.92432;
        '[111Cd]+',110.90363,110.88377,110.92349;
        '[112Cd]+',111.90221,111.88221,111.92221;
        '[112Sn]+',111.90427,111.88426,111.92428;
        '[113In]+',112.90351,112.88336,112.92366;
        '[113Cd]+',112.90385,112.8837,112.924;
        '[114Sn]+',113.90223,113.88193,113.92253;
        '[114Cd]+',113.90281,113.88251,113.92311;
        '[115Sn]+',114.90279,114.88235,114.92323;
        '[115In]+',114.90333,114.88289,114.92377;
        '[116Sn]+',115.90119,115.8806,115.92178;
        '[116Cd]+',115.90421,115.88362,115.9248;
        '[117Sn]+',116.9024,116.88167,116.92313;
        '[118Sn]+',117.90105,117.88017,117.92193;
        '[119Sn]+',118.90276,118.88173,118.92379;
        '[120Sn]+',119.90165,119.88048,119.92282;
        '[120Te]+',119.90347,119.8823,119.92464;
        '[121Sb]+',120.90327,120.88195,120.92459;
        '[122Te]+',121.9025,121.88103,121.92397;
        '[122Sn]+',121.90289,121.88142,121.92436;
        '[123Sb]+',122.90367,122.88206,122.92528;
        '[123Te]+',122.90372,122.88211,122.92533;
        '[124Te]+',123.90227,123.88051,123.92403;
        '[124Sn]+',123.90473,123.88297,123.92649;
        '[124Xe]+',123.90534,123.88358,123.9271;
        '[125Te]+',124.90388,124.88197,124.92579;
        '[126Te]+',125.90276,125.8807,125.92482;
        '[126Xe]+',125.90373,125.88167,125.92579;
        '[127I]+',126.90392,126.88171,126.92613;
        '[128Xe]+',127.90298,127.88063,127.92533;
        '[128Te]+',127.90391,127.88156,127.92626;
        '[129Xe]+',128.90424,128.88174,128.92674;
        '[130Xe]+',129.90295,129.88029,129.9256;
        '[130Te]+',129.90569,129.88304,129.92834;
        '[130Ba]+',129.90578,129.88313,129.92844;
        '[131Xe]+',130.90453,130.88173,130.92732;
        '[132Xe]+',131.90359,131.88065,131.92654;
        '[132Ba]+',131.90451,131.88156,131.92746;
        '[133Cs]+',132.90491,132.88181,132.92801;
        '[134Ba]+',133.90396,133.88071,133.92722;
        '[134Xe]+',133.90485,133.88161,133.9281;
        '[135Ba]+',134.90514,134.88174,134.92854;
        '[136Ba]+',135.90404,135.88049,135.9276;
        '[136Ce]+',135.90662,135.88307,135.93018;
        '[136Xe]+',135.90668,135.88313,135.93024;
        '[137Ba]+',136.90527,136.88158,136.92897;
        '[138Ba]+',137.90469,137.88083,137.92854;
        '[138Ce]+',137.90544,137.88158,137.92931;
        '[138La]+',137.90656,137.88271,137.93042;
        '[139La]+',138.90581,138.88181,138.92982;
        '[140Ce]+',139.90489,139.88074,139.92905;
        '[141Pr]+',140.9071,140.8828,140.93141;
        '[142Nd]+',141.90717,141.88271,141.93163;
        '[142Ce]+',141.90871,141.88425,141.93317;
        '[143Nd]+',142.90927,142.88466,142.93388;
        '[144Nd]+',143.90955,143.88478,143.93433;
        '[144Sm]+',143.91145,143.88667,143.93622;
        '[145Nd]+',144.91203,144.88712,144.93695;
        '[146Nd]+',145.91257,145.8875,145.93764;
        '[147Sm]+',146.91435,146.88911,146.93958;
        '[148Sm]+',147.91428,147.8889,147.93967;
        '[148Nd]+',147.91634,147.89096,147.94173;
        '[149Sm]+',148.91664,148.89111,148.94217;
        '[150Sm]+',149.91673,149.89104,149.94241;
        '[150Nd]+',149.92033,149.89464,149.94601;
        '[151Eu]+',150.9193,150.89346,150.94514;
        '[152Sm]+',151.91917,151.89317,151.94518;
        '[152Gd]+',151.91924,151.89323,151.94524;
        '[153Eu]+',152.92068,152.89453,152.94682;
        '[154Gd]+',153.92032,153.89401,153.94662;
        '[154Sm]+',153.92166,153.89536,153.94797;
        '[155Gd]+',154.92207,154.89561,154.94853;
        'CeO+',155.8998,155.87318,155.92641;
        '[156Gd]+',155.92157,155.89496,155.94818;
        '[156Dy]+',155.92374,155.89713,155.95036;
        '[157Gd]+',156.92342,156.89665,156.9502;
        '[158Gd]+',157.92355,157.89662,157.95049;
        '[158Dy]+',157.92386,157.89693,157.95079;
        '[159Tb]+',158.9248,158.89772,158.95187;
        '[160Dy]+',159.92465,159.89742,159.95189;
        '[160Gd]+',159.92651,159.89928,159.95375;
        '[161Dy]+',160.92638,160.89899,160.95377;
        '[162Dy]+',161.92625,161.8987,161.9538;
        '[162Er]+',161.92822,161.90067,161.95576;
        '[163Dy]+',162.92818,162.90047,162.95589;
        '[164Dy]+',163.92863,163.90077,163.9565;
        '[164Er]+',163.92865,163.90079,163.95651;
        '[165Ho]+',164.92976,164.90173,164.95778;
        '[166Er]+',165.92973,165.90155,165.95792;
        '[167Er]+',166.9315,166.90317,166.95982;
        '[168Er]+',167.93182,167.90334,167.96031;
        '[168Yb]+',167.93335,167.90486,167.96184;
        '[169Tm]+',168.93365,168.905,168.9623;
        '[170Yb]+',169.9342,169.9054,169.963;
        '[170Er]+',169.93492,169.90611,169.96371;
        '[171Yb]+',170.93578,170.90681,170.96474;
        '[172Yb]+',171.93584,171.90672,171.96497;
        '[173Yb]+',172.93765,172.90837,172.96693;
        '[174Yb]+',173.93831,173.90887,173.96774;
        '[174Hf]+',173.9395,173.91006,173.96893;
        '[175Lu]+',174.94022,174.91063,174.9698;
        '[176Hf]+',175.94086,175.91112,175.97061;
        '[176Yb]+',175.94202,175.91228,175.97177;
        '[176Lu]+',175.94214,175.91238,175.97189;
        '[177Hf]+',176.94267,176.91277,176.97258;
        '[178Hf]+',177.94315,177.91309,177.97322;
        '[179Hf]+',178.94527,178.91504,178.97549;
        '[180Hf]+',179.946,179.9156,179.97639;
        '[180W]+',179.94617,179.91579,179.97656;
        '[180Ta]+',179.94691,179.91652,179.97729;
        '[181Ta]+',180.94745,180.9169,180.978;
        '[182W]+',181.94766,181.91695,181.97836;
        '[183W]+',182.94968,182.91881,182.98055;
        '[184W]+',183.95038,183.91936,183.98141;
        '[184Os]+',183.95193,183.9209,183.98296;
        '[185Re]+',184.95241,184.92122,184.9836;
        '[186Os]+',185.95329,185.92194,185.98463;
        '[186W]+',185.95383,185.92249,185.98518;
        '[187Re]+',186.9552,186.92369,186.98671;
        '[187Os]+',186.9552,186.92369,186.98671;
        '[188Os]+',187.95529,187.92361,187.98695;
        '[189Os]+',188.9576,188.92577,188.98943;
        '[190Os]+',189.9579,189.9259,189.98988;
        '[190Pt]+',189.95938,189.92738,189.99136;
        '[191Ir]+',190.96005,190.9279,190.9922;
        '[192Pt]+',191.96049,191.92818,191.9928;
        '[192Os]+',191.96094,191.92863,191.99326;
        '[193Ir]+',192.96239,192.92992,192.99486;
        '[194Pt]+',193.96213,193.9295,193.99477;
        '[195Pt]+',194.96423,194.93144,194.99702;
        '[196Pt]+',195.9644,195.93146,195.99734;
        '[196Hg]+',195.96529,195.93234,195.99825;
        '[197Au]+',196.96602,196.93291,196.99913;
        '[198Hg]+',197.96622,197.93295,197.9995;
        '[198Pt]+',197.96735,197.93408,198.00063;
        '[199Hg]+',198.96773,198.9343,199.00116;
        '[200Hg]+',199.96777,199.93417,200.00137;
        '[201Hg]+',200.96976,200.936,201.00352;
        '[202Hg]+',201.97009,201.93617,202.00401;
        '[203Tl]+',202.9718,202.93771,203.00587;
        '[204Pb]+',203.9725,203.93826,204.00674;
        '[204Hg]+',203.97295,203.93871,204.00719;
        '[205Tl]+',204.97388,204.93948,205.00829;
        '[206Pb]+',205.97392,205.93935,206.00848;
        '[207Pb]+',206.97536,206.94063,207.01009;
        '[208Pb]+',207.9761,207.94121,208.01099;
        '[209Bi]+',208.97984,208.94479,209.01489;
        '[220Bkg]+',220,219.96315,220.03685;
        '[232Th]+',232.03751,231.9987,232.07632;
        '[234U]+',234.04041,234.00127,234.07954;
        '[235U]+',235.04338,235.00407,235.08269;
        '[238U]+',238.05025,238.01045,238.09006;
        'ThO+',248.03242,247.99098,248.07385;
        'UO+',254.04515,254.00272,254.08759;};

if nargout==1
    mass=Table;
else
    mass=cell2mat(Table(:,2));
    lowerIntegrationLimit=cell2mat(Table(:,3));
    upperIntegrationLimit=cell2mat(Table(:,4));
    Names=Table(:,1);
end
5;