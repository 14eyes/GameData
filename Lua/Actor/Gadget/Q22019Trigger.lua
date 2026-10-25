require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22019Trigger = class("Q22019Trigger", GadgetActorProxy)
Q22019Trigger.defaultAlias = "Q22019Trigger"
local Q22019ClientConfig = require("Quest/Client/Q22019ClientConfig")

local subIDs = Q22019ClientConfig.SubIDs
local npcs = Q22019ClientConfig.Npcs

function Q22019Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22019Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22019Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("22019"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("22019")
        actor:CreateQuestNpcById(2201906, npcs.Npc3042Data.id, 0)
        actor:RequestInteraction(npcs.Npc3041Data.alias)
    end, nil, nil, "")
end

function Q22019Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q22019Trigger
