# fedora-s6
This is Fedora Rawhid running s6 init

 s6
What is it ?

s6 is a small suite of programs for UNIX, designed to allow process supervision (a.k.a service supervision), in the line of daemontools and runit.

The s6 documentation tries to be complete and self-contained; however, if you have never heard of process supervision before, you might be confused at first. See the related resources section below for pointers to more resources, and earlier approaches to process supervision that might help you understand the basics.

    Why another supervision suite? Isn't runit good enough?
    What is instant notification? What does the libftrig do exactly?
    How to run a s6-svscan-based supervision tree without replacing init
    How to replace init

Installation
Requirements

    A POSIX-compliant system with a standard C development environment
    GNU make, version 4.0 or later
    skalibs version 2.2.0.0 or later
    execline version 2.0.1.1 or later

Licensing

s6 is free software. It is available under the ISC license.
Download

    The current released version of s6 is 2.0.1.0.
    Alternatively, you can checkout a copy of the s6 git repository:

     git clone git://git.skarnet.org/s6 

Compilation

    See the enclosed INSTALL file for installation details.

Upgrade notes

    This page lists the differences to be aware of between the previous versions of s6 and the current one.

Reference
Commands

All these commands exit 111 if they encounter a temporary error or hardware error, and 100 if they encounter a permanent error - such as a misuse. Short-lived commands exit 0 on success.
Supervision system

s6-svscan and s6-supervise are the long-lived processes maintaining the supervision tree. Other programs are a user interface to control those processes and monitor service states.

    The s6-svscan program
    The s6-svscanctl program
    The s6-supervise program
    The s6-svc program
    The s6-svok program
    The s6-svstat program
    The s6-svwait program
    The s6-notifywhenup program

Other daemontools-like utilities

These programs are a rewrite of the corresponding utilities from daemontools, with a few extras. The s6-log program is important in itself: it's a powerful, scriptable, general-purpose filtering and logging tool that can be used to entirely replace syslogd. It has many more features than its multilog counterpart.

    The s6-envdir program
    The s6-envuidgid program
    The s6-fghack program
    The s6-log program
    The s6-setlock program
    The s6-setsid program
    The s6-setuidgid program
    The s6-applyuidgid program
    The s6-softlimit program
    The s6-tai64n program
    The s6-tai64nlocal program
    The ucspilogd program

Fifodir management, notification and subscription

These programs are a clean rewrite of the obsolete "pipe-tools" package; they are now based on a properly designed notification library. They provide a command-line interface to inter-process notification and synchronization.

    The s6-mkfifodir program
    The s6-cleanfifodir program

    The s6-ftrig-notify program

    The s6-ftrig-wait program
    The s6-ftrig-listen1 program
    The s6-ftrig-listen program

Internal commands

    The s6-ftrigrd internal program
    The s6lockd internal program
    The s6lockd-helper internal program

Libraries

    The ftrigw library interface
    The ftrigr library interface
    The s6lock library interface

Definitions

    What is a fifodir
    What is a service directory
    What is a scan directory
    Why are the libftrigw and libftrigr needed

Related resources
s6 discussion

    s6 is discussed on the supervision mailing-list.

Similar work

    daemontools, the pioneering process supervision software suite.
    daemontools-encore, a derived work from daemontools with enhancements. (Note that although s6 follows the same naming scheme, the same general design, and many of the same architecture choices as daemontools, it is still original work, sharing no code at all with daemontools.)
    runit, a slightly different approach to process supervision, with the same goals.
    perp, yet another slightly different approach to process supervision, also with the same goals.

Other init systems

    Felix von Leitner's minit is an init system for Linux, with process supervision capabilities.
    sysvinit is the traditional init system for Linux.
    Upstart is a well-known init system for Linux, with complete service management, that comes with the Ubuntu distribution. It includes a coffee machine and the kitchen sink.
    Because Upstart wasn't complex enough, someone came up with systemd, which is a problem in its own category.
    The various BSD flavors have their own style of init.
    MacOS X has its own init spaghetti monster called launchd.

All-in-one init systems generally feel complex and convoluted, and when most people find out about the process supervision approach to init systems, they usually find it much simpler. There is a good reason for this.
Miscellaneous
Why "s6" ?

skarnet.org's small and secure supervision software suite.

Also, s6 is a nice command name prefix to have: it identifies the origin of the software, and it's short. Expect more use of s6- in future skarnet.org software releases. And please avoid using that prefix for your own projects. 
