x0=..
[   4.5000018902e+01;
    2.9629377874e-02;
    2.9629377874e-02;
   -2.1501294455e-06;
    1.0000000000e+03;
   -1.4925937478e-02;
    1.1860194078e-16;
   -3.2080994023e-08;
   -9.5081815185e-10;
    1.5707963268e+00;
    0.0000000000e+00;
    0.0000000000e+00;
    1.0383499871e+04];
u0=..
[   5.2900729828e-01;
    1.8982571149e-01;
   -4.1623929959e-01;
   -2.5962909343e-02];
sys = syslin('c',..
[  -1.5413101919e-01,    4.5071053839e+00,   -3.2081370467e+01,    4.2771775705e-13,   -2.4501503624e-05,    5.1441190961e-02,    6.2227683546e-01,    5.2021291691e-06,   -3.6107546351e-12,    2.7271298645e-12,    1.2923689896e-12,   -3.2188921826e-03,    1.0102359149e-03;
   -3.1864576071e-02,   -1.0400094413e+01,    1.0124172404e-03,    9.9583022882e-01,    1.0693578791e-04,   -5.4041265013e-06,    2.2934240443e-01,    1.5011924610e-02,    4.4210513593e-04,   -2.1688567058e-06,   -4.8449652132e-11,    1.0732295383e-10,    1.2946775917e-06;
   -4.7780634305e-08,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    1.0280721225e-13,   -3.2095094585e-08,    1.9017009147e-09,    0.0000000000e+00,   -3.4022490048e-16,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    1.9907642377e-02,   -9.6615163634e+01,    3.1815611234e-03,   -2.0731101492e-01,    4.2809622533e-03,   -1.7987272558e-01,    1.9280565680e+00,   -9.0224726112e-02,    1.0832144093e+00,    4.0457683500e-07,   -2.4054832200e-09,   -2.3287160973e-06,   -1.2396103426e-04;
    1.7455654977e-13,   -4.5000071411e+01,    4.5000071411e+01,    0.0000000000e+00,    0.0000000000e+00,    1.3164021378e-12,   -4.4965605523e-03,    0.0000000000e+00,    0.0000000000e+00,    3.8208459111e-11,    3.0311762938e-11,    2.5212669770e-11,    0.0000000000e+00;
    1.1550885384e-04,    1.0709073528e-02,   -1.0642772142e-02,    0.0000000000e+00,   -2.2890421185e-07,   -5.0228840721e-01,    7.1260420259e-01,    2.9625044518e-02,   -9.9956108210e-01,   -1.7347234760e-14,    0.0000000000e+00,    4.9400241106e-03,    3.3510722626e-07;
   -7.1353690969e-10,    2.1345395707e-13,   -1.9033071274e-09,    9.9041092010e-18,    1.5343097455e-15,    2.1510744938e-06,   -1.2738846166e-07,    1.0000000000e+00,    2.9638051464e-02,    1.1029074834e-20,    9.9261673506e-20,    1.8749427218e-19,    0.0000000000e+00;
    1.1010446923e-02,    3.8742985593e-03,   -4.3450610586e-07,    9.4769454527e-02,    1.4883036354e-06,   -1.6572111413e+01,   -1.5693227360e-05,   -3.0122547974e-07,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -5.8496977835e-05;
    1.2098150378e-03,   -2.0030817574e-01,    2.2464372532e-05,   -1.0832198405e+00,    1.6230577357e-07,    9.9670126192e+00,    4.5237993744e-03,   -3.4380686955e-08,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -6.6766149864e-06;
   -2.1138561485e-11,    3.6057582047e-12,   -3.2151480165e-08,    3.3659426691e-16,    4.5458744539e-17,    6.3725673928e-08,   -2.1517543986e-06,    0.0000000000e+00,    1.0004391106e+00,    1.8304817639e-18,    3.5679057088e-18,   -2.1501303487e-06,    0.0000000000e+00;
    4.7780634277e-08,    5.2939559203e-18,   -3.1763735522e-18,    0.0000000000e+00,   -1.0274756701e-13,    3.2095094611e-08,   -9.5088278824e-10,    0.0000000000e+00,    0.0000000000e+00,    3.2095094613e-08,    3.5293039469e-19,   -2.8234431575e-18,    0.0000000000e+00;
    7.1322372551e-10,    2.2058149668e-20,   -3.1432863277e-19,    0.0000000000e+00,   -1.5337362336e-15,   -2.1501303487e-06,    6.3702008564e-08,    0.0000000000e+00,    0.0000000000e+00,   -2.1501303487e-06,   -1.5606140890e-18,    1.7536228986e-18,    0.0000000000e+00;
    2.3386979410e+01,   -3.1147806658e+01,    2.2668245947e-02,    1.9140679797e-02,    1.0840394680e-01,    1.5714818801e+01,    7.0395362854e-01,    1.5083060134e-02,    1.9139770302e-02,    1.9140134100e-02,    1.9138860807e-02,    1.9141043595e-02,   -7.6853120845e-01],..
[  -2.1756267164e-01,   -2.1050732394e-04,    1.4058594877e-01,   -1.8682810140e-04;
   -2.7291252981e-04,   -3.7545092414e-07,   -1.9760163248e-01,   -3.2554504692e-06;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    2.7023097548e-02,    5.2030187045e-05,   -1.0303682236e+01,   -9.9109037181e-05;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -7.2268763708e-05,   -1.6464871567e-07,   -1.5511216010e-07,   -1.4612797879e-07;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    1.2618276756e-02,    3.1475318416e-05,    2.9652248712e-05,    2.7934772869e-05;
    1.4403155066e-03,    3.7007663065e-06,    1.1233495821e-04,   -6.7768461916e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    1.3838469458e+04,   -3.5895707697e+00,   -3.3249716580e+00,   -3.0840699765e+00],..
[   1.0000000001e+00,    4.7369515717e-11,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    4.7369515717e-11,   -4.7369515717e-11,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -2.8912057933e-15,    1.0000000000e+00,   -1.1214905749e-04,    0.0000000000e+00,    0.0000000000e+00,   -2.6020852140e-14,   -2.2534620543e-02,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,   -1.1214905825e-04,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -3.7555048368e-02,    0.0000000000e+00,    0.0000000000e+00,    1.1593735231e-12,    1.2432184911e-13,    6.8521577301e-13,    0.0000000000e+00;
   -4.7780634294e-08,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    1.0280721225e-13,   -3.2095094585e-08,   -1.1293772630e-17,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000231365e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    2.4835268656e-05,    0.0000000000e+00,    0.0000000000e+00;
    1.4456028966e-15,    1.1564823173e-14,    1.4456028966e-15,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    9.7627681103e-13,   -6.9782975957e-13,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -6.3805280457e-13,    6.4973357479e-13,    6.3706769639e-13,    0.0000000000e+00;
   -7.1291067892e-10,   -1.0663348507e-13,    9.5081855119e-10,    0.0000000000e+00,    1.5329972856e-15,    2.1491866180e-06,   -6.3709754798e-08,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    6.3697703589e-08,    0.0000000000e+00;
   -2.1129283390e-11,    3.5978547262e-12,   -3.2081007498e-08,    0.0000000000e+00,    4.5437720365e-17,    6.3697703589e-08,    2.1494478501e-06,    0.0000000000e+00,    1.0000000000e+00,   -4.8941519576e-20,    0.0000000000e+00,   -2.1491866180e-06,    0.0000000000e+00;
    0.0000000000e+00,    1.4802973662e-12,    4.6259292693e-12,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -1.6653345369e-12,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    1.2952601954e-12,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.5756761752e-17,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00;
   -2.8733881512e-01,    3.8437698549e-01,   -4.2997877851e-05,    0.0000000000e+00,   -2.3550545241e-02,   -1.9186120426e-01,    7.7147069533e-03,    5.1153983804e-03,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    9.9339239417e-01],..
[   0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -1.0104640553e+02,   -5.8742180803e-01,   -5.5339796442e-01,   -5.2134480332e-01]);
tfm = ss2tf(sys);
