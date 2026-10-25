require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310507Trigger = class("Q7310507Trigger", GadgetActorProxy)
Q7310507Trigger.defaultAlias = "Q7310507Trigger"
local Q73105ClientConfig = require("Quest/Client/Q73105ClientConfig")

local subIDs = Q73105ClientConfig.SubIDs
local npcs = Q73105ClientConfig.Npcs
local datas = Q73105ClientConfig.Datas

function Q7310507Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7310507Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310507Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73105"):RequestInteraction(npcs.NPC20088Data.alias)
    self:DestroySelf()
end

function Q7310507Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7310507Trigger
