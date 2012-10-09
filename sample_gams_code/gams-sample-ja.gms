$title GAMS mode for Emacs�̎g������������邽�߂̃T���v���v���O����
** gams-lst-file: .\doc\lst-sample.lst
$ontext
Time-stamp:     <2012-09-05 22:45:46 Shiro Takeda>
Filename:       "gams-sample-ja.gms"
Author:         Shiro Takeda
First-written:  <2001/08/13>

���F

  * gams.el version 4.0 �p�̐����D

  * Emacs (or Meadow) �̑���̊�{�I�Ȃ��Ƃɂ��ẮCEmacs �̃��j���[�̃w��
    �v�� Emacs tutorial ��ǂ�ł��������D

  * �u�o�b�t�@�v�C�u�~�j�o�b�t�@�v�C�u�E�B���h�E�v���� Emacs �̗p��ɂ��Ă�
    tutorial���Q�Ƃ��Ă��������D

  * "include-sample.gms", "include-sample-2.gms" �����̃t�@�C���Ɠ����t�H���_
    �ɒu���Ă��������D

  * "C-cC-v"�̂悤�ȕ\�L�͒ʏ��Emacs�̐����Ɠ����悤�ȈӖ���\���܂��D�Ⴆ�΁C

    `C-cC-v' ==>  "Control key + c" �������āC���̌� "Control + v" ������
                   �Ƃ������ƁD
    `M-q'    ==>  "Alt key + q" �������Ƃ������Ƃł��D

  * M-x describe-variable �� M-x describe-function �Ƃ����R�}���h�ɂ��ϐ���
    �֐��̐�����ǂނ��Ƃ��ł��܂��D�Ⴆ�΁C`gams:process-command-name' �Ƃ�
    ���ϐ��̐�����ǂ݂����Ƃ��ɂ�

    M-x describe-variable ENTER
    gams:process-command-name ENTER

    �ƃ^�C�v����΂悢�ł��D

  * �o�O�̕񍐂ɂ� M-x gams-report-bug �R�}���h�𗘗p���Ă��������D


$offtext

*	Inline comment symbol �̐ݒ�D
$inlinecom /* */
*	End-of-line comment symbol �̐ݒ�D
$eolcom #

$ontext
�K�؂ɐݒ肳��Ă���΁C���̃o�b�t�@�[�̃��[�h�� GAMS mode�ɂȂ��Ă���͂���
�� (���[�h���C���� GAMS �Ƃ�������������΁CGAMS mode �ɂȂ��Ă��܂�)�D GAMS
mode�ɂȂ��Ă��Ȃ��ꍇ�ɂ� "~/.emacs.el" �t�@�C���̐ݒ� (���� load-path �̐�
��) ��������x�`�F�b�N���Ă��������D

        ----------------------------------------------------------------------
$offtext
$stitle        ��{�I�ȗ��p�@
$ontext
        ----------------------------------------------------------------------

�܂��C���̃t�@�C���ɑ΂��� GAMS �����s���Ă݂܂��D`C-cC-t'�ƃ^�C�v���Ă��������D
�~�j�o�b�t�@�[�Ɏ��̂悤�ȃ��b�Z�[�W���ł�͂��ł��D


        Start GAMS (s), Kill GAMS process (k), Change GAMS command (c), Change options (o).


������ `s' �������Ɖ����ɃE�B���h�E���J���CGAMS �����s����܂��D�܂��́C[f9]
�� `C-cC-s' �������Ă������悤�� GAMS ���X�^�[�g���܂��D

�u���v GAMS ���X�^�[�g���Ȃ��C���邢�͏�肭���s����Ȃ��Ƃ��ɂ́C�K�؂Ȑݒ�
������Ă��Ȃ��͂��ł��D���̓_���`�F�b�N���Ă��������D

  + .emacs.el ���� shell (bash �� cmdproxy) ��K�؂ɐݒ肵�Ă��܂����H 

  + �ϐ� `gams:process-command-name' ���K�؂ɐݒ肳��Ă��܂����H GAMS �̃V�X
  �e���t�H���_�Ƀp�X��ʂ��Ă��Ȃ��̂Ȃ�C�ϐ� `gams:process-command-name' ��
  gams.exe �ւ̃t���p�X���w�肵�Ȃ��Ƃ����Ȃ��ł��D

GAMS�̃v���Z�X���I��������C`C-cC-v' �� [f10] �������Ă��������D����� LST�t�@
�C���Ɉړ����܂��D

LST�t�@�C�����J������C"No error message is found" �Ƃ������b�Z�[�W���~�j�o�b
�t�@�[�ɏo��͂��ł��D����͂��� gms �t�@�C�����G���[���Ȃ���肭���s���ꂽ��
�������Ƃ��Ӗ����܂��D

�����ŁC`i' (�� `b') �������ƁC���� GMS �t�@�C���̃o�b�t�@�[�ɖ߂�܂��D

���ɁC�ȉ��ɂ��� * �Ŏn�܂�s�� * ���������āCGAMS �����s���Ă�������
(`C-cC-t' �������C`s' ������)�D

$offtext
*               ���̍s�̃R�����g���Ƃ��Ă��������D�G���[�̈ʒu�D
$ontext
���s������CLST�t�@�C���Ɉړ����Ă������� (C-cC-v �� F10)�D����ƁC�E�B���h�E
����ɕ�������C�~�j�o�b�t�@�[�Ɏ��̂悤�ȃ��b�Z�[�W���\������܂��D

        Key: [u]=Jump to the error place, [i]=Jump to the input file.

��̃E�B���h�E�̓G���[�̍s�C���̃E�B���h�E�̓G���[�̓��e��\�����܂��D

��̃E�B���h�E�͎��̂悤�ȕ\���ɂȂ��Ă���͂��ł��D

	
	      ���ɁC�ȉ��ɂ��� * �Ŏn�܂�s�� * ���������āCGAMS �����s���Ă�������
	      (`C-cC-t' �������C `s' ������)�D
	       
	 114               ���̍s�̃R�����g���Ƃ��Ă��������D�G���[�̈ʒu�D
	 ***               $409
	 *** LINE     86 INPUT       c:\WorkDir\gams\gams-sample-ja.gms
	      ���s������CLST�t�@�C���Ɉړ����Ă������� (C-cC-v �� F10)�D����ƁC�E�B���h�E
	      ����ɕ�������C�~�j�o�b�t�@�[�Ɏ��̂悤�ȃ��b�Z�[�W���\������܂��D


����́C�������ʂ̍\���G���[ (syntax error) �ł��D�G���[�̈ʒu�ƃG���[�ԍ�
(140) �������Ă��܂��D

�����ɉ����̃E�B���h�E�̓G���[�̓��e (�G���[�ԍ� 140 �̈Ӗ�) ��\�����܂��D
���̃P�[�X�́C"Unknown symbol" �Ƃ����G���[���Ƃ������Ƃ��킩��܂��D


	409  Unrecognizable item - skip to find a new statement
	       looking for a ';' or a key word to get started again
	
	*** 1 ERROR(S)   0 WARNING(S)
	GAMS Rev 231  WIN-VIS 23.1.1 x86/MS Windows                       09/16/09 01:34:32 Page 3
	GAMS mode for Emacs�̎g������������邽�߂̃T���v���v���O����
	Include File Summary


LST�t�@�C������ `y' ���^�C�v����ƁC�ŏ��̃G���[�̈ʒu�ɃW�����v���܂��D

���ɁCLST�t�@�C���� `u' ���^�C�v���Ă��������DGAMS �t�@�C�����̃G���[���u����
����ʒu�ɃW�����v���܂��D

�ȏ�̎菇�C�܂�

 o GAMS�����s (`f9' or `C-cC-s').
 o LST�t�@�C���Ɉړ� (`f10' or `C-cC-v').
 o �G���[�̈ʒu�C���e���m�F�D
 o GMS�t�@�C���̃G���[�ӏ��ɃW�����v (`u')

���J��Ԃ����ƂŁC�ȒP�� GMS �t�@�C�����f�o�b�O (debug) ���邱�Ƃ��ł��܂��D


(*) `u' �� `i' (or `b') �̈Ⴂ�D

�����G���[�����݂��Ă�����C���̂悤�ȃ��b�Z�[�W���~�j�o�b�t�@�[�ɕ\�������
���D

        Key: `u' = Jump to the error place, `i' = Jump to the input file.


`u' �ł̓G���[�̈ʒu�ɃW�����v���܂��D `i' �ł̓C���v�b�g�t�@�C�� (�g�b�v���x
���̃v���O����) �ɃW�����v���܂��D

�G���[�̓C���v�b�g�t�@�C���ł͂Ȃ��C�C���v�b�g�t�@�C������ǂݍ��܂ꂽ�T�u���[
�`���t�@�C���Ő����Ă���ꍇ������܂��D`u' �������ƃC���v�b�g�t�@�C���ł���
�����C�T�u���[�`���t�@�C���ł��낤���C�Ƃɂ����G���[�̏ꏊ�ɃW�����v���܂�
���C`i' �ł̓C���v�b�g�t�@�C���ɃW�����v���܂��D

�C���v�b�g�t�@�C���̖��O�� LST �t�@�C���̍ŉ����ɂ��� FILE SUMMARY �t�B�[���h
����擾����܂��D


Syntax �G���[�ȊO�̃G���[ (�Ⴆ�΁Aexecution) �̏ꍇ�ɂ́C�G���[�s�����\����
��Ȃ���������܂���D�Ⴆ�΁C�ȉ��ɂ��� "* b = 1/a;" �Ƃ����s�̐擪�� * ����
�����āCGAMS �����s���āALST �t�@�C���Ɉړ����Ă��������B
$offtext
parameter a       Parameter a
	  b       Parameter b;
a = 0;
* b = 1/a;
parameter c, d, e;

$ontext

���̍s�� `l' ���^�C�v���Ă��������D


 *** Exec Error at line 197: division by zero (0)


����ƁC�G���[�s (197) �ɃW�����v���܂��D����ɁC������ `b' ���^�C�v����
�΁CGMS �t�@�C�����̃G���[�̈ʒu�ɃW�����v���܂��D

$offtext
*        ----------------------------------------------------------------------
$stitle		GAMS mode �̂��̑��̃R�}���h�D
*        ----------------------------------------------------------------------

* ------------------
$stitle		�v���Z�X�ɂ��āD
* ------------------
$ontext

[�R�}���h���C���̕ύX]

��Ő��������悤�ɁC`C-cC-ts' �ƃ^�C�v���邱�ƂŁCGAMS process ���N���ł���
���D����ɁC���j�o�[�T���A�[�M�������g (�܂�CC-u) ��t���������ꍇ�ɂ́C
�v���Z�X���N������O�ɁC�R�}���h���C�����C�����邱�Ƃ��ł��܂��D

`C-uC-cC-t' �ƃ^�C�v���Ă��������D


        Start GAMS (s), Kill GAMS process (k), Change GAMS command (c), Change options (o).


������ `s' �������ƁC���̂悤�ȃ��b�Z�[�W���~�j�o�b�t�@�[�ɕ\������܂��D


        Edit command if you want:  gams gams-sample.gms ll=0 lo=3 pw=100


�����Ŏ����̖]�ޒʂ�ɃR�}���h���C�����C���ł��܂��D�Ⴆ�΁C


        Edit command if you want:  gams gams-sample.gms ll=0 lo=3 pw=120


�ƏC�������Ƃ��܂��D����ƁC���̌�ȉ��̂悤�ȃ��b�Z�[�W���ł܂��D


        Use this command line also in the future?


������ `y' �Ɠ�����ƁC���̂悤�ȍs�����̃t�@�C���̑��s�ڂɒǉ�����܂��D


        *#!gams gams gams-sample.gms ll=0 lo=3 pw=120


����GAMS�����s����Ƃ��ɂ́C���̍s�����̂܂܃R�}���h���C���Ƃ��ăV�F���ɓn��
��܂� (�v����ɁC���̍s���R�}���h���C���Ƃ��āC���̂܂܎��s�����Ƃ�����
��)�D�����C�f�t�H�[���g�̃R�}���h���C���ɖ߂������Ƃ��ɂ́C���̍s���������Ă�
�������D


[*#! �L�@�ɂ��R�}���h���C���̎w��]

GMS �t�@�C���̍ŏ��̍s�� *#! �Ŏn�܂�\�����������ꍇ�CGAMS mode �͂��̍s��
���̂܂܃R�}���h���C���Ƃ��Ď��s���܂��D

�Ⴆ�΁C��ԍŏ��̍s�Ɏ��̂悤�ɏ����Ă��������D


	*#!e:/GAMS/GAMS22.8/gams.exe gams-sample.gms ll=0 lo=3 pw=100 o=.\gams-sample-alt.lst


����ƁCC-cC-s ��


e:/GAMS/GAMS22.8/gams.exe gams-sample.gms ll=0 lo=3 pw=100 o=.\gams-sample-alt.lst


���C���̂܂܃R�}���h���C���Ƃ��Ď��s����܂��D����̓V�F���X�N���v�g�ɂ�����
#!/usr/bin/perl �� #!/bin/sh �Ƃ������L�@�Ɠ����悤�ȋ@�\�ł��D

GAMS mode �����s����R�}���h���C���́C�f�t�H�[���g�ł͕ϐ�
`gams:process-command-name' ��`gams:process-command-option' �ɂ���Č��肳��
�܂��D����́C�f�t�H�[���g�ł͑S�Ẵt�@�C���ɓ����R�}���h���C�����K�p�����
�Ƃ������Ƃ��Ӗ����܂��D�����C�������̃t�@�C���ɂ��ẮC�R�}���h���C����
�ύX�������ꍇ�ɂ́C���� "*#!" �L�@���g�����ƂőΏ��ł��܂��D


[GAMS �̃v���Z�X�� kill ���� (��~������) ]

GAMS�̃v���Z�X�������Ă���Ƃ��ɁC`C-cC-tk' �ƃ^�C�v����ƃv���Z�X���~����
�邱�Ƃ��ł��܂��D$ontext-$offtext �Ɉ͂܂ꂽ�����̃R�[�h�����s���āA�ȉ���
�菇�������Ȃ��Ă��������B

 (1) `C-cC-t'
 (2) `s'
 (3) `C-cC-t' while a GAMS process running.
 (4) `k'

ontext-oftext �̃y�A����������ɂ� ontext �� offtext �̏�� `C-cM-c' �����s
���Ă��������D
$offtext

$ontext
*	Type `C-cM-c' on the above ontext!  To comment out them, type
*	the same.

set	o	/o1*o100000/;
parameter
    xx(o)
    yy(o)
    ;
xx("o1") = 0;

loop(o,
    yy(o) = sin(xx(o));
    xx(o+1) = 0.1 + xx(o);
);
display yy;

$offtext

$ontext

[�R�}���h���C���̃I�v�V������ύX����D]

�v���Z�X���j���[ (C-cC-t) �� `o' ���������Ƃɂ��R�}���h���C���̃I�v�V����
��ύX���邱�Ƃ��ł��܂��D�܂��C�V���ȃI�v�V�����̑g�ݍ��킹��o�^���Ă�����
�Ƃ��ł��܂��D

�o�^�����I�v�V������ `gams-statement-file' (�Ō��肳���t�@�C��) �ɕۑ�����
�܂��D

�f�t�H�[���g�̃I�v�V�����̑g�ݍ��킹�͕ϐ� `gams:process-command-option' ��
�l�Ō��肳��܂��D


[GAMS�̃R�}���h��ύX����D]

�v���Z�X���j���[ (C-cC-t) �� `c' ���������Ƃɂ�� GAMS �̃R�}���h��ύX���邱
�Ƃ��ł��܂��D�܂��C�V���ȃR�}���h��o�^���Ă������Ƃ��ł��܂��D

�o�^�����I�v�V������ `gams-statement-file' (�Ō��肳���t�@�C��) �ɕۑ�����
�܂��D

�f�t�H�[���g�̃I�v�V�����̑g�ݍ��킹�͕ϐ� `gams:process-command-option' ��
�l�Ō��肳��܂��D

$offtext
* ------------------
$stitle		LST �t�@�C���̖��O�Əꏊ�̎w��
* ------------------
$ontext

GMS �t�@�C���� GAMS �����s����ƁCGAMS �t�@�C���Ɠ������O (�g���q�����݈̂ق�
��) �� LST �t�@�C���������t�H���_�ɍ쐬����܂��D�������CLST �t�@�C���̖��O
�Əꏊ�������Ŏw�肷�邱�Ƃ��ł��܂��D

�Ⴆ�΁CLST �t�@�C���̖��O�� lst-sample.lst �Ƃ��C����ɂ���� doc �Ƃ����T�u
�t�H���_�ɏo�͂������Ƃ��܂��D���̏ꍇ�CGMS �t�@�C���Ɏ��̂悤�ȍs�������Ă�
���܂��D

	* gams-lst-file: .\doc\lst-sample-2.lst


(* �͖{���͍s���ɂȂ��Ă͂Ȃ�܂���)

���̃R�[�h�͎��̓�̈Ӗ��������܂��D

1) GAMS �� 'o=.\doc\lst-sample.lst' �Ƃ����I�v�V�����t���Ŏ��s�����D

2) ���� GMS �t�@�C������ C-cC-v (or F10) �L�[�� .\doc\lst-sample.lst �Ɉړ�
   �ł��܂��D

���̋@�\�������ɗ��p���Ă݂����Ƃ��ɂ́C���� GMS �t�@�C���� 3 �s�ڂ̍s����
`**' �� `*' �ɕύX���Ă��������D

���l�ɁC`gams-lst-dir' ���g����LST�t�@�C�����o�͂���u�t�H���_�v���w��ł��܂��D

�Ⴆ��

	* gams-lst-dir: .\lst

�Ƃ����R�[�h��������� gams-sample.lst �� ".\lst\" �Ƃ����t�H���_�ɏo�͂���
�邱�ƂɂȂ�܂��D

$offtext
* ----------------------------
$stitle		GAMS �̖��߂̕⊮���́D
* ----------------------------
$ontext

GAMS �̖��߂�⊮���͂ł��܂��D`C-cC-k' �ƃ^�C�v���Ă��������D����ƁC�~�j�o�b
�t�@�[�Ɏ��̂悤�ȃ��b�Z�[�W���\������܂��D


        Insert statement (default = set):

�����ŁCspace �� tab �L�[�������ƁC�⊮���͂̌�₪�\������܂��D������
ENTER �������ƃf�t�H�[���g�l�ł��� set �����̂܂ܓ��͂���܂��D���邢�� `v'
�������� space �������� `VARIABLE' �������I�Ƀ~�j�o�b�t�@�[�ɓ��� (�⊮) ����
�܂��D

���l�ɁCdollar control option ���⊮���͂ł��܂��D���̏ꍇ�́C `C-cC-d' ���^
�C�v���Ă��������D

����ɁC���ɓ��͂���Ă���R�}���h�̏�� `C-uC-cC-k' or `C-uC-cC-d' �����s��
��ƁC�V�����R�}���h�ɒu�������邱�Ƃ��ł��܂��D
$offtext

parameter	replace; 	# `parameter' �̏�� C-uC-cC-k
$ontext

����ɁC��葽�@�\�� `gams-insert-statement-extended' (C-cC-n) �Ƃ����R�}���h
������܂��D���̃R�}���h�ł� model, solve, file, option, if, while, loop,
put ����͂���ۂɁC��������⊮���͂��邱�Ƃ��ł��܂��D

$offtext
* -------------------------------------------
$stitle 	�V�����R�}���h�̓o�^
* -------------------------------------------
$ontext

�f�t�H�[���g�ł͓o�^����Ă��Ȃ��R�}���h����͂��悤�Ƃ����ꍇ�C��������̌�
�����p�ł���悤�ɓo�^���Ă������Ƃ��ł��܂��D
�Ⴆ�΁C`C-cC-d' �� `gdxin' �Ɠ��͂��Ă��������D


        Insert dollar control (default = $abort): $gdxin


������ enter �������ƁC���̂悤�ɕ�����܂��D


        Store `gdxin' for future use?  Type `y' if yes: 


`y' �������� dollar control `$gdxin' ��o�^���邱�Ƃ��ł��܂��D�o�^�����΁C
�⊮���͂̌��̈�Ƃ��ĕ\�������悤�ɂȂ�܂��D�o�^���ꂽ���߂�
"~/gams-statement.txt" �t�@�C���ɕۑ�����܂��D�����C�ԈႦ�ēo�^���Ă��܂���
�ꍇ�ɂ́C"~/gams-statement.txt" ���J���ď����Ă��������D

dollar control �����ł͂Ȃ� statement (C-cC-k) �̓��͂ɂ��Ă��C�����悤�ɓo
�^�ł��܂��D�f�t�H�[���g�� gams.el �ɂ͑S�Ă̖��߂͓o�^����Ă��܂���D
�悭���p���閽�߂ɂ��Ă͎����œo�^����悤�ɂ��Ă��������D

$offtext
* ---------------------------
$stitle		���p�L���Ɗ���
* ---------------------------
$ontext

`gams-close-paren-always', `gams-close-double-quotation-always',
`gams-close-single-quotation-always' �Ƃ����ϐ��� non-nil ���ݒ肳��Ă����
���ɂ́C ', ", ( ���^�C�v����ƁC����ɑΉ����� ', ", ) �������I�ɓ��͂��܂��D
`(' �Ƀ��j�o�[�T���A�[�M�������g��t����� (�܂�CC-u( �ƃ^�C�v�����),
���ʂ͎����ł͓��͂���܂���D

$offtext
* ---------------------------------------
$stitle		�R�����g�p�̃e���v���[�g�̓���
* ---------------------------------------
$ontext

���̐l (���邢�́C���Ȃ����g) ���ǂ݈Ղ��R�[�h�������ɂ́C�R�[�h���ɓK�؂ȃR
�����g�������Ă����K�v������܂��D `C-cC-o' �ŃR�����g�̃e���v���[�g����͂�
�邱�Ƃ��ł��܂��D���͂����R�����g�̃e���v���[�g�� `gams-user-comment' �Ƃ�
���ϐ��Ō��肳��܂��D

$offtext
* ---------------
$stitle		GAMS-TEMPLATE mode.
* ---------------
$ontext

GAMS-TEMPLATE mode (�f�t�H�[���g�ł� `C-cC-e') �ɂ���ėl�X�ȃe���v���[�g���
�͂��邱�Ƃ��ł��܂��D

GAMS mode �ɂ� `gams-template.txt' �Ƃ����T���v���̃e���v���[�g�t�@�C�� (�e��
�v���[�g���o�^���ꂽ�t�@�C��) ���t�����Ă��܂��D����� HOME �f�B���N�g���ɕ�
�����Ă����Ă������� (���邢�� `gams-template-file' �Ƃ����ϐ��Ŏw
��)�DGAMS-TEMPLATE mode ���g���ɂ� GAMS mode �̃o�b�t�@�[��`C-cC-e' �ƃ^�C�v
���Ă��������D GAMS-TEMPLATE mode ���̃R�}���h�ɂ��Ă�
*Template List* �o�b�t�@�[�� `h' �������Ă��������D

$offtext
* ----------------
$stitle 	�p���O���t�̐��`
* ----------------
$ontext

���̃��W���[���[�h�Ɠ��l�ɁCGAMS mode �ł��p���O���t�̐��`���ł��܂��D���̃p
���O���t�ɃJ�[�\����u���āC`M-q' �������Ă��������D


*       Put the cursor around here!  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph....


    Put the cursor around here!  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph....



��̃p���O���t�͂��ꂼ�ꎟ�̂悤�ɐ��`����܂��D


*       Put the cursor around here!  This is a sample paragraph.  This is a
*       sample paragraph.  This is a sample paragraph.  This is a sample
*       paragraph.  This is a sample paragraph.  This is a sample paragraph.
*       This is a sample paragraph....


    Put the cursor around here!  This is a sample paragraph.  This is a
    sample paragraph.  This is a sample paragraph.  This is a sample
    paragraph.  This is a sample paragraph.  This is a sample paragraph.
    This is a sample paragraph....

$offtext
* ---------------------
$stitle 	�R�����g�A�E�g
* ---------------------
$ontext

GAMS �ł͍s���� * ��t���邱�ƂŃR�����g�A�E�g���� (�R�����g�s�ɂ���) ���Ƃ�
�ł��܂��D GAMS mode �ł̓��[�W������I�����āCC-cC-; ���^�C�v���邱�Ƃł���
���[�W�����S�̂��R�����g�A�E�g���邱�Ƃ��ł��܂��D�R�����g�A�E�g���ꂽ���[�W��
�������ɖ߂� (* ���Ƃ�) �ɂ́C���j�o�[�T���A�[�M�������g��t���� C-cC-; ����
�s����΂悢 (�܂�CC-uC-cC-; �ƃ^�C�v����)�D

$offtext

$include ./include/include-sample.gms

* ---------------------
$stitle		Font-lock (�F�t��).
* ---------------------
$ontext

GAMS mode �ł̓R�[�h�̐F�t���ɑΉ����Ă��܂� (�F�t���@�\�� Emacs �p���
font-lock �@�\�ƌ����܂�)�D

font-lock ���I���ɂ���ƁCGAMS �� syntax �ɏ]���R�[�h�������ŐF�t������܂��D
font-lock ���I���ɂ���ɂ� "~/.emacs.el" �t�@�C���Ɉȉ��̃R�[�h��t�������Ă�
���΂悢�ł��D

(global-font-lock-mode t)


`gams-choose-font-lock-level' (binded to C-cC-f) �����s���邱�ƂŐF�t���̃��x
����ύX���邱�Ƃ��ł��܂��D

 0 => �F�t���Ȃ��D
 1 => �ŏ����̐F�t���D
 2 => �ő���̐F�t���D

$offtext
*       Type `C-cC-f' and change the coloring level!

set    k       Index k                / 1,2 /
       l       Index l                / l1*l10 /;

parameter    s       Parameter s     / 1 /
	     t       Parameter t     / 2 /
	     u(k)    Parameter u;
u(k) = 1;

display "Parameter p/q", u;
display 'Single quote / p/q', u;

variable
    p(k)    Variable p;		# End-of-line comment.

equation
    eq_p(k) Equation;		/* Inline comment. */

eq_p(k) .. p(k) =e= u(k);

$ontext

�s���̑����t�@�C�����J���Ƃ��ɂ́C�F�t�������̂��߂ɔ��Ɏ��Ԃ������邩����
��܂���D���̏ꍇ�ɂ͐F�t�����x���� 1 �ɂ��� (���邢�� 0 �ɂ��Ă���) �ق���
�悢��������܂���D

�f�t�H�[���g�̐F�t�����x���� `gams-font-lock-level',
`gams-lst-font-lock-level', `gams-ol-font-lock-level' �Ƃ����ϐ��̒l�ɂ����
���܂�܂��D�ǂ���f�t�H�[���g�ł� 2 �ɐݒ肳��Ă��܂��D

�܂��C`font-lock-fontify-block' �Ƃ������� (M-gM-g) �ɂ���ăJ�[�\���̎����
�u���b�N�̐F�t�������邱�Ƃ��ł��܂��D�����ŐF�t������Ȃ��ꍇ�ɂ́C���̖���
�����s���Ă݂Ă��������D

�F�t���̋@�\�ɖ�肪����ꍇ�ɂ͍�҂ɘA�����Ă��������D

$offtext
* ---------------------------------------------
$stitle 	identifier �̐錾�����̕\��
* ---------------------------------------------
$ontext

GAMS �̃v���O��������������ǂ񂾂肷��Ƃ��ɂ́C identifier (parameter,
variable, equation �Ƃ��Đ錾���ꂽ����) �̐錾�������Ȃ��Ă��镔�����m�F����
���Ƃ��悭����Ǝv���܂��D���̂悤�ȏꍇ�C�Ⴆ�� `isearch-backward' �R�}���h
���̌����p�R�}���h�𗘗p���Ώ����邱�Ƃ��ł��܂��D�������C���� identifier ��
�v���O�����̗l�X�ȉӏ��Ɍ����Ƃ��C���邢�͑��̃t�@�C���Ő錾���Ă���Ƃ���
�́C�����R�}���h�ł͊ȒP�ɐ錾�������������Ȃ��ł��傤�D

`gams-show-identifier' (F7 or `C-cC-.') �R�}���h���g���΁Cidentifier �̐錾��
�����ȒP�Ɍ����邱�Ƃ��ł��܂��D�ȉ��̗�������Ă݂Ă��������D

$offtext

a = 1; 			# a �̏�� F7 �������D
display a;		# a �̏�� F7 �������D
u(k) = 1;		# u �� k �̏�� F7 �������D
p.fx(k) = 10;
display p.l;		# p �̏�� F7 �������D

$ontext
�Ⴆ�΁A`a' �̏�� F7 ���^�C�v����ƁA��� `a' �̐錾�����A���ɂ̓t�@�C���̍\
�����\������܂��D

�~�j�o�b�t�@�[�Ɏ��̂悤�ȕ\��������܂��B

The declaration part of `a': [?]help,[d]ecl,[n]ext,[p]rev,[e]copy,[r]escan,[ ]restore,[ENT]jump

������ n (or p) ���^�C�v����Ǝ��� (��O��) a �������ʒu�ɃW�����v���܂��B
d ���^�C�v����Ɛ錾�����Ɉړ����܂��B�܂��Ac ���^�C�v����ƌ��X�̈ʒu�Ɉړ�
���܂��B

�X�y�[�X�������ƁA���X�̃E�B���h�E�̏�Ԃ��񕜂���܂��B

�ڂ����́A? �L�[�������Ă��������B


����ɁA�T�u���[�`���t�@�C�����̐錾�������\������܂��B

�����āA�ȉ��� "ene", "out", "util", "com", and "sec" �̏�� F7 �������Ă���
�����B"include-sample.gms" �t�@�C�����̐錾�������\������܂��B

$offtext
display ene; 		# Type F7 on the identifier ene
display op; 		# Type F7 on the identifier out
display util;
display m, n;

ene(com,sec) = 100;
op(sec) = 1000;
display ene, op, sec, com;

$ontext

���j�o�[�T���A�[�M�������g��t�����ꍇ (i.e. C-uC-cC-.)�A�ǂ� identifier ��
�\�����邩������܂��B

$offtext
* ---------------------------------------------
$stitle		identifier �̃��X�g�̕\��
* ---------------------------------------------
$ontext

`gams-show-identifier-list' (binded to `C-cC-a' by default) ���g���΁A
���݂̃t�@�C�����Œ�`����Ă��� identifier �̃��X�g��\�����܂��B
�g�����́A C-cC-a �̂��� ? ���^�C�v���Ă��������B

$offtext
* -----------------------------------
$stitle		ontext-offtext �y�A�Ɋւ���R�}���h
* -----------------------------------
$ontext

`gams-insert-on-off-text' (binded to `C-cC-c' by default) �� ontext-offtext��
�}�����܂��BC-u ��t����� (i.e. `C-uC-cC-c') ���[�W������ ontext-offtext�ň�
�݂܂��B

Using `gams-jump-on-off-text' (`C-cC-g') on an ontext (offtext), you can
jump to the corresponding offtext (ontext).

Using `gams-comment-on-off-text' (`C-cM-c') on an ontext (offtext), you
can comment out or uncomment a pair of ontext-offtext.

Using `gams-remove-on-off-text' (`C-cM-g') on an ontext (offtext), you
can remove a pair of ontext-offtext.

$offtext
display "Try to type C-cC-c, C-uC-cC-c, C-cC-g, C-cM-c, and C-cM-g",
	"on a ontext or offtext!";

* ---------------------------------------------------------
$stitle		�u���b�N�̐��`
* ---------------------------------------------------------
$ontext
`gams-align-block' (C-cC-y) �ɂ���� table �₻�̑��̃u���b�N�̐��`�����邱
�Ƃ��ł��܂��B

[��1]

�ȉ��� table �u���b�N�� Header line ����I��܂ł̃��[�W������I�����AC-cC-y
-> t -> 3 -> y �ƃ^�C�v���Ă݂Ă��������B����Ɛ��l�̌������낦�邱�Ƃ��ł���
���B

*	Before
table table1	test table
        	Japan	USA 	  EU	 China	Korea
agriculture	  70	      4	  24	     197     3
fishery		      21     8	   0	   17	   27
textile		  4	    6	   106	   2	     -8
food		    9	  415	 0	 95	    15
energy		  0	   8	  6	 -327	  7
;

*	After
table table1	test table
               Japan	USA	EU    China    Korea
agriculture	  70	  4	24	197	   3
fishery		  21	  8	 0	 17	  27
textile		   4	  6    106	  2	  -8
food		   9	415	 0	 95	  15
energy		   0	  8	 6     -327	   7

[�� 2]

�܂��A�ȉ��̃R�[�h�� `Start' ���� `End' �̕�����I�����AC-cC-y -> o �ƃ^�C�v
���Ă��������B�u=�v�������悤�ɐ��`����܂��B

parameter
    abc(*);

*	Before
*	Start.
abc("agriculture") = 100;
abc("fishery") = 200;
abc("textile") = 1;
abc("food") = 20;
abc("energy") = 123;
*	End.

*	After
*       Start.
abc("agriculture") = 100;
abc("fishery")     = 200;
abc("textile")     = 1;
abc("food")        = 20;
abc("energy")      = 123;
*       End.

display abc;
$offtext
* ----------------------
$stitle		�����C���f���g
* ----------------------
$ontext

GAMS �̃V���^�b�N�X�ɉ����ăR�[�h�������ŃC���f���g�ł��܂��D

M-C-\        =       ����̓��[�W�������C���f���g�D
TAB          =       ����̓J�����g���C�����C���f���g�D

�ȉ��̕��������[�W�����w�肵�� `M-C-\' ���^�C�v���Ă݂Ă��������D

$offtext

*	----------------------------------------------------------------------
*       ��������D
*	----------------------------------------------------------------------

set     i       Index   / i1*i2 /
j       Index   / j1*j2 /;

parameter
para(i,j)       Parameter a
parb(i,j)       Parameter b
parc(i,j,*)     Parameter c;

para(i,j) = uniform(0,1);

loop((i,j),

*       Display i.
display "Display set i", i;
*       Display j.
display "Display set j", j;
if((para(i,j) > 0.5),
display "para is greater than 0.5!";
else
display "para is less than 0.5!";
);

parb(i,j) = para(i,j) * 2;
parc(i,j,"a") = para(i,j);
parc(i,j,"b") = parb(i,j);

*       Display parc.
display parc;
);
*	----------------------------------------------------------------------
*       �����܂ŁD
*	----------------------------------------------------------------------

$ontext
=== Note ===�����C���f���g����肭�@�\������ɂ́C�e�u���b�N
(e.g. parameter, table, set, display blocks etc.) ���Z�~�R���� (;) �ŏI����
�Ă���K�v������܂��D�u���b�N�̏I����\���Z�~�R�����͏ȗ��ł���ꍇ��������
�����C�ł��邾���ȗ����Ȃ��悤�ɂ��Ă��������D

$offtext

* -------------
$stitle		�}�j���A���̌ďo���D
* -------------
$ontext

GAMSIDE �ł� HELP -> DOC ���� GAMS �̃}�j���A�� (PDF�t�@�C��) �����邱�Ƃ���
���܂��DGAMS mode �ł� `C-cC-m' �ɂ���ē������Ƃ��ł��܂��D���̃R�}���h��
�p����ɂ͕ϐ� `gams-docs-directory', `gams-docs-view-program' ���K�؂ɐݒ肳
��Ă���K�v������܂��D

$offtext
* ----------------------
$stitle		GAMS ���f�����C�u�����D
* ----------------------
$ontext

`gams-modlib' (C-cC-z) �̂���� GAMS ���f�����C�u���������邱�Ƃ��ł��܂��D��
�̃R�}���h�𗘗p����ɂ� `gams-system-directory' �ɓK�؂Ȓl���ݒ肳��Ă���K
�v������܂��D

$offtext
* --------------------------------
$stitle		�C�����C���E�s���R�����g
* --------------------------------
$ontext

You can insert the inline and end-of-line comment by `gams-comment-dwim'
and `gams-comment-dwim-inline' (binded to M-; and C-cM-; respectively).

If the file includes $eolcom and $inlinecom dollar control options, the
end-of-line and inline comment symbols are determined by such values.

If $inlinecom or $eolcom do not exists in the file, `gams-comment-dwim'
and `gams-comment-dwim-inline' insert their default values determined by
the variables `gams-inlinecom-symbol-start-default',
`gams-inlinecom-symbol-end-default', and `gams-eolcom-symbol-default'.

If you attach the universal argument when executing `gams-comment-dwim'
and `gams-comment-dwim-inline', you are asked which symbol to be
inserted.

MPSGE �u���b�N�ł� "!" ����� end-of-line comment symbol �Ƃ��ė��p����܂��D

Try to type M-;, C-cM-;, or C-uC-;, C-uC-cM-;
(note that eol and inline comment symbols are already defined in this file)

Try to type M-; and C-cM-;.

$offtext
parameter
    eol1	"End-of-line comment.    Type M-;"
    eol2	"End-of-line comment 2.  Type M-;"
;
parameter
    inl1	"Inline comment.    Type C-cM-;"
    inl2	"Inline comment 2.  Type C-cM-;"
;
* --------------------------------
$stitle		�R�����g�̃��[�W�������B��
* --------------------------------
$ontext

C-cC-h �ŃR�����g�̃��[�W�������B�����Ƃ��ł��܂��D

�B�ꂽ���[�W�������Ăѕ\��������ɂ͂�����x C-cC-h �������܂��D

$offtext
*        ----------------------------------------------------------------------

$stitle		GAMS LST mode �ɂ����邻�̑��̃R�}���h�D
*        ----------------------------------------------------------------------
$ontext

If you type `M-x help ENTER' and `m' in a LST file buffer, you can read
the simple explanation of GAMS LST mode (or type `?' in a LST file
buffer).  It is like this:

gams-lst-mode is an interactive Lisp function in `gams'.
(gams-lst-mode)

Major mode for viewing GAMS LST file.

The following commands are available in the GAMS-LST mode:

y		Jump to the error and show its number and meaning.
u		Jump back to the error place in the program file.
i 		Jump to the input (GMS) file.
q		Close the buffer.
?		Display this help.
.		Display the Included File Summary.

o		Start the GAMS-OUTLINE mode.

s(S)		Jump to the next (previous) SOLVE SUMMARY.
r(R)		Jump to the next (previous) REPORT SUMMARY.
v(V)		Jump to the next (previous) VAR entry.
e(E)		Jump to the next (previous) EQU entry.
p(P)		Jump to the next (previous) PARAMETER entry.

l		Jump to a line you specify.
L		Jump to a line.

SPC		Scroll up.
M-v or DEL	Scroll down.
1		Widen the window.
2		Split the window.
m		Move frame.
w		Resize frame.
z		Move a cursor to the other window.


[Commands for Scrolling.]

...

[snip]


Try each command by yourself.


$offtext
*        ----------------------------------------------------------------------

$stitle        GAMS-OUTLINE���[�h�D
*        ----------------------------------------------------------------------
$ontext

The GAMS-OUTLINE enables you to outline important components in the LST
file.

You can learn the basic usage of GAMS-OUTLINE mode by reading a sample
file "outline-sample.gms" which is distributed with this file.

To start the GAMS-OUTLINE mode, type `o' in the LST file buffer.  Try to
start GAMS-OUTLINE mode on this file (run GAMS on this file and switch
to the LST file and type `o').  Or you can directly move to the
GAMS-OUTLINE mode by typing C-cC-i.

$offtext
display "";
display "@ ����� gams-sample.gms ";
display "";
display "";
display "@ GAMS-OUTLINE mode �́��̂悤�ȕ\�����ł���D";
display "";

set     iter    Iteration index                / iter1*iter20 /;

parameter
    num             Iteration number
    x(iter)         Parameter x
    y(iter)         Parameter y
    z(iter,*)       Parameter for x and y;

x("iter1") = 0;

loop(iter,
    num = ord(iter);
    x(iter+1) = x(iter) + 3.14 * 0.01;
    y(iter+1) = sin(x(iter+1));
    z(iter+1,"a") = x(iter+1);
    z(iter+1,"b") = y(iter+1);
);

display "LST�t�@�C������ PARAMTERS �͈ȉ��̂悤�ȕ\����:", x, y, z;
display "";
display "";
display "GAMS-OUTLINE ���[�h�ɂ��ďڂ����� outline-sample.gms �Ƃ����T���v���̃t�@�C��";
display "or GAMS-OUTLINE mode �̃w���v (���̃o�b�t�@�[�� `?' ������).";

display a;


* --------------------
* Local Variables:
* fill-column: 76
* End:

