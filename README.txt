Author:  Shiro Takeda
Maintainer:  Shiro Takeda
Time-stamp:  <2012-09-08 19:27:03 Shiro Takeda>

This package offers the Emacs lisp program for using the numerical
software GAMS in Emacs (GAMS mode for Emacs).

===============================
0. The contents of this file.  
==============================

1. Introduction.
2. Installation.
3. Basic Usage.
4. Customization
5. TODO.
6. Miscellaneous.
7. Acknowledgments.


=================================
1. Introduction (brief overview).
=================================

Introduction of GAMS mode for Emacs.

GAMS mode for Emacs offers the integrated and flexible environment for
using GAMS in Emacs.

This section presents brief overview of what GAMS mode for Emacs is.
Please read the section `Installation' below for information about how to
install GAMS mode.  If you are upgrading from the previous version of GAMS
mode, the latest changes can be found in `CHANGELOG.txt' file.

You can obtain the latest version of this program at the web site
<http://shirotakeda.org/>.

When you use GAMS, you must do the following jobs:

(1) Edit GAMS program file,
(2) Call GAMS to execute the program,
(3) Read the output file,
(4) Debug the program,
(5) Examine the numerical values in the output file,

and so on...  GAMS mode for Emacs offers various kinds of features which
raise your efficiency in all of these jobs.

GAMS mode for Emacs offers the following five major modes (I skip the
explanation of the Emacs terminology "major mode".  If you cannot
understand the terminology, I recommend that you read the introductory
document of Emacs first).

GAMS mode:		for editing GAMS program files.
GAMS-LST mode:		for viewing LST files.
GAMS-SIL mode:		for viewing GAMS program structure.
GAMS-TEMPLATE mode:	for handling templates of programs.
GAMS-OUTLINE mode:	for viewing important items of LST files.

Furthermore, the following features are included in each major mode.

[GAMS mode]

This is the major mode for editing GAMS program file.

(1) Inserting GAMS statements and dollar control options.
(2) Automatic registering of new statements and dollar control options.
(3) Calling GAMS from Emacs
(4) Like GAMSIDE, it colors a program file in accordance with the GAMS syntax.
(5) Handling templates of various programs (this is GAMS-TEMPLATE mode).
(6) Automatic indent.
(7) Reading GAMS manual.
(8) Extracting models from GAMS model library.
(9) Viewing GAMS program structure (GAMS-SIL mode).

I will explain each function in detail.

By resistering GAMS statements and dollar control options beforehand, (1)
enables you to insert them into the program file easily.  You can insert
the long statements and dollar control options (that you are likely to
mistype) without typing them by yourself.

Although there are a lot of GAMS statements and dollar control options,
only a part of them is registered by default in GAMS mode.  It is because
frequently used statements differ according to users, and because it is
desirable to exclude rarely used statements from candidates of input
function of (1). However, (2) enables you to register new statements and
dollar control options.  You can easily add the commands that you
frequently use to the candidate for command inserting function of (1).

(3) is the function to call GAMS directly from Emacs for executing the gms
file.

Like the GAMSIDE, (4) provides the colorization of GAMS program files
accoring to GAMS syntax.

When editing GAMS program files, you may often use similar patterns
frequently.  In that case, you may copy and paste the program repeatedly.
But it is surely more convenient if you can register frequently used
patterns and select them.  Or, although the pattern is not frequently
used, it may be hard to remember it.  Also in that case, it seems
convenient if you can use registered patterns.  (5) offers you the feature
for registering various patterns easily.  In addition to registering, you
can modify, delete, rename, re-order existing templates easily.

I think that many people agree with the opinion that the proper indent is
important for writing programs that other people (or yourself) can read
easily.  But it is quite tedious to insert spaces and TABs manually by
yourself.  In GAMS mode, each line is automatically indented according to
GAMS syntax.

[GAMS-LST mode]

This is the major mode for viewing the output file (i.e. LST file).

(1) Display the error place and its meaning.
(2) Jump to the error place in the program file.
(3) Jump to the various places in the LST file.
(4) Color the content of the LST file.
(5) Display the important items of the LST file (this is the GAMS-OUTLINE mode).

In editing GAMS program, one of the most important job is debugging.  Your
efficiency of writing program crucially depends on the efficiency of
debugging.  (1) and (2) are the functions for that.

With (1) and (2), you can do the following jobs quickly with simple key
operation.

