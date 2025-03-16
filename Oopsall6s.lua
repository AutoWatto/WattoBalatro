local current_mod = SMODS.current_mod
local mod_path = SMODS.current_mod.path

SMODS.Back{
    key = "oopsall6s",
    atlas = 'oopsall6sdeck',
    pos = { x = 0, y = 0 },
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.probabilities.normal = G.GAME.probabilities.normal * 2
                return true
            end,
        }))
    end,
}
if CardSleeves then
    CardSleeves.Sleeve {
        key = "oopsall6s",
        atlas = 'oopsall6sdeck',
        pos = { x = 1, y = 0 },
        apply = function(self)
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.probabilities.normal = G.GAME.probabilities.normal * 2
                    return true
                end,
            }))
        end,
    }
end

SMODS.Atlas({
	key = "oopsall6sdeck",
	atlas_table = "ASSET_ATLAS",
	path = "oopsall6sdeck.png",
	px = 71,
	py = 95
})