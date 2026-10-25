require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2019Trigger = class("Q2019Trigger", GadgetActorProxy)
Q2019Trigger.defaultAlias = "Q2019Trigger"
local Q2019ClientConfig = require("Quest/Client/Q2019ClientConfig")

local subIDs = Q2019ClientConfig.SubIDs
local npcs = Q2019ClientConfig.Npcs

function Q2019Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2019Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2019Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2019"):RequestInteraction(npcs.Npc1017Data.alias)
    self:DestroySelf()
end

function Q2019Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2019Trigger
