require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41155 = class("Quest41155", QuestActorProxy)
Quest41155.defaultAlias = "Quest41155"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41155:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41155:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4115504"] = self.OnSubStart4115504,
        ["4115501"] = self.OnSubStart4115501,
        ["4115502"] = self.OnSubStart4115502,
        ["4115503"] = self.OnSubStart4115503
    }
end

function Quest41155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4115504"] = self.OnSubFinish4115504,
        ["4115501"] = self.OnSubFinish4115501,
        ["4115502"] = self.OnSubFinish4115502,
        ["4115503"] = self.OnSubFinish4115503
    }
end

function Quest41155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4115504"] = self.OnSubFailed4115504,
        ["4115501"] = self.OnSubFailed4115501,
        ["4115502"] = self.OnSubFailed4115502,
        ["4115503"] = self.OnSubFailed4115503
    }
end

function Quest41155:Start()
    print("Start")
end

function Quest41155:OnDestroy()
    print("OnDestroy")
end

function Quest41155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41155:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41155:StartCount()
    print("StartCount")
    self:CountDownUIStart(110, 3, 3)
    self:CallDelay(114, self.CountDown)
end

function Quest41155:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4115502, 1) == 1 then
        self:SetQuestVar(4115502, 0, 1)
        self:SetQuestVar(4115502, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4115502)
    end
end

function Quest41155:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41155:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41155:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc159301Data.alias, 3)
end

function Quest41155:OnSubStart4115504(arg1)
    print("OnSubStart4115504")
end

function Quest41155:OnSubFinish4115504(arg1)
    self:SetNavigationByMainId(41155, true)
end

function Quest41155:OnSubFailed4115504(arg1)
    print("OnSubFailed4115504")
end

function Quest41155:OnSubStart4115501(arg1)
    print("OnSubStart4115501")
    self:CreateQuestNpc(arg1, npcs.Npc159301Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc159301Data.id, 411550501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41155:OnSubFinish4115501(arg1)
    print("OnSubFinish4115501")
    self:ActionSafeCall(self.StartCount)
end

function Quest41155:OnSubFailed4115501(arg1)
    print("OnSubFailed4115501")
end

function Quest41155:OnSubStart4115502(arg1)
    print("OnSubStart4115502")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41155:OnSubFinish4115502(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41155:OnSubFailed4115502(arg1)
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

function Quest41155:OnSubStart4115503(arg1)
    print("OnSubStart4115503")
end

function Quest41155:OnSubFinish4115503(arg1)
    print("OnSubFinish4115503")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41155:OnSubFailed4115503(arg1)
    print("OnSubFailed4115503")
end

return Quest41155
