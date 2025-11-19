# Magma codes from the papers "Tetragonal modular quotients $X_0^*(N)$" and "Tetragonal modular quotients of $X_0(N)$" by P. Orlić.

Additional README files have been put into subfolders to better explain the code there.

## Contents

- Ogg_inequality.txt is used only for curves $X_0^* (N)$. It contains code that eliminates levels $N$ that are prime powers, as in that case we have $X_0^* (N)=X_0^+(N)$, and checks Ogg's inequality. In this way we obtain a list of $559$ possible tetragonal curves $X_0^*(N)$. The complete list of these values is

[192, 208, 212, 216, 218, 226, 232, 235, 237, 244, 250, 253, 265, 268, 272,
274, 278, 279, 288, 291, 292, 296, 297, 298, 301, 302, 304, 309, 314, 316, 320,
323, 324, 325, 326, 327, 328, 332, 333, 336, 338, 339, 340, 344, 346, 351, 352,
356, 358, 360, 362, 363, 364, 365, 368, 369, 371, 372, 375, 376, 377, 378, 381,
382, 384, 386, 387, 388, 391, 392, 393, 394, 396, 398, 400, 402, 403, 404, 405,
406, 407, 408, 410, 411, 412, 413, 414, 415, 416, 417, 418, 422, 423, 424, 425,
427, 428, 432, 435, 436, 437, 438, 440, 441, 442, 444, 445, 446, 447, 448, 450,
451, 452, 453, 454, 456, 458, 459, 460, 464, 465, 466, 468, 469, 470, 471, 472,
473, 474, 475, 477, 478, 480, 481, 482, 484, 485, 486, 488, 489, 490, 492, 493,
494, 495, 496, 497, 498, 500, 501, 502, 504, 505, 506, 507, 508, 511, 513, 514,
515, 516, 517, 518, 519, 520, 522, 524, 525, 526, 527, 528, 530, 531, 532, 533,
534, 535, 536, 537, 538, 539, 540, 542, 543, 544, 545, 548, 549, 550, 551, 552,
553, 554, 555, 556, 558, 559, 560, 561, 562, 564, 565, 566, 567, 568, 572, 573,
574, 575, 576, 578, 579, 580, 581, 582, 583, 584, 585, 586, 588, 589, 590, 591,
592, 594, 595, 596, 597, 598, 600, 602, 603, 604, 605, 606, 609, 610, 611, 612,
614, 615, 616, 618, 620, 621, 622, 623, 624, 627, 629, 630, 633, 635, 636, 637,
638, 639, 642, 644, 645, 646, 649, 650, 651, 654, 655, 657, 658, 660, 663, 665,
666, 667, 669, 670, 671, 672, 678, 679, 680, 681, 682, 684, 685, 689, 690, 693,
695, 696, 697, 700, 702, 703, 705, 707, 708, 710, 713, 714, 715, 720, 721, 725,
726, 728, 730, 731, 732, 735, 737, 738, 740, 741, 742, 744, 745, 748, 749, 750,
754, 755, 756, 759, 760, 762, 763, 765, 767, 770, 774, 777, 779, 780, 781, 782,
786, 790, 791, 792, 793, 795, 798, 799, 803, 804, 805, 806, 810, 812, 814, 816,
817, 819, 820, 822, 825, 826, 828, 830, 834, 836, 840, 846, 850, 851, 852, 854,
855, 858, 860, 861, 868, 870, 874, 876, 880, 882, 884, 885, 888, 890, 894, 897,
900, 902, 903, 906, 910, 912, 915, 918, 920, 924, 930, 935, 936, 938, 940, 942,
945, 946, 948, 950, 952, 954, 957, 960, 962, 966, 969, 970, 975, 978, 984, 986,
987, 988, 990, 994, 996, 1001, 1002, 1005, 1008, 1010, 1012, 1014, 1015, 1020,
1022, 1023, 1026, 1030, 1032, 1034, 1035, 1036, 1038, 1044, 1045, 1050, 1054,
1056, 1062, 1065, 1066, 1068, 1071, 1074, 1080, 1085, 1086, 1092, 1095, 1098,
1102, 1104, 1105, 1110, 1113, 1116, 1118, 1122, 1128, 1131, 1140, 1146, 1155,
1158, 1164, 1170, 1173, 1182, 1190, 1194, 1200, 1206, 1209, 1212, 1218, 1221,
1230, 1235, 1254, 1260, 1265, 1290, 1295, 1302, 1309, 1320, 1326, 1330, 1365,
1380, 1386, 1410, 1428, 1430, 1470, 1482, 1518, 1530, 1540, 1554, 1560, 1590,
1596, 1610, 1638, 1650, 1680, 1710, 1716, 1722, 1740, 1770, 1785, 1794, 1806,
1830, 1848, 1860, 1890, 1914, 1932, 1938, 1950, 1974, 1980, 2010, 2040, 2046,
2070, 2100, 2130, 2190, 2220, 2280, 2310, 2340, 2370, 2460, 2490, 2520, 2580,
2730, 2940, 3150, 3360, 3570, 3990, 4290, 4620, 4830, 5460, 6090, 6510, 6930]

