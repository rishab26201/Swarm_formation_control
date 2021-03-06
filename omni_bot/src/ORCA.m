%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%                OPTIMAL RECIPROCAL COLLISION            %%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
1. Considering for all bots v_opt = v_cur and v_max = 1m/s
2. Check if Velocity Obstacle
3. Take current velocity of bot to be v_cur
4. Compute ORCA for each bot given other as v: (v-(v_cur+0.5u)).n>=0 and
similarly for other bot.
5. Consider all velocities less than v_max
6. Take new velocity as arg_min||(v-v_pref)||
%}
%{
p = param.Continuous('VO')
vb = 1
xa = 2
ya = 2
xb = 5
yb = 4
ra = 1
rb = 1
t = 0.2

px = 3
py = 2
r = 2

syms a b c x vx vy
eqn1 = vx*t >= px
exn2 = vy*t >= py

%}
%%type mupad for getting solution

syms x y
S = solve(x+y==1,x<0.6,y<0.7,[x,y]);
S.x