require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19132Trigger = class("Q19132Trigger", GadgetActorProxy)
Q19132Trigger.defaultAlias = "Q19132Trigger"
local Q19132ClientConfig = require("Quest/Client/Q19132ClientConfig")

local subIDs = Q19132ClientConfig.SubIDs
local npcs = Q19132ClientConfig.Npcs
local datas = Q19132ClientConfig.Datas

function Q19132Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19132Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19132Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19132")
    actor.CallDelay(actor, 2, function(arg1)
        actor:knockdoor1913201()
    end)

    self:DestroySelf()
end

function Q19132Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19132Trigger
