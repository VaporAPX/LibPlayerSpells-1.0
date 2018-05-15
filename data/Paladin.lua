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
lib:__RegisterSpells("PALADIN", 80000, 1, {
	COOLDOWN = {
		 24275, -- Hammer of Wrath (Retribution Talent)
		 35395, -- Crusader Strike (Retribution)
		 53385, -- Divine Storm (Retribution)
		 53595, -- Hammer of the Righteous (Protection)
		184092, -- Light of the Protector (Protection)
		184575, -- Blade of Justice (Retribution)
		204035, -- Bastion of Light (Protection Talent)
		210191, -- Word of Glory (Retribution Talent)
		213652, -- Hand of the Protector (Protection Talent)		 
		275779, -- Judgement (Protection)
		INTERRUPT = {
			96231, -- Rebuke
			31935, -- Avenger's Shield (Protection)
		},
		DISPEL = {
			HELPFUL = {
				[213644] = "DISEASE POISON", -- Cleanse Toxins (Protection/Retribution)
				[236186] = "DISEASE POISON", -- Cleansing Light (Protection/Retribution PvP Talent)
			},
		},
		AURA = {
			HELPFUL = {
			          1044, -- Blessing of Freedom
				204335, -- Aegis of Light (Protection Talent)
				[25771] = "INVERT_AURA", -- Forbearance	
				204018, -- Blessing of Spellwarding (Protection Talent)
				SURVIVAL = {
					1022, -- Blessing of Protection
					6940, -- Blessing of Sacrifice
				},
			},
			HARMFUL = {
				  31935, -- Avenger's Shield (Protection)
				 196941, -- Judgement of Light (Protection Talent)
				 197277, -- Judgement (Retribution)
				 204242, -- Consecration (Protection)
				 204079, -- Final Stand (Protection Talent / Taunt)
				 204301, -- Blessed Hammer (Protection Talent)
				[206891] = "UNIQUE_AURA", -- Inquisition (Protection PvP Talent)
			     	 267799, -- Execution Sentence (Retribution)
				CROWD_CTRL = {
					   [853] = "STUN", -- Hammer of Justice
					 [20066] = "INCAPACITATE", -- Repentance 
					 [62124] = "TAUNT", -- Hand of Reckoning
					[105421] = "DISORIENT", -- Blinding Light
					[204079] = "TAUNT", -- Final Stand (Protection Talent)
					[205290] = "STUN", -- Wake of Ashes (Retribution Talent)
				},
				SNARE = {
					183218, -- Hand of Hindrance (Retribution)
					255937, -- Wake of Ashes (Retribution Talent)
				},
			},
			PERSONAL = {
				 84963, -- Inquisition (Retribution Talent)
				114250, -- Selfless Healer (Retribution Talent)
				152262, -- Seraphim (Protection Talent)
				188370, -- Consecration (Protection)
				276112, -- Divine Steed
				BURST = {
					 31884, -- Avenging Wrath
					231895, -- Crusade (Retribution Talent)
				},
				SURVIVAL = {
					   642, -- Divine Shield
					 31850, -- Ardent Defender
					 86659, -- Guardian of Ancient Kings
					132403, -- Shield of the Righteous (Protection)
					184662, -- Shield of Vengeance (Retribution)
				    	204150, -- Aegis of Light (Protection Talent)
				    	205191, -- Eye for an Eye (Retribution Talent)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			203538, -- Greater Blessing of Kings (Retribution)
			203539, -- Greater Blessing of Wisdom (Retribution)
		},
		PERSONAL = {
			223819, -- Divine Purpose (Retribution Talent)
			267611, -- Righteous Verdict (Retribution Talent)	
		},
	},
},  {
	-- Map Aura to Provider(s)
	[105421] = 115750, -- Blinding Light (Disorient / Protection Talent)
	[114250] = 19750, -- Selfless Healer (Retribution Talent)
	[132403] = 53600, -- Shield of the Righteous (Protection)
	[188370] = 26573, -- Consecration (Protection)
	[196941] = 275779, -- Judgement of Light (Protection Talent)
	[197277] = 20271, -- Judgement (Retribution)
	[204242] = 26573, -- Consecration (Protection)
	[204077] = 642, -- Final Stand to Divine Shield (Taunt / Protection Talent)
	[204301] = 204019, -- Blessed Hammer (Protection Talent)
	[204335] = 204150, -- Aegis of Light (Protection Talent)
	[206891] = 207028, -- Intimidated to Inquisition (Protection Honor Talent / Taunt)
	[223819] = 223817, -- Divine Purpose (Retribution Talent)
	[25771] = { -- Forbearance
		   633, -- Lay on Hands
		   642, -- Divine Shield
	      	  1022, -- Blessing of Protection
		204018, -- Blessing of Spellwarding
	},
	[267611] = 85256, -- Righteous Verdict (Retribution Talent)
	[267799] = 267798, -- Execution Sentence (Retribution Talent)
	[276112] = 190784, -- Divine Steed
}, {
	-- Map Aura to Modified Spell(s)
	[183778] = 275779, -- Judgement of Light (Protection Talent)
	[223819] = { -- Divine Purpose (Retribution)
		 53385, -- Divine Storm
		 85256, -- Templar's Verdict
		210191, -- Word of Glory
		267798, -- Execution Sentence
		215661, -- Justicar's Vengeance
	},
})