+ Call GAMS and execute the program.
+ Move to the LST file.
+ Examine the place and meaning of errors.
+ Go back to the error place in the program.

You can do similar things also in GAMSIDE, but, I think GAMS mode offers
the more convenient environment.

LST files often become quite large.  In that case, it is hard to search
the output that you want to see.  (3) provides you the feature for moving
to various important items (such as PARAMETER, SET, VAR, EQU) in the LST
file with simple key operation.

Function (4) colors the content of LST files.

As pointed out above, LST file is often very large and it is often very
diffcult to find the numerical values that you want to see.  And it is
also diffcult to compare the numerical values in two different parts of
the LST file.  Although you may be able to resolve these problems by
defining parameters that display only relevant values, it is more
convenient if you can examine the content of the LST file in a simple way.

(5) provides the way for that.  With this feature, you can easily view the
important elements (PARAMETER, VAR, EQU etc.) in LST files.

You can see where the particular PARAMETER or VAR are and can see the
content of them.  You can also compare the numerical values in a part of
the file with that in another part.  You are able to know what this
function is like by looking at the screenshots placed at
<http://shirotakeda.org/home/gams/gams-mode/gams-screen.html>.

These are the simple explanation of this program.  Of course, there are a
lot of other functions!

This program has been tested only under GNU Emacs of version 23.2 on MS
Windows 7 and not tested under other versions of Emacs and OS. But I
received reports from persons who use other Emacs and OS that it works
well in their environments.  So, this program probably works in other
Emacs and OS. 

Bug reports, requests, and suggestions are all welcome!

=====================
2. Installation
=====================

First, I explain the files distributed in the package.

README.txt		This file.  First read this.
CHANGELOG.txt		Change log file.  If you want to know changes and
			newly added functions, please read it.
BUGS_PROBLEMS.txt	Known bugs and problems
gams.el			The main lisp program.
setting-sample.el	A sample file for setting.
gams-template.txt	A sample file of templates.

sample_gams_code	The foder of sample gams files.
gams-sample.gms		A sample file to show how to use GAMS mode for Emacs.
gams-sample-ja.gms	A sample file to show how to use GAMS mode for Emacs (in Japanese)
outline-sample.gms	A sample file to show how to use GAMS-OUTLINE mode.
outline-sample-ja.gms	A sample file to show how to use GAMS-OUTLINE mode (in Japanese)

doc			Document folder
refcard-gams.pdf	Referece card of keybindins.

lxi			Folder of files used to explain GAMS-LXI mode

If you are well acquainted with Emacs, installation is very easy.  Here, I
explain basic Emacs terminologies used below.  But if you are a novice
user of Emacs, I recommend you to read the web site such as
<http://www.gnu.org/software/emacs/windows/>.


"~/"

This is Unix terminology rather than Emacs'. This represents a user's HOME
directory. A user's HOME directory means the directory (folder) where his
configuration files are placed. If you are MS Windows VISTA/7 user, the
default HOME directory is set to "c:\Users\username\AppData\Roaming". If
you want to know to which directory your home directory is set, evaluate
(getenv "HOME") in the *scratch* buffer on Emacs.  You can set your HOME
directory by the environemtal variable HOME. If you are MS Window VISTA/7
user, use control panel.


"~/.emacs.d/init.el" or "init.el"

This is the configuration file that Emacs tries to read first when it is
started.  You can change the behavior of Emacs by writing various settings
in this file.  Note that this is the file that you must create by yourself
and there exists no "init.el" file by default (unless the administrator
has created it for you).

non-nil

In Emacs terminology, non-nil means anything other than nil, and values
such as 0, "a", or t all mean non-nil.  But we usually use symbol t as
non-nil.  So, when I say "set non-nil to x", set t to x (i.e. (setq x t)).


=====================
* Setting for shell

If you would like to call GAMS (gams.exe) from Emacs, it is necessary that
you have installed the shell.  There are two choices for this.  The first
one is the bash.  If you are UNIX user, bash must have been installed.  If
you are MS windows user, you can use bash.exe offered by Cygwin project
<http://www.cygwin.com/>.  If you want to install bash, download
<http://www.cygwin.com/setup.exe>.  If you execute this executable file
and select bash, you can install it. If you are UNIX user, you can use
tsch instead of bash.

