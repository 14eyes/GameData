require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41150 = class("Quest41150", QuestActorProxy)
Quest41150.defaultAlias = "Quest41150"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41150:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41150:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115004"] = self.OnSubStart4115004,
        ["4115001"] = self.OnSubStart4115001,
        ["4115002"] = self.OnSubStart4115002,
        ["4115003"] = self.OnSubStart4115003
    }
end

function Quest41150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115004"] = self.OnSubFinish4115004,
        ["4115001"] = self.OnSubFinish4115001,
        ["4115002"] = self.OnSubFinish4115002,
        ["4115003"] = self.OnSubFinish4115003
    }
end

function Quest41150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115004"] = self.OnSubFailed4115004,
        ["4115001"] = self.OnSubFailed4115001,
        ["4115002"] = self.OnSubFailed4115002,
        ["4115003"] = self.OnSubFailed4115003
    }
end

function Quest41150:Start()
    print("Start")
end

function Quest41150:OnDestroy()
    print("OnDestroy")
end

function Quest41150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41150:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41150:StartCount()
    print("StartCount")
    self:CountDownUIStart(110, 3, 3)
    self:CallDelay(114, self.CountDown)
end

function Quest41150:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115002, 1) == 1 then
        self:SetQuestVar(4115002, 0, 1)
        self:SetQuestVar(4115002, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115002)
    end
end

function Quest41150:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41150:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41150:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30027Data.alias, 3)
end

function Quest41150:OnSubStart4115004(arg1)
    print("OnSubStart4115004")
end

function Quest41150:OnSubFinish4115004(arg1)
    self:SetNavigationByMainId(41150, true)
end

function Quest41150:OnSubFailed4115004(arg1)
    print("OnSubFailed4115004")
end

function Quest41150:OnSubStart4115001(arg1)
    print("OnSubStart4115001")
    self:CreateQuestNpc(arg1, npcs.Npc30027Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc30027Data.id, 411500501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41150:OnSubFinish4115001(arg1)
    print("OnSubFinish4115001")
    self:ActionSafeCall(self.StartCount)
end

function Quest41150:OnSubFailed4115001(arg1)
    print("OnSubFailed4115001")
end

function Quest41150:OnSubStart4115002(arg1)
    print("OnSubStart4115002")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41150:OnSubFinish4115002(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41150:OnSubFailed4115002(arg1)
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

function Quest41150:OnSubStart4115003(arg1)
    print("OnSubStart4115003")
end

function Quest41150:OnSubFinish4115003(arg1)
    print("OnSubFinish4115003")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41150:OnSubFailed4115003(arg1)
    print("OnSubFailed4115003")
end

return Quest41150
