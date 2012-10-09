$title  GAMS-OUTLINE mode �̐����̂��߂̃v���O�����D
display "@ GAMS-OUTLINE mode �̐����̂��߂̃v���O�����D";
$ontext
Time-stamp:     <2012-07-30 14:17:37 Shiro Takeda>
Filename:       outline-sample.gms
Author:         Shiro Takeda
First-written:  <2001/10/26>
$Id: outline-sample.gms,v 1.9 2009/02/13 15:03:42 st Exp $

[Note]:

  ���̃v���O������ GAMS-OUTLINE mode �̐����̂��߂̃v���O�����ł��D

  ���̃v���O������ GAMS �Ŏ��s���C LST �t�@�C����� `o' ���^�C�v���Ă��������D
  GAMS-OUTLINE mode ���N�����܂��D

  �y���zLST �t�@�C���œ��{�ꂪ������������ꍇ�ɂ� pw �I�v�V�����ɏ\���傫���l��
  �Ƃ��� GAMS �����s���Ă݂Ă��������D��: gams outline-sample-ja.gms pw=150

$offtext

display "";
display "@ ���̃t�@�C���� GAM-OUTLINE mode �̐����̂��߂̃v���O�����ł��D";
display "";
display "HELP ������ɂ� `?' ���^�C�v���Ă��������D";
display "";
display "";
display "@ �L���̐����Ɗ�{�I�ȗp�@";
display "";

*       ----------------------------------------------------------------------
*       �\������鍀�� (item) �̃^�C�v�D
display "�\������鍀�� (item) �̃^�C�v�D";
display "";
display "OTH (other) �͕�����D";
display "`SET' �� `set'";
display "PAR �� `parameter'";
display "VAR �� `VAR'";
display "EQU �� `EQU'";
display "VRI �� `VARIABLE'";
display "LOO �� LOOPS";
display "SUM �� SOLVE SUMMARY �� REPORT SUMMARY";
display "[ �� ] �ň͂܂�Ă���̂� special comment line";
display "";
display "�L�[����";
display "";
display "SPACE  = ���݂̍s�̍��ڂ̓��e��\��";
display "N      = ���̍��ڂ�\��";
display "P      = ��s�O�̍��ڂ�\��";
display "t      = �\������鍀�ڂ̑I��";
display "T      = �\������鍀�ڂ̑g�ݍ��킹��I��";
display "";
display "m      = ���ڂɃ}�[�N����";
display "u      = �}�[�N������";
display "y      = �}�[�N���ꂽ���ڂɃW�����v����";
display "";
display "i      = LST �t�@�C���̃o�b�t�@�[�ɖ߂�";
display ";      = GMS �t�@�C���̃o�b�t�@�[�ɖ߂�";
display "?      = �w���v�̕\��";
display "q      = GAMS-OUTLINE mode ���I��";
display "";
display "c      = �t�H���[���[�h�̐؂�ւ�";
display "x      = �\���X�^�C���̐؂�ւ�";
display "l      = �E�B���h�E����s���g��";
display "o      = �E�B���h�E����s���k��";
display "C-l    = ���Z���^�[";
display "";
display "RET    = �X�N���[���E�A�b�v";
display "DEL    = �X�N���[���E�_�E��";
display "n      = ��s���Ɉړ�";
display "p      = ��s��Ɉړ�";
display ",      = �o�b�t�@�[�̐擪�Ɉړ�";
display ".      = �o�b�t�@�[�̏I��Ɉړ�";
display "";
display "w      = �t���[���̃T�C�Y�̕ύX";
display "e      = �t���[���̈ړ�";
display "";
display "C-cC-f = font-lock �̃��x���̑I��";
display "";
display "�e�R�}���h�������Ŏ����Ă݂Ă��������D";
display "���̃L�[�����ɂ��Ă̓w���v�����Ă�������";

*       ----------------------------------------------------------------------
*       GAMS-OUTLINE mode �� special comment line ��\���������ꍇ�ɂ́CGMS �t�@
*       �C���ňȉ��̂悤�Ȍ`�� display ���߂� "@" ��g�ݍ��킹�܂��D
display "";
display "@ COM�Ŏn�܂�s�� special comment line �ł��D";
display ""
display "special comment line ��\��������ɂ� @ �� display �ƂƂ��ɗ��p���܂��D";
display "�������ɂ��Ă� GMS �t�@�C�������Ă��������D";

*       ----------------------------------------------------------------------
*       �� 1.
*       ----------------------------------------------------------------------
display "";
display "@ �� 1: �P���ȗ�";
display "";

set
    iter Iteration index                /iter1*iter20/
;
parameter
    num             Iteration number
    a(iter)         Parameter a
    b(iter)         Parameter b
    c(iter,*)       Parameter for a and b;
a("iter1") = 0;

loop(iter,
    num = ord(iter);
    a(iter+1) = a(iter) + 3.14 * 0.01;
    b(iter+1) = sin(a(iter+1));
    c(iter+1,"a") = a(iter+1);
    c(iter+1,"b") = b(iter+1);
);

display "'PARAMTERS' �͎��̂悤�ɕ\������܂�", a, b, c;
display "";

*       ----------------------------------------------------------------------
*       �� 2.
*       ----------------------------------------------------------------------
display "";
display "@ �� 2: �����̍��ڂ��}�[�N���C��̍��ڂ𓯎��ɕ\��������";
display "";
display "�܂�����s�� `m' ���^�C�v���܂��D�Ⴆ�΁C��� PAR a �Ƃ����s�� `m' ��";
display "�^�C�v���Ă��������D�����đ��̍s�C�Ⴆ�Ή��� here �Ƃ������ڂ̍s�Ɉړ����܂��D";
display "�����ŃX�y�[�X���^�C�v���܂��D";
display "����ƁC ��̃E�B���h�E�ɓ�̍��ڂ̓��e�������ɕ\������܂��D";
display "�}�[�N���Ƃ肽����� `u' ���^�C�v���܂��D";

