Name
	advmenu - History For Advance Emulators

AdvanceMAME Version 0.61.2 2002/08
	) Added the `sdl' system which uses the libSDL graphics
		library. This system enable the use of the program
		in a Window Manager. But it isn't a good choice for
		a fullscreen use of the program because it can't
		generate `perfect' video mode.
	) Added the HOST_SYSTEM section in the makefile.
	) Added the `windows' target in the Makefile. It use the `sdl'
		system.
	) Added the `device_sdl_fullscreen' option to force the use of
		a fullscreen mode with the SDL library.
	) Readded the basic `vbe' driver.
	) Added the MMX detection in the linux and windows targets.
		Previously the MMX presence was assumed.
	) Splitted the input_map[,trak] option in the input_map[,trakx]
		and input_map[,traky] options. Now you can assign
		different axes from different mouses.
	) Renamed the option `misc_language' to `misc_languagefile'.
	) Fixed the saving of the cheats.
	) Documented the varius `misc_*file' options.
	) Removed the `zmng' utility from the contrib dir.
		It's now included in the AdvanceSCAN package.
	) Renamed the `input_safeexit' option to `misc_safequit' and
		added the options `misc_safequitdebug' and
		`misc_safequitfile'. The SafeQuit is now enabled by
		default.
	) Revised the output format of all the documentation. Now
		it's available as formatted text, html and man pages.
	) Fixed an overflow bug on the aspect computation. It prevented
		"Elevator Action" to run.
	) Fixed some bugs on the SVGALIB r128 driver.
	) Upgraded at the SVGALIB 1.9.16 library.

AdvanceMAME Version 0.61.1 2002/07
	) Fixed a stupid bug on some neogeo games.

AdvanceMAME Version 0.61.0 2002/07
	) Removed the input_analog[] and input_track[] options. They
		are now substituted by the new input_map[] option.
	) Upgraded at the SVGALIB 1.9.15 library.
	) Added the `vertical' and `horizontal' sections on the
		config file. With these sections you can have
		different configuration for vertical and horizontal
		games. If you have a rotating monitor, you can now
		always configure the correct orientation.
	) The `display_rotate auto' option now selects always the
		`blit' rotation. The reason of this change is that
		the `core' rotation will be completly removed on the
		next MAME version (0.62).
		On monoprocessor machines this may result in a
		sensible slowdown on some games. Instead, on SMP
		(multiprocessor) machines all these games are now
		faster because the rotation is done in the parallel
		blit thread.
	) Fixed the joystick problem with more than 8 buttons
		[Anthony D. Saxton (las_vegas)].
	) Added the `display_intensity' option.
	) Added the `display_artwork_crop' option.
	) Fixed the `display_expand' option for the vertical vector
		games.
	) Prevented the use on the NT platform.
	) Added some new MMX blitters to speedup the blit rotation.
	) In the Linux version if the HOME environment variable
		is not set all the files are read and written on the
		PREFIX/share/advance directory.
	) Fixed a bug when forcing the use of the vbeline/3dfx driver.
	) Enabled the interlaced modes with the 3dfx svgalib driver.
	) Minor bugfix.

AdvanceMAME Version 0.60.1 2002/05
	) Fixed the MNG recording for some games.
	) Added the input_hotkey option to disable the special
		key sequences like CTRL+ALT+DEL.
	) Fixed the rgb 16pix effect on 32 bit modes.
	) Disabled the pause key. It should not be used.
	) The advs utility now prevent the keyboard buffer to be
		filled.
	) Added a new `License' chapter at the faq.txt file.

AdvanceMAME Version 0.60.0 2002/05
	) Upgraded at the SVGALIB 1.9.14 library.
	) Solved a video mode restore problem with the
		vbeline drivers.
	) After unpausing the idle exit timeout is now reset.
	) Fixed the idle_exit timing on Linux.
	) Fixed the size of vector games when a custom mode is
		specified with the display mode option.
	) Other minor bugfix.

AdvancePAC Version 0.58.0 2002/04
	) Added the PacMAME target at AdvanceMAME.

AdvanceMAME Version 0.59.1 2002/04
	) Upgraded at the SVGALIB 1.9.13 library.
	) Upgraded at the Allegro 4.01 library.
	) Fixed some issues if no sound card is present.
	) Fixed a bug in the blit rotation.
	) Updated the list of the games which require the blit
		rotation for the auto option.
	) Fixed the use of gamma and brightness on the rgb games.
	) The precision of the frame rate of the generated MNG
		files is now always at least 1:1000000.
	) The `mng' recording now can be started and stopped also
		during the pause.
	) The `script_play' option now works also if
		`misc_startuptime' is 0.
	) Fixed some issues on the directory paths.

AdvanceMAME Version 0.59.0 2002/03
	) Added the option "-r" at the zmng utility. This fixs the
		bug when compressing 24 bit image which cannot be
		converted to 8 bit.
	) Added the device_video_singlescan/doublescan/interlace
		options to disable the use of some mode types.
	) Rewritten the `vgaline' DOS driver. Now it never uses the
		BIOS to set the video mode.
	) The MNG files now use the FRAME chuck to specify a
		precise timing.
	) Added the `misc_quiet' option to disable the text message :
		"AdvanceMAME - Copyright (C) 1999-2002 by..."
	) Fixed some imprecisions on the image stretch.
	) Completed the color conversion functions.

AdvanceMAME Version 0.58.1 2002/03
	) Fixed the clock values printed on the first line of the
		video menu.
	) Changed the behaviour of the "display_adjust x" option.
		Now all the modes are adjusted in size, not only the
		nearest mode.
	) Faster `scale2x' effect. Now optimized for AGP bus.
	) Fixed the video and sound recording for the SMP machine.
	) The .mng and .wav file are now saved always with the same
		basename.
	) Fixed the selection of the video mode with the nearest clock.
	) The idleexit feature now detect also the joystick and
		mouse use.
	) MMX implementation of some functions of the tilemap engine.

AdvanceMAME Version 0.58.0 2002/02
	) Added the video recording feature in `.mng' files.
	) Added the `record_sound', `record_sound_time',
		`record_video', `record_video_time',
		`record_video_interleave' options.
	) Added the `zmng' compression utility in the contrib/zmng dir.
	) When recording, the sound is now generated ignoring
		the syncronization issues to get a perfect sound
		also with games with a very high frame skip.
	) Now you can record sound and video without any length limit.
	) The recorded sound is now NOT adjusted in volume.
	) Minor corrections at the sound syncronization.

AdvanceMESS Version 0.56.0 2002/01
	) Added the MESS target at AdvanceMAME.

AdvanceMAME Version 0.57.1 2002/01
	) The default rom and sample directory are now `rom' and
		`sample' (singular).
	) The Linux config directories are now named `$home/.advance' and
		`$prefix/share/advance'. Rename them manually.
	) Fixed the sound snapshot saving.
	) Fixed the graphics snapshot saving in Linux.
	) Fixed the dir rights in creation in Linux.
	) Fixed the support of roms not zipped.
	) Fixed the `display_resize' option saving.
	) Recompiled the video driver with lower optimizations.
	) Readded the autocentering control menu.
	) Fixed a SIGSEGV in the mode selection.
	) Other minor bugfix.

AdvanceMAME Version 0.57.0 2002/01
	) Improved the SMP performance. Now the blit stage is completly
		done by the second thread without any bitmap copy.
	) Added a Console Frame Buffer video driver for Linux.
	) Added the `misc_speed' option to control the speed of the game.
	) Added the `sound_latency' option to control the size of the
		sound buffer.
	) Added the `advs' utility. A wav/mp3 player.
	) Added the `faq.txt' and `tips.txt' files.
	) Fixed the `device_video' option. Now works also for `advv' and
		`advcfg'.
	) Fixed the wrong patch command in the build.txt file.
	) Added latency measure in the advk, advj and advm utilities.
	) Removed the SEAL awe32 driver. The generic SEAL SoundBlaster
		driver is faster.
	) Solved some problems and a crash bug on the mode selection
	) Renamed all the `modeline' options in `device_video_modeline'
		in all the .rc files.
	) Solved a bug in the svgaline nv3 driver.
	) Fixed the double mouse support for the DOS version.
	) Fixed the Allegro sound driver volume.
	) Various bugs fixed

AdvanceMAME Version 0.56.2
	) Fixed the .dat support in the DOS version.
	) Fixed the script support.
	) Fixed the name used for `memcard' files.
	) Disabled the use of the rgb effects if the mode is palettized
	) Added the contrib directory in the source distribution
	) Added the TARGET=tiny option in the makefile

AdvanceMAME Version 0.56.1
	) General renaming:
		mame -> advmame
		mv -> advv
		cfg -> advcfg
		mk -> advk
	) New utilities:
		advj - Joystick tester
		advm - Mouse tester
	) A complete Linux/i386 port based on the SVGALIB 1.9.x library.
	) A new frameskip computation system.
	) A new format of configuration file (now named advmame.rc).
	) Limited support of Multi Processor (SMP) architecture for
		the Linux version. Check the `misc_smp' option.
	) New input_analog[] and input_track[] option to choice the
		mapping of the joystick and of the mouse. For example you
		can use the joystick for the first player and the mouse
		for the second player.
	) Added support for all the Allegro sound drivers.
		Check the new option `device_sound'.
	) Better and simpler video mode choice.
	) Better vsync support, now it can be enabled and disabled
		at runtime.
	) A new Makefile system, check the `build.txt' file for the new
		compilation instructions.
	) Updated the safequit.dat database [by Filipe Estima].
	) Revised the docs [by Filipe Estima and Randy Schnedler].
	) Compiled with the latest Allegro 3.9.40 library.
	) Various bugs fixed.

AdvanceMAME Version 0.56.0.1 (never released)
	) Removed a warning in the source
	) Solved the bug of the brightness on screen menu
	) Added a new safequit.dat database [by Filipe Estima]
	) Solved a bug with the VBE detection.
	) Solved the bug for the detection of the svgaline Rendition
		driver.

AdvanceMAME Version 0.56.0 2001/11
	) Change at the SVGALIB Rage 128/Radeon drivers for the
		low clocks

AdvanceMAME Version 0.55.2
	) On the documentation the suggested value for pclock
		is now `pclock = 5 - 80'.
	) Solved a bug that prevented the read of the vbeline_* options.
	) Solved a bug that prevented a lot of games to start
		(centiped, nibbler, tempest, ...)
	) Readded the support for the internal MAME debugger.
	) Added the `[config] expand' option to use a bigger screen
		area when playing vertical games on horizontal monitors.
	) Added the MMX implementation for the color conversions
		888 -> 332 and 555 -> 332 (mainly used in vector games)
	) Added the generation of modes with double size with scanlines.

AdvanceMAME Version 0.55.1
	) Added the `[video] pclock' option to control the lower
		and higher limit of the pixel clock used.
		YOU MUST ENTER THIS VALUE IN YOUR mame.cfg.
		The lower value is the lower clock generable
		by your video board. The higher value is the video
		bandwidth of your monitor. If don't know these
		values you can start with `pclock = 5 - 70' which
		essentially enable any pixel clock needed by
		AdvanceMAME. (like the previous version)
	) Added the `-report' option at the MV utility. You can use
		this option to create informative bug report on the
		video drivers.
	) Updated with the new SVGALIB 1.9.12. It contains various
		video driver fix and a new `Rendition V2200' driver.
	) Solved a bug on the command line parsing.
	) Solved the crash bug for the vector games.
	) Better mode generation for the vector games.

AdvanceMAME Version 0.55.0 2001/09
	) The `[gamename]' options are now correctly read.
	) Renamed the option `video_mode_reset' to `videomodereset'
	) The command line boolean options now don't need the
		argument "yes". You can disable them with
		the format -noOPTION.

AdvanceMAME Version 0.53.2
	) Revised the readme.txt/mame.txt/install.txt docs.
	) Added the -cfg option to specify an alternate name of
		the configuration file.
	) Added a new and improved fuzzy game name compare.
	) Readded the soundcard=NUMBER options.
	) Solved the hidded user interface bug.
	) Solved a configuration bug that prevented the vsync option
		to work.
	) Minor bugfix.

AdvanceMAME Version 0.53.1
	) Solved the crash bug on exit
	) Solved the vsync deadlock bug
	) Solved the text mode selection in the mv utility
	) The G200/G100 reference clock set to 27MHz
	) Added the missing makefile (advance.mak) in the source
		distribution
	) Minor bugfix

AdvanceMAME Version 0.53.0 2001/08
	) Major release with BIG changes. This should be considered
		an alpha version. 
	) Kept the support for 8 bit modes. You can still use 8 bit 
		modes for games with less than 256 colors without
		problems. You can also use 8 bit modes for all the other 
		games but you lose in color precision.
	) The modeline format is changed. The new format is independent 
		of the video driver and of video board. The modelines 
		can now be exchanged between users.
	) Added a new set of video drivers called `svgaline' from
		the Linux SVGALIB library. These drivers overperform
		the old `vbeline' drivers. The old drivers are still
		supported anyway.
		These drivers are completly undependend of the underline
		VBE BIOS. You don't need the SDD utility anymore.
	) Added support for 32 bit depth.
	) The sources are now completly indipendent from the MAMEDOS
		sources. They stay in a new directory called `advance'.
		Check the updated `build.txt' to compile.
	) The configuration file is now named like the executable.
		For example "mamepp.exe" checks for "mamepp.cfg".
	) Added the `videodepth' option to control the bit depth of the
		video mode used. The old `depth' option is still present 
		but control only the internal size of the working MAME 
		bitmap.
	) Added the command line option `-default' to create a default
		`mame.cfg' file.
	) Removed the `videogenerate=adjustxy' option.
	) Removed all the -list* and -verify* options. These will may be
		added in a future version with an external utility.
		Only the -listinfo option is maintained.
	) Updated the `mv' and `cfg' utility at the new features.
	) Updated the `card.txt' file with a complete list of the video
		board supported.
	) The safeexit option now uses the safequit.dat file to check if 
		the exit is safe or not. If the game is in demo mode and no
		coin is inserted the "Continue/Exit" menu is not shown.
		[Filipe de V. Estima (Bugfinder), Ian Patterson]
	) The `soundcard' option now uses text tag and not numbers.
		The tags are :
		auto - Automatic detection
		sb - Sound Blaster
		awe32 - Sound Blaster AWE 32 (probably the 'sb' driver is faster)
		pas - Pro Audio Spectrum
		gusmax - Gravis Ultrasound Max
		gus - Gravis Ultrasound
		wss - Windows Sound System
		ess - Ensoniq Soundscape

AdvanceMAME Version 0.37b16.1
	) Added the -quiet option to prevent the startup messages.
	) Minor bugfix
	) Added support for the Voodoo5 board.
	) Added support for other Rage 128 boards.

AdvanceMAME Version 0.37b16.0 2001/07
	) Added the new `scale2x' blit effect. It's now the default
		when the `Magnify' option is activated.
	) Solved the unexpected termination when you exit from the
		onscreen menu.
	) The `safeexit' option now show a confirmation menu.
	) Hopefully solved all the "Page Fault" exceptions.
		You should be able to play also very huge games like
		garou with only 64 Mb of memory.
	) Changed the default keys for the sound recording.
		LCTRL+ENTER to start, ENTER to stop.
	) Updated the contrib/aos section by Nick Bourdo
	) Removed the dirty blit support
	) Some new 'ATI r128` and `Trident Blade 3D' cards supported.

AdvanceMAME Version 0.37b15.0 2001/05
	) The game aspect ratio is now used if available
	) The `vsync' option is now ignored if no modes with the
		correct frequency rate are available
	) Added the new scripts commands `simulate_event(EVENT,TIME)',
		`event(EVENT)' and simulate_key(KEY,TIME).
		Check the updated `script.txt' file.
	) Added the new option `safeexit=yes'. If enabled to exit
		you need to keep pressed the ESC key for 3 seconds.
	) The `cfg' utility now accepts the format values also in
		incremental format, not only in the differential format.

AdvanceMAME Version 0.37b14.3
	) Corrected a bug in the video mode generation for the high
		vertical resolution games with an Arcade/TV Monitor.
	) Some change at the `vbe3' driver. Now it logs a lot of
		details for a better debugging
	) Changed the source distribution. Now you must apply two
		patch. Check the build.txt file.
	) Some fix and inprovement at the `cfg' utility.
	) Added support for saving the volume attenuation in 
		the directory "att". [Rafael Prado Rocchi]
		You have to create the directory to enable this 
		function.

AdvanceMAME Version 0.37b14.2
	) Removed the `[config] aspect' option. The aspect is
		4/3 as default.
	) Removed the `[config] video_factor_frequency' option.
		The game frequency is now matched implicitly.
	) Renabled the `[config] scanlines' option. Now video modes are
		generated and choosen with scanlines if available.
		Note that you generally need a wide Vclock range.
		Something like 55-125 Hz.
	) Added the `[config] magnify' option to suggest the use of
		a double resolution.
	) Added the `[config] rgb' to suggest the use of a true RGB mode.
		If you already used the `depth=16' option now you can
		set it to `depth=auto' and use `rgb=yes' instead.
	) Some fix and inprovement at the modes generation and choice.
	) Some fix and inprovement at the `cfg' utility.

AdvanceMAME Version 0.37b14.1
	) Added the configuration utility `cfg.exe' for the first
		time run.
	) Updated the `install.txt' file for the `cfg' utility.
	) Added the `[config] videogenerate' option to automatically
		create perfect video modes. Check the `mame.txt' and
		`install.txt' files for other info.
	) Solved a "Division by Zero" bug caused by
		the incorrect use of textmode modelines.
	) The "bliteffect = auto" option now select the "filter"
		effect if the game is strecthed by a factor equal or
		greater than 2.
	) The `pentium' version now uses the MMX if avaliable.
	) Added the `speed' utility to check the memory performance of
		your video board.

AdvanceMAME Version 0.37b14.0 2001/04
	) Added a new type of effects to simulate the aspect of an Arcade
		Monitor with a PC monitor. Check the new option "rgbeffect".
		- triad 3 pixel (normal/strong)
		- triad 6 pixel (normal/strong)
		- trial 16 pixel (normal/strong)
		- scanline 2/3 vertical lines
		- scanline 2/3 horizontal lines
	) General optimization at the blitter. A lot of new MMX
		code and some slowdown bugs fixed.
	) Added the new "Video" menu entry "Show Pipeline".
		This option show the current Blit Pipeline stages.

AdvanceMAME Version 0.37b13.0 2001/03
	) Solved the throttle problem when the sound is disabled
	) Linked with the correct SEAL library. This solve the problem
		with some PCI Sound Blaster
	) Some change at the F5 command (generate video mode) of
		the `mv' utility

AdvanceMAME Version 0.37b12.0 2001/02
	) The scripts are terminated correctly also if the
		program crash.
	) Better system recover if the program crash.
		Now the system should be more stable.
	) Solved some "Page Fault" error in systems with low memory.
		Now you can run any game also with only
		64 Mbytes of memory.
	) Increased the maximum turbospeed to 30 and turbostartuptime
		to 180 seconds
	) Solved a precision time problem of the scripts. Now they work
		also if the frame rate is very high (> 1000)
	) Now you can use the joystick, the keyboard and the mouse
		together like the official MAME.
	) Added the support for the alpha blending and for the
		color conversion to any video mode depth. You can use
		the alpha blending also with 8 and 16 bits video modes.
		The best speed is with 15 bits video modes.
		The 32 bit video modes and the blit level rotation are
		currently unsupported.
	) Minor speedup for the case with "depth=16" and a 8 bit video mode.
	) Compiled with Allegro WIP 3.9.34 like the current MAME
	) Added the new default mode 384x224 mainly for the CPS2 games
	) Added the new config option `aspect'. This option control
		how compute the aspect ratio of the game emulated.
		The default behavior is different than the previous
		version. Check the file `mame.txt'

AdvanceMAME Version 0.37b11.1
	) Corrected the confusion of the "[config] video"
		and "[script] video" options.

AdvanceMAME Version 0.37b11.0 2001/01
	) Removed the option `turbostartupspeed'. Now it's always at the
		maximum speed available and at frameskip 11.
	) Autoframeskip is automatically enabled when the turbo button
		is pressed
	) Corrected the automatic video mode choice.
	) Added the `video_factor_game_stretch' option. Now the
		'video_factor_*' options are documented in the
		'mame.txt' file. With these options you can control
		how the auto video mode is chosen.
		If you get incorrect results try to delete them and
		restart with the default values.
	) Renamed the option `video_factor_strecth' in `video_factor_aspect'.
	) Added scripts! You can control any external hardware devices
		using a like C scripts. See the new script.txt file.
	) Added the option `video_mode_reset' to prevent the
		video mode reset at the emulator exit

AdvanceMAME Version 0.37b10.0 2000/12
	) Added support for Trident cards using the new video
		driver of VSyncMAME written by Saka.
		Use the "vbeline_driver=vbe3" option to revert to the
		old behavior.
	) Minor change at the `trident' driver for 16 bit modes
	) Added two new `turbostartupspeed' and `turbostartuptime' options to
		speed up the game startup.
	) Added a new `turbo' button (num pad *) and a new option
		`turbospeed' to speed up the game play
	) Added two new simple effects `filterx' and `filtery'
	) Changed the coinage support. Now it works for all
		the games because it intercepts the coin keys and it
		doesn't require the explicit driver support.
	) Corrected some garbage on video when using artworks

AdvanceMAME Version 0.37b9.0 2000/11
	) Added the capability to save sound preview. Use `backspace' to start
		and `enter' to stop the recording.
		The file is saved in the `snap' directory in the `wav'
		format. The frequency rate is the value specified
		with the mame.cfg `samplerate' option.
		Use the mame.cfg `recordtime' option to limit the maximum 
		record length in seconds.
	) Corrected some color palette issues in the `vbe/vbeline' modes.
	) Rewritten the choice of the best video mode. Now you can control
		the process with the new mame.cfg `video_factor_*' options.

AdvanceMAME Version 0.37b8.0 2000/10
	) Recovered from an harddisk crash!
	) Halved the dotclock of interlaced modes in the "ati" driver
	) Updated the contrib/nick directory with better instructions
		for newbies and for the use with ArcadeOS
	) Added the contrib/prophet directory with example settings
		for the Princeton AR27T Monitor.

AdvanceMAME Version 0.37b7.0
	) Corrected the aspect ratio of some games with
		VIDEO_ASPECT_RATIO_1_2 and ORIENTATION_SWAP_XY attributes.
	) Corrected some audit options like -verifyroms,...
	) Added the utility `portio' to drive the hardware ports.
	) Added the utility `off' to shutdown the PC.
	) Corrected a cheat menu bug (MAME bug)

AdvanceMAME Version 0.37b6.0
	) Corrected the aspect ratio of some vectors games.
	) Minor correction at the `vbe3' driver
	) Added the option `[config] vsync_adjust'. If it's set to `yes'
		AND the `vsync' is enabled all the `vbeline' modes
		are adjusted to match the exact frame rate of the
		emulated game. This option makes sense only with a PC
		multisync monitor which can accept a wide range of
		vertical and horizontal frequencies.
		Try with :

		:[config]
		:vsync = yes
		:vsync_adjust = yes

	) Solved some bugs in the `r128' driver. Now working.
	) Now `mame' doesn't add any default video modes if the list
		defined in the `mame.cfg' file is empty. You MUST use
		`mv' to select the video modes avaliable.
	) Now the required hclock/vclock specification for a LCD screen are:
		:[video]
		:hclock = 0
		:vclock = 0
	) The default keys for the video mode change at runtime are now
		`,' (COMMA) and `.' (STOP) for preventing clash with the
		hotrod settings.
	) If the exit is done by the idle timeout the exit code is !=0
	) Removed the complete clear of all the video memory for
		problems with some NeoMagic cards (possible Segmentation
		fault)
	) Added and recomputed a lot of video modelines

AdvanceMAME Version 0.37b5.0 2000/08
	) Added the video driver `r128' for the ATI Rage 128 boards
	) Added the video driver `neomagic' for the NeoMagic boards,
		very common on laptops
	) Updated the video driver `s6326' to the last VSyncMAME
		0.37b5 driver.
	) Restructured the others video drivers.

	If you have problem with these new drivers you can
	disable them with the option:
		:[video]
		:vbeline_driver = no

	) Added the contrib/xfree directory with some very useful
		technical documentation of video stuffs
	) Changed the diplay format of the video mode list in `mame'
	) Updated a lot the file `mame.txt'
	) Added the support for a second mouse imported from OptiMAME
		by Andy Geez. You can found the custom mouse driver
		in the contrib/optimous directory.

AdvanceMAME Version 0.37b4.0 2000/06
	) Added `cirrus', `s3' and `matrox' video drivers
	) Added the `-log' option at `mv'
	) Added the `-nosound' option at `mv'
	) Reinserted the mame option `triplebuffer'. If you want to activate
		the buffering you must insert the `triplebuffer = yes'
		option in your mame.cfg. The default is with buffering
		disabled like the official mame. (auto->yes, missing->no)
	) Added some new `vbeline' modes for PAL/NTSC
	) Added the resize command with the CTRL+ARROW keys in the `mv'
		test screen

	I am interested in functionality reports with these information:
	1) Model of your video board
	2) The runtime log file "mv.log" generated with the command 
	"mv -log"  when you test (pressing ENTER) all the `vbeline' 
	video modes available.
	3) The list of `vbeline' video modes that display incorrectly

AdvanceMAME Version 0.37b3.1 (never released)
	) Corrected a lot of bugs in the blitters when the rotation
		and effects are active together (segmentation fault)
	) Corrected a bug in the palette conversion from 16 to 8 bit
		(slow down)
	) Corrected a bug in `mm' if no snap was present for the first
		selected game (blank screen)
	) Added the `max' effect also in rgb modes
	) Corrected the save function of the `video' option
	) Changed the default of the `resize' option from `integer'
		to `mixed'
	) Changed the `mm' savescreen to fullscreen size
	) Added the save state for the list of types and groups selected
		in the `mm' utility
	) Corrected the save function of the video options by
		resolution with a vertical monitor
	) Added an internal font in the `mm' utility that now
		doesn't require the file `mm.fnt'
	) Added the automatic creation and updating of the file `info.txt'
		in the `mm' utility
	) Added all the VSyncMAME drivers. See the new option
		`vbeline_driver' in the `mv.txt' file. Very
		thanks to Saka!
	) Converted the `mame' ati video driver from the original MAME source.
	) Added the center command with the ARROW keys in the `mv'
		test screen
	) Minor changes and corrections of the mame menu interface
	) Added the `merge disable' option at the `mm' utility

