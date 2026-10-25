require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104507Trigger = class("Q1104507Trigger", GadgetActorProxy)
Q1104507Trigger.defaultAlias = "Q1104507Trigger"
local Q11045ClientConfig = require("Quest/Client/Q11045ClientConfig")

local mainID = Q11045ClientConfig.MainID
local actorAlias = Q11045ClientConfig.ActorAlias
local subIDs = Q11045ClientConfig.SubIDs
local npcs = Q11045ClientConfig.Npcs
local gadgets = Q11045ClientConfig.Gadgets
local datas = Q11045ClientConfig.Datas

function Q1104507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104507Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 11045)
end

function Q1104507Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104507Trigger
