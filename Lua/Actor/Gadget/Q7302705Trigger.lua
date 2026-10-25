require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7302705Trigger = class("Q7302705Trigger", GadgetActorProxy)
Q7302705Trigger.defaultAlias = "Q7302705Trigger"
local Q73027ClientConfig = require("Quest/Client/Q73027ClientConfig")

local subIDs = Q73027ClientConfig.SubIDs
local npcs = Q73027ClientConfig.Npcs
local datas = Q73027ClientConfig.Datas

function Q7302705Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7302705Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7302705Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73027"):PlayCutsceneIndex(7302705, function(arg1)
        actorMgr:GetActor("73027"):RequestInteraction(npcs.Npc20645Data.alias)
    end, nil, nil, false)

    self:DestroySelf()
end

function Q7302705Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7302705Trigger
