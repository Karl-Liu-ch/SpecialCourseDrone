% Simscape(TM) Multibody(TM) version: 23.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(105).translation = [0.0 0.0 0.0];
smiData.RigidTransform(105).angle = 0.0;
smiData.RigidTransform(105).axis = [0.0 0.0 0.0];
smiData.RigidTransform(105).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [130.58738007152292 -313.87576512360874 342.8935860012075];  % mm
smiData.RigidTransform(1).angle = 2.0943951022728364;  % rad
smiData.RigidTransform(1).axis = [-0.57735026914950627 -0.57735026914950371 -0.57735026926986732];
smiData.RigidTransform(1).ID = "B[centerstruc-1:-:platform-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [42.800144670172998 -113.22659807269537 -10.355619097149699];  % mm
smiData.RigidTransform(2).angle = 1.8483125895508647;  % rad
smiData.RigidTransform(2).axis = [-0.75491615726712258 -0.46373569816062404 -0.46373569816062227];
smiData.RigidTransform(2).ID = "F[centerstruc-1:-:platform-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [172.86892351003269 -29.87576511438694 298.17758126953316];  % mm
smiData.RigidTransform(3).angle = 1.8483125895071606;  % rad
smiData.RigidTransform(3).axis = [0.46373569820384719 0.46373569813269883 0.7549161572577241];
smiData.RigidTransform(3).ID = "B[centerstruc-1:-:moveableprop-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-186.68267468954681 31.203462871125225 -154.81586891651941];  % mm
smiData.RigidTransform(4).angle = 2.0930813643547563;  % rad
smiData.RigidTransform(4).axis = [-0.50245158811658641 -0.57691169132486131 0.643983929932889];
smiData.RigidTransform(4).ID = "F[centerstruc-1:-:moveableprop-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [-303.8785138670591 11.661160943042475 -157.33056866607922];  % mm
smiData.RigidTransform(5).angle = 2.8397290425626012;  % rad
smiData.RigidTransform(5).axis = [0.99913785871892802 -0.0062475150845970155 -0.041042756118749885];
smiData.RigidTransform(5).ID = "B[moveableprop-1:-:2826motor^drone-10]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [6.3178875414587923e-12 -9.5923269327613525e-13 -37.599999999999895];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [0.99707480522096448 -0.076431883357508321 1.2608935760530126e-16];
smiData.RigidTransform(6).ID = "F[moveableprop-1:-:2826motor^drone-10]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 -1.1102230246251565e-13 38.199999999999982];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "B[2826motor^drone-10:-:9x4.7V3^drone-9]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [4.9999999999939533 5.4999999999998792 3.800000000002127];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(8).axis = [-0.57735026918962595 -0.57735026918962573 -0.57735026918962551];
smiData.RigidTransform(8).ID = "F[2826motor^drone-10:-:9x4.7V3^drone-9]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 13.100000000000001];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = "B[2826motor^drone-2:-:centerstruc-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [-58.310428981291821 -289.87576509744804 217.89827515398196];  % mm
smiData.RigidTransform(10).angle = 3.141592653541339;  % rad
smiData.RigidTransform(10).axis = [-0.23239482474134995 -1.0138174582315317e-10 0.97262153247470184];
smiData.RigidTransform(10).ID = "F[2826motor^drone-2:-:centerstruc-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 38.20000000000001];  % mm
smiData.RigidTransform(11).angle = 0;  % rad
smiData.RigidTransform(11).axis = [0 0 0];
smiData.RigidTransform(11).ID = "B[2826motor^drone-2:-:9x4.7V3^drone-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [4.9999999999985247 5.4999999999999201 3.8000000000025231];  % mm
smiData.RigidTransform(12).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(12).axis = [-0.57735026918962584 -0.57735026918962562 -0.57735026918962595];
smiData.RigidTransform(12).ID = "F[2826motor^drone-2:-:9x4.7V3^drone-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [-35.390762828570985 -289.87576508802215 172.6746209070302];  % mm
smiData.RigidTransform(13).angle = 3.1415926533870309;  % rad
smiData.RigidTransform(13).axis = [-0.97262153247470173 2.4223659669763874e-11 -0.2323948247413499];
smiData.RigidTransform(13).ID = "B[centerstruc-1:-:2826motor^drone-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [1.0325074440101721e-14 1.6964207816272392e-13 -2.0000000000000711];  % mm
smiData.RigidTransform(14).angle = 5.5518366366012509e-15;  % rad
smiData.RigidTransform(14).axis = [0.039994801623155038 0.00029287861219990177 -0.99919984490853619];
smiData.RigidTransform(14).ID = "F[centerstruc-1:-:2826motor^drone-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [0 0 38.199999999999996];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = "B[2826motor^drone-3:-:9x4.7V3^drone-5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [4.9999999999996998 5.4999999999998579 3.799999999999832];  % mm
smiData.RigidTransform(16).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(16).axis = [-0.57735026918962562 -0.57735026918962562 -0.57735026918962595];
smiData.RigidTransform(16).ID = "F[2826motor^drone-3:-:9x4.7V3^drone-5]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [285.72394188350404 -289.87576512195091 335.41781252399778];  % mm
smiData.RigidTransform(17).angle = 3.1415926533870309;  % rad
smiData.RigidTransform(17).axis = [-0.97262153247470173 2.4223659669763877e-11 -0.2323948247413499];
smiData.RigidTransform(17).ID = "B[centerstruc-1:-:2826motor^drone-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [2.237058309569772e-13 1.6942003355779889e-13 -1.9999999999999858];  % mm
smiData.RigidTransform(18).angle = 6.0610078672255058e-15;  % rad
smiData.RigidTransform(18).axis = [0.036634930986597564 -0.017710236067772552 -0.99917177170396032];
smiData.RigidTransform(18).ID = "F[centerstruc-1:-:2826motor^drone-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0 0 38.199999999999996];  % mm
smiData.RigidTransform(19).angle = 1.0819222476543882e-16;  % rad
smiData.RigidTransform(19).axis = [0 1 0];
smiData.RigidTransform(19).ID = "B[2826motor^drone-4:-:9x4.7V3^drone-6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [4.9999999999999334 5.5000000000000249 3.7999999999999829];  % mm
smiData.RigidTransform(20).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(20).axis = [-0.57735026918962584 -0.57735026918962573 -0.57735026918962573];
smiData.RigidTransform(20).ID = "F[2826motor^drone-4:-:9x4.7V3^drone-6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [-303.8785138670591 11.661160943042475 -157.33056866607922];  % mm
smiData.RigidTransform(21).angle = 2.8397290425626012;  % rad
smiData.RigidTransform(21).axis = [0.99913785871892802 -0.0062475150845970155 -0.041042756118749885];
smiData.RigidTransform(21).ID = "B[moveableprop-1:-:2826motor^drone-6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [2.1214190755135151e-12 4.3098857815948577e-13 -2.0000000000000715];  % mm
smiData.RigidTransform(22).angle = 2.988579660155839;  % rad
smiData.RigidTransform(22).axis = [6.2633259619197131e-17 -1.0937021919433773e-16 -1];
smiData.RigidTransform(22).ID = "F[moveableprop-1:-:2826motor^drone-6]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0 -1.1102230246251565e-13 38.199999999999982];  % mm
smiData.RigidTransform(23).angle = 0;  % rad
smiData.RigidTransform(23).axis = [0 0 0];
smiData.RigidTransform(23).ID = "B[2826motor^drone-6:-:9x4.7V3^drone-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [5.0000000000020473 5.5000000000000409 3.7999999999994003];  % mm
smiData.RigidTransform(24).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(24).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(24).ID = "F[2826motor^drone-6:-:9x4.7V3^drone-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [50.716644579081134 55.363154520162922 -201.51664525070095];  % mm
smiData.RigidTransform(25).angle = 2.8397290425626012;  % rad
smiData.RigidTransform(25).axis = [0.99913785871892802 -0.0062475150845970155 -0.041042756118749885];
smiData.RigidTransform(25).ID = "B[moveableprop-1:-:2826motor^drone-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-2.1298284714567919e-11 9.5365937369251697e-12 -2.0000000000000315];  % mm
smiData.RigidTransform(26).angle = 2.9885796601558789;  % rad
smiData.RigidTransform(26).axis = [6.9592510687996723e-18 -3.7417792031380609e-17 -1];
smiData.RigidTransform(26).ID = "F[moveableprop-1:-:2826motor^drone-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [0 1.1102230246251565e-13 38.199999999999982];  % mm
smiData.RigidTransform(27).angle = 0;  % rad
smiData.RigidTransform(27).axis = [0 0 0];
smiData.RigidTransform(27).ID = "B[2826motor^drone-7:-:9x4.7V3^drone-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [5.000000000023352 5.5000000000000178 3.8000000000006247];  % mm
smiData.RigidTransform(28).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(28).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(28).ID = "F[2826motor^drone-7:-:9x4.7V3^drone-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [50.716644579081134 55.363154520162922 -201.51664525070095];  % mm
smiData.RigidTransform(29).angle = 2.8397290425626012;  % rad
smiData.RigidTransform(29).axis = [0.99913785871892802 -0.0062475150845970155 -0.041042756118749885];
smiData.RigidTransform(29).ID = "B[moveableprop-1:-:2826motor^drone-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [-8.4187687982059957e-12 -3.694822225952521e-12 -37.599999999999923];  % mm
smiData.RigidTransform(30).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(30).axis = [0.9970748052209637 -0.076431883357518715 1.3137407275098722e-16];
smiData.RigidTransform(30).ID = "F[moveableprop-1:-:2826motor^drone-8]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [0 -1.1102230246251565e-13 38.199999999999982];  % mm
smiData.RigidTransform(31).angle = 0;  % rad
smiData.RigidTransform(31).axis = [0 0 0];
smiData.RigidTransform(31).ID = "B[2826motor^drone-8:-:9x4.7V3^drone-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [5.0000000000055831 5.4999999999999698 3.7999999999925467];  % mm
smiData.RigidTransform(32).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(32).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(32).ID = "F[2826motor^drone-8:-:9x4.7V3^drone-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [285.72394188350404 -289.87576512195091 335.41781252399778];  % mm
smiData.RigidTransform(33).angle = 3.1415926533870309;  % rad
smiData.RigidTransform(33).axis = [-0.97262153247470173 2.4223659669763877e-11 -0.2323948247413499];
smiData.RigidTransform(33).ID = "B[centerstruc-1:-:2826motor^drone-9]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [1.0069722891917788e-12 -1.6342482922482304e-13 -37.600000000000065];  % mm
smiData.RigidTransform(34).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(34).axis = [3.4710559903894235e-15 -1 2.2204460457425013e-16];
smiData.RigidTransform(34).ID = "F[centerstruc-1:-:2826motor^drone-9]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [0 0 38.199999999999982];  % mm
smiData.RigidTransform(35).angle = 0;  % rad
smiData.RigidTransform(35).axis = [0 0 0];
smiData.RigidTransform(35).ID = "B[2826motor^drone-9:-:9x4.7V3^drone-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [4.9999999999986944 5.4999999999999885 3.7999999999998382];  % mm
smiData.RigidTransform(36).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(36).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(36).ID = "F[2826motor^drone-9:-:9x4.7V3^drone-7]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [130.58738007152149 -638.87576512360874 342.89358593345412];  % mm
smiData.RigidTransform(37).angle = 2.1223809941945412e-10;  % rad
smiData.RigidTransform(37).axis = [0.98225499392275073 0.18755033055388096 -2.056567721863984e-05];
smiData.RigidTransform(37).ID = "AssemblyGround[centerstruc-1:carbontube500mm-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [50.308703893502724 -638.87576511512657 302.20778802921234];  % mm
smiData.RigidTransform(38).angle = 2.1223809865276191e-10;  % rad
smiData.RigidTransform(38).axis = [0.98225444444311127 0.18755320829572278 -2.0730077353074676e-05];
smiData.RigidTransform(38).ID = "AssemblyGround[centerstruc-1:carbontube500mm-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [105.61648719421574 3.1242348877997816 288.19710986534801];  % mm
smiData.RigidTransform(39).angle = 1.1017179297927588;  % rad
smiData.RigidTransform(39).axis = [4.0446223763090387e-10 1 4.8642169217985857e-10];
smiData.RigidTransform(39).ID = "AssemblyGround[centerstruc-1:Part1-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [164.49221165839251 23.12423489034343 275.99468925644675];  % mm
smiData.RigidTransform(40).angle = 0.46907839700213738;  % rad
smiData.RigidTransform(40).axis = [4.3624713803460656e-10 -1 -1.0424511471302528e-10];
smiData.RigidTransform(40).ID = "AssemblyGround[centerstruc-1:updownconnect-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [277.67719518688727 -289.87576512526084 351.29515070142816];  % mm
smiData.RigidTransform(41).angle = 0.46907839700213944;  % rad
smiData.RigidTransform(41).axis = [4.3624779789690553e-10 -1 -1.042455145401464e-10];
smiData.RigidTransform(41).ID = "AssemblyGround[centerstruc-1:Motor-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [0 0 -11.999999999999993];  % mm
smiData.RigidTransform(42).angle = 0;  % rad
smiData.RigidTransform(42).axis = [0 0 0];
smiData.RigidTransform(42).ID = "AssemblyGround[centerstruc-1:efom-10-1:efom-10_01-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [0 0 -11.999999999999993];  % mm
smiData.RigidTransform(43).angle = 0;  % rad
smiData.RigidTransform(43).axis = [0 0 0];
smiData.RigidTransform(43).ID = "AssemblyGround[centerstruc-1:efom-10-1:efom-10_02-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(44).translation = [0 0 0];  % mm
smiData.RigidTransform(44).angle = 0;  % rad
smiData.RigidTransform(44).axis = [0 0 0];
smiData.RigidTransform(44).ID = "AssemblyGround[centerstruc-1:efom-10-1:Part13-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(45).translation = [176.88285731893362 -29.875765114811049 300.21187116474522];  % mm
smiData.RigidTransform(45).angle = 1.848312589453881;  % rad
smiData.RigidTransform(45).axis = [-0.46373569809881265 0.4637356982563855 -0.75491615724626637];
smiData.RigidTransform(45).ID = "AssemblyGround[centerstruc-1:efom-10-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(46).translation = [129.34986930502296 -104.37576510244351 241.36788207242637];  % mm
smiData.RigidTransform(46).angle = 1.1017179297927588;  % rad
smiData.RigidTransform(46).axis = [4.0446225150869168e-10 1 4.864217147715338e-10];
smiData.RigidTransform(46).ID = "AssemblyGround[centerstruc-1:Part1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(47).translation = [117.11984283084983 -289.87576510829643 269.92355489294437];  % mm
smiData.RigidTransform(47).angle = 0.48839966464951406;  % rad
smiData.RigidTransform(47).axis = [0.27591131736011154 -0.95891960056669701 0.065925295612641321];
smiData.RigidTransform(47).ID = "AssemblyGround[centerstruc-1:carbontube400mm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(48).translation = [36.841166652832271 -29.875765099919406 229.23775704290506];  % mm
smiData.RigidTransform(48).angle = 3.1415926535413412;  % rad
smiData.RigidTransform(48).axis = [-0.23239482474134995 -1.0138172979952782e-10 0.97262153247470173];
smiData.RigidTransform(48).ID = "AssemblyGround[centerstruc-1:BearingConnect-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(49).translation = [10.500000000000023 -33.000000000000028 14.500000000000012];  % mm
smiData.RigidTransform(49).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(49).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(49).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(50).translation = [0 0 19.160000000000025];  % mm
smiData.RigidTransform(50).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(50).axis = [0 0 1];
smiData.RigidTransform(50).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0006-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(51).translation = [0 0 19.480000000000011];  % mm
smiData.RigidTransform(51).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(51).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(51).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0007-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(52).translation = [5.0500000000000131 -15.190000000000037 -9.7499999999999947];  % mm
smiData.RigidTransform(52).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(52).axis = [-1 -0 -0];
smiData.RigidTransform(52).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0004-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(53).translation = [-9.4999999999999805 8.499999999999952 14.500000000000012];  % mm
smiData.RigidTransform(53).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(53).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(53).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(54).translation = [-4.9499999999999824 -15.190000000000037 -9.7499999999999947];  % mm
smiData.RigidTransform(54).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(54).axis = [-1 -0 -0];
smiData.RigidTransform(54).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0004-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(55).translation = [0 0 -18.399999999999999];  % mm
smiData.RigidTransform(55).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(55).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(55).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0005-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(56).translation = [0 0 0];  % mm
smiData.RigidTransform(56).angle = 0;  % rad
smiData.RigidTransform(56).axis = [0 0 0];
smiData.RigidTransform(56).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0001-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(57).translation = [0 0 -2.0000000000000018];  % mm
smiData.RigidTransform(57).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(57).axis = [0 0 1];
smiData.RigidTransform(57).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0002-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(58).translation = [9.5000000000000231 8.499999999999952 14.500000000000012];  % mm
smiData.RigidTransform(58).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(58).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(58).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(59).translation = [-10.499999999999982 -33.000000000000028 14.500000000000012];  % mm
smiData.RigidTransform(59).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(59).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(59).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(60).translation = [0 0 1.5777624931500034];  % mm
smiData.RigidTransform(60).angle = 0;  % rad
smiData.RigidTransform(60).axis = [0 0 0];
smiData.RigidTransform(60).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:ASM0002_ASM-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(61).translation = [1.9984014443252818e-12 0 31.227762493200014];  % mm
smiData.RigidTransform(61).angle = 3.1415926535897918;  % rad
smiData.RigidTransform(61).axis = [0.70710678118652703 -7.0710677977987749e-16 0.707106781186568];
smiData.RigidTransform(61).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1:GPA22GT2090-B-H4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(62).translation = [100.54875194974275 -71.875765106645616 261.52520949050995];  % mm
smiData.RigidTransform(62).angle = 1.1017179297927588;  % rad
smiData.RigidTransform(62).axis = [1.6968692708110728e-10 1 1.042304401641912e-10];
smiData.RigidTransform(62).ID = "AssemblyGround[centerstruc-1:ASM0001_ASM-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(63).translation = [164.49221165838958 -638.87576510966244 275.99468911843837];  % mm
smiData.RigidTransform(63).angle = 0.013803855905917701;  % rad
smiData.RigidTransform(63).axis = [1.510219552840525e-08 0.99999999999999989 1.0391786861158458e-10];
smiData.RigidTransform(63).ID = "AssemblyGround[centerstruc-1:carbontube500mm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(64).translation = [84.213535480370837 -638.87576510118015 235.30889121419668];  % mm
smiData.RigidTransform(64).angle = 1.3552387106183312;  % rad
smiData.RigidTransform(64).axis = [1.2952660207804388e-10 -1 -1.0423864149575618e-10];
smiData.RigidTransform(64).ID = "AssemblyGround[centerstruc-1:carbontube500mm-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(65).translation = [105.61648719421244 -630.87576511220595 288.19710973317672];  % mm
smiData.RigidTransform(65).angle = 1.2343984001265991;  % rad
smiData.RigidTransform(65).axis = [0.26211949538849927 0.86557287111359094 0.42670478662589845];
smiData.RigidTransform(65).ID = "AssemblyGround[centerstruc-1:Part1-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(66).translation = [0 0 -12.000000000000011];  % mm
smiData.RigidTransform(66).angle = 0;  % rad
smiData.RigidTransform(66).axis = [0 0 0];
smiData.RigidTransform(66).ID = "AssemblyGround[centerstruc-1:efom-10-2:efom-10_01-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(67).translation = [0 0 -12.000000000000011];  % mm
smiData.RigidTransform(67).angle = 0;  % rad
smiData.RigidTransform(67).axis = [0 0 0];
smiData.RigidTransform(67).ID = "AssemblyGround[centerstruc-1:efom-10-2:efom-10_02-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(68).translation = [0 0 0];  % mm
smiData.RigidTransform(68).angle = 0;  % rad
smiData.RigidTransform(68).axis = [0 0 0];
smiData.RigidTransform(68).ID = "AssemblyGround[centerstruc-1:efom-10-2:Part13-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(69).translation = [57.356828342772417 -29.875765101987085 239.63523872954079];  % mm
smiData.RigidTransform(69).angle = 2.383330580315338;  % rad
smiData.RigidTransform(69).axis = [-0.64856498229299098 -0.64856498237577664 0.39840548111089147];
smiData.RigidTransform(69).ID = "AssemblyGround[centerstruc-1:efom-10-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(70).translation = [84.21353548037375 23.124234898819871 235.30889135220499];  % mm
smiData.RigidTransform(70).angle = 0.46907839700213677;  % rad
smiData.RigidTransform(70).axis = [4.3624713803460775e-10 -1 -1.0424511471302564e-10];
smiData.RigidTransform(70).ID = "AssemblyGround[centerstruc-1:updownconnect-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(71).translation = [-43.437509525187714 -289.87576509133208 188.55195908446058];  % mm
smiData.RigidTransform(71).angle = 0.46907839700213944;  % rad
smiData.RigidTransform(71).axis = [4.3624779789690548e-10 -1 -1.0424551454014649e-10];
smiData.RigidTransform(71).ID = "AssemblyGround[centerstruc-1:Motor-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(72).translation = [84.213535480370993 -610.87576510118015 235.3088912200339];  % mm
smiData.RigidTransform(72).angle = 0.46907839700213766;  % rad
smiData.RigidTransform(72).axis = [4.3624713803460619e-10 -1 -1.0424511471302534e-10];
smiData.RigidTransform(72).ID = "AssemblyGround[centerstruc-1:updownconnect-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(73).translation = [157.25918091985929 -289.87576511253769 290.26645384506509];  % mm
smiData.RigidTransform(73).angle = 0.4690783970021396;  % rad
smiData.RigidTransform(73).axis = [4.3624695542894624e-10 -1 -1.0424494749794399e-10];
smiData.RigidTransform(73).ID = "AssemblyGround[centerstruc-1:connector1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(74).translation = [131.13383988675619 -104.37576510263202 242.27201091474265];  % mm
smiData.RigidTransform(74).angle = 0.46907839700213777;  % rad
smiData.RigidTransform(74).axis = [4.3624703301197603e-10 -1 -1.0424513990813834e-10];
smiData.RigidTransform(74).ID = "AssemblyGround[centerstruc-1:servoconnect_tubes-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(75).translation = [164.49221165838969 -610.87576510966244 275.99468912427568];  % mm
smiData.RigidTransform(75).angle = 0.46907839700213777;  % rad
smiData.RigidTransform(75).axis = [4.3624703301197603e-10 -1 -1.0424513990813834e-10];
smiData.RigidTransform(75).ID = "AssemblyGround[centerstruc-1:updownconnect-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(76).translation = [76.980504741840448 -289.8757651040554 249.58065594082339];  % mm
smiData.RigidTransform(76).angle = 0.46907839700213949;  % rad
smiData.RigidTransform(76).axis = [4.3624707731895392e-10 -1 -1.0424493320848121e-10];
smiData.RigidTransform(76).ID = "AssemblyGround[centerstruc-1:connector1-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(77).translation = [197.39851900886978 -29.875765116878728 310.60935285138868];  % mm
smiData.RigidTransform(77).angle = 0.46907839700213921;  % rad
smiData.RigidTransform(77).axis = [4.3624754046932353e-10 -1 -1.0424513106359486e-10];
smiData.RigidTransform(77).ID = "AssemblyGround[centerstruc-1:BearingConnect-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(78).translation = [129.60939774383789 -71.875269961876313 276.24898245337926];  % mm
smiData.RigidTransform(78).angle = 1.1822761201841738;  % rad
smiData.RigidTransform(78).axis = [0.21093668527333961 0.91520107401809236 0.34338420016364507];
smiData.RigidTransform(78).ID = "AssemblyGround[centerstruc-1:Gear36T-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(79).translation = [0 0 0];  % mm
smiData.RigidTransform(79).angle = 0;  % rad
smiData.RigidTransform(79).axis = [0 0 0];
smiData.RigidTransform(79).ID = "AssemblyGround[platform-1:10mm 8mm bore idler-2:Body-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(80).translation = [0 0 0];  % mm
smiData.RigidTransform(80).angle = 0;  % rad
smiData.RigidTransform(80).axis = [0 0 0];
smiData.RigidTransform(80).ID = "AssemblyGround[platform-1:10mm 8mm bore idler-2:Bearing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(81).translation = [47.150144670222467 -28.781347781888734 30.09456715101247];  % mm
smiData.RigidTransform(81).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(81).axis = [0 0 1];
smiData.RigidTransform(81).ID = "AssemblyGround[platform-1:10mm 8mm bore idler-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(82).translation = [-2.1998553298275407 2.0954419955662162 -10.355619097149827];  % mm
smiData.RigidTransform(82).angle = 0;  % rad
smiData.RigidTransform(82).axis = [0 0 0];
smiData.RigidTransform(82).ID = "AssemblyGround[platform-1:platform-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(83).translation = [10.500000000000009 -32.999999999999972 14.500000000000012];  % mm
smiData.RigidTransform(83).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(83).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(83).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(84).translation = [0 0 19.159999999999997];  % mm
smiData.RigidTransform(84).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(84).axis = [0 0 1];
smiData.RigidTransform(84).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0006-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(85).translation = [0 0 19.479999999999997];  % mm
smiData.RigidTransform(85).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(85).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(85).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0007-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(86).translation = [5.0499999999999714 -15.189999999999982 -9.7499999999999947];  % mm
smiData.RigidTransform(86).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(86).axis = [-1 -0 -0];
smiData.RigidTransform(86).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0004-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(87).translation = [-9.5000000000000355 8.5000000000000071 14.499999999999998];  % mm
smiData.RigidTransform(87).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(87).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(87).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(88).translation = [-4.9500000000000099 -15.189999999999982 -9.7499999999999947];  % mm
smiData.RigidTransform(88).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(88).axis = [-1 -0 -0];
smiData.RigidTransform(88).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0004-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(89).translation = [0 0 -18.399999999999999];  % mm
smiData.RigidTransform(89).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(89).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(89).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0005-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(90).translation = [0 0 0];  % mm
smiData.RigidTransform(90).angle = 0;  % rad
smiData.RigidTransform(90).axis = [0 0 0];
smiData.RigidTransform(90).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0001-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(91).translation = [0 0 -2.0000000000000018];  % mm
smiData.RigidTransform(91).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(91).axis = [0 0 1];
smiData.RigidTransform(91).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0002-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(92).translation = [9.4999999999999805 8.5000000000000071 14.499999999999998];  % mm
smiData.RigidTransform(92).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(92).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(92).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(93).translation = [-10.500000000000009 -32.999999999999972 14.499999999999998];  % mm
smiData.RigidTransform(93).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(93).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(93).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1:PRT0003-4]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(94).translation = [0 0 1.5777624931500034];  % mm
smiData.RigidTransform(94).angle = 0;  % rad
smiData.RigidTransform(94).axis = [0 0 0];
smiData.RigidTransform(94).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:ASM0002_ASM-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(95).translation = [1.9984014443252818e-12 0 31.2277624932];  % mm
smiData.RigidTransform(95).angle = 3.1415926535897918;  % rad
smiData.RigidTransform(95).axis = [0.70710678118652703 -7.0710678118652643e-16 0.707106781186568];
smiData.RigidTransform(95).ID = "AssemblyGround[platform-1:ASM0001_ASM-1:GPA22GT2090-B-H4-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(96).translation = [8.2223821770224532 -58.404558004433724 20.64438090285023];  % mm
smiData.RigidTransform(96).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(96).axis = [0.70710678118654746 3.5355339059327441e-16 0.70710678118654757];
smiData.RigidTransform(96).ID = "AssemblyGround[platform-1:ASM0001_ASM-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(97).translation = [0 0 0];  % mm
smiData.RigidTransform(97).angle = 0;  % rad
smiData.RigidTransform(97).axis = [0 0 0];
smiData.RigidTransform(97).ID = "AssemblyGround[platform-1:10mm 8mm bore idler-1:Body-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(98).translation = [0 0 0];  % mm
smiData.RigidTransform(98).angle = 0;  % rad
smiData.RigidTransform(98).axis = [0 0 0];
smiData.RigidTransform(98).ID = "AssemblyGround[platform-1:10mm 8mm bore idler-1:Bearing-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(99).translation = [47.15014467022246 -88.78134778189883 30.094567151012221];  % mm
smiData.RigidTransform(99).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(99).axis = [0 0 1];
smiData.RigidTransform(99).ID = "AssemblyGround[platform-1:10mm 8mm bore idler-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(100).translation = [9.8001446701721093 -43.904558004433767 1.6443809028502121];  % mm
smiData.RigidTransform(100).angle = 2.0943951023931908;  % rad
smiData.RigidTransform(100).axis = [0.57735026918962884 0.57735026918962418 0.57735026918962418];
smiData.RigidTransform(100).ID = "AssemblyGround[platform-1:F3.stp-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(101).translation = [-138.91082695451425 37.091092561347573 -160.76871534523178];  % mm
smiData.RigidTransform(101).angle = 1.6998967232955973;  % rad
smiData.RigidTransform(101).axis = [-0.2034572970746599 0.97636409176023797 -0.072926597262447393];
smiData.RigidTransform(101).ID = "AssemblyGround[moveableprop-1:Gear48T-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(102).translation = [-125.1210152370918 38.790614533819493 -162.48706276801616];  % mm
smiData.RigidTransform(102).angle = 3.1298604758123938;  % rad
smiData.RigidTransform(102).axis = [-0.086444033408291945 0.65100412874150793 -0.75413596482969592];
smiData.RigidTransform(102).ID = "AssemblyGround[moveableprop-1:carbontube400mm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(103).translation = [-302.41859446016241 16.939617745259206 -140.39402447570504];  % mm
smiData.RigidTransform(103).angle = 3.0028025019588851;  % rad
smiData.RigidTransform(103).axis = [-0.052075055207964176 -0.14717249248211012 -0.98773905768765202];
smiData.RigidTransform(103).ID = "AssemblyGround[moveableprop-1:Motor-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(104).translation = [52.176563985977808 60.64161132237966 -184.58010106032674];  % mm
smiData.RigidTransform(104).angle = 3.0028025019588851;  % rad
smiData.RigidTransform(104).axis = [-0.052075055207964176 -0.14717249248211012 -0.98773905768765202];
smiData.RigidTransform(104).ID = "AssemblyGround[moveableprop-1:Motor-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(105).translation = [-91.613038967221712 74.509628682475466 348.15389224405413];  % mm
smiData.RigidTransform(105).angle = 3.1415926535883369;  % rad
smiData.RigidTransform(105).axis = [-0.49091513531411612 -4.1052003559322113e-13 -0.87120739776446054];
smiData.RigidTransform(105).ID = "SixDofRigidTransform[9x4.7V3^drone-6]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(26).mass = 0.0;
smiData.Solid(26).CoM = [0.0 0.0 0.0];
smiData.Solid(26).MoI = [0.0 0.0 0.0];
smiData.Solid(26).PoI = [0.0 0.0 0.0];
smiData.Solid(26).color = [0.0 0.0 0.0];
smiData.Solid(26).opacity = 0.0;
smiData.Solid(26).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.0055604934085189336;  % kg
smiData.Solid(1).CoM = [4.9999792535306149 4.9479102418051886 3.800457284619887];  % mm
smiData.Solid(1).MoI = [19.089255978828543 19.828547928860061 0.77794361680025093];  % kg*mm^2
smiData.Solid(1).PoI = [-8.5069536485662496e-06 3.4212650817239085 -2.6573366976635629e-07];  % kg*mm^2
smiData.Solid(1).color = [0.29411764705882354 0.29411764705882354 0.29411764705882354];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "9x4.7V3^drone*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.018378317023500287;  % kg
smiData.Solid(2).CoM = [0 324.99999999999994 0];  % mm
smiData.Solid(2).MoI = [647.25828961856394 0.3767554989817562 647.25828961856394];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [1 1 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "carbontube500mm*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.0031101767270538963;  % kg
smiData.Solid(3).CoM = [0 0 0];  % mm
smiData.Solid(3).MoI = [3.1679741778983139 3.1679741778983139 0.063758622904604892];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [1 1 1];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Part1*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.021844156655249733;  % kg
smiData.Solid(4).CoM = [0.23630565891324581 -19.852296745393232 19.307693154902832];  % mm
smiData.Solid(4).MoI = [43.891536186375149 43.704293594572292 1.1506331996324644];  % kg*mm^2
smiData.Solid(4).PoI = [-0.35830621430572679 -0.14542924607855062 -0.00085225899629793223];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "updownconnect*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.028505701071526078;  % kg
smiData.Solid(5).CoM = [2.2282288720883481e-07 -0.014700465387209191 -0.51579125730690678];  % mm
smiData.Solid(5).MoI = [7.0716195856181256 13.013391865768336 10.184623812836259];  % kg*mm^2
smiData.Solid(5).PoI = [-0.0035552980467065359 6.9288939004298821e-08 -1.2002027226420503e-07];  % kg*mm^2
smiData.Solid(5).color = [1 1 1];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Motor*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.00091172834084002937;  % kg
smiData.Solid(6).CoM = [-0.00038438805072829455 1.9097375210762698e-05 7.5001399564924833];  % mm
smiData.Solid(6).MoI = [0.02414069213029861 0.024116261899499596 0.038011182315145858];  % kg*mm^2
smiData.Solid(6).PoI = [-6.2679392122398492e-08 1.2615978773654227e-06 8.9040306980748508e-07];  % kg*mm^2
smiData.Solid(6).color = [0.82745098039215681 0.76862745098039209 0.41960784313725491];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "efom-10_01*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.0041664507642206732;  % kg
smiData.Solid(7).CoM = [3.3619190996434014e-06 8.2760111037620887e-07 4.3614562004150006];  % mm
smiData.Solid(7).MoI = [0.19996401417613063 0.77532893093172284 0.92251625871602772];  % kg*mm^2
smiData.Solid(7).PoI = [5.4764136204204233e-09 1.1165516877251569e-07 1.5934402386180709e-07];  % kg*mm^2
smiData.Solid(7).color = [0.50980392156862742 0.50980392156862742 0.58823529411764708];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "efom-10_02*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.0033301276510570299;  % kg
smiData.Solid(8).CoM = [-0.054492017452247535 3.6439916282639904 5.000000923089666];  % mm
smiData.Solid(8).MoI = [0.21496560394816519 0.13511424956461393 0.29167241541218725];  % kg*mm^2
smiData.Solid(8).PoI = [-7.2262756831696256e-08 -7.3189331715139001e-09 0.0011536359467587472];  % kg*mm^2
smiData.Solid(8).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "Part13*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.011592476891746332;  % kg
smiData.Solid(9).CoM = [0 0 0];  % mm
smiData.Solid(9).MoI = [0.23764577628079994 162.51010334668703 162.51010334668703];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [0.23921568627450979 0.23921568627450979 0.23921568627450979];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "carbontube400mm*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.01442081677379759;  % kg
smiData.Solid(10).CoM = [-42.607816026117128 1.3605864450058605e-05 -15.571840608273336];  % mm
smiData.Solid(10).MoI = [4.9417633338452722 1.7663345045957739 3.9984834480085745];  % kg*mm^2
smiData.Solid(10).PoI = [-3.8431372391640328e-06 -0.20603570033110788 2.2102240605596843e-06];  % kg*mm^2
smiData.Solid(10).color = [1 0.93725490196078431 0.13725490196078433];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = "BearingConnect*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 7.2628994533767972e-05;  % kg
smiData.Solid(11).CoM = [-4.0306785446463901e-05 -14.439202813935896 -2.9801829025609652e-06];  % mm
smiData.Solid(11).MoI = [0.0067657779415458245 3.3494171261911236e-05 0.0067657858579601533];  % kg*mm^2
smiData.Solid(11).PoI = [1.0778360496259046e-08 -3.3582077641543695e-09 3.4652264367267705e-08];  % kg*mm^2
smiData.Solid(11).color = [0.6470588235294118 0.61960784313725492 0.58823529411764708];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = "PRT0003*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.0011884345876755113;  % kg
smiData.Solid(12).CoM = [-0.007340648522067071 -1.4237198628075166e-06 -0.17746567254605028];  % mm
smiData.Solid(12).MoI = [0.037871839473770506 0.037680984314555577 0.070578938894973964];  % kg*mm^2
smiData.Solid(12).PoI = [0 -2.3290782579320796e-07 5.1201046610072381e-08];  % kg*mm^2
smiData.Solid(12).color = [0.66666666666666663 0.69803921568627447 0.76862745098039209];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = "PRT0006*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 6.8801408235230309e-05;  % kg
smiData.Solid(13).CoM = [-3.2539376360904589e-06 -2.2076551032489569 -3.1546418886243108e-05];  % mm
smiData.Solid(13).MoI = [0.00063681107309695192 0.00012892937289913514 0.00063682154250529934];  % kg*mm^2
smiData.Solid(13).PoI = [1.7268507998573788e-08 -2.456632227169956e-09 -1.0150349455647296e-09];  % kg*mm^2
smiData.Solid(13).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = "PRT0007*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 0.00015483751198460064;  % kg
smiData.Solid(14).CoM = [0.19011287035796104 -0.61009663672500758 -0.16218445501445711];  % mm
smiData.Solid(14).MoI = [0.00089025086509349736 0.0016954847422245936 0.0018025156809178802];  % kg*mm^2
smiData.Solid(14).PoI = [-2.9360935614258611e-05 5.1680523424803554e-05 -1.8250458846237322e-05];  % kg*mm^2
smiData.Solid(14).color = [0.31764705882352939 0.24705882352941178 0.20784313725490194];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = "PRT0004*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(15).mass = 8.9192929848589235e-05;  % kg
smiData.Solid(15).CoM = [1.1885702796944654e-10 3.7144078408862882 -7.9538199457268517e-12];  % mm
smiData.Solid(15).MoI = [0.00051170021774346152 0.00032673618236816722 0.00051169834403270759];  % kg*mm^2
smiData.Solid(15).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(15).color = [0.6470588235294118 0.51764705882352935 0];
smiData.Solid(15).opacity = 1;
smiData.Solid(15).ID = "PRT0005*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(16).mass = 0.040743479858040416;  % kg
smiData.Solid(16).CoM = [-0.033853284637340837 -13.188747839675051 0.5356605799646269];  % mm
smiData.Solid(16).MoI = [11.457940775647197 6.244855253025217 9.9375923704722382];  % kg*mm^2
smiData.Solid(16).PoI = [0.19094859321559901 0.0014696443891461172 -0.010423976253461925];  % kg*mm^2
smiData.Solid(16).color = [0.10196078431372549 0.10196078431372549 0.10196078431372549];
smiData.Solid(16).opacity = 1;
smiData.Solid(16).ID = "PRT0001*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(17).mass = 0.00010237907587955588;  % kg
smiData.Solid(17).CoM = [-0.00027925139333399591 -0.017859327803008494 17.579815842812948];  % mm
smiData.Solid(17).MoI = [0.00043630572195516059 0.00043240782520803054 0.00050842544142391084];  % kg*mm^2
smiData.Solid(17).PoI = [5.1700871101342046e-06 -4.6942218202100269e-08 1.6768174103867945e-09];  % kg*mm^2
smiData.Solid(17).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(17).opacity = 1;
smiData.Solid(17).ID = "PRT0002*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(18).mass = 0.016752699485071271;  % kg
smiData.Solid(18).CoM = [-0.026573573009501111 -0.026546656026590728 -8.0113181410803502];  % mm
smiData.Solid(18).MoI = [3.8196721373975677 3.8188448739032896 1.6649768659294935];  % kg*mm^2
smiData.Solid(18).PoI = [0.0075105642061327783 -0.0074833471183877436 1.0259919850514764e-05];  % kg*mm^2
smiData.Solid(18).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(18).opacity = 1;
smiData.Solid(18).ID = "connector1*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(19).mass = 0.049299149631607642;  % kg
smiData.Solid(19).CoM = [-0.0023442970444617502 1.7200232321217248 7.0489701631820738];  % mm
smiData.Solid(19).MoI = [9.7742501865564471 78.078543798310676 76.085132044361842];  % kg*mm^2
smiData.Solid(19).PoI = [-0.57687189497005631 0.95465778902518739 0.15988368924470175];  % kg*mm^2
smiData.Solid(19).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(19).opacity = 1;
smiData.Solid(19).ID = "servoconnect_tubes*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(20).mass = 0.018336911223652032;  % kg
smiData.Solid(20).CoM = [0.00031857134310530233 -0.00010791285502524874 5.2501980685798503e-06];  % mm
smiData.Solid(20).MoI = [2.243284231217503 2.2432842103385262 3.2640894789503778];  % kg*mm^2
smiData.Solid(20).PoI = [0 0 -7.9410692925210336e-09];  % kg*mm^2
smiData.Solid(20).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(20).opacity = 1;
smiData.Solid(20).ID = "Gear36T*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(21).mass = 0.016993588082305375;  % kg
smiData.Solid(21).CoM = [0 0 14.448068593888614];  % mm
smiData.Solid(21).MoI = [2.1580646814808984 2.1565802789520774 1.529541295710793];  % kg*mm^2
smiData.Solid(21).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(21).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(21).opacity = 1;
smiData.Solid(21).ID = "2826motor^drone*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(22).mass = 0.0010876367750939427;  % kg
smiData.Solid(22).CoM = [-0.00068604132217527428 7.0999091320339707 -0.00097063496441887739];  % mm
smiData.Solid(22).MoI = [0.050944903184040276 0.051139227079397484 0.050999186729816404];  % kg*mm^2
smiData.Solid(22).PoI = [3.0414153596407759e-06 2.9414879114267022e-06 3.5235427058071974e-06];  % kg*mm^2
smiData.Solid(22).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(22).opacity = 1;
smiData.Solid(22).ID = "Body*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(23).mass = 0.00070257229043073376;  % kg
smiData.Solid(23).CoM = [4.0165026912304903e-05 7.0999429141839174 1.2468510502075491e-05];  % mm
smiData.Solid(23).MoI = [0.020052168653778023 0.016498334453821865 0.020050623455388966];  % kg*mm^2
smiData.Solid(23).PoI = [9.863174128859064e-09 -4.8255813034361797e-07 5.5378075130870166e-08];  % kg*mm^2
smiData.Solid(23).color = [0.85490196078431369 0.8666666666666667 0.77254901960784317];
smiData.Solid(23).opacity = 1;
smiData.Solid(23).ID = "Bearing*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(24).mass = 0.26679933488468927;  % kg
smiData.Solid(24).CoM = [-0.01596558070245567 -13.143461824376272 -5.836921984292057];  % mm
smiData.Solid(24).MoI = [592.8242028075922 154.86998681566305 665.86226350335096];  % kg*mm^2
smiData.Solid(24).PoI = [0.97763487478752409 0.067459052854276461 -0.1875321028966988];  % kg*mm^2
smiData.Solid(24).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(24).opacity = 1;
smiData.Solid(24).ID = "platform*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(25).mass = 0.0032062932379041766;  % kg
smiData.Solid(25).CoM = [-0.017462208358836252 2.397299234483929 -0.00024950260104425795];  % mm
smiData.Solid(25).MoI = [0.47203519179616327 0.65213235311171303 0.20136265586722119];  % kg*mm^2
smiData.Solid(25).PoI = [2.8605839124902333e-06 2.6232273158004091e-06 0.00012753387690715975];  % kg*mm^2
smiData.Solid(25).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(25).opacity = 1;
smiData.Solid(25).ID = "F3.stp*:*默认";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(26).mass = 0.03623088864118959;  % kg
smiData.Solid(26).CoM = [0.25298576690841829 -0.0058774140480952822 1.0065121751651465];  % mm
smiData.Solid(26).MoI = [6.8224811360382072 6.8876873480198624 10.442456751107553];  % kg*mm^2
smiData.Solid(26).PoI = [0.0029798189296736791 -0.068511456093223788 0.0018626019105157431];  % kg*mm^2
smiData.Solid(26).color = [0.82352941176470584 0.82352941176470584 1];
smiData.Solid(26).opacity = 1;
smiData.Solid(26).ID = "Gear48T*:*默认";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = "";

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = "[centerstruc-1:-:platform-1]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(9).Rz.Pos = 0.0;
smiData.RevoluteJoint(9).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 159.58870400938883;  % deg
smiData.RevoluteJoint(1).ID = "[centerstruc-1:-:moveableprop-1]";

smiData.RevoluteJoint(2).Rz.Pos = -118.28168874369327;  % deg
smiData.RevoluteJoint(2).ID = "[2826motor^drone-10:-:9x4.7V3^drone-9]";

smiData.RevoluteJoint(3).Rz.Pos = -115.7599414661934;  % deg
smiData.RevoluteJoint(3).ID = "[2826motor^drone-2:-:9x4.7V3^drone-2]";

smiData.RevoluteJoint(4).Rz.Pos = -83.326327480095884;  % deg
smiData.RevoluteJoint(4).ID = "[2826motor^drone-3:-:9x4.7V3^drone-5]";

smiData.RevoluteJoint(5).Rz.Pos = -148.80149705091199;  % deg
smiData.RevoluteJoint(5).ID = "[2826motor^drone-4:-:9x4.7V3^drone-6]";

smiData.RevoluteJoint(6).Rz.Pos = 82.176379396676793;  % deg
smiData.RevoluteJoint(6).ID = "[2826motor^drone-6:-:9x4.7V3^drone-8]";

smiData.RevoluteJoint(7).Rz.Pos = -112.03152735592866;  % deg
smiData.RevoluteJoint(7).ID = "[2826motor^drone-7:-:9x4.7V3^drone-4]";

smiData.RevoluteJoint(8).Rz.Pos = -118.9940988439333;  % deg
smiData.RevoluteJoint(8).ID = "[2826motor^drone-8:-:9x4.7V3^drone-3]";

smiData.RevoluteJoint(9).Rz.Pos = -100.93872843365051;  % deg
smiData.RevoluteJoint(9).ID = "[2826motor^drone-9:-:9x4.7V3^drone-7]";

