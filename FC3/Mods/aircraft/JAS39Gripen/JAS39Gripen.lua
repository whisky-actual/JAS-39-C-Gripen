-- ========= Gun ===========
declare_weapon({category = CAT_SHELLS, name = "BK_27_HE", user_name = _("27/85 SGR06 27 mm HE"),	
	model_name    = "tracer_bullet_yellow",
	v0    = 1025.0,
	Dv0   = 0.0040,
	Da0     = 0.00005,
	Da1     = 0.0,
	mass      = 0.26,
	round_mass = 0.516,
	explosive     = 0.119,
	life_time     = 5,
	caliber     = 27.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1,0.605,0.8,0.22,1.9},
	k1        = 6.3e-09,
	tracer_off    = 0,
	scale_tracer  = 1,
	scale_smoke	= 1.5,
	cartridge = 0,
});

	declare_weapon({category = CAT_SHELLS, name = "BK_27_AP", user_name = _("27/85 PPRJ06 27 mm AP"),
	model_name    = "tracer_bullet_yellow",
	v0    = 1025.0,
	Dv0   = 0.0040,
	Da0     = 0.00005,
	Da1     = 0.0,
	mass      = 0.26,
	round_mass = 0.516,
	explosive     = 0.0,
	life_time     = 5,
	caliber     = 27.0,
	AP_cap_caliber = 15.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1,0.605,0.8,0.22,1.9},
	k1        = 6.3e-09,
	tracer_off    = 0,
	scale_tracer  = 1,
	scale_smoke	= 1.5,	  
	cartridge = 0,
});

	declare_weapon({category = CAT_SHELLS, name = "BK_27_APHE", user_name = _("27/85 HPGR06 27 mm APHE"),
	model_name    = "tracer_bullet_yellow",
	v0    = 1025.0,
	Dv0   = 0.0040,
	Da0     = 0.00005,
	Da1     = 0.0,
	mass      = 0.26,
	round_mass = 0.516,
	explosive     = 0.033,
	life_time     = 5,
	caliber     = 27.0,
	AP_cap_caliber = 10.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1,0.605,0.8,0.22,1.9},
	k1        = 6.3e-09,
	tracer_off    = 0,
	scale_tracer  = 1,
	scale_smoke	= 1.5,
	cartridge = 0,
});

	declare_weapon({category = CAT_SHELLS, name = "BK_27_PELE", user_name = _("27/85 HPGR07 27 mm PELE"),
	model_name    = "tracer_bullet_yellow",
	v0    = 1025.0,
	Dv0   = 0.0040,
	Da0     = 0.00005,
	Da1     = 0.0,
	mass      = 0.26,
	round_mass = 0.516,
	explosive     = 0.0,
	life_time     = 5,
	caliber     = 27.0,
	subcalibre = true,	
	AP_cap_caliber = 15.0,
	piercing_mass = 0.150,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1,0.605,0.8,0.22,1.9},
	k1        = 6.3e-09,
	tracer_off    = 0,
	scale_tracer  = 1,
	scale_smoke	= 1.5,
	cartridge = 0,
});

	declare_weapon({category = CAT_SHELLS, name = "BK_27_PELET", user_name = _("27/85 SLHPGR07 27 mm PELE-T"),
	model_name    = "tracer_bullet_yellow",
	v0    = 1025.0,
	Dv0   = 0.0040,
	Da0     = 0.00005,
	Da1     = 0.0,
	mass      = 0.26,
	round_mass = 0.516,
	explosive     = 0.0,
	life_time     = 5,
	caliber     = 27.0,
	subcalibre = true,
	AP_cap_caliber = 15.0,
	piercing_mass = 0.150,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1,0.605,0.8,0.22,1.9},
	k1        = 6.3e-09,
	tracer_off    = 0,
	scale_tracer  = 1,
	scale_smoke	= 1.5,
	cartridge = 0,
});