The second one is cmdproxy.exe which is distributed with NTEmacs.  If you
have installed NTEmacs, cmdproxy.exe is also installed in the same directory
as runemacs.exe.

Windows 2000/XP has cmd.exe as the shell.  But it is not recommended to use
cmd.exe.  So 2000/XP users had better use bash or cmdproxy, too.

If you use bash(.exe), write the following in "~/.emacs.d/init.el":

  (setq shell-file-name "bash")
  (setq shell-command-option "-c")

and if you use cmdproxy.exe,

  (setq shell-file-name "cmdproxy")
  (setq shell-command-option "-c")

For more details of shell setting in "~/.emacs./init.el" on NTEmacs,
please see the web site <http://www.gnu.org/software/emacs/windows/>.

=====================
* Installation of GAMS mode.

Then, I will explain the installation.

(1) Put "gams.el" file into one of the directories listed in `load-path'.
    You can see the contents of `load-path' by entering `M-x
    customize-option <RET> load-path'.  Or add the directory where
    "gams.el" is installed to `load-path' variable.  For this, add the
    following in your "~/.emacs.d/init.el" file:

    (setq load-path
	     (cons "~/lisp/gams/" ;; Set the installed directory!
	       load-path))
	  	  
(2) Add the following into your "~/.emacs.d/init.el" startup file (after
    load-path setting)

    (require 'gams)

(3) If the GAMS system folder is not included in PATH environemtal
    variable, you need to set GAMS system folder to PATH or you need to
    set the full path to gams.exe to the variable
    {gams:process-command-name' like

    (setq gams:process-command-name "c:/GAMS23.5/gams.exe")
    

Basically, this is all you must set.  With these settings, when you open a
file with extension "gms" ("lst"), GAMS mode (GAMS-LST mode) will
automatically start.  Byte-compiling gams.el may raise the speed of GAMS
mode (but you need not necessarily do it).


If you want to color an Emacs buffer, add the followings, too.

   (require 'font-lock)
   (global-font-lock-mode t)
   (setq jit-lock-chunk-size 50000)
   
This make the colorization function of Emacs on and GAMS mode buffer will
be colored. The third line is required because the default value of
`jit-lock-chunk-size' (i.e. 500) is too small for GAMS mode.

For Emacs 21-23 user, please read BUGS_PROBLEMS.txt file, too.

There is a sample setting file ("setting-sample.el") distributed with this
file.  Please read it, too.

If you want to use GAMS-TEMPLATE mode, you had better copy the sample
template file ".gams-template" in your home directory ("~/").  This sample
file contains a lot of useful templates for writing gms files.

There are several lisp variables which decide the important behaviors of
GAMS and the GAMS mode.  So, please read the customization part below,
too.

=====================
3. Basic Usage:
=====================

To learn how to use the GAMS mode, it is best to read "gams-sample.gms"
file.  "gams-sample.gms" file enables you to acquire necessary skills in a
learning-by-doing way.

Here is the basic command listing.  Try each command by yourself!  You can
see basic keybindins also in refcard-gams.pdf.

GAMS mode:
----------

Key-binding	Command explanation

C-c C-k		Insert GAMS statement with completion.
C-c C-d		Insert GAMS dollar control option with completion.
C-c C-.		Show the identifier declaration part.
C-c C-a		Show the identifier list in the buffer.
C-c C-w		Open included file.

C-c C-v		Switch to the LST file and show errors if exist.
C-c C-j		Switch to the LST file.
C-c C-t		Evoke process menu.
C-c C-s		Start GAMS
C-u C-c C-t	Edit command and start GAMS.

C-c C-e		Insert templates (GAMS-TEMPLATE).
C-c C-o		Insert user defined comment template.

C-l		Recenter.
C-c C-c		Insert an ontext-offtext pair.
C-c C-g		Jump between ontext and offtext.
C-c M-c		(Un)comment an ontext-offtext pair.
C-c M-g		Remove an ontext-offtext pair.
C-c C-m		View GAMS pdf manuals.

C-c C-f		Change the level of font-lock (colorization)
C-c C-;		Insert inline comment.
C-c M-;		Insert end-of-line comment.


GAMS-LST mode:
--------------

y		Jump to the error and show its number and meaning.
u		Jump back to the error place in the program file.
i		Jump to the input (GMS) file.
q		Close the buffer.
?		Help.

o		Start the GAMS-OUTLINE mode.

