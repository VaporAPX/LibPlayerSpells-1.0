--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("WARRIOR", 80000, 1, {
	COOLDOWN = {
		  6544, -- Heroic Leap (Protection)
		  6572, -- Revenge (Protection)
		 23922, -- Shield Slam (Protection)
		202168, -- Impending Victory (Protection talent)
	       [  6552] = "INTERRUPT", -- Pummel
		AURA = {
			HELPFUL = {
				  6673, -- Battle Shout (Protection)
				 97463, -- Rallying Cry (Protection)
				147833, -- Intervene (Protection)
				223658, -- Safeguard (Protection talent)
			},
			HARMFUL = {
				  1160, -- Demoralizing Shout (Protection)
				105771, -- Charge (Protection)
				275335, -- Punish (Protection talent)
				CROWD_CTRL = {
					[5246] = "DISORIENT", -- Intimidating Shout (Protection)
					STUN = {
						132168, -- Shockwave (Protection)
						132169, -- Storm Bolt (Protection talent)
					},
					TAUNT = {
						355, -- Taunt (Protection)
					},
				},
				SNARE = {
					6343, -- Thunder Clap (Protection)
				},
			},
			PERSONAL = {
				 18499, -- Berserker Rage (Protection)
				 23920, -- Spell Reflection (Protection)
				132404, -- Shield Block (Protection)
				202164, -- Bounding Stride (Protection talent)
				227744, -- Ravager (Protection talent)
				275337, -- Bolster (Protection talent)
 				BURST = {
					107574, -- Avatar (Protection)
				},
				SURVIVAL = {
					  871, -- Shield Wall (Protection)
					12975, -- Last Stand (Protection)
				},
			},
		},
	},
	AURA = {
		HARMFUL = {
			115767, -- Deep Wounds (Protection)
		},
		PERSONAL = {
			 32216, -- Victorious (Protection)
			202573, -- Vengeance: Revenge (Protection talent)
			202574, -- Vengeance: Ignore Pain (Protection talent)
			202602, -- Into the Fray (Protection talent)
			SURVIVAL = {
				190456, -- Ignore Pain (Protection)
			},
		},
	},
}, {
	-- Map aura to provider(s)
	[ 32216] = { -- Victorious (Protection)
		 34428, -- Victory Rush (Protection)
		202168, -- Impending Victory (Protection talent)
	},
	[ 97463] =  97462, -- Rallying Cry (Protection)
	[105771] = 198304, -- Intercept - Charge (Protection)
	[115767] = 115768, -- Deep Wounds (Protection)
	[132168] =  46968, -- Shockwave (Protection)
	[132169] = 107570, -- Storm Bolt (Protection talent)
	[132404] =   2565, -- Shield Block (Protection)
	[147833] = 198304, -- Intercept - Intervene (Protection)
	[202164] = 202163, -- Bounding Stride (Protection talent)
	[202573] = 202572, -- Vengeance: Revenge <- Vengeance (Protectiont talent)
	[202574] = 202572, -- Vengeance: Ignore Pain <- Vengeance (Protection talent)
	[202602] = 202603, -- Into the Fray (Protection talent)
	[223658] = 223657, -- Safeguard (Protection talent)
	[227744] = 228920, -- Ravager (Protection talent)
	[275335] = 275334, -- Punish (Protection talent)
}, {
	-- map aura to modified spell(s)
	[115767] = { -- Deep Wounds (Protection)
		  6572, -- Revenge (Protection)
		 20243, -- Devestate (Protection)
		236279, -- Devastator (Protection talent)
	},
	[202164] =   6544, -- Bounding Stride -> Heroic Leap (Protection talent)
	[202573] =   6572, -- Vengeance: Revenge -> Revenge (Protection talent)
	[202574] = 190456, -- Vengeance: Ignore Pain -> Ignore Pain (Protection talent)
	[223658] = 198304, -- Safeguard -> Intercept (Protection talent)
	[275335] =  23922, -- Punish -> Shield Slam (Protection talent)
})
