require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300207Trigger = class("Q1300207Trigger", GadgetActorProxy)
Q1300207Trigger.defaultAlias = "Q1300207Trigger"
local Q13002ClientConfig = require("Quest/Client/Q13002ClientConfig")

local subIDs = Q13002ClientConfig.SubIDs
local npcs = Q13002ClientConfig.Npcs
local datas = Q13002ClientConfig.Datas

function Q1300207Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300207Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300207Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13002"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13002")
        actor:CreateQuestNpcById(1300207, npcs.Npc1050Data.id, 1)
        actor:RequestInteraction(npcs.Npc1050Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q1300207Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300207Trigger