AdvanceMAME Version 0.37b3.0 2000/05
	) Added to the source distribution the missing files
		`blitmax.h' and `blitrot.h'
	) Removed the file `makefile.dif' from the source distribution,
		now you can use the standard `mame' Makefile
	) Corrected minor bugs in the `Analog Controls' and
		`Video Config' menu

AdvanceMAME Version 0.37b2.2 (never released)
	) Corrected the `mm' option merge
	) Corrected the size of the vectors game
	) Corrected the save function of the bliteffect option

AdvanceMAME Version 0.37b2.1 2000/05
	) Added to the `mm' utility the ability to save the
		position of the cursor between runs
	) Added to the `mm' utility the options `merge' to select
		the format of your roms.
	) Corrected the bug that prevented the correct loading and saving 
		of the nvram files
	) Added a new configuration method based on the resolution of
		the games. All the `[config]' options in the `mame.cfg'
		file are now read in three different sections in this
		order:

		[GAME] - the short game name like [pacman]
		[RESOLUTION] - the resolution of the game like [244x288]
			for raster games or [vector] for vector games
		[config] - the default section

	) Inserted the option `dirty' like the current `mame', use
		`dirty = no' to disable the dirty buffer.
	) Added to the `mm' utility a software key repeat for who use
		the hotrod console.
	) Added a new menu option `Video Config' for selecting at runtime
		some video options like: video mode, effects, ...
	) The video mode for any game is now saved only if
		requested with the appropriate menu entry.
	) Changed the analog input stick behavior, read the
		section `ANALOG INPUT STICK' in the file `mame.cfg'

AdvanceMAME Version 0.37b2.0 2000/05
	) Corrected a bug that prevent the selection of the input codes
		for a specific game
	) Corrected the problem of invisible columns on the right for
		some games. This problem is still presents in the complex
		blitters (stretch/rotate).
	) Corrected a bug in the alignment of the memory of the visible
		part of the game bitmap.
	) Moved and changed the `mm' option "idlestart" from the file
		mame.cfg to "idle_start" in the file mm.cfg
	) Added the `mm' option "idle_move" to the file mm.cfg to realize
		a basic slide show
	) Added the game screen size information in the `mm' utility
	) Updated the `mm' documentation file `mm.txt'
	) Corrected the gamma modification at runtime

AdvanceMAME Version 0.37b1.0 2000/04

AdvanceMAME Version 0.36r2.2
	) Added a warning screen for preventing the use of BIOS modes
		with low frequency monitors
	) Corrected the parsing of fixed value in the "hclock=" option
	) Added memory for skiplines and skipcolumns options for
		the single game
	) Other minor changes

AdvanceMAME Version 0.36r2.1
	) Corrected the error "Too low virtual x size" with some
		bogus VBE3 implementation
	) Corrected and extended the vbeline modes
	) Added the '[video]' option 'vbe_tweak=moderate|aggressive'
	) The specifications of '[video]' options 'hclock'
		and 'vclock' are required
	) Added hardware mode grabbing in command F6 in 'mv' for all modes
	) Added customization of horizontal/vertical/pixel clock in
		command F5 in 'mv'
	) Added mode number change for vgaline/vbeline in command F7 in 'mv'
	) Changed the calibration screen in command F9 in 'mv'
	) Changed the list of default video mode in 'mv', added a lot of
		default vbeline modes
	) Documentation update

AdvanceMAME Version 0.36r2.0

AdvanceMAME Version 0.36r1.0 (never released)
	) Corrected a bug in the video mode change causing a freeze if the
		cheat option is active
	) Corrected a bug in the vsync code causing a crash at the startup of
		many games
	) Default video mode change keys are now '[' and ']'
	) Added a memory for the manually selected video configuration

AdvanceMAME Version 0.36rc2.0 2000/03
	) Corrected a bug causing memory corruption in video mode change
	) Added absolute tick values in the profiler
	) Corrected the sort menu of the 'mm' utility
	) Changed the sort order of video modes in the 'mv' utility
	) Corrected a bug in vsync code causing (sometimes)
		a big slowdown if 'frameskip=auto' is active
	) Video mode change at runtime disabled if vsync is active, you can
		still change the video configuration on the same video mode

