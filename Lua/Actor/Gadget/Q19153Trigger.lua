require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19153Trigger = class("Q19153Trigger", GadgetActorProxy)
Q19153Trigger.defaultAlias = "Q19153Trigger"
local Q19153ClientConfig = require("Quest/Client/Q19153ClientConfig")

local this
local subIDs = Q19153ClientConfig.SubIDs
local npcs = Q19153ClientConfig.Npcs
local datas = Q19153ClientConfig.Datas

function Q19153Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19153Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19153Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19153"):RequestInteraction(npcs.Coop_LaylaData.alias)
    this:DestroySelf()
end

function Q19153Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19153Trigger
