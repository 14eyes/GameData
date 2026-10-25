require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910410Trigger = class("Q1910410Trigger", GadgetActorProxy)
Q1910410Trigger.defaultAlias = "Q1910410Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q1910410Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910410Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910410Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19104"):RequestInteraction(npcs.Coop_DionaData.alias)
    self:DestroySelf()
end

function Q1910410Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910410Trigger
