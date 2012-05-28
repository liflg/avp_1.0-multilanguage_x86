Setup.Package
{
    vendor = "liflg.org",
    id = "avp",               -- unique identifier, will be proposed as installdirectory SAMPLE: "fakk2"
    description = "Aliens versus Predator",      -- full name of the game, will be used during setup SAMPLE: "Heavy Metal: FAKK2"
    version = "1.0-multilanguage_x86",          -- version of the game SAMPLE: "1.02-english"
    splash = "splash.png", -- name of the splash file which has to be placed inside the meta directory
    splashpos = "left",
    superuser = false, 
    write_manifest = true, -- needs to be true if an uninstall-option should be provided
                           -- NOTE: atm installing serveral thousands files will slow down the installation process

    support_uninstall = true, 
    recommended_destinations =
    {
        "/usr/local/games",
	"/opt/",
	MojoSetup.info.homedir,
    }, 

    Setup.Readme
    {
        description = "README",
        source = "README.liflg"
    },

    Setup.Media
    {
        id = "avp-cd",          -- unique identifier for the cd/dvd-rom SAMPLE: "fakk2-cd"
        description = "Aliens versus Predator CDROM", -- this string will be shown to the end-user SAMPLE: "FAKK2-Loki CDROM"
        uniquefile = "AvP.exe"   -- unique file to decide if a disc is the right one SAMPLE: "fakk/pak0.pk3"
    },

    Setup.DesktopMenuItem
    {
        disabled = false,
        name = "Aliens versus Predator",           -- name of the menu-entry. SAMPLE: "Heavy Metal: FAKK2"
        genericname = "Ego-Shooter",    -- generic name. SAMPLE: "Ego-Shooter"
        tooltip = "play Aliens versus Predator",        -- tooltip SAMPLE "play Heavy Metal: FAKK2"
        builtin_icon = false,
        icon = "avp.xpm",   -- path to icon file, realtive to the base-dir of the installation
        commandline = "%0/avp",    -- gamebinary or startscript, "%0/" stands for the base directory of the installation SAMPLE: "%0/fakk2.sh"
        category = "Game", 
    },

    Setup.OptionGroup -- contains one or more Setup.Option children (only one of them can be selected at the same time)
    {
        description = "Sound Quality",
	
	Setup.Option
	{
		value = true, -- selected by default
		bytes = 27706190,
		description = "High Quality Sound (EAX)",

    		Setup.File
    		{
	    		source = "media://avp-cd/HSound/fastfile",
			destination = "fastfile",
    			wildcards = { "Snd10.FFL", "Snd11.FFL", "Snd12.FFL", "Snd13.FFL", "Snd14.FFL",
				      "Snd15.FFL", "Snd16.FFL", "Snd17.FFL", "Snd18.FFL", "Snd19.FFL",
    				      "Snd2.FFL" , "Snd20.FFL", "Snd21.FFL", "Snd22.FFL", "Snd23.FFL",
    				      "Snd24.FFL", "Snd25.FFL", "Snd26.FFL", "Snd27.FFL", "Snd28.FFL",
				      "Snd29.FFL", "Snd3.FFL" , "Snd30.FFL", "Snd31.FFL", "Snd32.FFL",
				      "Snd33.FFL", "Snd34.FFL", "Snd35.FFL", "Snd36.FFL", "Snd37.FFL",
				      "Snd38.FFL", "Snd4.FFL" , "Snd5.FFL" , "Snd6.FFL" , "Snd7.FFL" ,
				      "Snd8.FFL" , "Snd9.FFL" , "AlienSound.dat", "marsound.dat",
				      "PredSound.dat", "QueenSound.dat", "common.ffl", 
				    },
			filter = function(dest)
				return string.lower(dest)
         		end
    		},
	},

	Setup.Option
	{
		bytes = 28645065,
		description = "High Quality Sound (non-EAX)",
    		
		Setup.File
    		{
	    		source = "media://avp-cd/HSound/fastfile",
			destination = "fastfile",
    			wildcards = { "Snd10.FFL", "Snd11.FFL", "Snd12.FFL", "Snd13.FFL", "Snd14.FFL",
				      "Snd15.FFL", "Snd16.FFL", "Snd17.FFL", "Snd18.FFL", "Snd19.FFL",
    				      "Snd2.FFL" , "Snd20.FFL", "Snd21.FFL", "Snd22.FFL", "Snd23.FFL",
    				      "Snd24.FFL", "Snd25.FFL", "Snd26.FFL", "Snd27.FFL", "Snd28.FFL",
				      "Snd29.FFL", "Snd3.FFL" , "Snd30.FFL", "Snd33.FFL", "Snd34.FFL",
				      "Snd35.FFL", "Snd36.FFL", "Snd37.FFL", "Snd38.FFL", "Snd4.FFL" ,
				      "Snd5.FFL" , "Snd6.FFL" , "Snd7.FFL" , "Snd8.FFL" , "Snd9.FFL" ,
				      "AlienSound.dat", "marsound.dat", "PredSound.dat", "QueenSound.dat", "common.ffl",
				    },
			filter = function(dest)
				return string.lower(dest)
         		end
    		},
		Setup.File
    		{
	    		source = "media://avp-cd/RSound/fastfile",
			destination = "fastfile",
    			wildcards = { "Snd31.FFL", "Snd32.FFL", },
			filter = function(dest)
				return string.lower(dest)
         		end
    		},
	},

	Setup.Option
	{
		bytes = 23941270,
		description = "Lower Quality Sound",
	
    		Setup.File
    		{
	    		source = "media://avp-cd/LSound/fastfile",
			destination = "fastfile",
    			wildcards = { "Snd10.FFL", "Snd11.FFL", "Snd12.FFL", "Snd13.FFL", "Snd14.FFL",
				      "Snd15.FFL", "Snd16.FFL", "Snd17.FFL", "Snd18.FFL", "Snd19.FFL",
    				      "Snd2.FFL" , "Snd20.FFL", "Snd21.FFL", "Snd22.FFL", "Snd23.FFL",
    				      "Snd24.FFL", "Snd25.FFL", "Snd26.FFL", "Snd27.FFL", "Snd28.FFL",
				      "Snd29.FFL", "Snd3.FFL" , "Snd30.FFL", "Snd31.FFL", "Snd32.FFL",
				      "Snd33.FFL", "Snd34.FFL", "Snd35.FFL", "Snd36.FFL", "Snd37.FFL",
				      "Snd38.FFL", "Snd4.FFL" , "Snd5.FFL" , "Snd6.FFL" , "Snd7.FFL" ,
				      "Snd8.FFL" , "Snd9.FFL" , "AlienSound.dat", "marsound.dat",
				      "PredSound.dat", "QueenSound.dat", "common.ffl", 
				    },
			filter = function(dest)
				return string.lower(dest)
         		end
    		},
	},
    },
 
   Setup.Option
    {    
    	value = true,
	required = true,   -- user will not be asked about this option, will be installed always
    	disabled = false,
    	bytes = 123834571, -- size of the files, used only(?) for progressbar, Mojosetup does not check available space 
    	description = "Install gamedata",
    	tooltip = "Needs the Aliens versus Predator CDROM",

    	Setup.File
	{
    		wildcards = { "avp.xpm", "language.txt", "net.log", "avp", "avp.bin", "README.liflg", },
        	filter = function(dest)
	            if dest == "avp" or dest == "avp.bin" then
                	return dest, "0755"   -- make sure it's executable.
            	    end
            	    return dest   -- everything else just goes through as-is.
        	end
    	},  	

	Setup.File
    	{
		source = "media://avp-cd/fastfile",
		destination = "fastfile",
    		wildcards = { "*.FFL", "ffinfo.txt", },
		filter = function(dest)
			return string.lower(dest)
        	end
    	},
	
	Setup.File
    	{
		source = "media://avp-cd/AvP_Rifs",
		destination = "avp_rifs",
    		wildcards = { "*.RIF", "*.rif", },
		filter = function(dest)
			return string.lower(dest)
        	end
    	},
	
	Setup.File
    	{
		source = "media://avp-cd/AvP_Huds",
		destination = "avp_huds",
    		wildcards = { "*.RIF", "*.rif", },
		filter = function(dest)
			return string.lower(dest)
        	end
    	},
    },
}

