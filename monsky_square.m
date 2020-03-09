Get["PadicArithmetic.m"]

n = 500;

v2 = PadicValue[#,2]&;

colour = If[
    v2[#1]<1 && v2[#2]<1,
    Red,
    If[
        v2[#1]>=1 && v2[#1]>=v2[#2],
        Green,
        If[
            v2[#2]>=1 && v2[#2]>v2[#1],
            Blue
        ]
    ]
]&;

matrix = Table[{i/n, j/n},{i,0,n},{j,0,n}];

square = Apply[colour,matrix,{2}];

monsky = MatrixPlot[square, Frame->False];

Export["C:/Users/tronm/monsky/monsky.bmp", monsky, "BMP"]
