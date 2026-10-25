require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910409Trigger = class("Q1910409Trigger", GadgetActorProxy)
Q1910409Trigger.defaultAlias = "Q1910409Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q1910409Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910409Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910409Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19104"):RequestInteraction(npcs.Npc153901Data.alias)
    self:DestroySelf()
end

function Q1910409Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910409Trigger
