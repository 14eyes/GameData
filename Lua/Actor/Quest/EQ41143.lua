require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41143 = class("Quest41143", QuestActorProxy)
Quest41143.defaultAlias = "Quest41143"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41143:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41143:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114304"] = self.OnSubStart4114304,
        ["4114301"] = self.OnSubStart4114301,
        ["4114302"] = self.OnSubStart4114302,
        ["4114303"] = self.OnSubStart4114303
    }
end

function Quest41143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114304"] = self.OnSubFinish4114304,
        ["4114301"] = self.OnSubFinish4114301,
        ["4114302"] = self.OnSubFinish4114302,
        ["4114303"] = self.OnSubFinish4114303
    }
end

function Quest41143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114304"] = self.OnSubFailed4114304,
        ["4114301"] = self.OnSubFailed4114301,
        ["4114302"] = self.OnSubFailed4114302,
        ["4114303"] = self.OnSubFailed4114303
    }
end

function Quest41143:Start()
    print("Start")
end

function Quest41143:OnDestroy()
    print("OnDestroy")
end

function Quest41143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41143:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41143:StartCount()
    print("StartCount")
    self:CountDownUIStart(110, 3, 3)
    self:CallDelay(114, self.CountDown)
end

function Quest41143:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114302, 1) == 1 then
        self:SetQuestVar(4114302, 0, 1)
        self:SetQuestVar(4114302, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114302)
    end
end

function Quest41143:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41143:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41143:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc1576Data.alias, 3)
end

function Quest41143:OnSubStart4114304(arg1)
    print("OnSubStart4114304")
end

function Quest41143:OnSubFinish4114304(arg1)
    self:SetNavigationByMainId(41143, true)
end

function Quest41143:OnSubFailed4114304(arg1)
    print("OnSubFailed4114304")
end

function Quest41143:OnSubStart4114301(arg1)
    print("OnSubStart4114301")
    self:CreateQuestNpc(arg1, npcs.Npc1576Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc1576Data.id, 411430501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41143:OnSubFinish4114301(arg1)
    print("OnSubFinish4114301")
    self:ActionSafeCall(self.StartCount)
end

function Quest41143:OnSubFailed4114301(arg1)
    print("OnSubFailed4114301")
end

function Quest41143:OnSubStart4114302(arg1)
    print("OnSubStart4114302")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41143:OnSubFinish4114302(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41143:OnSubFailed4114302(arg1)
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

function Quest41143:OnSubStart4114303(arg1)
    print("OnSubStart4114303")
end

function Quest41143:OnSubFinish4114303(arg1)
    print("OnSubFinish4114303")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41143:OnSubFailed4114303(arg1)
    print("OnSubFailed4114303")
end

return Quest41143