AdvanceMAME Version 0.36rc1.1 (never released)
	) Added a startup check for the presence of a mmx cpu if required
	) Corrected a bug in color of the user interface in 16 bit modes
		causing wrong colors
	) Corrected a bug if stretch and filter activated together causing
		incorrect video output
	) Corrected a bug that permits to use unaligned bitmap causing a loss
		of performance with mmx
	) Corrected a bug in vbe 8 bit modes with a palette of 8 bit causing
		incorrect colors

AdvanceMAME Version 0.36rc1.0 2000/02
	) MAME compiled with Allegro WIP3931 (-march=i586), utilities
		compiled with WIP3928 (smaller)
	) Added special blitters for unchained double and palette conversion
	) Added new bliteffects for rgb video modes
		mean - merge lines with the mean colors
		filter - apply a low pass filter
	) MAME compiled with a patched version of SEAL with improved sound
		quality
	) Corrected some minor bugs on the blitrotate system
	) Added the Advance Mame logo [Melanie Burns]

AdvanceMAME Version 0.36b16.2 (never released)
	) Added basic asm/mmx blit routines for x1,x2 horizontal stretch:
		the pentiumpro target uses asm routines with mmx instructions
		the pentium target uses asm routines with shift/swap instructions
	) Added cache for input functions at core level
	) Utility `mm' flush smartdrv cache before running games
	) Added utility `mk'
	) Correct bug of partially black screen with video conversion
		from 8 to 16 bit
	) Video option bliteffect= for selecting the image
		reduction algorithm (when the screeen is too small for
		the complete image). Modes avaliable :

		no - skip some lines
		max - plot the lightest pixel (work very well for
			pacman style games). Avaliable only if the
			game uses a fixed palette.
		auto - automatic selection (list based)
	) Added video options blitrotate = auto, automatic selection (list based)
	) Added new aos.txt and mame.dat for AOS [Nick Bourdo]
	) Video configuration modifiable at runtime, press HOME/END,
		use the -log option for viewing the list of avaliable
		video configuration for one game
	) Added patch src.dif to apply at mame core sources for compiling
	) Added `mame' configuration option "idleexit = SECONDS" for
		an automatic exit after SECONDS of inactivity
	) Added `mm' configuration option "idlestart = SECONDS" for
		an automatic random start after SECONDS of inactivity
	) Documentation changes

AdvanceMAME Version 0.36b16.1 2000/02
	) Correct a bug in some blit routines, specifically in blitting
		in a 8 bit mode with a 16 bit palette
	) Reinsert dedicated and faster blitting routines when no rotation
		is required

AdvanceMAME Version 0.36b16.0 2000/02
	) Added rotation at blit level, use the new option "blitrotate = yes"
		for games that don't rotate correctly (ex. NeoGeo)
	) Renamed the option "stretch" to "resize"
	) Minor modifications at errorlog
	) Minor modifications at mv
	) Substituted the option `resize = yes' to `resize = integer'

AdvanceMAME Version 0.36b15.1 2000/01
	) Correct the crash if "vsync" is active and no modes avaliable
	) Correct bug of missing horizontal lines if "scanline" is active
	) Better output in errorlog.txt
	) Correct bug in the input system

AdvanceMAME Version 0.36b15.0 2000/01
	) Created the history.txt file

AdvanceMAME Version 0.36b14.0 2000/01

AdvanceMAME Version 0.36b13.0 1999/12

AdvanceMAME Version 0.36b13.0 1999/12

AdvanceMAME Version 0.36b12.0 1999/12

AdvanceMAME Version 0.36b11.0 1999/12

AdvanceMAME Version 0.36b10.0 1999/11

AdvanceMAME Version 0.36b9.0 1999/11

AdvanceMAME Version 0.36b8.0 1999/11

AdvanceMAME Version 0.36b7.0 1999/10

AdvanceMAME Version 0.36b6.0 1999/09

AdvanceMAME Version 0.36b5.0 1999/09

AdvanceMAME Version 0.36b4.0 1999/09

AdvanceMAME Version 0.36b3.0 1999/08

AdvanceMAME Version 0.36b2.0 1999/08

AdvanceMAME Version 0.35.0 1999/07

AdvanceMAME Version 0.35rc2.0 1999/06

AdvanceMAME Version 0.35rc1.0 1999/06
