local current_mod = SMODS.current_mod
local mod_path = SMODS.current_mod.path

SMODS.Back{
    key = "oops_all_6s",
    atlas = 'oopsall6sdeck', 
    pos = { x = 0, y = 0 }, 
    config = { joker_slot = 5 },
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
               G.GAME.probabilities.normal = G.GAME.probabilities.normal * 2
                return true
            end,
        }))
    end,
}

SMODS.Atlas({
	key = "oopsall6sdeck",
	atlas_table = "ASSET_ATLAS",
	path = "oopsall6sdeck.png",
	px = 71,
	py = 95
})