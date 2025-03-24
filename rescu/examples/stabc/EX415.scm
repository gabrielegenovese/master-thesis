/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real VM2ALERTFAILURE ;
real DMALERTFAILURE1 ;
real VM1ADDINSTANCE ;
real VM1FAILED ;
real DMFAILED2 ;
real DMINSTANTIATE2 ;
real VM1ALERTFAILURE ;
real VM1RESETINSTANCE ;
real VM2FAILED ;
real DMALERTFAILURE2 ;
real VM2NEWAZUREVM ;
real DMINSTANTIATE1 ;
real DMFAILED1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 3 ! DMINSTANTIATE2;

state 0 :
to 1 : when true , 3 ! DMINSTANTIATE1;

state 4 :
to 2 : when true , 3 ! DMALERTFAILURE2;

state 5 :
to 6 : when true , 3 ! DMINSTANTIATE2;

state 3 :
to 4 : when true , 3 ! DMINSTANTIATE1;

state 6 :
to 2 : when true , 3 ! DMALERTFAILURE1;

state 2 :
to 5 : when true , 0  ? DMFAILED2;
to 3 : when true , 0  ? DMFAILED1;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 3 ! VM1FAILED;
to 1 : when true , 1  ? VM1ALERTFAILURE;

state 0 :
to 1 : when true , 1  ? VM1ADDINSTANCE;

state 2 :
to 1 : when true , 1  ? VM1RESETINSTANCE;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 3 ! VM2FAILED;
to 1 : when true , 2  ? VM2ALERTFAILURE;

state 0 :
to 1 : when true , 2  ? VM2NEWAZUREVM;

state 2 :
to 1 : when true , 2  ? VM2NEWAZUREVM;

automaton A3 :

initial : 0


state 182 :
to 115 : when true , 2 ! VM2NEWAZUREVM;
to 190 : when true , 3  ? VM1FAILED;

state 80 :
to 91 : when true , 3  ? VM1FAILED;
to 17 : when true , 1 ! VM1ALERTFAILURE;
to 93 : when true , 0 ! DMFAILED2;

state 188 :
to 195 : when true , 3  ? VM2FAILED;
to 132 : when true , 1 ! VM1RESETINSTANCE;

state 102 :
to 123 : when true , 2 ! VM2NEWAZUREVM;
to 122 : when true , 1 ! VM1RESETINSTANCE;

state 145 :
to 164 : when true , 3  ? VM2FAILED;
to 61 : when true , 1 ! VM1RESETINSTANCE;

state 15 :
to 20 : when true , 3  ? VM1FAILED;
to 21 : when true , 0 ! DMFAILED2;

state 121 :
to 146 : when true , 3  ? VM2FAILED;
to 44 : when true , 1 ! VM1RESETINSTANCE;
to 145 : when true , 3  ? DMALERTFAILURE1;

state 152 :
to 161 : when true , 3  ? DMALERTFAILURE2;

state 160 :
to 76 : when true , 2 ! VM2ALERTFAILURE;
to 169 : when true , 0 ! DMFAILED1;

state 54 :
to 70 : when true , 3  ? VM2FAILED;
to 9 : when true , 2 ! VM2ALERTFAILURE;
to 69 : when true , 3  ? VM1FAILED;

state 140 :
to 163 : when true , 3  ? VM2FAILED;
to 61 : when true , 2 ! VM2ALERTFAILURE;
to 161 : when true , 3  ? VM1FAILED;
to 50 : when true , 1 ! VM1ALERTFAILURE;

state 77 :
to 91 : when true , 3  ? VM2FAILED;
to 90 : when true , 0 ! DMFAILED1;

state 159 :
to 169 : when true , 2 ! VM2NEWAZUREVM;
to 168 : when true , 3  ? DMINSTANTIATE1;

state 3 :
to 7 : when true , 3  ? VM1FAILED;
to 6 : when true , 3  ? DMINSTANTIATE2;

