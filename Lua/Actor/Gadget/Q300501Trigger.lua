require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300501Trigger = class("Q300501Trigger", GadgetActorProxy)
Q300501Trigger.defaultAlias = "Q300501Trigger"
local Q3005ClientConfig = require("Quest/Client/Q3005ClientConfig")

local subIDs = Q3005ClientConfig.SubIDs
local npcs = Q3005ClientConfig.Npcs
local datas = Q3005ClientConfig.Datas

function Q300501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300501Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3005"):RequestInteraction(npcs.Npc4156Data.alias)
    self:DestroySelf()
end

function Q300501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300501Trigger
