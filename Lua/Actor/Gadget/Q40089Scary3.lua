require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089Scary3 = class("Q40089Scary3", GadgetActorProxy)
Q40089Scary3.defaultAlias = "Q40089Scary3"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089Scary3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089Scary3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNpcSimpleTrigger(40089, {npcs.Npc1013Data.alias, npcs.Npc1032Data.alias, npcs.Npc1039Data.alias}, LuaLogicType.LUA_LOGIC_OR, 5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089Scary3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008921)
    actorUtils.FinishQuestID(false, 4008926)
    actorUtils.FinishQuestID(false, 4008931)
    this:DestroySelf()
end

function Q40089Scary3:TriggerOut()
    print("TriggerOut")
end

return Q40089Scary3
