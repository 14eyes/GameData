require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41152 = class("Quest41152", QuestActorProxy)
Quest41152.defaultAlias = "Quest41152"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41152:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41152:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115204"] = self.OnSubStart4115204,
        ["4115201"] = self.OnSubStart4115201,
        ["4115202"] = self.OnSubStart4115202,
        ["4115203"] = self.OnSubStart4115203
    }
end

function Quest41152:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115204"] = self.OnSubFinish4115204,
        ["4115201"] = self.OnSubFinish4115201,
        ["4115202"] = self.OnSubFinish4115202,
        ["4115203"] = self.OnSubFinish4115203
    }
end

function Quest41152:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115204"] = self.OnSubFailed4115204,
        ["4115201"] = self.OnSubFailed4115201,
        ["4115202"] = self.OnSubFailed4115202,
        ["4115203"] = self.OnSubFailed4115203
    }
end

function Quest41152:Start()
    print("Start")
end

function Quest41152:OnDestroy()
    print("OnDestroy")
end

function Quest41152:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41152:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41152:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41152:StartCount()
    print("StartCount")
    self:CountDownUIStart(130, 3, 3)
    self:CallDelay(134, self.CountDown)
end

function Quest41152:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115202, 1) == 1 then
        self:SetQuestVar(4115202, 0, 1)
        self:SetQuestVar(4115202, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115202)
    end
end

function Quest41152:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41152:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41152:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc159301Data.alias, 3)
end

function Quest41152:OnSubStart4115204(arg1)
    print("OnSubStart4115204")
end

function Quest41152:OnSubFinish4115204(arg1)
    self:SetNavigationByMainId(41152, true)
end

function Quest41152:OnSubFailed4115204(arg1)
    print("OnSubFailed4115204")
end

function Quest41152:OnSubStart4115201(arg1)
    print("OnSubStart4115201")
    self:CreateQuestNpc(arg1, npcs.Npc159301Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc159301Data.id, 411520501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41152:OnSubFinish4115201(arg1)
    print("OnSubFinish4115201")
    self:ActionSafeCall(self.StartCount)
end

function Quest41152:OnSubFailed4115201(arg1)
    print("OnSubFailed4115201")
end

function Quest41152:OnSubStart4115202(arg1)
    print("OnSubStart4115202")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41152:OnSubFinish4115202(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41152:OnSubFailed4115202(arg1)
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

function Quest41152:OnSubStart4115203(arg1)
    print("OnSubStart4115203")
end

function Quest41152:OnSubFinish4115203(arg1)
    print("OnSubFinish4115203")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41152:OnSubFailed4115203(arg1)
    print("OnSubFailed4115203")
end

return Quest41152
