require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120110Trigger = class("Q1120110Trigger", GadgetActorProxy)
Q1120110Trigger.defaultAlias = "Q1120110Trigger"
local Q11201ClientConfig = require("Quest/Client/Q11201ClientConfig")

local mainID = Q11201ClientConfig.MainID
local actorAlias = Q11201ClientConfig.ActorAlias
local subIDs = Q11201ClientConfig.SubIDs
local npcs = Q11201ClientConfig.Npcs
local datas = Q11201ClientConfig.Datas

function Q1120110Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120110Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8.63036, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120110Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteractionForceAlias("Npc1023311201")
end

function Q1120110Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120110Trigger
