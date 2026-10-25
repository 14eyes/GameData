require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41156 = class("Quest41156", QuestActorProxy)
Quest41156.defaultAlias = "Quest41156"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41156:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41156:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115604"] = self.OnSubStart4115604,
        ["4115601"] = self.OnSubStart4115601,
        ["4115602"] = self.OnSubStart4115602,
        ["4115603"] = self.OnSubStart4115603
    }
end

function Quest41156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115604"] = self.OnSubFinish4115604,
        ["4115601"] = self.OnSubFinish4115601,
        ["4115602"] = self.OnSubFinish4115602,
        ["4115603"] = self.OnSubFinish4115603
    }
end

function Quest41156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115604"] = self.OnSubFailed4115604,
        ["4115601"] = self.OnSubFailed4115601,
        ["4115602"] = self.OnSubFailed4115602,
        ["4115603"] = self.OnSubFailed4115603
    }
end

function Quest41156:Start()
    print("Start")
end

function Quest41156:OnDestroy()
    print("OnDestroy")
end

function Quest41156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41156:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41156:StartCount()
    print("StartCount")
    self:CountDownUIStart(85, 3, 3)
    self:CallDelay(89, self.CountDown)
end

function Quest41156:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115602, 1) == 1 then
        self:SetQuestVar(4115602, 0, 1)
        self:SetQuestVar(4115602, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115602)
    end
end

function Quest41156:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41156:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41156:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30027Data.alias, 3)
end

function Quest41156:OnSubStart4115604(arg1)
    print("OnSubStart4115604")
end

function Quest41156:OnSubFinish4115604(arg1)
    self:SetNavigationByMainId(41156, true)
end

function Quest41156:OnSubFailed4115604(arg1)
    print("OnSubFailed4115604")
end

function Quest41156:OnSubStart4115601(arg1)
    print("OnSubStart4115601")
    self:CreateQuestNpc(arg1, npcs.Npc30027Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30027Data.id, 411560501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41156:OnSubFinish4115601(arg1)
    print("OnSubFinish4115601")
    self:ActionSafeCall(self.StartCount)
end

function Quest41156:OnSubFailed4115601(arg1)
    print("OnSubFailed4115601")
end

function Quest41156:OnSubStart4115602(arg1)
    print("OnSubStart4115602")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41156:OnSubFinish4115602(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41156:OnSubFailed4115602(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    print("QuestFailType:" .. questVar)
    if questVar == 1 then
        self:ShowCountDownReminder()
    elseif questVar == 0 then
        self:ShowWatcherFailReminder()
    end
end

function Quest41156:OnSubStart4115603(arg1)
    print("OnSubStart4115603")
end

function Quest41156:OnSubFinish4115603(arg1)
    print("OnSubFinish4115603")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41156:OnSubFailed4115603(arg1)
    print("OnSubFailed4115603")
end

return Quest41156
