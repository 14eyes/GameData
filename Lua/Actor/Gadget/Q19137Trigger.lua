require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19137Trigger = class("Q19137Trigger", GadgetActorProxy)
Q19137Trigger.defaultAlias = "Q19137Trigger"
local Q19137ClientConfig = require("Quest/Client/Q19137ClientConfig")

local subIDs = Q19137ClientConfig.SubIDs
local npcs = Q19137ClientConfig.Npcs
local datas = Q19137ClientConfig.Datas

function Q19137Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19137Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19137Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19137"):RequestInteraction(npcs.Npc2145Data.alias)
    self:DestroySelf()
end

function Q19137Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19137Trigger
