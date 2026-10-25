require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19062Trigger = class("Q19062Trigger", GadgetActorProxy)
Q19062Trigger.defaultAlias = "Q19062Trigger"
local Q19062ClientConfig = require("Quest/Client/Q19062ClientConfig")

local mainID = Q19062ClientConfig.MainID
local actorAlias = Q19062ClientConfig.ActorAlias
local subIDs = Q19062ClientConfig.SubIDs
local npcs = Q19062ClientConfig.Npcs
local datas = Q19062ClientConfig.Datas

function Q19062Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19062Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19062Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor.ShowBlackScreen(actor, 0.2, 2, 0.5, function()
        actor:RequestInteraction("Npc143701")
    end, nil, nil)

    self:DestroySelf()
end

function Q19062Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19062Trigger
