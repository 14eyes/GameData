require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41147 = class("Quest41147", QuestActorProxy)
Quest41147.defaultAlias = "Quest41147"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41147:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41147:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114704"] = self.OnSubStart4114704,
        ["4114701"] = self.OnSubStart4114701,
        ["4114702"] = self.OnSubStart4114702,
        ["4114703"] = self.OnSubStart4114703
    }
end

function Quest41147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114704"] = self.OnSubFinish4114704,
        ["4114701"] = self.OnSubFinish4114701,
        ["4114702"] = self.OnSubFinish4114702,
        ["4114703"] = self.OnSubFinish4114703
    }
end

function Quest41147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114704"] = self.OnSubFailed4114704,
        ["4114701"] = self.OnSubFailed4114701,
        ["4114702"] = self.OnSubFailed4114702,
        ["4114703"] = self.OnSubFailed4114703
    }
end

function Quest41147:Start()
    print("Start")
end

function Quest41147:OnDestroy()
    print("OnDestroy")
end

function Quest41147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41147:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41147:StartCount()
    print("StartCount")
    self:CountDownUIStart(90, 3, 3)
    self:CallDelay(94, self.CountDown)
end

function Quest41147:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114702, 1) == 1 then
        self:SetQuestVar(4114702, 0, 1)
        self:SetQuestVar(4114702, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114702)
    end
end

function Quest41147:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41147:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41147:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30028Data.alias, 3)
end

function Quest41147:OnSubStart4114704(arg1)
    print("OnSubStart4114704")
end

function Quest41147:OnSubFinish4114704(arg1)
    self:SetNavigationByMainId(41147, true)
end

function Quest41147:OnSubFailed4114704(arg1)
    print("OnSubFailed4114704")
end

function Quest41147:OnSubStart4114701(arg1)
    print("OnSubStart4114701")
    self:CreateQuestNpc(arg1, npcs.Npc30028Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30028Data.id, 411470501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41147:OnSubFinish4114701(arg1)
    print("OnSubFinish4114701")
    self:ActionSafeCall(self.StartCount)
end

function Quest41147:OnSubFailed4114701(arg1)
    print("OnSubFailed4114701")
end

function Quest41147:OnSubStart4114702(arg1)
    print("OnSubStart4114702")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41147:OnSubFinish4114702(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41147:OnSubFailed4114702(arg1)
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

function Quest41147:OnSubStart4114703(arg1)
    print("OnSubStart4114703")
end

function Quest41147:OnSubFinish4114703(arg1)
    print("OnSubFinish4114703")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41147:OnSubFailed4114703(arg1)
    print("OnSubFailed4114703")
end

return Quest41147