state 16 :
to 21 : when true , 1 ! VM1ADDINSTANCE;
to 22 : when true , 3  ? DMINSTANTIATE2;

state 21 :
to 31 : when true , 3  ? VM1FAILED;
to 30 : when true , 3  ? DMINSTANTIATE2;

state 131 :
to 44 : when true , 2 ! VM2NEWAZUREVM;
to 42 : when true , 3  ? VM1FAILED;
to 43 : when true , 3  ? DMALERTFAILURE1;

state 68 :
to 85 : when true , 3  ? VM2FAILED;
to 12 : when true , 2 ! VM2ALERTFAILURE;
to 84 : when true , 0 ! DMFAILED1;

state 85 :
to 98 : when true , 0 ! DMFAILED2;

state 105 :
to 128 : when true , 2 ! VM2NEWAZUREVM;
to 127 : when true , 3  ? VM1FAILED;
to 126 : when true , 1 ! VM1ALERTFAILURE;
to 118 : when true , 3  ? DMALERTFAILURE2;

state 63 :
to 78 : when true , 3  ? VM2FAILED;
to 77 : when true , 3  ? DMALERTFAILURE1;

state 176 :
to 185 : when true , 2 ! VM2ALERTFAILURE;
to 184 : when true , 1 ! VM1RESETINSTANCE;

state 186 :
to 119 : when true , 2 ! VM2NEWAZUREVM;
to 117 : when true , 3  ? VM1FAILED;
to 118 : when true , 3  ? DMALERTFAILURE1;

state 17 :
to 20 : when true , 3  ? VM1FAILED;
to 21 : when true , 0 ! DMFAILED2;

state 187 :
to 194 : when true , 3  ? VM2FAILED;
to 132 : when true , 2 ! VM2ALERTFAILURE;
to 193 : when true , 1 ! VM1ALERTFAILURE;

state 142 :
to 59 : when true , 2 ! VM2ALERTFAILURE;
to 161 : when true , 3  ? DMALERTFAILURE1;

state 27 :
to 41 : when true , 3  ? DMINSTANTIATE1;

state 157 :
to 167 : when true , 1 ! VM1ALERTFAILURE;

state 169 :
to 90 : when true , 2 ! VM2ALERTFAILURE;
to 176 : when true , 3  ? DMINSTANTIATE1;

state 22 :
to 34 : when true , 2 ! VM2NEWAZUREVM;
to 33 : when true , 1 ! VM1ADDINSTANCE;
to 32 : when true , 3  ? DMALERTFAILURE1;

state 65 :
to 82 : when true , 1 ! VM1ADDINSTANCE;
to 81 : when true , 0 ! DMFAILED2;

state 44 :
to 64 : when true , 3  ? VM2FAILED;
to 63 : when true , 3  ? VM1FAILED;
to 62 : when true , 3  ? DMALERTFAILURE1;

state 5 :
to 10 : when true , 3  ? VM2FAILED;
to 9 : when true , 1 ! VM1ADDINSTANCE;

state 120 :
to 144 : when true , 2 ! VM2NEWAZUREVM;
to 45 : when true , 1 ! VM1RESETINSTANCE;

state 162 :
to 68 : when true , 2 ! VM2NEWAZUREVM;
to 170 : when true , 0 ! DMFAILED1;

state 33 :
to 44 : when true , 2 ! VM2NEWAZUREVM;
to 42 : when true , 3  ? VM1FAILED;
to 43 : when true , 3  ? DMALERTFAILURE1;

state 64 :
to 78 : when true , 3  ? VM1FAILED;
to 80 : when true , 3  ? DMALERTFAILURE1;

state 175 :
to 185 : when true , 2 ! VM2ALERTFAILURE;
to 184 : when true , 1 ! VM1RESETINSTANCE;

state 92 :
to 19 : when true , 2 ! VM2NEWAZUREVM;
to 110 : when true , 3  ? DMINSTANTIATE1;

state 10 :
to 17 : when true , 1 ! VM1ADDINSTANCE;
to 16 : when true , 0 ! DMFAILED2;

state 153 :
to 57 : when true , 1 ! VM1ALERTFAILURE;
to 163 : when true , 3  ? DMALERTFAILURE2;

state 39 :
to 56 : when true , 3  ? VM2FAILED;
to 55 : when true , 3  ? VM1FAILED;
to 54 : when true , 3  ? DMALERTFAILURE2;

state 126 :
to 39 : when true , 2 ! VM2NEWAZUREVM;
to 150 : when true , 3  ? VM1FAILED;
to 149 : when true , 3  ? DMALERTFAILURE2;

state 108 :
to 129 : when true , 3  ? DMINSTANTIATE1;

state 52 :
to 73 : when true , 1 ! VM1RESETINSTANCE;
to 72 : when true , 0 ! DMFAILED2;

state 30 :
to 44 : when true , 2 ! VM2NEWAZUREVM;
to 42 : when true , 3  ? VM1FAILED;
to 43 : when true , 3  ? DMALERTFAILURE1;

state 185 :
to 129 : when true , 3  ? VM2FAILED;
to 128 : when true , 1 ! VM1RESETINSTANCE;
to 124 : when true , 3  ? DMALERTFAILURE2;

state 14 :
to 20 : when true , 3  ? VM2FAILED;
to 19 : when true , 0 ! DMFAILED1;

state 111 :
to 132 : when true , 2 ! VM2NEWAZUREVM;
to 131 : when true , 1 ! VM1ALERTFAILURE;

state 82 :
to 91 : when true , 3  ? VM1FAILED;
to 17 : when true , 1 ! VM1ALERTFAILURE;
to 93 : when true , 0 ! DMFAILED2;

state 89 :
to 106 : when true , 2 ! VM2NEWAZUREVM;
to 105 : when true , 1 ! VM1RESETINSTANCE;
to 102 : when true , 3  ? DMALERTFAILURE2;

state 79 :
to 12 : when true , 2 ! VM2NEWAZUREVM;
to 92 : when true , 0 ! DMFAILED1;

state 31 :
to 42 : when true , 3  ? DMINSTANTIATE2;

state 12 :
to 20 : when true , 3  ? VM2FAILED;
to 19 : when true , 0 ! DMFAILED1;

state 81 :
to 93 : when true , 1 ! VM1ADDINSTANCE;
to 94 : when true , 3  ? DMINSTANTIATE2;

state 128 :
to 153 : when true , 3  ? VM2FAILED;
to 152 : when true , 3  ? VM1FAILED;
to 39 : when true , 1 ! VM1ALERTFAILURE;
to 141 : when true , 3  ? DMALERTFAILURE2;

state 70 :
to 85 : when true , 3  ? VM1FAILED;
to 86 : when true , 0 ! DMFAILED2;

state 134 :
to 158 : when true , 2 ! VM2ALERTFAILURE;

state 24 :
to 39 : when true , 2 ! VM2NEWAZUREVM;
to 38 : when true , 3  ? VM1FAILED;
to 37 : when true , 3  ? DMALERTFAILURE2;

state 94 :
to 113 : when true , 2 ! VM2NEWAZUREVM;
to 112 : when true , 1 ! VM1ADDINSTANCE;

state 109 :
to 129 : when true , 3  ? DMINSTANTIATE1;

state 167 :
to 78 : when true , 3  ? VM1FAILED;
to 80 : when true , 3  ? DMALERTFAILURE1;

state 57 :
to 74 : when true , 3  ? VM1FAILED;
to 70 : when true , 3  ? DMALERTFAILURE2;

state 156 :
to 167 : when true , 1 ! VM1ALERTFAILURE;

state 11 :
to 19 : when true , 2 ! VM2NEWAZUREVM;
to 18 : when true , 3  ? DMINSTANTIATE1;

