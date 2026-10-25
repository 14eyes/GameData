require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104001Trigger = class("Q1104001Trigger", GadgetActorProxy)
Q1104001Trigger.defaultAlias = "Q1104001Trigger"
local Q11040ClientConfig = require("Quest/Client/Q11040ClientConfig")

local mainID = Q11040ClientConfig.MainID
local actorAlias = Q11040ClientConfig.ActorAlias
local subIDs = Q11040ClientConfig.SubIDs
local npcs = Q11040ClientConfig.Npcs
local datas = Q11040ClientConfig.Datas

function Q1104001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1104001)
    self:DestroySelf()
end

function Q1104001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104001Trigger
