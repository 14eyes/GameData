require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73227 = class("Quest73227", QuestActorProxy)
Quest73227.defaultAlias = "Quest73227"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73227:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73227:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7322703"] = self.OnSubStart7322703,
        ["7322701"] = self.OnSubStart7322701,
        ["7322702"] = self.OnSubStart7322702
    }
end

function Quest73227:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7322703"] = self.OnSubFinish7322703,
        ["7322701"] = self.OnSubFinish7322701,
        ["7322702"] = self.OnSubFinish7322702
    }
end

function Quest73227:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73227:Start()
    print("Start")
end

function Quest73227:OnDestroy()
    print("OnDestroy")
end

function Quest73227:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73227:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73227:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73227:OnSubStart7322703(arg1)
    print("OnSubStart7322703")
    actorMgr:CreateActorWithPos("Q7322703Trigger1", "Actor/Gadget/Q7322703Trigger1", 70900002, 0, {x = -216.985, y = 204.114, z = 3658.705}, {x = 0.0, y = 32.446, z = 0.0}, true, false, 3)
end

function Quest73227:OnSubFinish7322703(arg1)
    print("OnSubFinish7322703")
end

function Quest73227:OnSubStart7322701(arg1)
    print("OnSubStart7322701")
    actorMgr:CreateActorWithPos("Q73227Trigger", "Actor/Gadget/Q73227Trigger", 70900002, 0, {x = -214.881, y = 210.28, z = 3657.658}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73227:OnSubFinish7322701(arg1)
    print("OnSubFinish7322701")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73227)
end

function Quest73227:OnSubStart7322702(arg1)
    print("OnSubStart7322702")
    self:CallDelay(7, function(arg1)
        actorUtils.FinishQuestID(false, 7322702)
        print("FinishQuestID 7322702")
    end)

    print("StartDelayProcess")
end

function Quest73227:OnSubFinish7322702(arg1)
    print("OnSubFinish7322702")
end

return Quest73227