parameter
    here    '��� "PAR  a" �Ƃ����s���}�[�N���C���ꂩ�炱�̍s�Ɉړ����Ă��������D';

here = 0;
display "";
display here;
display "";

*       ----------------------------------------------------------------------
*       �� 3.
*       ----------------------------------------------------------------------
display "";
display "@ �� 3: core and periphery ���f���D�\������鍀�ڂ̕ύX�����Ă݂�D";
display "";
display "���̗�ł͂��낢��ȍ��ڂ��\������Ă��܂��D"
display "- VAR, EQU, PAR, SET, SUM, OTH, LOO, VRI, COM."
display "";
display "�\�����鍀�ڂ�I�����邱�Ƃ��ł��܂��D"
display "���̃o�b�t�@�[�� `t' ���^�C�v���Ă��������D����� SELECT-ITEM mode ���N�����܂��D"
display "";
display "����ɁC�\�����鍀�ڂ̑g�ݍ��킹��o�^���Ă������Ƃ��ł��܂��D";
display "����ɂ� SELECT-ITEM mode �� `a' ���^�C�v���Ă��������D";
display "";
display "�g�ݍ��킹��o�^������ `T' (gams-ol-item) ���^�C�v���邱�ƂőI�����邱�Ƃ��ł��܂��D";
display "";

* The model presented in this example is the core-periphery model of Chap 5 in
* Fujita, Krugman, and Venables (1999) "Spatial Economy", MIT press.
set     itr     Times of iteration (lambda)             /iter1*iter11/
        tc      Times of iteration (transport cost)     /1*5/
        allo    Vector of omegas                        /omone, omtwo, omratio/;

parameters
    lowest  The lowest value of transport cost,
    highest The highest value of transport cost;
lowest = 1.3;
highest = 2;

*       Declare model parameters.
parameters
    mu      Expenditure share on manufactured goods,
    sig     Elasticity of subustitution,
    sigm    one minus sig,
    vt      Value of transport cost,
    lam     The share of workers in region one;

*       Declare endogenous variables.
variables
    wone    Nominal wage of region one,
    wtwo    Nominal wage of region two,
    omeone  Real wage of region one,
    ometwo  Real wage of region two,
    ratio   Ratio of real wage omeone devided by onetwo;

*       Declare equations.
equations
    weqone          Wage equation for wone,
    weqtwo          Wage equation for wtwo,
    rweqone         Real wage equation for omega one,
    rweqtwo         Real wage equation for omega two,
    eqratio         eq for RATIO;

*       Equation definitions:
weqone ..

    (wone**sig)
    =e= (mu *   lam * wone + (1-mu) /2)
    / (lam * (wone**sigm) + (1-lam) * ((wtwo * vt)**sigm))
    + ((mu * (1-lam) * wtwo + (1-mu)/2) * (vt**sigm))
    /(lam * ((wone * vt)**sigm) + (1-lam) * (wtwo**sigm));

weqtwo ..

    (wtwo**sig)
    =e= ((mu * lam *wone + (1-mu)/2) * (vt**sigm))
    /(lam * (wone**sigm) + (1-lam) * ((wtwo * vt)**sigm))
    + (mu * (1-lam) * wtwo + (1-mu) /2)
    /(lam * (wone * vt)**sigm + (1-lam) * (wtwo**sigm));

rweqone ..

    omeone =e= wone * (lam * (wone**sigm)
        + (1-lam) * ((wtwo * vt)**sigm))**(-mu/sigm);

rweqtwo ..

    ometwo =e= wtwo * (lam * ((wone * vt)**sigm)
        + (1-lam) * (wtwo**sigm))**(-mu/sigm);

eqratio .. ratio =e= omeone / ometwo;

*       Declare model.
model   fkv     Core and periphery model
        / weqone, weqtwo, rweqone, rweqtwo, eqratio /;