state 40 :
to 52 : when true , 3  ? VM2FAILED;
to 51 : when true , 2 ! VM2ALERTFAILURE;
to 50 : when true , 1 ! VM1RESETINSTANCE;

state 67 :
to 84 : when true , 2 ! VM2NEWAZUREVM;
to 83 : when true , 3  ? DMINSTANTIATE1;

state 110 :
to 25 : when true , 2 ! VM2NEWAZUREVM;
to 126 : when true , 1 ! VM1RESETINSTANCE;
to 130 : when true , 3  ? DMALERTFAILURE2;

state 6 :
to 9 : when true , 2 ! VM2NEWAZUREVM;
to 8 : when true , 3  ? VM1FAILED;

state 155 :
to 64 : when true , 3  ? VM2FAILED;
to 63 : when true , 3  ? VM1FAILED;
to 62 : when true , 3  ? DMALERTFAILURE1;

state 116 :
to 41 : when true , 3  ? VM2FAILED;
to 39 : when true , 1 ! VM1RESETINSTANCE;
to 40 : when true , 3  ? DMALERTFAILURE2;

state 38 :
to 53 : when true , 2 ! VM2NEWAZUREVM;
to 49 : when true , 3  ? DMALERTFAILURE2;

state 74 :
to 85 : when true , 3  ? DMALERTFAILURE2;

state 178 :
to 187 : when true , 2 ! VM2NEWAZUREVM;
to 186 : when true , 1 ! VM1ALERTFAILURE;

state 75 :
to 90 : when true , 2 ! VM2NEWAZUREVM;
to 89 : when true , 3  ? DMINSTANTIATE1;

state 123 :
to 147 : when true , 3  ? VM2FAILED;
to 144 : when true , 2 ! VM2ALERTFAILURE;
to 140 : when true , 1 ! VM1RESETINSTANCE;

state 139 :
to 50 : when true , 2 ! VM2NEWAZUREVM;
to 162 : when true , 3  ? VM1FAILED;

state 147 :
to 166 : when true , 1 ! VM1RESETINSTANCE;
to 165 : when true , 0 ! DMFAILED2;

state 53 :
to 74 : when true , 3  ? VM2FAILED;
to 69 : when true , 3  ? DMALERTFAILURE2;

state 73 :
to 85 : when true , 3  ? VM1FAILED;
to 86 : when true , 0 ! DMFAILED2;

state 163 :
to 73 : when true , 1 ! VM1ALERTFAILURE;
to 171 : when true , 0 ! DMFAILED2;

state 114 :
to 134 : when true , 2 ! VM2NEWAZUREVM;

state 95 :
to 115 : when true , 2 ! VM2NEWAZUREVM;
to 114 : when true , 3  ? VM1FAILED;

state 149 :
to 50 : when true , 2 ! VM2NEWAZUREVM;
to 162 : when true , 3  ? VM1FAILED;

state 42 :
to 59 : when true , 2 ! VM2NEWAZUREVM;
to 58 : when true , 3  ? DMALERTFAILURE1;

state 66 :
to 78 : when true , 3  ? VM1FAILED;
to 80 : when true , 3  ? DMALERTFAILURE1;

state 18 :
to 25 : when true , 2 ! VM2NEWAZUREVM;
to 24 : when true , 1 ! VM1RESETINSTANCE;
to 23 : when true , 3  ? DMALERTFAILURE2;

state 50 :
to 70 : when true , 3  ? VM2FAILED;
to 9 : when true , 2 ! VM2ALERTFAILURE;
to 69 : when true , 3  ? VM1FAILED;

state 104 :
to 125 : when true , 3  ? VM2FAILED;
to 121 : when true , 2 ! VM2ALERTFAILURE;
to 119 : when true , 1 ! VM1RESETINSTANCE;
to 124 : when true , 3  ? DMALERTFAILURE1;

state 4 :
to 9 : when true , 2 ! VM2NEWAZUREVM;
to 8 : when true , 3  ? VM1FAILED;

