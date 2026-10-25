require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2205002Trigger = class("Q2205002Trigger", GadgetActorProxy)
Q2205002Trigger.defaultAlias = "Q2205002Trigger"
local Q22050ClientConfig = require("Quest/Client/Q22050ClientConfig")

local subIDs = Q22050ClientConfig.SubIDs
local npcs = Q22050ClientConfig.Npcs

function Q2205002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2205002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3.5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2205002Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("22050"):ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        local actor = actorMgr:GetActor("22050")
        actor:CreateQuestNpcById(2205002, npcs.Npc3189Data.id, 0)
        actor:RequestInteraction(npcs.Npc3189Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q2205002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2205002Trigger