s(S)		Jump to the next (previous) SOLVE SUMMARY.
r(R)		Jump to the next (previous) REPORT SUMMARY.
v(V)		Jump to the next (previous) VAR entry.
e(E)		Jump to the next (previous) EQU entry.
p(P)		Jump to the next (previous) PARAMETER entry.

L		Jump to a line you specify.
l		Jump to a line.

SPACE		Scroll up.
DELETE		Scroll down.
1		Widen the window.
2		Split the window.
m		Move frame.
w		Resize frame.
z		Move a cursor to the other window.

d,f,g,h,j,k	Keys for scrollings (see the help in GAMS-LST mode).

For details, please see the help in both modes.

If you want to know how to use GAMS-TEMPLATE, please see the help in
GAMS-TEMPLATE mode, (start GAMS-TEMPLATE mode (C-cC-e) and push ? in the
*Template List* buffer).

If you want to use GAMS-OUTLINE mode, you had better see the sample GAMS
file "outline-sample.gms".  Try to run GAMS on that file.  And if you want
to know commands in GAMS-OUTLINE mode, please see the help in the
GAMS-OUTLINE mode, (start GAMS-OUTLINE mode [type o in the LST mode] and
push ? in the OUTLINE buffer).

=====================
4. Customization:
=====================

You can custumize the behavior of Emacs and GAMS mode by changing the
values of the following variables.  Default value is given in []

You can change the value of these variables by adding in your
"~/.emacs.d/init.el", for example,

	(setq gams:process-command-name "c:/GAMS20.0/gams.exe")
	(setq gams-use-mpsge t)
	(setq gams-statement-upcase nil)

Or you can use `customize' built in Emacs.  Try M-x
customize-apropos-groups [RET] gams [RET.]

Please read the sample file "setting-sample.el", too.

Basic customizable variables in GAMS and GAMS-LST mode:
---------------------------------------------------------------------

`gams:process-command-name' ["gams"]

	"*GAMS program file name.  If you do not include the GAMS system
	directory in PATH environmental variable, you must set the full
	path to GAMS program in this variable like c:/GAMS20.0/gams.exe."

`gams:process-command-option' ["ll=0 lo=3 pw=100 ps=9999"]

	"*Command line options passed to GAMS"

`gams-statement-file' ["~/gams-statement.txt"]

	"*The name of the file in which user specific statements are
	stored."

`gams-statement-upcase' [nil]

	"*Non-nil means that statement is inserted in upper case.  If you
	want to use lower case, set nil to this variable."

`gams-dollar-control-upcase' [nil]

	"*Non-nil means that dollar control option is inserted in upper
	case. If you want to use lower case, set nil to this variable."

`gams-use-mpsge' [nil]

	"*If you use MPSGE, set this variable to non-nil. Non-nil enables
	MPSGE statement insertion."

`gams-fill-column' [74]

	"*The column number used for fill-paragraph and auto-fill-mode."
	
`gams-recenter-font-lock' [nil]

	"Non-nil means that font-lock-fontify buffer when recentering.  If
	your computer is slow, you may better set this to nil."

`gams-file-extension' ['("gms")]

	"*List of gams program file extensions. If you open a file with an
	extension included in this list, GAMS mode starts automatically.
	It doen't matter whether upper case or lower case."
	
`gams-multi-process' [t]

	"*Non-nil enables multiple GAMS processes. Non-nil means that you
	can run multiple GAMS processes at the same time in an Emacs.  If
	you rarely run multiple processes, you had better set it to nil."

`gams-mode-hook ' [nil]

	"*Hook run when gams-mode starts."

`gams-mode-load-hook' [nil]

	"*List of functions to be called when gams.el is loaded."

`gams-close-paren-always' [t]

	"*Non-nil means that close parenthesis."

`gams-close-double-quotation-always' [t]

	"*Non-nil means that close double quotation."
	
`gams-close-single-quotation-always' [nil]

	"*Non-nil means that close quotation."
	
`gams-statement-name' ["set"]

	"*The initial value of statement."
	
`gams-dollar-control-name' ["title"]

	"*The initial value of dollar control."
	
`gams-user-comment'

	"*User defined comment template. You can insert the comment
	template defined in this variable by executing
	`gams-insert-comment'.  % in the string indicates the cursor place
	and will disappear after template insertion. NB: You cannot
	include double quoatations and backslashes in this variables!"

