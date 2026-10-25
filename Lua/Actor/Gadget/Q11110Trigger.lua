require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11110Trigger = class("Q11110Trigger", GadgetActorProxy)
Q11110Trigger.defaultAlias = "Q11110Trigger"
local Q11110ClientConfig = require("Quest/Client/Q11110ClientConfig")

local mainID = Q11110ClientConfig.MainID
local actorAlias = Q11110ClientConfig.ActorAlias
local subIDs = Q11110ClientConfig.SubIDs
local npcs = Q11110ClientConfig.Npcs
local datas = Q11110ClientConfig.Datas

function Q11110Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11110Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11110Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:FinishQuestID(false, 1111002)
    actorMgr:DestroyEntityActor(datas.Q11110Trigger_.alias, 3, false)
    actor:SetQuestVarByMainId(1, 1)
end

function Q11110Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11110Trigger
