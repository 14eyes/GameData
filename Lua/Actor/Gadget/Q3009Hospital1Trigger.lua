require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009Hospital1Trigger = class("Q3009Hospital1Trigger", GadgetActorProxy)
Q3009Hospital1Trigger.defaultAlias = "Q3009Hospital1Trigger"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009Hospital1Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009Hospital1Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009Hospital1Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3009"):RequestInteraction("Npc1056")
    self:DestroySelf()
end

function Q3009Hospital1Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3009Hospital1Trigger
