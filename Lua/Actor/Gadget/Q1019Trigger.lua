require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1019Trigger = class("Q1019Trigger", GadgetActorProxy)
Q1019Trigger.defaultAlias = "Q1019Trigger"
local Q1019ClientConfig = require("Quest/Client/Q1019ClientConfig")

local subIDs = Q1019ClientConfig.SubIDs
local npcs = Q1019ClientConfig.Npcs
local datas = Q1019ClientConfig.Datas

function Q1019Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1019Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1019Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1019"):RequestInteraction(npcs.Npc1030Data.alias)
    self:DestroySelf()
end

function Q1019Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1019Trigger
