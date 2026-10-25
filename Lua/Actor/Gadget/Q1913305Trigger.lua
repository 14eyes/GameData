require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1913305Trigger = class("Q1913305Trigger", GadgetActorProxy)
Q1913305Trigger.defaultAlias = "Q1913305Trigger"
local Q19133ClientConfig = require("Quest/Client/Q19133ClientConfig")

local subIDs = Q19133ClientConfig.SubIDs
local npcs = Q19133ClientConfig.Npcs

function Q1913305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1913305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1913305Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19133"):ShowBlackScreen(0.5, 1.2, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19133")
        actor:CreateQuestNpcById(1913305, npcs.Coop_NingguangCustumeFloralData.id, 1)
        actor:RequestCoopInteractionFromSubStartPoint(102701, 1913305)
        actor:RequestInteraction(npcs.Coop_NingguangCustumeFloralData.alias)
    end, nil, nil, "", false, true)
end

function Q1913305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1913305Trigger
