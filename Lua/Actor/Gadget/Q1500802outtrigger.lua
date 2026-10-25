require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500802outtrigger = class("Q1500802outtrigger", GadgetActorProxy)
Q1500802outtrigger.defaultAlias = "Q1500802outtrigger"
local Q15008ClientConfig = require("Quest/Client/Q15008ClientConfig")

local this
local subIDs = Q15008ClientConfig.SubIDs
local datas = Q15008ClientConfig.Datas
local npcs = Q15008ClientConfig.Npcs
local points = Q15008ClientConfig.Points

function Q1500802outtrigger:OnPostDataPrepare()
    print("Q1500802outtrigger - OnPostDataPrepare")
    this = self
end

function Q1500802outtrigger:OnPostComponentPrepare()
    print("Q1500802outtrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(58, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15008)
end

function Q1500802outtrigger:TriggerIn()
    print("Q1500802outtrigger - TriggerIn")
    actorMgr:GetActor("15008"):EnablePlayerInputByQuest(false)
    actorMgr:GetActor("15008"):QuestNarratorTask(datas.NarratorWithId_1500812, function(arg1)
        actorMgr:GetActor("15008"):TransmitPlayerByQuestId(1500802, 7, function(arg1)
            actorMgr:GetActor("15008"):EnablePlayerInputByQuest(true)
        end, nil, nil)
    end)

    actorMgr:GetActor("15008"):CallDelayByQuest("1500802", 5, function(arg1)
        actorMgr:GetActor("15008"):EnablePlayerInputByQuest(true)
    end)
end

function Q1500802outtrigger:PreTriggerIn()
    print("Q1500802outtrigger - PreTriggerIn")
end

function Q1500802outtrigger:LightUpTriggerIn()
    print("Q1500802outtrigger - LightUpTriggerIn")
end

function Q1500802outtrigger:TriggerOut()
    print("Q1500802outtrigger - TriggerOut")
end

return Q1500802outtrigger
