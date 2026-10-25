require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11045 = class("Quest11045", QuestActorProxy)
Quest11045.defaultAlias = "Quest11045"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11045:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1104501"] = self.OnSubStart1104501,
        ["1104502"] = self.OnSubStart1104502,
        ["1104508"] = self.OnSubStart1104508,
        ["1104506"] = self.OnSubStart1104506,
        ["1104509"] = self.OnSubStart1104509,
        ["1104511"] = self.OnSubStart1104511,
        ["1104510"] = self.OnSubStart1104510,
        ["1104507"] = self.OnSubStart1104507,
        ["1104503"] = self.OnSubStart1104503,
        ["1104504"] = self.OnSubStart1104504,
        ["1104505"] = self.OnSubStart1104505
    }
end

function Quest11045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1104501"] = self.OnSubFinish1104501,
        ["1104502"] = self.OnSubFinish1104502,
        ["1104508"] = self.OnSubFinish1104508,
        ["1104506"] = self.OnSubFinish1104506,
        ["1104509"] = self.OnSubFinish1104509,
        ["1104511"] = self.OnSubFinish1104511,
        ["1104510"] = self.OnSubFinish1104510,
        ["1104507"] = self.OnSubFinish1104507,
        ["1104503"] = self.OnSubFinish1104503,
        ["1104504"] = self.OnSubFinish1104504,
        ["1104505"] = self.OnSubFinish1104505
    }
end

function Quest11045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1104501"] = self.OnSubFailed1104501,
        ["1104502"] = self.OnSubFailed1104502,
        ["1104508"] = self.OnSubFailed1104508,
        ["1104506"] = self.OnSubFailed1104506,
        ["1104509"] = self.OnSubFailed1104509,
        ["1104511"] = self.OnSubFailed1104511,
        ["1104510"] = self.OnSubFailed1104510,
        ["1104507"] = self.OnSubFailed1104507,
        ["1104503"] = self.OnSubFailed1104503,
        ["1104504"] = self.OnSubFailed1104504,
        ["1104505"] = self.OnSubFailed1104505
    }
end

function Quest11045:Start()
    print("Start")
end

function Quest11045:OnDestroy()
    print("OnDestroy")
end

function Quest11045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11045:NarratorPuzzle1()
    print("NarratorPuzzle1")
    self:NarratorOnlyTaskByData(datas.NarratorPuzzle1)
end

function Quest11045:NarratorPuzzle2()
    print("NarratorPuzzle2")
    self:NarratorOnlyTaskByData(datas.NarratorPuzzle2)
end

function Quest11045:NarratorBeforeUnlock()
    print("NarratorBeforeUnlock")
    self:NarratorOnlyTaskByData(datas.NarratorBeforeUnlock)
end

function Quest11045:NarratorUnlocked()
    print("NarratorUnlocked")
    self:NarratorOnlyTaskByData(datas.NarratorUnlocked)
end

function Quest11045:OnSubStart1104501(arg1)
    print("OnSubStart1104501")
    actorMgr:CreateActorWithPos(datas.Q1104501Trigger_.alias, datas.Q1104501Trigger_.script, datas.Q1104501Trigger_.id, 0, datas.Q1104501Trigger_.point.pos, datas.Q1104501Trigger_.point.rot, true, false, 3)
end

function Quest11045:OnSubFinish1104501(arg1)
    print("OnSubFinish1104501")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11045:OnSubFailed1104501(arg1)
    print("OnSubFailed1104501")
end

function Quest11045:OnSubStart1104502(arg1)
    print("OnSubStart1104502")
    actorMgr:CreateActorWithPos(datas.Q1104502Trigger_.alias, datas.Q1104502Trigger_.script, datas.Q1104502Trigger_.id, 0, datas.Q1104502Trigger_.point.pos, datas.Q1104502Trigger_.point.rot, true, false, 3)
end

function Quest11045:OnSubFinish1104502(arg1)
    print("OnSubFinish1104502")
end

function Quest11045:OnSubFailed1104502(arg1)
    print("OnSubFailed1104502")
end

function Quest11045:OnSubStart1104508(arg1)
    print("OnSubStart1104508")
end

function Quest11045:OnSubFinish1104508(arg1)
    print("OnSubFinish1104508")
