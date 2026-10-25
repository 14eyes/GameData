require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200701Trigger = class("Q200701Trigger", GadgetActorProxy)
Q200701Trigger.defaultAlias = "Q200701Trigger"
local Q2007ClientConfig = require("Quest/Client/Q2007ClientConfig")

local mainID = Q2007ClientConfig.MainID
local actorAlias = Q2007ClientConfig.ActorAlias
local subIDs = Q2007ClientConfig.SubIDs
local npcs = Q2007ClientConfig.Npcs
local datas = Q2007ClientConfig.Datas

function Q200701Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200701Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200701Trigger:TriggerIn()
    print("TriggerIn")
    self:ShowBlackScreen(0.5, 4, 0, function(arg1)
        local actor = actorMgr:GetActor(actorAlias)
        actor:CreateQuestNpcById(200701, npcs.PaimonData.id, 0)
        actor:RequestInteraction(npcs.PaimonData.alias)
        arg1:DestroySelf()
    end, nil, task, "QUEST_Black_Q1200010")
end

function Q200701Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200701Trigger
