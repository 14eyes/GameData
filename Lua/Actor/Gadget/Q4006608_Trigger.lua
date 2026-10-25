require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006608_Trigger = class("Q4006608_Trigger", GadgetActorProxy)
Q4006608_Trigger.defaultAlias = "Q4006608_Trigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006608_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006608_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(30.01947, 6.689727, 6.821249, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006608_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40066")
    actor:CreateQuestNpcById(4006608, npcs.Npc1042Data.id, 1)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006608_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006608_Trigger
