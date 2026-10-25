require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300014Trigger = class("Q1300014Trigger", GadgetActorProxy)
Q1300014Trigger.defaultAlias = "Q1300014Trigger"
local Q13000ClientConfig = require("Quest/Client/Q13000ClientConfig")

local subIDs = Q13000ClientConfig.SubIDs
local npcs = Q13000ClientConfig.Npcs
local datas = Q13000ClientConfig.Datas

function Q1300014Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300014Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300014Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13000"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13000")
        actor:CreateQuestNpcById(1300014, npcs.Npc12603Data.id, 2)
        actor:RequestInteraction(npcs.Npc12603Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q1300014Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300014Trigger
