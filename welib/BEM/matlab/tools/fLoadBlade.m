function Blade=fLoadBlade(varargin)
  % Mexico data
if nargin==0
    n='vebra_p-2.3';
else
    n=varargin{1};
end
if (isequal(n(1:6),'vebra2'))
    sversion='vebra2';
    pitch=str2num(n(9:end));
else
    sversion='vebra';
    pitch=str2num(n(8:end));
end


if (isequal(n(1:6),'vebra2'))
    M=[
        0.000   0.000 0.195
        0.210   0.000 0.195
        0.230   0.000 0.195
        0.235   0.000 0.090
        0.300   0.000 0.090
        0.375   8.200 0.165
        0.450  16.400 0.240
        0.675  12.100 0.207
        0.800   8.300 0.180
        1.025   7.100 0.166
        1.135   6.100 0.158
        1.225   5.500 0.150
        1.350   4.800 0.142
        1.475   4.000 0.134
        1.575   3.700 0.129
        1.675   3.200 0.123
        1.800   2.600 0.116
        2.025   1.500 0.102
        2.165   0.700 0.092
        2.193   0.469 0.082
        2.202   0.231 0.056
        2.250   0.000 0.011
        ];
else
    M=[
        0.000   0.000  0.195
        0.210   0.000  0.195
        0.230   0.000  0.195
        0.235   0.000  0.090
        0.300   0.000  0.090
        0.375   8.200  0.165
        0.450  16.400  0.240
        0.675  12.100  0.207
        0.900   8.300  0.180
        1.025   7.100  0.166
        1.135   6.100  0.158
        1.225   5.500  0.150
        1.350   4.800  0.142
        1.475   4.000  0.134
        1.575   3.700  0.129
        1.675   3.200  0.123
        1.800   2.600  0.116
        2.025   1.500  0.102
        2.165   0.700  0.092
        2.193   0.469  0.082
        2.232   0.231  0.056
        2.250   0.000  0.011
        ];
end
Blade.r=M(:,1);
Blade.twist=M(:,2); % deg
Blade.chord=M(:,3); % m
Blade.R=2.25;
Blade.pitch=pitch ; %deg>0>0
Blade.omega=424.5*2*pi/60;
Blade.RPM =424.5;
