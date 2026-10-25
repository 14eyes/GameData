require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910701Trigger = class("Q1910701Trigger", GadgetActorProxy)
Q1910701Trigger.defaultAlias = "Q1910701Trigger"
local Q19107ClientConfig = require("Quest/Client/Q19107ClientConfig")

local subIDs = Q19107ClientConfig.SubIDs
local npcs = Q19107ClientConfig.Npcs

function Q1910701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910701Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19107"):RequestInteraction(npcs.Coop_DionaData.alias)
    self:DestroySelf()
end

function Q1910701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910701Trigger
