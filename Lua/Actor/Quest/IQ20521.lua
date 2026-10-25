require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20521 = class("Quest20521", QuestActorProxy)
Quest20521.defaultAlias = "Quest20521"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20521:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20521:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2052101"] = self.OnSubStart2052101,
        ["2052102"] = self.OnSubStart2052102,
        ["2052103"] = self.OnSubStart2052103
    }
end

function Quest20521:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2052101"] = self.OnSubFinish2052101,
        ["2052102"] = self.OnSubFinish2052102,
        ["2052103"] = self.OnSubFinish2052103
    }
end

function Quest20521:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2052101"] = self.OnSubFailed2052101,
        ["2052102"] = self.OnSubFailed2052102,
        ["2052103"] = self.OnSubFailed2052103
    }
end

function Quest20521:Start()
    print("Start")
end

function Quest20521:OnDestroy()
    print("OnDestroy")
end

function Quest20521:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20521:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20521:OnMainCanceled(arg1)
    self:destroynpc()
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    self:NotifyTo("Npc1665", 0, true)
end

function Quest20521:destroynpc()
    print("destroynpc")
    self:DestroyQuestNpcActorByAlias(npcs.Npc166501Data1.alias, false)
    self:DestroyQuestNpcActorByAlias(npcs.Npc166501Data2.alias, false)
    self:NotifyTo("Npc1665", 0, true)
end

function Quest20521:CountDown()
    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2052102)
    end
end

function Quest20521:StartCount()
    self:CountDownUIStart(70, 3, 3)
    self:CallDelay(74, self.CountDown)
end

function Quest20521:OnSubStart2052101(arg1)
    print("OnSubStart2052101")
    self:NotifyTo("Npc1665", 1, true)
end

function Quest20521:OnSubFinish2052101(arg1)
    print("OnSubFinish2052101")
    self:ActionSafeCall(self.StartCount)
end

function Quest20521:OnSubFailed2052101(arg1)
    print("OnSubFailed2052101")
end

function Quest20521:OnSubStart2052102(arg1)
    local questVar = self:GetQuestVar(2052101, 1)
    if questVar == 1 then
        self:CreateQuestNpcById(2052102, npcs.Npc166501Data1.id, 1)
    elseif questVar == 2 then
        self:CreateQuestNpcById(2052102, npcs.Npc166501Data2.id, 2)
    end

    self:NotifyTo("Npc1665", 1, true)
end

function Quest20521:OnSubFinish2052102(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20521:OnSubFailed2052102(arg1)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    self:NarratorOnlyTask({{dialogID = 205210401, duration = 3}, {dialogID = 205210402, duration = 3}})
end

function Quest20521:OnSubStart2052103(arg1)
    local questVar = self:GetQuestVar(2052101, 1)
    if questVar == 1 then
        self:CreateQuestNpcById(2052102, npcs.Npc166501Data1.id, 1)
    elseif questVar == 2 then
        self:CreateQuestNpcById(2052102, npcs.Npc166501Data2.id, 2)
    end

    self:NotifyTo("Npc1665", 1, true)
end

function Quest20521:OnSubFinish2052103(arg1)
    print("OnSubFinish2052103")
    self:ShowBlackScreen(0, 0.5, 0, self.destroynpc, nil, nil, "")
end

function Quest20521:OnSubFailed2052103(arg1)
    print("OnSubFailed2052103")
end

return Quest20521
