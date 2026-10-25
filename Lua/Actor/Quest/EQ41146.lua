require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41146 = class("Quest41146", QuestActorProxy)
Quest41146.defaultAlias = "Quest41146"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41146:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41146:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114604"] = self.OnSubStart4114604,
        ["4114601"] = self.OnSubStart4114601,
        ["4114602"] = self.OnSubStart4114602,
        ["4114603"] = self.OnSubStart4114603
    }
end

function Quest41146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114604"] = self.OnSubFinish4114604,
        ["4114601"] = self.OnSubFinish4114601,
        ["4114602"] = self.OnSubFinish4114602,
        ["4114603"] = self.OnSubFinish4114603
    }
end

function Quest41146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114604"] = self.OnSubFailed4114604,
        ["4114601"] = self.OnSubFailed4114601,
        ["4114602"] = self.OnSubFailed4114602,
        ["4114603"] = self.OnSubFailed4114603
    }
end

function Quest41146:Start()
    print("Start")
end

function Quest41146:OnDestroy()
    print("OnDestroy")
end

function Quest41146:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41146:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41146:StartCount()
    print("StartCount")
    self:CountDownUIStart(95, 3, 3)
    self:CallDelay(99, self.CountDown)
end

function Quest41146:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114602, 1) == 1 then
        self:SetQuestVar(4114602, 0, 1)
        self:SetQuestVar(4114602, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114602)
    end
end

function Quest41146:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41146:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41146:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc157901Data.alias, 3)
end

function Quest41146:OnSubStart4114604(arg1)
    print("OnSubStart4114604")
end

function Quest41146:OnSubFinish4114604(arg1)
    self:SetNavigationByMainId(41146, true)
end

function Quest41146:OnSubFailed4114604(arg1)
    print("OnSubFailed4114604")
end

function Quest41146:OnSubStart4114601(arg1)
    print("OnSubStart4114601")
    self:CreateQuestNpc(arg1, npcs.Npc157901Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc157901Data.id, 411460501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41146:OnSubFinish4114601(arg1)
    print("OnSubFinish4114601")
    self:ActionSafeCall(self.StartCount)
end

function Quest41146:OnSubFailed4114601(arg1)
    print("OnSubFailed4114601")
end

function Quest41146:OnSubStart4114602(arg1)
    print("OnSubStart4114602")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41146:OnSubFinish4114602(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41146:OnSubFailed4114602(arg1)
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

function Quest41146:OnSubStart4114603(arg1)
    print("OnSubStart4114603")
end

function Quest41146:OnSubFinish4114603(arg1)
    print("OnSubFinish4114603")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41146:OnSubFailed4114603(arg1)
    print("OnSubFailed4114603")
end

return Quest41146
