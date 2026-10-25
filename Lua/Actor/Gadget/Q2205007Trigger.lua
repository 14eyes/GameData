require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2205007Trigger = class("Q2205007Trigger", GadgetActorProxy)
Q2205007Trigger.defaultAlias = "Q2205007Trigger"
local Q22050ClientConfig = require("Quest/Client/Q22050ClientConfig")

local subIDs = Q22050ClientConfig.SubIDs
local npcs = Q22050ClientConfig.Npcs

function Q2205007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2205007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2205007Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("22050"):ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        local actor = actorMgr:GetActor("22050")
        actor:CreateQuestNpcById(2205007, npcs.Npc3189Data.id, 0)
        actor:RequestInteraction(npcs.Npc3189Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q2205007Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2205007Trigger
