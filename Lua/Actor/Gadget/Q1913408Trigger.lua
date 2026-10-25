require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1913408Trigger = class("Q1913408Trigger", GadgetActorProxy)
Q1913408Trigger.defaultAlias = "Q1913408Trigger"
local Q19134ClientConfig = require("Quest/Client/Q19134ClientConfig")

local subIDs = Q19134ClientConfig.SubIDs
local npcs = Q19134ClientConfig.Npcs
local datas = Q19134ClientConfig.Datas

function Q1913408Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1913408Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1913408Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19134"):RequestInteraction(npcs.Coop_NingguangCustumeFloralData.alias)
    self:DestroySelf()
end

function Q1913408Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1913408Trigger
