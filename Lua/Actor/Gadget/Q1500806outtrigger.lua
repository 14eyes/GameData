require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500806outtrigger = class("Q1500806outtrigger", GadgetActorProxy)
Q1500806outtrigger.defaultAlias = "Q1500806outtrigger"
local Q15008ClientConfig = require("Quest/Client/Q15008ClientConfig")

local this
local subIDs = Q15008ClientConfig.SubIDs
local datas = Q15008ClientConfig.Datas
local npcs = Q15008ClientConfig.Npcs
local points = Q15008ClientConfig.Points

function Q1500806outtrigger:OnPostDataPrepare()
    print("Q1500806outtrigger - OnPostDataPrepare")
    this = self
end

function Q1500806outtrigger:OnPostComponentPrepare()
    print("Q1500806outtrigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "Natlan_Quest_fail_1500806", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 15008)
end

function Q1500806outtrigger:TriggerIn()
    print("Q1500806outtrigger - TriggerIn")
    local questVar = actorMgr:GetActor("15008"):GetQuestVar(1500806, 4)
    if questVar == 0 then
        actorMgr:GetActor("15008"):EnablePlayerInputByQuest(false)
        actorMgr:GetActor("15008"):QuestNarratorTask(datas.NarratorWithId_1500804, function(arg1)
            actorMgr:GetActor("15008"):TransmitPlayerByQuestId(1500806, 7, function(arg1)
                actorMgr:GetActor("15008"):EnablePlayerInputByQuest(true)
            end, nil, nil)
        end)

        actorMgr:GetActor("15008"):CallDelayByQuest("1500806", 5, function(arg1)
            actorMgr:GetActor("15008"):EnablePlayerInputByQuest(true)
        end)
    elseif questVar == 1 then
        actorMgr:GetActor("15008"):TransmitPlayerByQuestId(1500806, 7, nil, function(arg1)
            actorMgr:GetActor("15008"):SetQuestVarByMainId(4, 0)
        end, nil)
    end
end

function Q1500806outtrigger:PreTriggerIn()
    print("Q1500806outtrigger - PreTriggerIn")
end

function Q1500806outtrigger:LightUpTriggerIn()
    print("Q1500806outtrigger - LightUpTriggerIn")
end

function Q1500806outtrigger:TriggerOut()
    print("Q1500806outtrigger - TriggerOut")
end

return Q1500806outtrigger