state 103 :
to 119 : when true , 2 ! VM2NEWAZUREVM;
to 117 : when true , 3  ? VM1FAILED;
to 118 : when true , 3  ? DMALERTFAILURE1;

state 189 :
to 194 : when true , 1 ! VM1RESETINSTANCE;

state 180 :
to 187 : when true , 2 ! VM2NEWAZUREVM;
to 186 : when true , 1 ! VM1ALERTFAILURE;

state 141 :
to 163 : when true , 3  ? VM2FAILED;
to 61 : when true , 2 ! VM2ALERTFAILURE;
to 161 : when true , 3  ? VM1FAILED;
to 50 : when true , 1 ! VM1ALERTFAILURE;

state 168 :
to 175 : when true , 2 ! VM2NEWAZUREVM;
to 174 : when true , 1 ! VM1RESETINSTANCE;

state 8 :
to 12 : when true , 2 ! VM2NEWAZUREVM;
to 11 : when true , 0 ! DMFAILED1;

state 195 :
to 157 : when true , 1 ! VM1RESETINSTANCE;

state 124 :
to 147 : when true , 3  ? VM2FAILED;
to 144 : when true , 2 ! VM2ALERTFAILURE;
to 140 : when true , 1 ! VM1RESETINSTANCE;

state 1 :
to 3 : when true , 1 ! VM1ADDINSTANCE;
to 2 : when true , 3  ? DMINSTANTIATE2;

state 36 :
to 52 : when true , 3  ? VM2FAILED;
to 51 : when true , 2 ! VM2ALERTFAILURE;
to 50 : when true , 1 ! VM1RESETINSTANCE;

state 122 :
to 140 : when true , 2 ! VM2NEWAZUREVM;
to 137 : when true , 3  ? VM1FAILED;
to 139 : when true , 1 ! VM1ALERTFAILURE;

state 181 :
to 189 : when true , 3  ? VM2FAILED;
to 188 : when true , 2 ! VM2ALERTFAILURE;
to 187 : when true , 1 ! VM1RESETINSTANCE;

state 100 :
to 117 : when true , 3  ? DMINSTANTIATE2;

state 26 :
to 41 : when true , 3  ? VM2FAILED;
to 39 : when true , 1 ! VM1RESETINSTANCE;
to 40 : when true , 3  ? DMALERTFAILURE2;

state 135 :
to 158 : when true , 2 ! VM2ALERTFAILURE;

state 192 :
to 153 : when true , 3  ? VM2FAILED;
to 152 : when true , 3  ? VM1FAILED;
to 39 : when true , 1 ! VM1ALERTFAILURE;
to 141 : when true , 3  ? DMALERTFAILURE2;

state 125 :
to 148 : when true , 1 ! VM1RESETINSTANCE;
to 147 : when true , 3  ? DMALERTFAILURE1;

state 143 :
to 163 : when true , 3  ? DMALERTFAILURE1;

state 32 :
to 46 : when true , 2 ! VM2NEWAZUREVM;
to 45 : when true , 1 ! VM1ADDINSTANCE;

state 19 :
to 27 : when true , 3  ? VM2FAILED;
to 26 : when true , 3  ? DMINSTANTIATE1;

state 172 :
to 93 : when true , 1 ! VM1RESETINSTANCE;
to 179 : when true , 3  ? DMINSTANTIATE2;

state 117 :
to 138 : when true , 2 ! VM2NEWAZUREVM;
to 137 : when true , 3  ? DMALERTFAILURE1;

state 60 :
to 9 : when true , 2 ! VM2NEWAZUREVM;
to 79 : when true , 3  ? VM1FAILED;

state 150 :
to 53 : when true , 2 ! VM2NEWAZUREVM;
to 162 : when true , 3  ? DMALERTFAILURE2;

state 161 :
to 76 : when true , 2 ! VM2ALERTFAILURE;
to 169 : when true , 0 ! DMFAILED1;