--- DECLARE BK 27 GUN
local function m85(tbl)

    tbl.category = CAT_GUN_MOUNT
    tbl.name =  "bk27m85"
    tbl.display_name =  _("BK 27 Akan m/85")
    tbl.supply      =
    {
        shells = {"BK_27_HE", "BK_27_AP", "BK_27_APHE", "BK_27_PELE", "BK_27_PELET"},
        mixes  = { {1,2,3},{4,4,4,4,5} },
        count  = 120, -- corrected amount
    }
    if tbl.mixes then
       tbl.supply.mixes = tbl.mixes
       tbl.mixes        = nil
    end
    tbl.gun =
    {
        max_burst_length    = 10,
        rates               = {1700},
        recoil_coeff        = 0.7*1.3,
        barrels_count       = 1,
    }
    if tbl.rates then
       tbl.gun.rates        =  tbl.rates
       tbl.rates            = nil
    end

    tbl.ejector_pos             = tbl.ejector_pos or {0, 0, 0}
    tbl.ejector_pos_connector   = tbl.ejector_pos_connector     or  "Gun_point"
    tbl.ejector_dir             = tbl.ejector_dir or {0, 0, 0}
    tbl.supply_position         = tbl.supply_position   or {0,  0, 0}
    tbl.aft_gun_mount           = false
    tbl.effective_fire_distance = 2500
    tbl.drop_cartridge          = 203
    tbl.muzzle_pos              = tbl.muzzle_pos            or  {0,0,0}     -- all position from connector
    tbl.muzzle_pos_connector    = tbl.muzzle_pos_connector  or  "Gun_point" -- all position from connector
    tbl.azimuth_initial         = tbl.azimuth_initial       or  0
    tbl.elevation_initial       = tbl.elevation_initial     or  0
    tbl.smoke_dir               = tbl.smoke_dir             or  {0, 0, 0}
    if  tbl.effects == nil then
        tbl.effects = {{ name = "FireEffect", arg = tbl.effect_arg_number or 350 },{name = "SmokeEffect", smoke_exhaust = "PNT_GUN_SMOKE" , add_speed = {10,0,0}}}
    end
    return declare_weapon(tbl)
end
local tips 		= {
	{ CLSID = "IRIS-T", arg_increment = 0.0 }, -- Rb98 IRIS-T
	{ CLSID = "{Rb74}", attach_point_position = {0.1, 0.0, 0.0}, arg_increment = 0.0 }, -- Rb74 AIM-9L
	
	{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = 0.0}, -- smoke gen blue
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = 0.0}, -- smoke gen green
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = 0.0}, -- smoke gen orange
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = 0.0}, -- smoke gen red
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = 0.0}, -- smoke gen white
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}" ,arg_increment = 0.0}, -- smoke gen yellow
}

local outboard 	= {
	{ CLSID = "IRIS-T" , attach_point_position = {0.1, -0.13, 0.0}, arg_increment = 0.0 }, -- Rb98 IRIS-T
	{ CLSID = "{Rb74}", attach_point_position = {0.1, -0.1, 0.0}, arg_increment = 0.0 }, -- Rb74 AIM-9L
	
	{ CLSID = "Meteor", attach_point_position = {-0.35, -0.24, 0.0}, arg_increment = 0.2 }, -- Rb101 Meteor
	{ CLSID = "Meteor_DUAL", attach_point_position = {-0.35, -0.24, 0.0}, arg_increment = 0.2 }, -- Rb101 Meteor 2x
	{ CLSID = "{Rb99}" ,arg_increment = 0.0, attach_point_position = {0.3, -0.22, 0.0}},   --  RB99 AIM-120B
	
	
	
	
	--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = 0.0, attach_point_position = {0.3, -0.22, 0.0}},--AIM-120C	
	{ CLSID = "<CLEAN>"									,arg_increment = 1},
}

local inboard 	= {
{ CLSID = "Meteor", attach_point_position = {-0.35, -0.24, 0.0}, arg_increment = 0.2 }, -- Rb101 Meteor
{ CLSID = "{Rb99}" ,arg_increment = 0.0, attach_point_position = {0.3, -0.22, 0.0}},   --  RB99 AIM-120B
	
	--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = 0.0, attach_point_position = {0.0, -0.22, 0.0}},--AIM-120C

