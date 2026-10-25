require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41149 = class("Quest41149", QuestActorProxy)
Quest41149.defaultAlias = "Quest41149"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41149:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41149:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4114904"] = self.OnSubStart4114904,
        ["4114901"] = self.OnSubStart4114901,
        ["4114902"] = self.OnSubStart4114902,
        ["4114903"] = self.OnSubStart4114903
    }
end

function Quest41149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4114904"] = self.OnSubFinish4114904,
        ["4114901"] = self.OnSubFinish4114901,
        ["4114902"] = self.OnSubFinish4114902,
        ["4114903"] = self.OnSubFinish4114903
    }
end

function Quest41149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4114904"] = self.OnSubFailed4114904,
        ["4114901"] = self.OnSubFailed4114901,
        ["4114902"] = self.OnSubFailed4114902,
        ["4114903"] = self.OnSubFailed4114903
    }
end

function Quest41149:Start()
    print("Start")
end

function Quest41149:OnDestroy()
    print("OnDestroy")
end

function Quest41149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41149:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyNpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41149:StartCount()
    print("StartCount")
    self:CountDownUIStart(95, 3, 3)
    self:CallDelay(99, self.CountDown)
end

function Quest41149:CountDown()
    print("CountDown Finished")
    if self:GetQuestVar(4114902, 1) == 1 then
        self:SetQuestVar(4114902, 0, 1)
        self:SetQuestVar(4114902, 1, 0)
    end

    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("countdown cause deliver fail")
        actor:FinishQuestID(true, 4114902)
    end
end

function Quest41149:ShowCountDownReminder()
    print("ShowCountDownReminder")
    self:NarratorOnlyTask(datas.CountDownFailReminder, nil, "")
end

function Quest41149:ShowWatcherFailReminder()
    print("ShowWatcherFailReminder")
    self:NarratorOnlyTask(datas.WatcherFailReminder, nil, "")
end

function Quest41149:DestroyNpc()
    print("DestroyNpc")
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc157601Data.alias, 3)
end

function Quest41149:OnSubStart4114904(arg1)
    print("OnSubStart4114904")
end

function Quest41149:OnSubFinish4114904(arg1)
    self:SetNavigationByMainId(41149, true)
end

function Quest41149:OnSubFailed4114904(arg1)
    print("OnSubFailed4114904")
end

function Quest41149:OnSubStart4114901(arg1)
    print("OnSubStart4114901")
    self:CreateQuestNpc(arg1, npcs.Npc157601Data.id, 1)
    self:CreateSpeechBubbleTask(npcs.Npc157601Data.id, 411490501, 2, true, 1, 2)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest41149:OnSubFinish4114901(arg1)
    print("OnSubFinish4114901")
    self:ActionSafeCall(self.StartCount)
end

function Quest41149:OnSubFailed4114901(arg1)
    print("OnSubFailed4114901")
end

function Quest41149:OnSubStart4114902(arg1)
    print("OnSubStart4114902")
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 1)
end

function Quest41149:OnSubFinish4114902(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    globalActor:LeaveWeather()
end

function Quest41149:OnSubFailed4114902(arg1)
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

function Quest41149:OnSubStart4114903(arg1)
    print("OnSubStart4114903")
end

function Quest41149:OnSubFinish4114903(arg1)
    print("OnSubFinish4114903")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest41149:OnSubFailed4114903(arg1)
    print("OnSubFailed4114903")
end

return Quest41149
