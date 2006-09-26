local combat = createCombatObject(COMBAT_TYPE_HITPOINTS)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBATPARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0.6, -30, 1.2, 0)

local arr = {
{0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 3, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 0, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
end
