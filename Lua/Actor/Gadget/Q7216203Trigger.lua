require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216203Trigger = class("Q7216203Trigger", GadgetActorProxy)
Q7216203Trigger.defaultAlias = "Q7216203Trigger"
local Q72162ClientConfig = require("Quest/Client/Q72162ClientConfig")

local subIDs = Q72162ClientConfig.SubIDs
local npcs = Q72162ClientConfig.Npcs
local datas = Q72162ClientConfig.Datas

function Q7216203Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216203Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216203Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72162"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("72162"):CreateQuestNpcById(7216203, npcs.Npc3063Data.id, 1)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q7216203Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7216203Trigger