*       ----------------------------------------------------------------------
*       Insert numerical values in parameters.
mu = 0.4;
sig = 5;
sigm = 1 - sig;

parameter
    lambda          Value of lam,
    iterlog         Iteration log,
    log             Ratio of real wages in two regions;

parameters
    count1,
    count2;

*       Initial values parameters.
parameters
    wone0   Initial value
    wtwo0   Initial value
    omeone0 Initial value
    ometwo0 Initial value;

*       ----------------------------------------------------------------------
*       Loop.
display "@ Loop �̎n�܂�";

loop(tc,
    count2 = (ord(tc) - 1)/(card(tc) - 1);
    vt = (1-count2) * lowest + count2 * highest;

*       Set initial values of the first iteration (tc).
    wone0 = 2;
    wtwo0 = 2;
    omeone0 = 2;
    ometwo0 = 2;
    display tc;

    loop(itr,
        display itr;
        display "Current transport cost:", vt;

*       Determine `lam'.
        count1 = (ord(itr) - 1)/(card(itr) - 1);
        lambda(itr) = (1-count1)*0 + count1*1;
        lam = lambda(itr);

        display "Current lambda:", lam;

        wone.l = wone0;
        wtwo.l = wtwo0;
        omeone.l = omeone0;
        ometwo.l = ometwo0;

        display "Initail values",
            wone.l, wtwo.l, omeone.l, ometwo.l;

        fkv.iterlim = 3000;
        solve fkv using mcp;

        display wone.l, wone.lo, wone.up, wone.m, weqone.m, weqtwo.m;
        iterlog(itr, tc,  "omone") = omeone.l;
        iterlog(itr, tc, "omtwo") = ometwo.l;
        iterlog(itr, tc, "omratio") = ratio.l;

        log(itr, tc) = iterlog(itr, tc, "omratio");

        wone0 = wone.l;
        wtwo0 = wtwo.l;
        omeone0 = omeone.l;
        ometwo0 = ometwo.L;
    );
);

display "���[�v�̌���", log;
* $libinclude plot log

*       ----------------------------------------------------------------------
*       �� 4.
*       ----------------------------------------------------------------------
display "";
display "";
display "@ �� 4: �x�N�g���ϐ�";
display "";
display "";

*       Model M2-1s: Closed 2x2 Tax-Ridden Economy --  Vector Syntax

table bmflow(*,*)  Benchmark flows (in value terms)
                 x       y        w     cons
        x      100             -100
        y              100     -100
        w                       200     -200
        l      -20     -60                80
        k      -60     -40               100
        tax    -20       0                20
;
set     i       Goods index  /x, y/
        f       Factors index /l, k/;
alias (i,j)

parameter
    ybar(i)         Benchmark output levels
    fdbar(f,i)      Benchmark factor inputs
    cbar(i)         Benchmark final demand
    pbar(f,i)       Benchmark factor price
    endow0(f)       Factor endowments
    txf(f,i)        Ad-valorem tax rate on sector i inputs
    txo(i)          Proportioanl tax rate on sector i outputs
    ubar            Benchmark expenditure;

*       Extract values from the table:
ybar(i)         = bmflow(i,i);
fdbar(f,i)      = -bmflow(f,i);
cbar(i)         = -bmflow(i,"w");
ubar            = sum(i, cbar(i));
endow0(f)        = bmflow(f,"cons");

txf("l",i)      =  -bmflow("tax",i) / fdbar("l",i);
pbar(f,i)       = 1 + txf(f,i);
txo(i)          = 0;

$ontext

$model:m2_1

$sectors:
    v(i)    ! Activity level (vector variable)
    w       ! Welfare index

$commodities:
    pw      ! Utility price
    p(i)    ! Goods prices
    pf(f)   ! Factor prices

$consumers:
    cons    ! Representative consumer

$prod:v(i) s:1
    o:p(i)  q:ybar(i)       a:cons  t:txo(i)
    i:pf(f) q:fdbar(f,i)    p:pbar(f,i)  a:cons  t:txf(f,i)

$prod:w  s:1
    o:pw    q:ubar
    i:p(i)  q:cbar(i)

$demand:cons
    d:pw    q:ubar
    e:pf(f) q:endow0(f)

$offtext
$sysinclude mpsgeset m2_1

m2_1.iterlim = 0;
$include M2_1.GEN
solve m2_1 using mcp;
m2_1.iterlim = 2000;

*       ----------------------------------------------------------------------
*       �����ʂ̑���
display "@ �����ʂ̑���";

set     sce     / sce1*sce10 /;
parameter
    endow(f)
    utility Utility level;
endow(f) = endow0(f);

loop(sce,
    endow0(f) = (1 + ord(sce)/100) * endow(f);
    display endow0;
$include M2_1.GEN
    solve m2_1 using mcp;
    utility(sce) = w.l;
);
display utility;

display "@ �����܂��D";

* --------------------
* Local Variables:
* fill-column: 80
* End:
