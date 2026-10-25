require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002814_Trigger = class("Q4002814_Trigger", GadgetActorProxy)
Q4002814_Trigger.defaultAlias = "Q4002814_Trigger"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q4002814_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002814_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002814_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40028")
    actor:CreateQuestNpcById(4002814, npcs.Npc1018Data.id, 1)
    actor:RequestInteraction(npcs.Npc1018Data.alias)
    self:DestroySelf()
end

function Q4002814_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002814_Trigger
