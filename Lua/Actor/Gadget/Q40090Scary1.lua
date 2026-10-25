require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40090Scary1 = class("Q40090Scary1", GadgetActorProxy)
Q40090Scary1.defaultAlias = "Q40090Scary1"
local Q40090ClientConfig = require("Quest/Client/Q40090ClientConfig")

local this
local subIDs = Q40090ClientConfig.SubIDs
local npcs = Q40090ClientConfig.Npcs
local datas = Q40090ClientConfig.Datas

function Q40090Scary1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40090Scary1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNpcSimpleTrigger(40090, {npcs.Npc1033Data.alias, npcs.Npc1035Data.alias, npcs.Npc1040Data.alias}, LuaLogicType.LUA_LOGIC_OR, 10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40090Scary1:TriggerIn()
    print("TriggerIn")
    if datas.NarratorTag == 0 then
        actorUtils.FinishQuestID(false, 4009013)
        actorUtils.FinishQuestID(false, 4009022)
        actorUtils.FinishQuestID(false, 4009031)
        self:DestroySelf()
    end
end

function Q40090Scary1:TriggerOut()
    print("TriggerOut")
end

return Q40090Scary1
