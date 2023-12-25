% Assignment 1 Part II %
% Given two point %
% Part 1 a)
X = [2;3];
Y = [-4;5];
% Hence transfroming into Projective plane , z = 1
X1 = [X;1];
Y1 = [Y;1];
% Determining the connecting line l between the two points
Z = cross(X1,Y1);
disp("Q1a. The connecting line between the two point is:");
disp(Z);

% Part 1 b)
% First translation
t = [6;-7];
Xt = X + t;
Yt = Y + t;
% rotational operation
angle = 15;
line_cos = cos(deg2rad(angle));
line_sin = sin(deg2rad(angle));
Rotation_Matrix = [line_cos, -line_sin; line_sin, line_cos];
Xt_rotation = Rotation_Matrix * Xt;
Yt_rotation = Rotation_Matrix * Yt;
% Scaling operation
lambda = 8;
Xt_scale = lambda * Xt_rotation;
Yt_scale = lambda * Yt_rotation;
disp(" Q 1b. The resultant of X and Y is :");
disp(Xt_scale);
disp(Yt_scale);

% Part 1 c)
% First Translation with vector elements
tx = t(1,1);
ty = t(2,1);
H = transpose(inv([1 0 tx; 0 1 ty; 0 0 1]));
Translate_for_line = H * I;
% Rotation operation
H_rotate = transpose(inv([a -b 0; b a 0; 0 0 1]));
Rotate_for_line = H_rotate * Translate_for_line;
% Scaling operation
Scale_for_line = lambda * Rotate_for_line;
disp(" Q 1c. The resultant for the line I is:");
disp(Scale_for_line);

% Question 2 to check the transformed points x' and y' on transformed line
% I'
% We obtain the cross product of the two points and call variable I_new
Xscale_P = [Xscale;1];
Yscale_P = [Yscale;1];
I_new = cross (Xscale_P, Yscale_P);
if (I_new(1,1)/I_new(3,1) == Scale_for_line(1,1)/Scale_for_line(3,1) ...
        && I_new(2,1)/I_new(3,1) == Scale_for_line(2,1)/Scale_for_line(3,1))
    disp("Q2. The transformed points X' and Y' are on the transformed line I'")
else
    disp("Q2. The transformed points X' and Y' are Not On the transformed line I'")
end










