require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006812_Trigger = class("Q4006812_Trigger", GadgetActorProxy)
Q4006812_Trigger.defaultAlias = "Q4006812_Trigger"
local Q40068ClientConfig = require("Quest/Client/Q40068ClientConfig")

local subIDs = Q40068ClientConfig.SubIDs
local npcs = Q40068ClientConfig.Npcs
local datas = Q40068ClientConfig.Datas

function Q4006812_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006812_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(31.01688, 17.93998, 8.071478, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006812_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40068")
    actor:CreateQuestNpcById(4006812, npcs.Npc1032Data.id, 3)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006812_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006812_Trigger