state 144 :
to 164 : when true , 3  ? VM2FAILED;
to 61 : when true , 1 ! VM1RESETINSTANCE;

state 137 :
to 160 : when true , 2 ! VM2NEWAZUREVM;
to 159 : when true , 0 ! DMFAILED1;

state 194 :
to 143 : when true , 1 ! VM1ALERTFAILURE;

state 87 :
to 21 : when true , 1 ! VM1RESETINSTANCE;
to 101 : when true , 3  ? DMINSTANTIATE2;

state 84 :
to 19 : when true , 2 ! VM2ALERTFAILURE;
to 97 : when true , 3  ? DMINSTANTIATE1;

state 183 :
to 191 : when true , 2 ! VM2NEWAZUREVM;

state 171 :
to 86 : when true , 1 ! VM1ALERTFAILURE;
to 178 : when true , 3  ? DMINSTANTIATE2;

state 34 :
to 48 : when true , 3  ? VM2FAILED;
to 44 : when true , 1 ! VM1ADDINSTANCE;
to 47 : when true , 3  ? DMALERTFAILURE1;

state 127 :
to 151 : when true , 2 ! VM2NEWAZUREVM;
to 137 : when true , 3  ? DMALERTFAILURE2;

state 28 :
to 41 : when true , 3  ? DMINSTANTIATE1;

state 148 :
to 163 : when true , 3  ? DMALERTFAILURE1;

state 184 :
to 192 : when true , 2 ! VM2ALERTFAILURE;
to 191 : when true , 3  ? VM1FAILED;
to 115 : when true , 1 ! VM1ALERTFAILURE;

state 72 :
to 86 : when true , 1 ! VM1RESETINSTANCE;
to 88 : when true , 3  ? DMINSTANTIATE2;

state 93 :
to 21 : when true , 1 ! VM1ALERTFAILURE;
to 111 : when true , 3  ? DMINSTANTIATE2;

state 119 :
to 143 : when true , 3  ? VM2FAILED;
to 44 : when true , 2 ! VM2ALERTFAILURE;
to 142 : when true , 3  ? VM1FAILED;
to 141 : when true , 3  ? DMALERTFAILURE1;

state 0 :
to 1 : when true , 3  ? DMINSTANTIATE1;

state 136 :
to 56 : when true , 3  ? VM2FAILED;
to 55 : when true , 3  ? VM1FAILED;
to 54 : when true , 3  ? DMALERTFAILURE2;

state 7 :
to 8 : when true , 3  ? DMINSTANTIATE2;

state 88 :
to 104 : when true , 2 ! VM2NEWAZUREVM;
to 103 : when true , 1 ! VM1RESETINSTANCE;
to 102 : when true , 3  ? DMALERTFAILURE1;

state 174 :
to 184 : when true , 2 ! VM2NEWAZUREVM;
to 183 : when true , 3  ? VM1FAILED;
to 182 : when true , 1 ! VM1ALERTFAILURE;

state 179 :
to 188 : when true , 2 ! VM2NEWAZUREVM;
to 112 : when true , 1 ! VM1RESETINSTANCE;

state 20 :
to 29 : when true , 0 ! DMFAILED2;
to 28 : when true , 0 ! DMFAILED1;

state 129 :
to 154 : when true , 1 ! VM1RESETINSTANCE;
to 147 : when true , 3  ? DMALERTFAILURE2;

state 166 :
to 73 : when true , 1 ! VM1ALERTFAILURE;
to 171 : when true , 0 ! DMFAILED2;

state 130 :
to 36 : when true , 2 ! VM2NEWAZUREVM;
to 139 : when true , 1 ! VM1RESETINSTANCE;

state 25 :
to 41 : when true , 3  ? VM2FAILED;
to 39 : when true , 1 ! VM1RESETINSTANCE;
to 40 : when true , 3  ? DMALERTFAILURE2;

