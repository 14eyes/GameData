require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216206Trigger = class("Q7216206Trigger", GadgetActorProxy)
Q7216206Trigger.defaultAlias = "Q7216206Trigger"
local Q72162ClientConfig = require("Quest/Client/Q72162ClientConfig")

local subIDs = Q72162ClientConfig.SubIDs
local npcs = Q72162ClientConfig.Npcs
local datas = Q72162ClientConfig.Datas

function Q7216206Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216206Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216206Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72162"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("72162"):CreateQuestNpcById(7216206, npcs.Npc3063Data.id, 1)
    end, function(arg1)
        actorMgr:GetActor("72162"):FinishQuestID(false, 7216206)
    end, nil, "", false, true)

    self:DestroySelf()
end

function Q7216206Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216206Trigger
