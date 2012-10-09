$title	A sample file for showing Org-mode feature in GAMS mode
*@ 	A sample file for showing Org-mode feature in GAMS mode
$ontext
Time-stamp: 	<2012-09-08 19:41:46 Shiro Takeda>
First-written:	<2012/07/25>
$offtext

*@	Keybindings

*	TAB: org-cycle
*	Shift + TAB: org-global-cycle

*	----------------------------------------------------------------------
*@ 	Specification of lst file or lst file directory (sample code):

$ontext

** gams-lst-file: .\lst\lst-sample.lst	  	
*	The above code means that lst file -> .\lst\sample.lst:

** gams-lst-file: c:\sample.lst		
*	The above code means that lst file -> c:\sample.lst:

** gams-lst-dir: .\lst
*	The above code means that lst file -> .\lst\gams-sample.lst

** gams-lst-dir: c:\	  
*	The above code means that lst file -> c:\gams-sample.lst

$ontext

Commentary:

  * For gams.el version 3.6.

  * Place this file, "include-sample.gms" and "include-sample-2.gms" in the
    same directory.

  * Notations like "C-cC-v" follow the Emacs convention. For example,

    `C-cC-v' ->  Type "Control key + c" and then type "Control + v" key.
    `M-q'    ->  Type "Meta (or Alt) key + q".

  * You can see the explanation of variables and commands by M-x
    describe-variable and M-x describe-function respectively.

  * Bug reports, requests, and suggestions are all welcome!  If you find
    bugs, please use M-x gams-report-bug.


$offtext

*	Inline comment symbol
$inlinecom /* */

*	End-of-line comment symbol
$eolcom #

$ontext
If your setting is proper, this buffer must be in GAMS mode (if the mode
line contains the string "GAMS", you are in GAMS mode).  If you aren't in
GAMS mode, please check your configuration in "~/.emacs.el" (in particular,
load-path setting).

$offtext
*        ----------------------------------------------------------------------
*@ 	Basic usage. 
$ontext

First, try to run GAMS on this file.  Type `C-cC-t', then you see the
following message in the mini-buffer.


        Start GAMS (s), Kill GAMS process (k), Change GAMS command (c), Change options (o).


Type `s', and GAMS will start.  Or if you type [f9] or `C-cC-s', GAMS will
directly start.

[Note] if GAMS doesn't start or doesn't work well, there are likely to be
some problems in configurations. Please check the following:

  + Does a shell (such as bash or cmdproxy) work properly in your Emacs?

  + Check the setting of the variable `gams:process-command-name'. If you do
    not include the GAMS system directory in the environmental variable
    PATH, you must set the full path to GAMS to `gams:process-command-name'.


When the GAMS process finishes, type `C-cC-v' or [f10] to switch to the LST
file buffer.

In the LST buffer, you will see a message "No error message is found" in the
mini-buffer.  This message means that this gms file was executed
successfully without any error.

Type `i' (or `b') to jump back to the gms file buffer.

