require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089Scary2 = class("Q40089Scary2", GadgetActorProxy)
Q40089Scary2.defaultAlias = "Q40089Scary2"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089Scary2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089Scary2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNpcSimpleTrigger(40089, {npcs.Npc1013Data.alias, npcs.Npc1032Data.alias, npcs.Npc1039Data.alias}, LuaLogicType.LUA_LOGIC_OR, 5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089Scary2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008920)
    actorUtils.FinishQuestID(false, 4008925)
    actorUtils.FinishQuestID(false, 4008930)
    this:DestroySelf()
end

function Q40089Scary2:TriggerOut()
    print("TriggerOut")
end

return Q40089Scary2