`gams-default-pop-window-height' [10]

	"The default GAMS process buffer height. If integer, sets the
	window-height of process buffer.  If string, sets the percentage
	of it.  If nil, use default pop-to-buffer."

`gams-lst-mode-hook' [nil]

	"*GAMS-LST mode hooks."

`gams-docs-view-program' ["c:/Program Files/Adobe/Acrobat 5.0/Reader/AcroRd32.exe"]

	"The full path to the pdf file viewer."
	
`gams-system-directory' ["c:/GAMS20.0/"]

	"The GAMS system directory."

`gams-font-lock-level' [2]

	"The level of decoralization of font-lock in GAMS mode.
	0 => no color.
	1 => minimum.
	2 => maximum."

`gams-lst-font-lock-level' [2]

	"The level of decoralization of font-lock in GAMS-LST mdoe.
	0 => no color.
	1 => minimum.
	2 => maximum."
	
`gams-ol-font-lock-level' [2]

	"The level of decoralization of font-lock in GAMS-OUTLINE mode.
	0 => no color.
	1 => minimum.
	2 => maximum."

`gams-comment-column' [40]

	"The default value of `comment-column' in GAMS mode."

`gams-inlinecom-symbol-start-default' ["/*"]

	"The default value for inline comment start symbol."

`gams-inlinecom-symbol-end-default' ["*/"]

	"The default value for inline comment end symbol."

`gams-eolcom-symbol-default' ["!"]

	"The default value for eol comment symbol."
	
`gams-indent-on' [t]

	"if it is non-nil, automatic indent for gams mode works.  if it is
	nil, no special indent and tab key insert tab."

`gams-indent-number' [8]

	"indent number for general statemets."

`gams-indent-number-loop' [4]

	"indent number in loop type environment."

`gams-indent-number-mpsge' [8]

	"indent number in mpsge type environment."

`gams-indent-equation-on' [t]

	"*Non-nil means indent equation blocks.
	If nil, already written equations are not affected by TAB."

GAMS-TEMPLATE mode:
--------------------

`gams-template-file' ["~/gams-template.txt"]

	"*The name of a file used to store templates."
  
`gams-save-template-change' [nil]

	"Nil means that save the content of `gams-user-template-alist'
	into `gams-template-file' only when you quit Emacs.  If non-nil,
	save `gams-user-template-alist' every time you made changes.  If
	your Emacs often crashes, you may had better set it to non-nil."

`gams-template-mark' ["%c"]

	"*The mark that indicates the point of cursor in a template."

`gams-template-cont-color' [nil]
	"*Non-nil means colorization of *Template Content* buffer."


GAMS-OUTLINE mode:
--------------------

`gams-ol-height' [15]

	"*The height of the GAMS-OUTLINE buffer with one LST buffer."

`gams-ol-height-two' [8]

	"*The height of the GAMS-OUTLINE buffer with two LST buffers."

`gams-ol-view-item'

	"The default alist of viewable items.

	Each list consists of a pair of the item name and its
	flag. Non-nil of flag means the item is viewable by default.

	The order of items has the meaning in this alist.  Items are
	listed in the SELECT-ITEM buffer according to this order.  So, if
	you want to show MAR on the top, you must write MAR at the fisrt
	in this alist."

There are also other customizable variables, mainly keybindings and fonts.
You can see a full list of customizable variables by executing:

	M-x customize-apropos-groups [RET]
	gams [RET]

	
=====================
5. TODO:
=====================

See TODO file.


=====================
6. Miscellaneous.
=====================

Bug reports, requests and suggestions are welcome!  Write an email to me.
Shiro Takeda <shiro.takeda@gmail.com>

    
=====================
7. Acknowledgments.
=====================

Acknowledgments:

To write the package GAMS mode, I have used a lot of excellent emacs lisp
codes written by other people.  They include `YaTeX' (Yet Another LaTeX
mode), `EPO' (Editing Process Organizer), `RefTeX mode', `c-sig.el',
`font-latex.el', `lisp-mode.el', and `indent.el' etc.  In particular, I
would like to express acknowledgments to Yuuji Hirose who is the author of
`YaTeX' and `EPO' packages (they are available at
<http://www.gentei.org/~yuuji/software>).  He also have written other lots
of cool lisp programs.  You will be happy if you visit to his web site :-)



--------------------
Local Variables:
mode: indented-text
fill-column: 74
End:
