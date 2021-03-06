classdef SafeLqr
    properties
        n                 %time horizon
        A                 %state matrix
        B                 %input matrix
        C                 %output state matrix
        D                 %output input matrix
        Q                 %state cost matrix
        R                 %input cost matrix
        h                  %constraints
        G                 %input constraint matrix
        e                  %input constraint const---Gu-e<=0
        x0                %initial position
        stepsize       %stepsize
    end
    
    methods
        function obj = SafeLqr(n,A,B,C,D,Q,R,h,G,e,x0,stepsize)
            obj.n=n;
            obj.A=A;
            obj.B=B;
            obj.C=C;
            obj.D=D;
            obj.Q=Q;
            obj.R=R;
            obj.h=h;
            obj.G=G;
            obj.e=e;
            obj.x0=x0;
            obj.stepsize=stepsize;
        end
    end
end