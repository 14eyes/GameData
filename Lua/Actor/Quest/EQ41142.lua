require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41142 = class("Quest41142", QuestActorProxy)
Quest41142.defaultAlias = "Quest41142"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41142:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114204"] = self.OnSubStart4114204,
        ["4114201"] = self.OnSubStart4114201,
        ["4114202"] = self.OnSubStart4114202,
        ["4114203"] = self.OnSubStart4114203
    }
end

function Quest41142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114204"] = self.OnSubFinish4114204,
        ["4114201"] = self.OnSubFinish4114201,
        ["4114202"] = self.OnSubFinish4114202,
        ["4114203"] = self.OnSubFinish4114203
    }
end

function Quest41142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114204"] = self.OnSubFailed4114204,
        ["4114201"] = self.OnSubFailed4114201,
        ["4114202"] = self.OnSubFailed4114202,
        ["4114203"] = self.OnSubFailed4114203
    }
end

function Quest41142:Start()
    print("Start")
end

function Quest41142:OnDestroy()
    print("OnDestroy")
end

function Quest41142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41142:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41142:StartCount()
    print("StartCount")
    self:CountDownUIStart(90, 3, 3)
    self:CallDelay(94, self.CountDown)
end

function Quest41142:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114202, 1) == 1 then
        self:SetQuestVar(4114202, 0, 1)
        self:SetQuestVar(4114202, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114202)
    end
end

function Quest41142:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41142:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41142:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30028Data.alias, 3)
end

function Quest41142:OnSubStart4114204(arg1)
    print("OnSubStart4114204")
end

function Quest41142:OnSubFinish4114204(arg1)
    self:SetNavigationByMainId(41142, true)
end

function Quest41142:OnSubFailed4114204(arg1)
    print("OnSubFailed4114204")
end

function Quest41142:OnSubStart4114201(arg1)
    print("OnSubStart4114201")
    self:CreateQuestNpc(arg1, npcs.Npc30028Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30028Data.id, 411420501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41142:OnSubFinish4114201(arg1)
    print("OnSubFinish4114201")
    self:ActionSafeCall(self.StartCount)
end

function Quest41142:OnSubFailed4114201(arg1)
    print("OnSubFailed4114201")
end

function Quest41142:OnSubStart4114202(arg1)
    print("OnSubStart4114202")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41142:OnSubFinish4114202(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41142:OnSubFailed4114202(arg1)
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

function Quest41142:OnSubStart4114203(arg1)
    print("OnSubStart4114203")
end

function Quest41142:OnSubFinish4114203(arg1)
    print("OnSubFinish4114203")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41142:OnSubFailed4114203(arg1)
    print("OnSubFailed4114203")
end

return Quest41142