--				=== Drop tanks ===
                { CLSID = "JAS_TANK1100", arg_increment = 0.1 }, -- External drop tank 1100 litre				
				{ CLSID = "JAS_TANK1700", arg_increment = 0.1 }, -- External drop tank 1700 litre
	{ CLSID = "<CLEAN>"									,arg_increment = 1},
}

local fuselageLeft	= {
	--
}

local fuselageRight	= {
	{ CLSID = "<CLEAN>"									,arg_increment = 1},
}

local centerline 	= {
--					=== Drop tanks ===
                { CLSID = "JAS_TANK1100", arg_increment = 0.1 }, -- External drop tank 1100 litre
	
	{ CLSID = "<CLEAN>"									,arg_increment = 1},
}


local ECM_ELINT 	= {
	{ CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" }, --L005 Sorbtsiya ECM pod (left)
	{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0 ,0 } },-- ELINT
	{ CLSID = "{INV-SMOKE-RED}		"},		--Smoke Generator - red
	{ CLSID = "{INV-SMOKE-GREEN}	"},		--Smoke Generator - green
	{ CLSID = "{INV-SMOKE-BLUE}		"},		--Smoke Generator - blue
	{ CLSID = "{INV-SMOKE-WHITE}	"},		--Smoke Generator - white
	{ CLSID = "{INV-SMOKE-YELLOW}	"},		--Smoke Generator - yellow
	{ CLSID = "{INV-SMOKE-ORANGE}	"},		--Smoke Generator - orange
}

JAS39Gripen =  {
      
		Name 			= 'JAS39Gripen',
		DisplayName		= _('JAS 39 Gripen'),
        Picture 		= "JAS39Gripen.png",
        Rate 			= "50",
        Shape			= "JAS39Gripen",
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'JAS39Gripen';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'JAS39Gripen-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'JAS39Gripen';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "JAS39Gripen-oblomok";
			file  		= "JAS39Gripen-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	mapclasskey 		= "P0091000024",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Refuelable", "Datalink", "Link16"},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	
		M_empty						=	6880,	-- kg  with pilot and nose load, JAS 39C
		M_nominal					=	9430,	-- kg (Empty Plus Full Internal Fuel)
		M_max						=	14000,	-- kg (Maximum Take Off Weight)
		M_fuel_max					=	2550,	-- kg (Internal Fuel Only)
		H_max						=	16000,	-- m  (Maximum Operational Ceiling)
		average_fuel_consumption	=	0.021,
		CAS_min						=	58,		-- Minimum CAS speed (m/s) (for AI)
		V_opt						=	220,	-- Cruise speed (m/s) (for AI)
		V_take_off					=	61,		-- Take off speed in m/s (for AI)
		V_land						=	71,		-- Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {4.488,	-2.140,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,      -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.43,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.215,   -- up 
	    nose_gear_wheel_diameter 	                =  0.544, -- in m
	
	    main_gear_pos 						 	    = {-0.800,	-2.020,	1.25}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0,     --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   -0.228, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   -0.114,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.66, -- in m

		AOA_take_off				=	0.16,	-- AoA in take off (for AI)
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-3,		-- Min G (for AI)
		Ny_max						=	8,		-- Max G (for AI)
		V_max_sea_level				=	403,	-- Max speed at sea level in m/s (for AI)
		V_max_h						=	736.11,	-- Max speed at max altitude in m/s (for AI)
		wing_area					=	30,	-- wing area in m2
		thrust_sum_max				=	5200,	-- thrust in kgf 
		thrust_sum_ab				=	8566,	-- thrust in kgf 
		Vy_max						=	275,	-- Max climb speed in m/s (for AI)
		flaps_maneuver				=	1,
		Mach_max					=	2,	-- Max speed in Mach (for AI)
		range						=	2540,	-- Max range in km (for AI)
		RCS							=	1.0,		-- Radar Cross Section m2
		Ny_max_e					=	8,		-- Max G (for AI)
		detection_range_max			=	250,
		IR_emission_coeff			=	0.6,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab		=	1.33,		-- With afterburner
		tand_gear_max				=	3.73,--XX  1.732 FA18 3.73, 
		tanker_type					=	2,--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	8.40,	--XX  wing span in m
		wing_type 					= 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	14.1,
		height						=	4.5,
		crew_size					=	1, --XX
		engines_count				=	1, --XX
		wing_tip_pos 				= 	{-3.404,	-0.164,	4.05},
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.743},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            CrewLadder = {
                {Transition = {"Dismantle", "Erect"}, Sequence = {{C = {{"Arg", 91, "to", -1.0, "in", 1.5}}}, {C = {{"Sleep", "for", 5.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Erect", "Dismantle"}, Sequence = {{C = {{"Arg", 91, "to", 0.0, "in", 2.7}}}, {C = {{"Sleep", "for", 0.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
        },
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.231,	0.268,	0},-- Tribwerke   -5.231,	-0.468,	0
				elevation	=	0,-- AFB cone elevation  winkel nach oben unten
				diameter    =   1.05,-- AFB cone diameter   Kreis � --1.0
                exhaust_length_ab   =   10,--lenght in m  Kreis � kegel efekt
                exhaust_length_ab_K =   0.707,--animation geschwindigkeit
                smokiness_level     =   0.01, --0.05
				afterburner_circles_count = 11,
				afterburner_circles_pos = {0.2, 0.8},
				afterburner_circles_scale = 0.95,
				afterburner_effect_texture = "afterburner_gripen",
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	"jas39gripen-fonar";
				pos = 	{3.9,	1.4,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/JAS39Gripen_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
		[1] = { dir = {0, 1.0, 0}, pos = {-4.2, 0.4, 0.85}, }, -- Flares L
        [2] = { dir = {0, 1.0, 0}, pos = {-4.2, 0.4, -0.85}, }, -- Flares R
        [3] = { dir = {0, 1.0, 0}, pos = {-4.2, 0.4, 0.85}, }, -- Chaffs L
        [4] = { dir = {0, 1.0, 0}, pos = {-4.2, 0.4	, -0.85}, }, -- Chaffs R
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 180,
chaff 				= {default = 90, increment = 45, chargeSz = 1},
flare 				= {default = 45, increment = 45, chargeSz = 2}
 },
	
        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
            elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
        },

Sensors = {
RADAR 			= "AN/APG-63",--F15
RWR 			= "Abstract RWR"--F15
},
Countermeasures = {
ECM 			= "AN/ALQ-135"--F15
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

Guns = {
        m85({muzzle_pos_connector   = "GUN_POINT",
            supply_position        = {2.6, -0.4, 0.0},
            -- drop_cartridge         = 204,
            ejector_pos_connector  = "GUN_EJECTOR_01",
            ejector_dir            = {2,-2,0},
			elevation_initial = 0.0,
            -- elevation_initial = -1.50,
        }),
		
		},
    				
		ammo_type_default = 1,
		ammo_type ={
			_("AM BAND 06 (HE/AP/APHE)"),
			_("AM BAND 07 (PELE/PELE-T)"),				
		},

--pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

        pylon(1, 0, 0, 0, 0,
			{
				DisplayName = "1",
  				use_full_connector_position = true,
				connector = "Pylon1",
			},
			tips
		),
        pylon(2, 0, 0, 0, 0,
			{
				arg = 310,
				arg_value = 0,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon3",
			},
			inboard
		),
        pylon(3, 0, 0, 0, 0,
			{
				arg = 309,
				arg_value = 0,
				DisplayName = "2",
				use_full_connector_position = true,
				connector = "Pylon2",
			},
			outboard
		),
        pylon(4, 1, 0, 0, 0,
            {
				arg = 311,
				arg_value = 0,
				DisplayName = "-",--4
            	use_full_connector_position = true,
				connector = "Pylon4",
			},
			fuselageLeft
		),
        pylon(5, 2, 0, 0, 0,--26
			{
				arg = 312,
				arg_value = 0,
				DisplayName = "ELINT",
				use_full_connector_position = true,
				connector = "Pylon5",
			},
			ECM_ELINT
		),
        pylon(6, 1, 0, 0, 0,
			{
				arg = 313,
				arg_value = 0,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			centerline
		),
		pylon(7, 2, 0, 0, 0,--26
			{
				arg = 314,
				arg_value = 0,
				DisplayName = "ECM",
				use_full_connector_position = true,
				connector = "Pylon8",
			},
			ECM_ELINT
		),
        pylon(8, 1, 0, 0, 0,
            {
				arg = 315,
				arg_value = 0,
				DisplayName = "5",--6
            	use_full_connector_position = true,
				connector = "Pylon7",
			},
			fuselageRight
		),
        pylon(9, 0, 0, 0, 0,
			{
				arg = 317,
				arg_value = 0,
				DisplayName = "7",
				use_full_connector_position = true,
				connector = "Pylon10",
			},
			outboard
		),
        pylon(10, 0, 0, 0, 0,
			{
				arg = 316,
				arg_value = 0,
				DisplayName = "6",
				use_full_connector_position = true,
				connector = "Pylon9",
			},
			inboard
		),
		pylon(11, 0, 0, 0, 0,
			{
				DisplayName = "8",
				use_full_connector_position = true,
				connector = "Pylon11",
			},
			tips
		),
},
	
	Tasks = {
        aircraft_task(CAP),
     	aircraft_task(Escort),
      	aircraft_task(FighterSweep),
		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
    },	
	DefaultTask = aircraft_task(FighterSweep),

SFM_Data = {
        aerodynamics = { -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
            Cy0        = 0,      -- zero AoA lift coefficient
            Mzalfa     = 4.54,  -- coefficients for pitch agility
            Mzalfadt   = 0.8,    -- coefficients for pitch agility
            kjx        = 2.75,
            kjz        = 0.00125,
            Czbe       = -0.016, -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
            cx_gear    = 0.03,    -- coefficient, drag, gear
            cx_flap    = 0.05,   -- coefficient, drag, full flaps
            cy_flap    = 0.47,    -- coefficient, normal force, lift, flaps
            cx_brk     = 0.08,   -- coefficient, drag, breaks
            table_data = {
                --       M       Cx0   Cya    B      B4     Omxmax  Aldop   Cymax
                [1]  = { 0.000, 0.025, 0.068, 0.132, 0.032, 0.48,   27.000, 1.2 },
                [2]  = { 0.200, 0.025, 0.068, 0.132, 0.032, 1.47,   26.500, 1.2 },
                [3]  = { 0.400, 0.024, 0.07,  0.133, 0.032, 2.4,   25.500, 1.2 },
                [4]  = { 0.600, 0.024, 0.072, 0.133, 0.043, 3.5,   25.000, 1.2 },
                [5]  = { 0.700, 0.025, 0.074, 0.134, 0.045, 3.5,   25.000, 1.2 },
                [6]  = { 0.800, 0.024, 0.080, 0.135, 0.052, 3.5,   25.000, 1.2 },
                [7]  = { 0.900, 0.032, 0.081, 0.135, 0.058, 3.5,   25.000, 1.15 },
                [8]  = { 1.000, 0.050, 0.083, 0.252, 0.100, 2.5,   21.250, 1.12 },
                [9]  = { 1.050, 0.045, 0.084, 0.320, 0.095, 2.304, 19.375, 1.1 },
                [10] = { 1.100, 0.040, 0.091, 0.387, 0.090, 2.261, 17.500, 1.05 },
                [11] = { 1.200, 0.036, 0.095, 0.410, 0.120, 2.178, 15.625, 1.00 },
                [12] = { 1.300, 0.026, 0.096, 0.427, 0.170, 1.979, 13.750, 0.912 },
                [13] = { 1.500, 0.026, 0.090, 0.452, 0.200, 1.609, 10.000, 0.740 },
                [14] = { 1.700, 0.026, 0.093, 0.432, 0.300, 1.469, 10.000, 0.800 },
                [15] = { 1.850, 0.027, 0.092, 0.432, 0.380, 1.401, 10.000, 0.700 },
                [16] = { 2.000, 0.028, 0.090, 0.400, 3.200, 1.269, 10.000, 0.600 },
            }, -- end of table_data
            -- M    - Mach number
            -- Cx0    - Coefficient, drag, profile, of the airplane
            -- Cya    - Normal force coefficient of the wing and body of the aircraft in the normal direction to that of flight. Inversely proportional to the available G-loading at any Mach value. (lower the Cya value, higher G available) per 1 degree AOA
            -- B    - Polar quad coeff
            -- B4    - Polar 4th power coeff
            -- Omxmax    - roll rate, rad/s
            -- Aldop    - Alfadop Max AOA at current M - departure threshold
            -- Cymax    - Coefficient, lift, maximum possible (ignores other calculations if current Cy > Cymax)
}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0.1,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19,
			dcx_eng	=	0.0144,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	3500,
			dpdh_f	=	6500,
			table_data = 
			{
				[1] = 	{0,	68000,	128436},
				[2] = 	{0.2,	68000,	128436},
				[3] = 	{0.4,	73000,	128436},
				[4] = 	{0.6,	80000,	125683},
				[5] = 	{0.7,	92000,	128436},
				[6] = 	{0.8,	90000,	133023},
				[7] = 	{0.9,	86000,	131188},
				[8] = 	{1,		60000,	131188},
				[9] = 	{1.11,	27000,	133023},
				[10] = 	{1.2,	13000,	136692},
				[11] = 	{1.3,	7000,	133023},
				[12] = 	{1.4,	5000,	134857},
				[13] = 	{1.6,	3000,	136692},
				[14] = 	{1.8,	2000,	133023},
				[15] = 	{2.2,	1500,	113000},
				[16] = 	{2.35,	1000,	94000},
				[17] = 	{3.9,	0,	30000},
			}, -- end of table_data
		}, -- end of engine
	},

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8, args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5, args = {223}},
	[24] = {critical_damage = 5, args = {213}},
	[25] = {critical_damage = 2,  args = {226}},
	[26] = {critical_damage = 2,  args = {216}},
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}},
	[38] = {critical_damage = 2,  args = {218}},
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, 
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, 
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},
	[54] = {critical_damage = 2,  args = {247}},
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},--NOSE_CENTER
	[1]  = {critical_damage = 3,  args = {296}},--NOSE_LEFT_SIDE
	[2]  = {critical_damage = 3,  args = {297}},--NOSE_RIGHT_SIDE
	[3]  = {critical_damage = 8,  args = {65}}, --CABINA
	[4]  = {critical_damage = 2,  args = {298}},--CABIN_LEFT_SIDE
	[5]  = {critical_damage = 2,  args = {301}},--CABIN_RIGHT_SIDE
	[7]  = {critical_damage = 2,  args = {249}},--GUN
	[8]  = {critical_damage = 3,  args = {265}},--FRONT_GEAR_BOX
	[9]  = {critical_damage = 3,  args = {154}},--FUSELAGE_LEFT_SIDE
	[10] = {critical_damage = 3,  args = {153}},--FUSELAGE_RIGHT_SIDE
	[11] = {critical_damage = 1,  args = {167}},--ENGINE_L_IN
	[12] = {critical_damage = 1,  args = {161}},--ENGINE_R_IN
	[13] = {critical_damage = 2,  args = {169}},--MTG_L_BOTTOM
	[14] = {critical_damage = 2,  args = {163}},--MTG_R_BOTTOM
	[15] = {critical_damage = 2,  args = {267}},--LEFT_GEAR_BOX
	[16] = {critical_damage = 2,  args = {266}},--RIGHT_GEAR_BOX
	[17] = {critical_damage = 2,  args = {168}},--MTG_L  (ENGINE)
	[18] = {critical_damage = 2,  args = {162}},--MTG_R  (ENGINE)
	[20] = {critical_damage = 2,  args = {183}},--AIR_BRAKE_R
	[23] = {critical_damage = 5,  args = {223}},--WING_L_OUT
	[24] = {critical_damage = 5,  args = {213}},--WING_R_OUT
	[25] = {critical_damage = 2,  args = {226}},--ELERON_L
	[26] = {critical_damage = 2,  args = {216}},--ELERON_R
	[29] = {critical_damage = 5,  args = {224}, deps_cells = {23, 25}},--WING_L_CENTER
	[30] = {critical_damage = 5,  args = {214}, deps_cells = {24, 26}},--WING_R_CENTER
	[35] = {critical_damage = 6,  args = {225}, deps_cells = {23, 29, 25, 37}},--WING_L_IN
	[36] = {critical_damage = 6,  args = {215}, deps_cells = {24, 30, 26, 38}},--WING_R_IN
	[37] = {critical_damage = 2,  args = {228}},--FLAP_L
	[38] = {critical_damage = 2,  args = {218}},--FLAP_R
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}},--FIN_L_TOP
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}},--FIN_R_TOP
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},--FIN_L_BOTTOM
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}},--FIN_R_BOTTOM
	[51] = {critical_damage = 2,  args = {240}},--ELEVATOR_L
	[52] = {critical_damage = 2,  args = {238}},--ELEVATOR_R
	[53] = {critical_damage = 2,  args = {248}},--RUDDER_L
	[54] = {critical_damage = 2,  args = {247}},--RUDDER_R
	[56] = {critical_damage = 2,  args = {158}},--TAIL_LEFT_SIDE
	[57] = {critical_damage = 2,  args = {157}},--TAIL_RIGHT_SIDE
	[59] = {critical_damage = 3,  args = {148}},--NOSE_BOTTOM
	[61] = {critical_damage = 2,  args = {147}},--FUEL_TANK_F
	[82] = {critical_damage = 2,  args = {152}},--FUSELAGE_BOTTOM
	},
	
	DamageParts = 
	{  
		[1] = "JAS39Gripen-oblomok-wing-r", -- wing R
		[2] = "JAS39Gripen-oblomok-wing-l", -- wing L
--		[3] = "JAS39Gripen-oblomok-noise", -- nose
--		[4] = "JAS39Gripen-oblomok-tail-r", -- tail
--		[5] = "JAS39Gripen-oblomok-tail-l", -- tail
	},
-- DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
						{typename = "natostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = {0.9, 1.0, 0.7, 0.4}, connector = "BANO_0_BACK"},
						--{typename = "argnatostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = {0.9, 1.0, 0.7, 0.4}, connector = "BANO_0_BACK"},
					}
			},
			-- SPOTS
			[WOLALIGHT_LANDING_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 208, },
					},
			},
			[WOLALIGHT_TAXI_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 209, },
					},
			},
			-- NAVLIGHTS
			[WOLALIGHT_NAVLIGHTS]	= {	
					typename = "collection", -- nav_lights_default
					lights = {
						{typename = "argumentlight",argument = 190}, -- Left Position(red)
						{typename = "argumentlight",argument = 191}, -- Right Position(green)
						{typename = "argumentlight",argument = 192}, -- Tail Position white)
					},
			},
			-- FORMATION
			[WOLALIGHT_FORMATION_LIGHTS] = { 
					typename = "collection",
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
					},
			},
	[WOLALIGHT_REFUEL_LIGHTS]	= {},-- REFUEL
	[WOLALIGHT_BEACONS]	= {},-- STROBE / ANTI-COLLISION
	[WOLALIGHT_CABIN_NIGHT]	= {},--
	}},
}

add_aircraft(JAS39Gripen) --AG


