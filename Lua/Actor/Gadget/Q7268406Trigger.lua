require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7268406Trigger = class("Q7268406Trigger", GadgetActorProxy)
Q7268406Trigger.defaultAlias = "Q7268406Trigger"
local Q72684ClientConfig = require("Quest/Client/Q72684ClientConfig")

local subIDs = Q72684ClientConfig.SubIDs
local npcs = Q72684ClientConfig.Npcs
local datas = Q72684ClientConfig.Datas

function Q7268406Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7268406Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(22.70838, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7268406Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72684"):CallDelay(1, function(arg1)
        actorMgr:GetActor("72684"):RequestInteraction(npcs.Npc1044Data.alias)
    end)

    self:DestroySelf()
end

function Q7268406Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7268406Trigger
