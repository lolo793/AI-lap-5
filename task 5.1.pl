{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset178 GeezaPro;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh9000\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 % ============================================================\
%  FACTS: Gender Specifications\
% ============================================================\
\
% Males\
male(nawaf).\
male(saud).\
male(faisal).\
male(khalid).\
male(abdulrahman).\
\
% Females\
female(reem).\
female(layan).\
female(lana).\
female(tala).\
female(malath).\
female(alhanouf).\
\
% ============================================================\
%  FACTS: Parent Relationships\
% ============================================================\
\
% Children of Nawaf and Reem\
parent(nawaf, layan).\
parent(reem, layan).\
\
parent(nawaf, lana).\
parent(reem, lana).\
\
parent(nawaf, tala).\
parent(reem, tala).\
\
parent(nawaf, malath).\
parent(reem, malath).\
\
parent(nawaf, faisal).\
parent(reem, faisal).\
\
parent(nawaf, khalid).\
parent(reem, khalid).\
\
parent(nawaf, abdulrahman).\
parent(reem, abdulrahman).\
\
% Child of Saud and Layan\
parent(saud, alhanouf).\
parent(layan, alhanouf).\
\
% ============================================================\
%  RULES\
% ============================================================\
\
% 1. Father\
father(X, Y) :- parent(X, Y), male(X).\
\
% 2. Mother\
mother(X, Y) :- parent(X, Y), female(X).\
\
% 3. Son\
son(X, Y) :- parent(Y, X), male(X).\
\
% 4. Daughter\
daughter(X, Y) :- parent(Y, X), female(X).\
\
% 5. Brother\
brother(X, Y) :- father(F, X), father(F, Y), male(X), X \\= Y.\
\
% 6. Sister\
sister(X, Y) :- father(F, X), father(F, Y), female(X), X \\= Y.\
\
% 7. Grandfather\
grandfather(X, Y) :- father(X, Z), parent(Z, Y).\
\
% 8. Aunt\
aunt(X, Y) :- sister(X, Z), parent(Z, Y).\
\
% 9. Uncle\
uncle(X, Y) :- brother(X, Z), parent(Z, Y).\
\
% 10. Cousin\
cousin(X, Y) :- parent(P1, X), parent(P2, Y), (brother(P1, P2) ; sister(P1, P2)), X \\= Y.\
\
% 11. Ancestor\
ancestor(X, Y) :- parent(X, Y).\
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).}