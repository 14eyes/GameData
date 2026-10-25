require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41160 = class("Quest41160", QuestActorProxy)
Quest41160.defaultAlias = "Quest41160"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41160:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41160:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4116004"] = self.OnSubStart4116004,
        ["4116001"] = self.OnSubStart4116001,
        ["4116002"] = self.OnSubStart4116002,
        ["4116003"] = self.OnSubStart4116003
    }
end

function Quest41160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4116004"] = self.OnSubFinish4116004,
        ["4116001"] = self.OnSubFinish4116001,
        ["4116002"] = self.OnSubFinish4116002,
        ["4116003"] = self.OnSubFinish4116003
    }
end

function Quest41160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4116004"] = self.OnSubFailed4116004,
        ["4116001"] = self.OnSubFailed4116001,
        ["4116002"] = self.OnSubFailed4116002,
        ["4116003"] = self.OnSubFailed4116003
    }
end

function Quest41160:Start()
    print("Start")
end

function Quest41160:OnDestroy()
    print("OnDestroy")
end

function Quest41160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41160:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41160:StartCount()
    print("StartCount")
    self:CountDownUIStart(130, 3, 3)
    self:CallDelay(134, self.CountDown)
end

function Quest41160:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4116002, 1) == 1 then
        self:SetQuestVar(4116002, 0, 1)
        self:SetQuestVar(4116002, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4116002)
    end
end

function Quest41160:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41160:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41160:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc30028Data.alias, 3)
end

function Quest41160:OnSubStart4116004(arg1)
    print("OnSubStart4116004")
end

function Quest41160:OnSubFinish4116004(arg1)
    self:SetNavigationByMainId(41160, true)
end

function Quest41160:OnSubFailed4116004(arg1)
    print("OnSubFailed4116004")
end

function Quest41160:OnSubStart4116001(arg1)
    print("OnSubStart4116001")
    self:CreateQuestNpc(arg1, npcs.Npc30028Data.id, 0)
    self:CreateSpeechBubbleTask(npcs.Npc30028Data.id, 411600501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41160:OnSubFinish4116001(arg1)
    print("OnSubFinish4116001")
    self:ActionSafeCall(self.StartCount)
end

function Quest41160:OnSubFailed4116001(arg1)
    print("OnSubFailed4116001")
end

function Quest41160:OnSubStart4116002(arg1)
    print("OnSubStart4116002")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41160:OnSubFinish4116002(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41160:OnSubFailed4116002(arg1)
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

function Quest41160:OnSubStart4116003(arg1)
    print("OnSubStart4116003")
end

function Quest41160:OnSubFinish4116003(arg1)
    print("OnSubFinish4116003")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNpc, nil, nil, "")
end

function Quest41160:OnSubFailed4116003(arg1)
    print("OnSubFailed4116003")
end

return Quest41160
