require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404604Trigger = class("Q1404604Trigger", GadgetActorProxy)
Q1404604Trigger.defaultAlias = "Q1404604Trigger"
local Q14046ClientConfig = require("Quest/Client/Q14046ClientConfig")

local this
local subIDs = Q14046ClientConfig.SubIDs
local datas = Q14046ClientConfig.Datas
local npcs = Q14046ClientConfig.Npcs
local points = Q14046ClientConfig.Points

function Q1404604Trigger:OnPostDataPrepare()
    print("Q1404604Trigger - OnPostDataPrepare")
    this = self
end

function Q1404604Trigger:OnPostComponentPrepare()
    print("Q1404604Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14046)
end

function Q1404604Trigger:TriggerIn()
    print("Q1404604Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1404604)
    actorMgr:GetActor("14046"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("14046"):CallDelayByQuest("1", 3, function(arg1)
            actorMgr:GetActor("14046"):QuestNarratorTask(datas.NarratorWithId_1404602, nil)
            this:DestroySelf()
        end)
    end)
end

function Q1404604Trigger:PreTriggerIn()
    print("Q1404604Trigger - PreTriggerIn")
end

function Q1404604Trigger:LightUpTriggerIn()
    print("Q1404604Trigger - LightUpTriggerIn")
end

function Q1404604Trigger:TriggerOut()
    print("Q1404604Trigger - TriggerOut")
end

return Q1404604Trigger