end

function Quest11045:OnSubFailed1104508(arg1)
    print("OnSubFailed1104508")
end

function Quest11045:OnSubStart1104506(arg1)
    print("OnSubStart1104506")
    actorMgr:CreateActorWithPos(datas.Q1104503Trigger_.alias, datas.Q1104503Trigger_.script, datas.Q1104503Trigger_.id, 0, datas.Q1104503Trigger_.point.pos, datas.Q1104503Trigger_.point.rot, true, false, 3)
end

function Quest11045:OnSubFinish1104506(arg1)
    print("OnSubFinish1104506")
end

function Quest11045:OnSubFailed1104506(arg1)
    print("OnSubFailed1104506")
end

function Quest11045:OnSubStart1104509(arg1)
    print("OnSubStart1104509")
end

function Quest11045:OnSubFinish1104509(arg1)
    print("OnSubFinish1104509")
end

function Quest11045:OnSubFailed1104509(arg1)
    print("OnSubFailed1104509")
end

function Quest11045:OnSubStart1104511(arg1)
    print("OnSubStart1104511")
end

function Quest11045:OnSubFinish1104511(arg1)
    print("OnSubFinish1104511")
    self:CallDelay(2, self.NarratorBeforeUnlock)
end

function Quest11045:OnSubFailed1104511(arg1)
    print("OnSubFailed1104511")
end

function Quest11045:OnSubStart1104510(arg1)
    print("OnSubStart1104510")
end

function Quest11045:OnSubFinish1104510(arg1)
    print("OnSubFinish1104510")
end

function Quest11045:OnSubFailed1104510(arg1)
    print("OnSubFailed1104510")
end

function Quest11045:OnSubStart1104507(arg1)
    print("OnSubStart1104507")
    actorMgr:CreateActorWithPos(datas.Q1104507Trigger_.alias, datas.Q1104507Trigger_.script, datas.Q1104507Trigger_.id, 0, datas.Q1104507Trigger_.point.pos, datas.Q1104507Trigger_.point.rot, true, false, 3)
end

function Quest11045:OnSubFinish1104507(arg1)
    print("OnSubFinish1104507")
    self:CallDelay(0.5, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q11045Scene").pos, 3.5, 2, true, true)
    end)
end

function Quest11045:OnSubFailed1104507(arg1)
    print("OnSubFailed1104507")
end

function Quest11045:OnSubStart1104503(arg1)
    print("OnSubStart1104503")
end

function Quest11045:OnSubFinish1104503(arg1)
    print("OnSubFinish1104503")
    self:CallDelay(4, self.NarratorUnlocked)
end

function Quest11045:OnSubFailed1104503(arg1)
    print("OnSubFailed1104503")
end

function Quest11045:OnSubStart1104504(arg1)
    print("OnSubStart1104504")
    actorMgr:CreateActorWithPos(datas.Q1104504Trigger_.alias, datas.Q1104504Trigger_.script, datas.Q1104504Trigger_.id, 0, datas.Q1104504Trigger_.point.pos, datas.Q1104504Trigger_.point.rot, true, false, 3)
end

function Quest11045:OnSubFinish1104504(arg1)
    print("OnSubFinish1104504")
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11045:OnSubFailed1104504(arg1)
    print("OnSubFailed1104504")
end

function Quest11045:OnSubStart1104505(arg1)
    print("OnSubStart1104505")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc158701Data.id, 2)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc158701Data.alias):DoFreeStyle(1120)
    end)
end

function Quest11045:OnSubFinish1104505(arg1)
    print("OnSubFinish1104505")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc158701Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest11045:OnSubFailed1104505(arg1)
    print("OnSubFailed1104505")
end

function Quest11045:InvokeOnInteraction(arg1)
    if arg1 == 21 then
        print("Now See Flower")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1104512)
        end
    elseif arg1 == 31 then
        print("Now Change Flower")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1104513)
        end
    elseif arg1 == 41 then
        print("Now Kill Flower")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1104514)
        end
    elseif arg1 == 51 then
        print("Now Spawn Bottle")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1104515)
        end
    elseif arg1 == 61 then
        print("Now Spawn Bottle")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1104516)
        end
    end
end

return Quest11045