- Betti_numbers-star.txt and Betti_numbers-intermediate contain codes that prove or disprove the existence of a degree $4$ morphism to $\mathbb{P}^1$ by computing $\beta_{2,2}$.

### Example
For a curve $X_0^*(298)$ we compute $\beta_{2,2}=0$, implying that this curve is not tetragonal. 
```magma
X:=X0Nstar(298);
A:=QuotientModule(DefiningIdeal(X));
BettiTable(A);
BettiNumber(A,2,4);  // Returns 0. Notice that the indexations of Betti numbers are different. This is more thoroughly explained in the paper.
```

- Small_genus.txt is used only for curves $X_0^* (N)$. It constructs gonal maps to $\mathbb{P}^1$ from curves of genus $4$ and $6$. All constructions use Magma functions Genus4GonalMap() and Genus6GonalMap(). We also construct a degree $4$ map from a genus $5$ curve $X_0^*(378)$.

### Example
We explicitly find a degree $3$ rational map from $X_0^*(148)$ to $\mathbb{P}^1$. 
```magma
X:=X0Nstar(148);
assert Genus(X) eq 4;
Genus4GonalMap(X);  // Returns a map from $X$ to $\mathbb{P}^1$. It is easy to visually check that it is defined over $\Q$.
```

- Riemann-Roch_search folder contains codes that find rational functions of degree $4$ to $\mathbb{P}^1$.
  - PointSearch.txt finds rational points on a curve using the function PointSearch() and uses these rational points to find a degree $4$ divisor $D\geq0$ consisting of these points with Riemann-Roch dimension $2$, hence proving a degree $4$ rational map to $\mathbb{P}^1$.
  - QuadPts.txt is an auxiliary file that was used to search for quadratic points on curves. These quadratic points were then used in codes in the folder Riemann-Roch_search to find degree $4$ rational functions. The main function here is SearchPts(X,bd) which searches for quadratic points on $X$ via intersections with hyperplanes $a_0x_0+a_1x_1+a_2x_2=0$ such that $|a_i|\leq bd$. Note that this function can have a long running time, but the output of points is continuous (the points can and will repeat).
  - Other files in this folder find a degree $4$ map to $\mathbb{P}^1$ by considering divisors of the form $1+1+1+1$ or $1+1+2$. We again search for rational points with PointSearch() and the quadratic points are obtained with Quadpts.txt. Each file is a code for one curve.
 
### Example
We explicitly find a degree $4$ rational map from $X_0^*(218)$ to $\mathbb{P}^1$. 
```magma
  X:=X0Nstar(218);
  p:=PointSearch(X,1000);
  pls1:=[Place(P) : P in p];
  // 1+1+1+1
  s:={};
  for i:=1 to #pls1 do
  for j:=i to #pls1 do
  for k:=j to #pls1 do
  for l:=k to #pls1 do
  s:=s  join {Dimension(RiemannRochSpace(pls1[i]+pls1[j]+pls1[k]+pls1[l]))};
  end for;
  end for;
  end for;
  end for;
  s;
```

- Fp_gonality folder contains codes that give lower bounds on $\mathbb{Q}$-gonality by bounding the $\mathbb{F}_p$-gonality. It is split into two folders, star (for $X_0^* (N)$ ) and intermediate (for $X_0(N)/W_N$ ). The methods used there are either
  - proving that all $\mathbb{F}_p$-rational divisors $D\geq0$ of degree $d$ have Riemann-Roch dimension $1$ (file Fp_gonality.txt).
  - counting the number of $\mathbb{F}_q$ points and concluding it is too large, i.e., greater than $4 (q+1)$.

  We count $\mathbb{F}_q$ points with help of functions JacobianDecompositionQuotientX0NWN(), FpnpointsforQuotientcurveX0NWN() from the file funcions.m. The function JacobianDecompositionQuotientX0NWN() attempts to determine all modular forms $f$ such that $A_f$ is in the decomposition of the Jacobian of the quotient curve. If is succeeds (HH[1]=11111111111111), then we can obtain the correct number of $\mathbb{F}_q$ points (file Fq-points_no_model).

  Sometimes it fails when the level $N$ is not squarefree. Then some modular forms are repeated and FpnpointsforQuotientcurveX0NWN() gives an upper bound instead of a correct number of points. In these cases we obtain the number of points via the model of the curve (file Fp2-points_via_model).

## Imported files

The file funcions.m was retrieved from the repository https://github.com/FrancescBars/Magma-functions-on-Quotient-Modular-Curves by Francesc Bars.
