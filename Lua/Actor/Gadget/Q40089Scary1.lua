require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089Scary1 = class("Q40089Scary1", GadgetActorProxy)
Q40089Scary1.defaultAlias = "Q40089Scary1"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089Scary1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089Scary1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNpcSimpleTrigger(40089, {npcs.Npc1013Data.alias, npcs.Npc1032Data.alias, npcs.Npc1039Data.alias}, LuaLogicType.LUA_LOGIC_OR, 10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089Scary1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008919)
    actorUtils.FinishQuestID(false, 4008924)
    actorUtils.FinishQuestID(false, 4008929)
    this:DestroySelf()
end

function Q40089Scary1:TriggerOut()
    print("TriggerOut")
end

return Q40089Scary1