Next, uncomment the following line (delete *) and run GAMS (type `C-cC-t' and
type `s').

$offtext
*             Uncomment this line.  Error is here.
$ontext

Then switch to the LST buffer (C-cC-v or f10) and you will see two windows
and the following message in the mini-buffer.

        LastMod 2010/07/18 17:40: [u]=Jump to the error place, [i]=Jump to the input file

One window displays an error line, and the other displays an error
meaning.

In the upper window, the following message will be displayed.


      Next, uncomment the following line (delete *) and run GAMS (type `C-cC-t' and
      type `s').
       
  99               Uncomment this line.  Error is here.
 ***                       $140 $36   $342            $342
       
      Then switch to the LST buffer (C-cC-v or f10) and you will see two windows
      and the following message in the mini-buffer.


This is a typical syntax error message in LST files.  This message indicates
the error line (99) and the error number ($140).

At the same time, the lower window shows the meaning of the error with
number 140.  In this case, "Unknown symbol":


  140  Unknown symbol
  342  Illegal suffix syntax - has to start with a letter

   *** 4 ERROR(S)   0 WARNING(S)


  COMPILATION TIME     =        0.000 SECONDS    0.7 Mb      WIN200-121


If you type `y' in the LST file buffer, you can go to the first error place
from anywhere in the buffer.  Try it.

Next, type `u' in the LST buffer and you will jump back to the error line in
the program file buffer.

Repeating the same procedure

o Run GAMS (`f9' or `C-cC-s').
o Switch to LST buffer (`f10' or `C-cC-v').
o See the error line and its meaning.
o Jump back to the error line in the program file buffer (`u')

you can easily debug your GMS file.


[NB] The difference between `u' and `i' (or `b').

If an error exists, the following message will appear in the mini-buffer.


	[u]=Jump to the error place, [i]=Jump to the input file


If there is only one program file, you had better type `u'.  But there may
be many program files if you use $INCLUDE etc. and errors may be included in
subroutine files.  In this case, you may want to jump to the main input file
instead of the subroutine file with the error.  Then you had better type `i'
instead of `u'.

`u' = Jump to the error place ==> Jump to the file where the error exists
(it may be a subroutine file).

`i' (or `b') = Jump to the input file. ==> The input file is the top level
program file (its name is taken from the FILE SUMMARY field in the LST
file.)

When you encounter another types of errors, only the error line may be
displayed.  For example, uncomment the line "* b = 1/a;" below (delete
*) and run GAMS and type `C-cC-v'.
$offtext
parameter a       Parameter a
	  b       Parameter b
;	  
a = 0;
* b = 1/a;
parameter c, d, e;

$ontext
Type `l' on the following error line


 	 *** Exec Error at line 185: division by zero (0)


then you will jump to the error line (185).  Moreover, type `b' and you
jump to the GMS file.


$offtext
*        ----------------------------------------------------------------------
*@ 	Other commands in GAMS mode.

* ---------------------------------------------------------
*@ 	Process handling.

*@@ 	[Running GAMS and editing a command line.]
$ontext
As described above, you can start GAMS process by typing `C-cC-ts' (or F9).
Moreover, if you attach the universal argument (i.e. C-u), you are able to
edit the command line before starting process.

If you type `C-uC-cC-t', you see


        Start GAMS (s), Kill GAMS process (k), Change GAMS command (c), Change options (o).


If you type `s' here, you encounter a message like


        Edit command if you want:  gams gams-sample.gms


and you can edit the command line.  Moreover, when you edit the command
line, you are asked to use it in the future like this.


        Use this command line also in the future?


If you answer `y' to this, the following line will be inserted in the first
line of this file.


        *#!gams gams-sample.gms ll=0 lo=3 pw=95


When you evoke GAMS on this file next time, this line is passed to the shell
as the command line.  If you want to restore the default command line, just
delete this line.
$offtext

*@@ 	[Specify a command line by *#! notation]

$ontext
When there is a line beginning with *#! on the first line in a GMS file,
GAMS mode uses its content as a command line.  For example, suppose that
you write the following statement in the first line

	*#!e:/GAMS/GAMS22.8/gams.exe gams-sample.gms ll=0 lo=3 pw=100 o=.\gams-sample-alt.lst

Then, 

e:/GAMS/GAMS22.8/gams.exe gams-sample.gms ll=0 lo=3 pw=100 o=.\gams-sample-alt.lst

is executed as a command line.  This is a function like #!/usr/bin/perl or
#!/bin/sh for shell scripts.  By default, the command line is determined by
`gams:process-command-name' and `gams:process-command-option' and it is
common to all GMS files. But when you want to use a different command line
for a specific file, use this *#! notation.
$offtext

*@@ 	[Kill (stop) the GAMS process.]
$ontext
If you type `k' when a GAMS process is running, you can kill (stop) the
process.  Uncomment the following programs and try them.

 (1) `C-cC-t'
 (2) `s'
 (3) `C-cC-t' while a GAMS process running.
 (4) `k'

To uncomment a ontext-oftext pair, type `C-cM-c' on ontext or offtext.
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

*@@ 	[Change command line options.]
$ontext

If you type `o' in the process menu, you can change and register a new
command line option combiantion.  Registered option combiantion is stored in
the variable `gams-user-option-alist' and saved in the file decided by the
variable `gams-statement-file'.

The default option combiantion is determinied by the value of
`gams:process-command-option'.
$offtext

*@@ 	[Change gams command.]

$ontext
If you type `c' in the process menu, you can change (and register)
alternative GAMS commands. You can set the default GAMS pcommand by the
value of `gams:process-command-name'. But you may often want to use gams.exe
of different versions. In such cases, register other gams.exe by this menu.

$offtext

*@@@ 	test

* The third level.

*@@@ 	test2

* The third level.

* ---------------------------------------------------------
*@ 	Specify the place and name of the LST file.

$ontext    

When you run GAMS on a gms file, GAMS creates the LST file with the same
name in the same directory.  However, you can specify the name and place of
the LST file explicitly.

For example, if you want to let `lst-sample.lst' be the name of the LST file
corresponding to this gams-sample.gms and put it in the subdirectory `lst'.
Then, add the following code somewhere in this file:


	* gams-lst-file: .\lst\lst-sample.lst


(Note that * must really be on the beginning of line)

This code has two effects

1) gams is executed with option 'o=.\lst\lst-sample.lst'

2) You can switch from the gms file to .\lst\lst-sample.lst by C-cC-v (or
   F10).

If you want to try this, please delete one `*' in the gams-lst-file line of
this file and run gams (see the beginning part of this file).

Similarly, you can specify the directory where the lst file is stored by
setting gams-lst-dir.

For example, 

	* gams-lst-dir: .\lst

This code implies the lst directory is ".\lst\" and the lst file name is
stored as ".\lst\gams-sample.lst".


$offtext
* ---------------------------------------------------------
*@ 	GAMS statement completions.

$ontext

You can insert GAMS statements with completion.  Type `C-cC-k', then the
following message will appear in the mini-buffer.


        Insert statement (default = set):


Type SPACE or TAB key and the list of candidates will appear.  If you type
ENTER, the default value `set' is inserted.  Or if you type, for example,
`v' and then `SPACE', and the statement `VARIABLE' will be automatically
inserted in the mini-buffer.

Similarly, dollar control options can be inserted with completion.  In
this case, type `C-cC-d'.

Moreover, if you type `C-uC-cC-k' or `C-uC-cC-d' on the existing statement
or dollar control, you can replace it with the new one.
$offtext

parameter	replace; 	# Type C-uC-cC-k on `parameter'

set	s	Index	/ 1*10 /;

parameter
    p(s)    	Unit cost		# End-of-line comment.
    out_up(s)	Upper limit on out(s)
    t_dem	Total demand
;
out_up(s) = uniform(1,7);
p(s) = uniform(1,2);
t_dem = sum(s, out_up(s)*0.8);
display out_up, p, t_dem;

variable
    OUT(s)	Output of factory s
    TCOST	Total cost
;
equation
    eq_tcost
    eq_dem	Demand constraint
    eq_out(s) 	"Constraint on out(s)";		/* Inline comment. */

eq_tcost .. TCOST =e= sum(s, p(s)*OUT(s));

eq_dem ..  sum(s, OUT(s)) =g= t_dem;

eq_out(s) .. OUT(s) =l= out_up(s);

out.lo(s) = 0;

$ontext
Moreover, the command `gams-insert-statement-extended' (C-cC-n) is also
available.  This command helps you in inserting various arguments for gams
statement such as model, solve, file, option, if, while, loop, and put.

For example, try

C-cC-n -> model [ENTER]

and then

C-cC-n -> solve [ENTER]

$offtext

* model cost_min Cost minimization / eq_tcost, eq_dem, eq_out /;
* solve cost_min using lp minimizing TCOST;

* ---------------------------------------------------------
*@ 	Automatic registration of a new statement.

$ontext

If you are to insert a statement not registered by default, you can register
it for the future use.  For example, if you type `abort' like


        Insert statement (default = set): abort


and type `ENTER', then you are asked


        Store `abort' for future use?  Type `y' if yes:


If you type `y' here, the statement `abort' is registered and it is included
in the list of candidates of statement completion.  These registered
statements are saved in the file "~/gams-statement.txt".  If you have
registered unnecessary statements, open the file "~/gams-statement.txt" and
delete them manually.

GAMS has a lot of statements.  But only basic statements are registered in
gams.el by default.  So, please register statements that you frequently use
by yourself.

$offtext

* ---------------------------------------------------------
*@ 	Quotation and parenthesis.

$ontext

Type ', ", or (, and the corresponding ', ", and ) will be automatically
inserted if lisp variables `gams-close-paren-always',
`gams-close-double-quotation-always' and
`gams-close-single-quotation-always' are assigned non-nill.  If you attach
the universal argument to `(', then only `(' is inserted.

$offtext

* ---------------------------------------------------------
*@ 	Insert user defined comment template.
$ontext

To write a gms file that other people (or yourself) can understand easily,
it is good to use comments effectively.  You can insert a comment template
by typing `C-cC-o' (gams-insert-comment).  Inserted template is defined by a
variable `gams-user-comment'.  You can change the value of this variable.
For example, I put the following in my ".emacs.el".

         (setq gams-user-comment
               "*       ------------------------------------------------------------------------
         *      %
         ")

Please see the help of `gams-user-comment'.

$offtext

* ---------------------------------------------------------
*@ 	GAMS-TEMPLATE.

$ontext

GAMS-TEMPLATE mode (binded to `C-cC-e' by default) enables you to handle
templates easily.  You can easily insert, re-edit, delete, rename, re-order,
and add templates.

There is a sample template file "gams-template.txt" which is distributed
with this file.  Save it in your HOME directory.  To start GAMS-TEMPLATE
mode, type `C-cC-e' in the GAMS mode buffer.  If you want to know the
commands in GAMS-TEMPLATE mode, type `h' in the *Template List* buffer.

$offtext

* ---------------------------------------------------------
*@ 	Fill paragraph.

$ontext

As in other major modes, filling paragraph works in GAMS mode.  Put the
cursor in the next commented out paragraph and type `M-q'.


*       Put the cursor around here!  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph....


    Put the cursor around here!  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph.  This is a sample paragraph....


*  This makes two paragraph respectively like

*       Put the cursor around here!  This is a sample paragraph.  This is a
*       sample paragraph.  This is a sample paragraph.  This is a sample
*       paragraph.  This is a sample paragraph.  This is a sample paragraph.
*       This is a sample paragraph....

    Put the cursor around here!  This is a sample paragraph.  This is a
    sample paragraph.  This is a sample paragraph.  This is a sample
    paragraph.  This is a sample paragraph.  This is a sample paragraph.
    This is a sample paragraph....

$offtext

* ---------------------------------------------------------
*@ 	Commenting out

$ontext

You can comment out the region with *.  Select a region and type C-cC-;,
then you can comment out that region.  If you want to uncomment the
commented-out region, attach the universal argument (i.e. C-uC-cC-;).  Try
these commands by yourself.

$offtext

$include include-sample.gms

* ---------------------------------------------------------
*@ 	Font-lock (coloring).;
$ontext

GAMS mode for Emacs supports various coloring (font-lock in Emacs
terminology).

If you set font-lock-mode on, coloring automatically works in GAMS mode,
GAMS-LST mode, and GAMS-OUTLINE mode.  To set font-lock-mode on in these
three modes, put the following your "~/.emacs.el" file:

(global-font-lock-mode t)


You can choose three coloring levels by `gams-choose-font-lock-level'
(binded to C-cC-f).

 0 => no coloring.
 1 => minimum coloring.
 2 => maximum coloring.

Try it!

$offtext
*       Type `C-cC-f' and change the coloring level!

set    k       Index k                / 1, 2 /
       l       Index l                / l1*l10 /;

parameter    v       Parameter v     / 1 /
	     t       Parameter t     / 2 /
	     u(k)    Parameter u;
u(k) = 1;

display "Parameter p and q", u;
display 'Single quote p and q', u;

$ontext
This command is available in GAMS mode, GAMS-LST mode, and GAMS-OUTLINE
mode.

If you open a large file, it will take much time to color a buffer.  So, you
may be better choose low coloring level before opening a large file.

The default level of coloring in each mode is determinied by the variable
`gams-font-lock-level', `gams-lst-font-lock-level', and
`gams-ol-font-lock-level'.  All default values are 2 (maximum level).

Moreover, you can re-color a part aroung the cursor (not an entire buffer)
by using `font-lock-fontify-block' (binded to M-gM-g).  It is much faster.

If you encounter odd behavior of coloring, please let me know it!  I will
fix them.

$offtext

* ---------------------------------------------------------
*@ 	Display the declaration part of an identifier.;

$ontext
While you are reading or editing a GAMS program, you may often go back to
the declaration part of an identifier so as to see its definition.  In such
a case, you could use, for example, `isearch-backward' command or something.
But if the identifier is used many times at the different parts of the
program or declared/used in the subroutine files, it is difficult to find
the declaration part of the identifier.

`gams-show-identifier' (binded to F7 or `C-cC-.' by default) enables you to
see the declaration part of the identifier under the cursor.  Try to type F7
on the following examples.

$offtext
u(k) = 1;		# Type F7 on the identifier u and k
out.fx(s) = 10;
display out.l;		# Type F7 on the identifier p

$ontext
If you type F7 on, for example, the identifier "u", u's declaration part
will appear in the upper window and the position of the cursor will be
displayed in the left window.  You will see the following message in the
mini-buffer:

	The declaration part of `u': [?]help,[d]ecl,[n]ext,[p]rev,[e]copy,[r]escan,[ ]restore,[ENT]jump

If you type n(p), you can move to the next (previous) place where "u"
appears.  Type d, you can move to the declaration part.  Type c, you can
move to the original point.

If you type SPC, the previous window position will be restored.  If you type
ENT, you will jump to the declaration part.  If you type other keys, two
buffers will continue to be displyed.

Typing ? will show the help.

`gams-show-identifier' can show the declaration part in the subroutine
files.

The identifier "ene", "out", "util", "com", "sec", "m" and "n"" below are
declared in the subroutine file "include-sample.gms" and
"include-sample-2.gms".  Type F7 on each identifier.

$offtext
display ene; 		# Type F7 on the identifier ene
display op; 		# Type F7 on the identifier oq
display util;

ene(com,sec) = 100;
op(sec) = 1000;
display ene, op, sec, com;

m = -100;
n = -200;

display m, n;

a = 1; 			# Type F7 on the identifier a
display a;		# Type F7 on the identifier a

$ontext
If you attach universal-argument, (i.e. C-uC-cC-.), you are asked the
identifier that you want to search.  Try "C-uC-cC-.".

$offtext

* ---------------------------------------------------------
*@ 	Display the list of identifiers.;
$ontext
`gams-show-identifier-list' (binded to `C-cC-a' by default) displays the
list identifiers defined in the current file.  To learn how to use this
command, try C-cC-a and type `?'.
$offtext

* ---------------------------------------------------------
*@ 	Commands on a ontext-offtext pair.;
$ontext

`gams-insert-on-off-text' (binded to `C-cC-c' by default) inserts an
ontext-offtext pair.  If you attach the universal-argument
(i.e. `C-uC-cC-c'), this command encloses the specified region with an
ontext-offtext pair.

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
*@ 	Align block.;

$ontext
You can align table and other blocks according to GAMS systax by
`gams-align-block' (C-cC-y).

[Example 1]

Set the region from the header line to the end of the table and type C-cC-y ->
t -> 3 -> y.  Then, the table below is formatted.

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

[Example 2]

Set the regions from `Start' to `End' and then type C-cC-y -> o.
Then all = symbols are aligned like

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

* ---------------------------------------------------------
*@ 	Automatic indentation.;
$ontext
You can indent GAMS programs accordint to GAMS syntax.

M-C-\        =       Indent region.  Specify region and type M-C-\.
TAB          =       Indent the current line.

Select the following region and the type `M-C-\' (`indent-region').

$offtext

*	----------------------------------------------------------------------
*       From here.
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
*       Until here
*	----------------------------------------------------------------------
$ontext

Select the above region and type `M-C-\' (`indent-region'), then the above
region is indented like the following:

set     i       Index   / i1*i2 /
	j       Index   / j1*j2 /;

parameter
    para(i,j)       Parameter a
    parb(i,j)       Parameter b
    parc(i,j,*)     Parameter c;

para(i,j) = uniform(0,1);

loop((i,j),

*       Display i.
    display "Set i", i;
*       Display j.
    display "Set j", j;
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

=== Note ===
To make automatic indentation in GAMS mode work well, please end reserved
word blocks (e.g. parameter, table, set, display blocks etc.)  with a
semicolon (;) although it may not be necessarily required in GAMS syntax.

$offtext

* ---------------------------------------------------------
*@ 	View manual.;
$ontext
In GAMSIDE, you can view GAMS pdf manuals (HELP => DOC).  The same kind of
command is available in GAMS mode.  The command name is `gams-view-docs' and
it is binded to `C-cC-m' by default.

To use this command, you need to set the proper values to the variables
`gams-system-directory', `gams-docs-directory' and `gams-docs-view-program'.
See the explanation of two variables.

$offtext

* ---------------------------------------------------------
*@ 	Inline and end-of-line comments;
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

In MPSGE block, "!" is always used as the end-of-line comment symbol.

Note: It is desirable to use a single character as eol and inline
comment symbols.  GAMS mode cannot handle multi-character symbols well.

Try to type M-;, C-cM-;, or C-uC-cM-;, C-uM-;
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

* ---------------------------------------------------------
*@ 	Hide (or show) comment regions.;
$ontext
You can hide and show comment regions by C-cC-h.

$offtext

* ---------------------------------------------------------
*@ 	GAMS model library.;
$ontext

GAMS provides the model library. By `gams-model-library' (binded to C-cC-z),
you can view models in GAMS model library from Emacs.  To use this, you must
set the GAMS system directory to the variable `gams-system-directory'.

To use `gams-model-library', you need to set the proper value to the
variable `gams-system-directory'. Note that this command works only in GAMS
of ver.22.8 or later.

To extract files from the library, this command uses `gamslib.exe'.  You
need to set the proper value to the variable `gams-gamslib-command'.

$offtext

*        ----------------------------------------------------------------------
*@ 	Commands in GAMS LST mode.;
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
*@ 	GAMS-OUTLINE mode.;
$ontext

The GAMS-OUTLINE enables you to outline important components in the LST
file.

You can learn the basic usage of GAMS-OUTLINE mode by reading a sample
file "outline-sample.gms" which is distributed with this file.

To start the GAMS-OUTLINE mode, type `o' in the LST file buffer.  Try to
start GAMS-OUTLINE mode on this file (run GAMS on this file and switch
to the LST file and type `o').  Or you can directly move to the
GAMS-OUTLINE mode by typing C-cC-i (or F12).

$offtext
display "";
display "@ This is gams-sample.gms";
display "";
display "";
display "@ The GAMS-OUTLINE mode is like this!";
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

display "PARAMTERS in the LST file are displayed like:", x, y, z;
display "";
display "";
display "For details of GAMS-OUTLINE mode, read a sample file outline-sample.gms";
display "and the help in GAMS-OUTLINE mode (type `?' in this buffer).";

display a;
display ene, op, sec, com;
display m, n;

* $show







* --------------------
* Local Variables:
* mode: gams
* fill-column: 80
* End:
