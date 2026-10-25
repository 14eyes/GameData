require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41145 = class("Quest41145", QuestActorProxy)
Quest41145.defaultAlias = "Quest41145"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41145:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41145:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114504"] = self.OnSubStart4114504,
        ["4114501"] = self.OnSubStart4114501,
        ["4114502"] = self.OnSubStart4114502,
        ["4114503"] = self.OnSubStart4114503
    }
end

function Quest41145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114504"] = self.OnSubFinish4114504,
        ["4114501"] = self.OnSubFinish4114501,
        ["4114502"] = self.OnSubFinish4114502,
        ["4114503"] = self.OnSubFinish4114503
    }
end

function Quest41145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114504"] = self.OnSubFailed4114504,
        ["4114501"] = self.OnSubFailed4114501,
        ["4114502"] = self.OnSubFailed4114502,
        ["4114503"] = self.OnSubFailed4114503
    }
end

function Quest41145:Start()
    print("Start")
end

function Quest41145:OnDestroy()
    print("OnDestroy")
end

function Quest41145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41145:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41145:StartCount()
    print("StartCount")
    self:CountDownUIStart(120, 3, 3)
    self:CallDelay(124, self.CountDown)
end

function Quest41145:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114502, 1) == 1 then
        self:SetQuestVar(4114502, 0, 1)
        self:SetQuestVar(4114502, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114502)
    end
end

function Quest41145:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41145:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41145:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30028Data.alias, 3)
end

function Quest41145:OnSubStart4114504(arg1)
    print("OnSubStart4114504")
end

function Quest41145:OnSubFinish4114504(arg1)
    self:SetNavigationByMainId(41145, true)
end

function Quest41145:OnSubFailed4114504(arg1)
    print("OnSubFailed4114504")
end

function Quest41145:OnSubStart4114501(arg1)
    print("OnSubStart4114501")
    self:CreateQuestNpc(arg1, npcs.Npc30028Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30028Data.id, 411450501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41145:OnSubFinish4114501(arg1)
    print("OnSubFinish4114501")
    self:ActionSafeCall(self.StartCount)
end

function Quest41145:OnSubFailed4114501(arg1)
    print("OnSubFailed4114501")
end

function Quest41145:OnSubStart4114502(arg1)
    print("OnSubStart4114502")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41145:OnSubFinish4114502(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41145:OnSubFailed4114502(arg1)
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

function Quest41145:OnSubStart4114503(arg1)
    print("OnSubStart4114503")
end

function Quest41145:OnSubFinish4114503(arg1)
    print("OnSubFinish4114503")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41145:OnSubFailed4114503(arg1)
    print("OnSubFailed4114503")
end

return Quest41145
