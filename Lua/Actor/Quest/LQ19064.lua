require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19064 = class("Quest19064", QuestActorProxy)
Quest19064.defaultAlias = "Quest19064"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19064:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1906401"] = self.OnSubStart1906401,
        ["1906402"] = self.OnSubStart1906402,
        ["1906403"] = self.OnSubStart1906403,
        ["1906404"] = self.OnSubStart1906404,
        ["1906405"] = self.OnSubStart1906405
    }
end

function Quest19064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1906401"] = self.OnSubFinish1906401,
        ["1906402"] = self.OnSubFinish1906402,
        ["1906403"] = self.OnSubFinish1906403,
        ["1906404"] = self.OnSubFinish1906404,
        ["1906405"] = self.OnSubFinish1906405
    }
end

function Quest19064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1906401"] = self.OnSubFailed1906401,
        ["1906402"] = self.OnSubFailed1906402,
        ["1906403"] = self.OnSubFailed1906403,
        ["1906404"] = self.OnSubFailed1906404,
        ["1906405"] = self.OnSubFailed1906405
    }
end

function Quest19064:Start()
    print("Start")
end

function Quest19064:OnDestroy()
    print("OnDestroy")
end

function Quest19064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19064:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.ClearTrainingFin)
    actorMgr:DestroyEntityActor(datas.Q19064Trigger_.alias, 3, false)
end

function Quest19064:ClearTraining()
    print("ClearTraining")
    self:DestroyQuestNpcActor(npcs.Npc1027Data.alias, 3)
end

function Quest19064:NarratorTrainingStart()
    print("NarratorTrainingStart")
    self:NarratorOnlyTaskByData(datas.NarratorTraningStart)
end

function Quest19064:ClearTrainingFin()
    print("ClearTrainingFin")
    self:DestroyQuestNpcActor(npcs.Npc1027Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc160501Data.alias, 3)
    self:NotifyTo("Npc1605", 0, true)
end

function Quest19064:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1906405)
        end

        print("Talk1906401:Finishi Quest 1906405")
    end
end

function Quest19064:OnSubStart1906401(arg1)
    print("OnSubStart1906401")
    self.SetNavigationByMainId(self, 19064, true)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1605", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc160501Data.id, 2)
    end)
end

function Quest19064:OnSubFinish1906401(arg1)
    print("OnSubFinish1906401")
end

function Quest19064:OnSubFailed1906401(arg1)
    print("OnSubFailed1906401")
end

function Quest19064:OnSubStart1906402(arg1)
    print("OnSubStart1906402")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1027Data.alias})
    self.CallDelay(self, 1.5, function()
        self:TransmitPlayerByQuestId(1906402, 1, nil, function()
            self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
            self:RequestCoopInteractionFromSubStartPoint(103401, 1906401)
            self:NotifyTo("Npc1605", 1, true)
            self:RequestInteraction(npcs.Npc1027Data.alias)
        end, questNpcCreateTask)
    end)
end

function Quest19064:OnSubFinish1906402(arg1)
    print("OnSubFinish1906402")
    self:ActionSafeCall(self.ClearTraining)
    self:CallDelay(2, self.NarratorTrainingStart)
end

function Quest19064:OnSubFailed1906402(arg1)
    print("OnSubFailed1906402")
end

function Quest19064:OnSubStart1906403(arg1)
    print("OnSubStart1906403")
    actorMgr:CreateActorWithPos(datas.Q19064Trigger_.alias, datas.Q19064Trigger_.script, datas.Q19064Trigger_.id, 0, datas.Q19064Trigger_.point.pos, datas.Q19064Trigger_.point.rot, true, false, 3)
end

function Quest19064:OnSubFinish1906403(arg1)
    print("OnSubFinish1906403")
end

function Quest19064:OnSubFailed1906403(arg1)
    print("OnSubFailed1906403")
end

function Quest19064:OnSubStart1906404(arg1)
    print("OnSubStart1906404")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1027Data.alias})
    self.CallDelay(self, 2.5, function()
        self:TransmitPlayerByQuestId(1906404, 1, nil, function()
            self:RequestCoopInteractionFromSubStartPoint(103401, 1906402)
            self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
            self:RequestInteraction(npcs.Npc1027Data.alias)
        end, questNpcCreateTask)
    end)
end

function Quest19064:OnSubFinish1906404(arg1)
    print("OnSubFinish1906404")
    self:ActionSafeCall(self.ClearTrainingFin)
end

function Quest19064:OnSubFailed1906404(arg1)
    print("OnSubFailed1906404")
end

function Quest19064:OnSubStart1906405(arg1)
    print("OnSubStart1906405")
end

function Quest19064:OnSubFinish1906405(arg1)
    print("OnSubFinish1906405")
end

function Quest19064:OnSubFailed1906405(arg1)
    print("OnSubFailed1906405")
end

return Quest19064
