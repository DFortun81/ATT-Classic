---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BLACKROCK_MOUNTAIN, {
			n(RARES, {
				n(9046, {	-- Scarshield Quartermaster <Scarshield Legion>
					["description"] = "This mob used to simply be rare and have a limited loot table. He was later repurposed for use with the BWL Attunement Quest Chain. The two items listed below were never available in WoW Classic.",
					["groups"] = {
						un(NEVER_IMPLEMENTED, i(13254)),	-- Astral Guard
						un(NEVER_IMPLEMENTED, i(13248)),	-- Burstshot Harquebus
					},
				}),
				n(8924, {	-- The Behemoth
					i(19259),	-- Two of Warlords
					i(11603),	-- Vilerend Slicer
				}),
			}),
		}),
	}),
};