state 49 :
to 68 : when true , 2 ! VM2NEWAZUREVM;
to 67 : when true , 0 ! DMFAILED1;

state 62 :
to 80 : when true , 3  ? VM2FAILED;
to 77 : when true , 3  ? VM1FAILED;
to 9 : when true , 1 ! VM1ALERTFAILURE;

state 106 :
to 129 : when true , 3  ? VM2FAILED;
to 128 : when true , 1 ! VM1RESETINSTANCE;
to 124 : when true , 3  ? DMALERTFAILURE2;

state 133 :
to 157 : when true , 1 ! VM1ADDINSTANCE;

state 56 :
to 74 : when true , 3  ? VM1FAILED;
to 70 : when true , 3  ? DMALERTFAILURE2;

state 164 :
to 82 : when true , 1 ! VM1RESETINSTANCE;
to 172 : when true , 0 ! DMFAILED2;

state 101 :
to 121 : when true , 2 ! VM2NEWAZUREVM;
to 33 : when true , 1 ! VM1RESETINSTANCE;
to 120 : when true , 3  ? DMALERTFAILURE1;

state 69 :
to 85 : when true , 3  ? VM2FAILED;
to 12 : when true , 2 ! VM2ALERTFAILURE;
to 84 : when true , 0 ! DMFAILED1;

state 96 :
to 116 : when true , 2 ! VM2ALERTFAILURE;
to 115 : when true , 1 ! VM1RESETINSTANCE;

state 45 :
to 61 : when true , 2 ! VM2NEWAZUREVM;
to 58 : when true , 3  ? VM1FAILED;
to 60 : when true , 1 ! VM1ALERTFAILURE;

state 78 :
to 91 : when true , 3  ? DMALERTFAILURE1;

state 118 :
to 140 : when true , 2 ! VM2NEWAZUREVM;
to 137 : when true , 3  ? VM1FAILED;
to 139 : when true , 1 ! VM1ALERTFAILURE;

state 23 :
to 36 : when true , 2 ! VM2NEWAZUREVM;
to 35 : when true , 1 ! VM1RESETINSTANCE;

state 190 :
to 134 : when true , 2 ! VM2NEWAZUREVM;

state 76 :
to 91 : when true , 3  ? VM2FAILED;
to 90 : when true , 0 ! DMFAILED1;

state 98 :
to 117 : when true , 3  ? DMINSTANTIATE2;

state 9 :
to 15 : when true , 3  ? VM2FAILED;
to 14 : when true , 3  ? VM1FAILED;

state 51 :
to 71 : when true , 3  ? VM2FAILED;
to 9 : when true , 1 ! VM1RESETINSTANCE;

state 107 :
to 129 : when true , 3  ? VM2FAILED;
to 128 : when true , 1 ! VM1RESETINSTANCE;
to 124 : when true , 3  ? DMALERTFAILURE2;

state 146 :
to 66 : when true , 1 ! VM1RESETINSTANCE;
to 164 : when true , 3  ? DMALERTFAILURE1;

state 90 :
to 108 : when true , 3  ? VM2FAILED;
to 107 : when true , 3  ? DMINSTANTIATE1;

state 55 :
to 74 : when true , 3  ? VM2FAILED;
to 69 : when true , 3  ? DMALERTFAILURE2;

state 132 :
to 156 : when true , 3  ? VM2FAILED;
to 155 : when true , 1 ! VM1ALERTFAILURE;

state 193 :
to 143 : when true , 3  ? VM2FAILED;
to 44 : when true , 2 ! VM2ALERTFAILURE;
to 142 : when true , 3  ? VM1FAILED;
to 141 : when true , 3  ? DMALERTFAILURE1;

state 59 :
to 78 : when true , 3  ? VM2FAILED;
to 77 : when true , 3  ? DMALERTFAILURE1;

state 165 :
to 171 : when true , 1 ! VM1RESETINSTANCE;
to 173 : when true , 3  ? DMINSTANTIATE2;

