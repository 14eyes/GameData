require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40090Scary4 = class("Q40090Scary4", GadgetActorProxy)
Q40090Scary4.defaultAlias = "Q40090Scary4"
local Q40090ClientConfig = require("Quest/Client/Q40090ClientConfig")

local this
local subIDs = Q40090ClientConfig.SubIDs
local npcs = Q40090ClientConfig.Npcs
local datas = Q40090ClientConfig.Datas

function Q40090Scary4:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40090Scary4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddNpcSimpleTrigger(40090, {npcs.Npc1033Data.alias, npcs.Npc1035Data.alias, npcs.Npc1040Data.alias}, LuaLogicType.LUA_LOGIC_OR, 8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40090Scary4:TriggerIn()
    print("TriggerIn")
    if datas.NarratorTag == 0 then
        actorUtils.FinishQuestID(false, 4009016)
        actorUtils.FinishQuestID(false, 4009025)
        actorUtils.FinishQuestID(false, 4009034)
        self:DestroySelf()
    end
end

function Q40090Scary4:TriggerOut()
    print("TriggerOut")
end

return Q40090Scary4
