require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19138Trigger = class("Q19138Trigger", GadgetActorProxy)
Q19138Trigger.defaultAlias = "Q19138Trigger"
local Q19138ClientConfig = require("Quest/Client/Q19138ClientConfig")

local subIDs = Q19138ClientConfig.SubIDs
local npcs = Q19138ClientConfig.Npcs
local datas = Q19138ClientConfig.Datas

function Q19138Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19138Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19138Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19138")
    actor.CallDelay(actor, 2, function(arg1)
        actor:knockdoor1913801()
    end)

    self:DestroySelf()
end

function Q19138Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19138Trigger