state 154 :
to 57 : when true , 1 ! VM1ALERTFAILURE;
to 163 : when true , 3  ? DMALERTFAILURE2;

state 151 :
to 161 : when true , 3  ? DMALERTFAILURE2;

state 61 :
to 80 : when true , 3  ? VM2FAILED;
to 77 : when true , 3  ? VM1FAILED;
to 9 : when true , 1 ! VM1ALERTFAILURE;

state 158 :
to 74 : when true , 3  ? VM2FAILED;
to 69 : when true , 3  ? DMALERTFAILURE2;

state 113 :
to 133 : when true , 3  ? VM2FAILED;
to 132 : when true , 1 ! VM1ADDINSTANCE;

state 138 :
to 59 : when true , 2 ! VM2ALERTFAILURE;
to 161 : when true , 3  ? DMALERTFAILURE1;

state 58 :
to 76 : when true , 2 ! VM2NEWAZUREVM;
to 75 : when true , 0 ! DMFAILED1;

state 170 :
to 84 : when true , 2 ! VM2NEWAZUREVM;
to 177 : when true , 3  ? DMINSTANTIATE1;

state 112 :
to 132 : when true , 2 ! VM2NEWAZUREVM;
to 131 : when true , 1 ! VM1ALERTFAILURE;

state 48 :
to 66 : when true , 1 ! VM1ADDINSTANCE;
to 65 : when true , 3  ? DMALERTFAILURE1;

state 71 :
to 17 : when true , 1 ! VM1RESETINSTANCE;
to 87 : when true , 0 ! DMFAILED2;

state 173 :
to 181 : when true , 2 ! VM2NEWAZUREVM;
to 180 : when true , 1 ! VM1RESETINSTANCE;

state 191 :
to 152 : when true , 2 ! VM2ALERTFAILURE;

state 47 :
to 65 : when true , 3  ? VM2FAILED;
to 61 : when true , 1 ! VM1ADDINSTANCE;

state 91 :
to 109 : when true , 0 ! DMFAILED1;

state 97 :
to 116 : when true , 2 ! VM2ALERTFAILURE;
to 115 : when true , 1 ! VM1RESETINSTANCE;

state 99 :
to 119 : when true , 2 ! VM2NEWAZUREVM;
to 117 : when true , 3  ? VM1FAILED;
to 118 : when true , 3  ? DMALERTFAILURE1;

state 37 :
to 50 : when true , 2 ! VM2NEWAZUREVM;
to 49 : when true , 3  ? VM1FAILED;

state 41 :
to 57 : when true , 1 ! VM1RESETINSTANCE;
to 52 : when true , 3  ? DMALERTFAILURE2;

state 115 :
to 136 : when true , 2 ! VM2ALERTFAILURE;
to 135 : when true , 3  ? VM1FAILED;

state 46 :
to 65 : when true , 3  ? VM2FAILED;
to 61 : when true , 1 ! VM1ADDINSTANCE;

state 177 :
to 96 : when true , 2 ! VM2NEWAZUREVM;
to 182 : when true , 1 ! VM1RESETINSTANCE;

state 83 :
to 96 : when true , 2 ! VM2NEWAZUREVM;
to 95 : when true , 1 ! VM1RESETINSTANCE;

state 35 :
to 50 : when true , 2 ! VM2NEWAZUREVM;
to 49 : when true , 3  ? VM1FAILED;

state 29 :
to 42 : when true , 3  ? DMINSTANTIATE2;

state 43 :
to 61 : when true , 2 ! VM2NEWAZUREVM;
to 58 : when true , 3  ? VM1FAILED;
to 60 : when true , 1 ! VM1ALERTFAILURE;

state 86 :
to 100 : when true , 3  ? VM1FAILED;
to 99 : when true , 3  ? DMINSTANTIATE2;

state 2 :
to 5 : when true , 2 ! VM2NEWAZUREVM;
to 4 : when true , 1 ! VM1ADDINSTANCE;
