require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104003Trigger = class("Q1104003Trigger", GadgetActorProxy)
Q1104003Trigger.defaultAlias = "Q1104003Trigger"
local Q11040ClientConfig = require("Quest/Client/Q11040ClientConfig")

local mainID = Q11040ClientConfig.MainID
local actorAlias = Q11040ClientConfig.ActorAlias
local subIDs = Q11040ClientConfig.SubIDs
local npcs = Q11040ClientConfig.Npcs
local datas = Q11040ClientConfig.Datas

function Q1104003Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104003Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104003Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1104003)
    self:DestroySelf()
end

function Q1104003Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104003Trigger
