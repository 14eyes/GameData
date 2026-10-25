require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41141 = class("Quest41141", QuestActorProxy)
Quest41141.defaultAlias = "Quest41141"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41141:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41141:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114104"] = self.OnSubStart4114104,
        ["4114101"] = self.OnSubStart4114101,
        ["4114102"] = self.OnSubStart4114102,
        ["4114103"] = self.OnSubStart4114103
    }
end

function Quest41141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114104"] = self.OnSubFinish4114104,
        ["4114101"] = self.OnSubFinish4114101,
        ["4114102"] = self.OnSubFinish4114102,
        ["4114103"] = self.OnSubFinish4114103
    }
end

function Quest41141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114104"] = self.OnSubFailed4114104,
        ["4114101"] = self.OnSubFailed4114101,
        ["4114102"] = self.OnSubFailed4114102,
        ["4114103"] = self.OnSubFailed4114103
    }
end

function Quest41141:Start()
    print("Start")
end

function Quest41141:OnDestroy()
    print("OnDestroy")
end

function Quest41141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41141:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41141:StartCount()
    print("StartCount")
    self:CountDownUIStart(90, 3, 3)
    self:CallDelay(94, self.CountDown)
end

function Quest41141:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114102, 1) == 1 then
        self:SetQuestVar(4114102, 0, 1)
        self:SetQuestVar(4114102, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114102)
    end
end

function Quest41141:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41141:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41141:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30027Data.alias, 3)
end

function Quest41141:OnSubStart4114104(arg1)
    print("OnSubStart4114104")
end

function Quest41141:OnSubFinish4114104(arg1)
    self:SetNavigationByMainId(41141, true)
end

function Quest41141:OnSubFailed4114104(arg1)
    print("OnSubFailed4114104")
end

function Quest41141:OnSubStart4114101(arg1)
    print("OnSubStart4114101")
    self:CreateQuestNpc(arg1, npcs.Npc30027Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30027Data.id, 411410501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41141:OnSubFinish4114101(arg1)
    print("OnSubFinish4114101")
    self:ActionSafeCall(self.StartCount)
end

function Quest41141:OnSubFailed4114101(arg1)
    print("OnSubFailed4114101")
end

function Quest41141:OnSubStart4114102(arg1)
    print("OnSubStart4114102")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41141:OnSubFinish4114102(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41141:OnSubFailed4114102(arg1)
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

function Quest41141:OnSubStart4114103(arg1)
    print("OnSubStart4114103")
end

function Quest41141:OnSubFinish4114103(arg1)
    print("OnSubFinish4114103")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41141:OnSubFailed4114103(arg1)
    print("OnSubFailed4114103")
end

return Quest41141
