require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120205Trigger = class("Q1120205Trigger", GadgetActorProxy)
Q1120205Trigger.defaultAlias = "Q1120205Trigger"
local Q11202ClientConfig = require("Quest/Client/Q11202ClientConfig")

local mainID = Q11202ClientConfig.MainID
local actorAlias = Q11202ClientConfig.ActorAlias
local subIDs = Q11202ClientConfig.SubIDs
local npcs = Q11202ClientConfig.Npcs
local datas = Q11202ClientConfig.Datas

function Q1120205Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120205Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.571253, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120205Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteractionForceAlias("Npc1029911202")
end

function Q1120205Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120205Trigger
