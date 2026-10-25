require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q190530201Trigger = class("Q190530201Trigger", GadgetActorProxy)
Q190530201Trigger.defaultAlias = "Q190530201Trigger"
local Q19053ClientConfig = require("Quest/Client/Q19053ClientConfig")

local subIDs = Q19053ClientConfig.SubIDs
local npcs = Q19053ClientConfig.Npcs
local datas = Q19053ClientConfig.Datas

function Q190530201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q190530201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q190530201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19053"):RequestInteraction(npcs.Npc12219Data.alias)
    self:DestroySelf()
end

function Q190530201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q190530201Trigger
