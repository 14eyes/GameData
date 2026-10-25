require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19023 = class("Quest19023", QuestActorProxy)
Quest19023.defaultAlias = "Quest19023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1902301"] = self.OnSubStart1902301,
        ["1902302"] = self.OnSubStart1902302,
        ["1902303"] = self.OnSubStart1902303,
        ["1902304"] = self.OnSubStart1902304,
        ["1902305"] = self.OnSubStart1902305,
        ["1902306"] = self.OnSubStart1902306
    }
end

function Quest19023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1902301"] = self.OnSubFinish1902301,
        ["1902302"] = self.OnSubFinish1902302,
        ["1902303"] = self.OnSubFinish1902303,
        ["1902304"] = self.OnSubFinish1902304,
        ["1902305"] = self.OnSubFinish1902305,
        ["1902306"] = self.OnSubFinish1902306
    }
end

function Quest19023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1902301"] = self.OnSubFailed1902301,
        ["1902302"] = self.OnSubFailed1902302,
        ["1902303"] = self.OnSubFailed1902303,
        ["1902304"] = self.OnSubFailed1902304,
        ["1902305"] = self.OnSubFailed1902305,
        ["1902306"] = self.OnSubFailed1902306
    }
end

function Quest19023:Start()
    print("Start")
end

function Quest19023:OnDestroy()
    print("OnDestroy")
end

function Quest19023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19023:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10913Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10914Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q1902302Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1902306Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1902301Trigger_.alias, 3, false)
end

function Quest19023:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10913Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10914Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q1902302Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1902306Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1902301Trigger_.alias, 3, false)
end

function Quest19023:OnSubStart1902301(arg1)
    print("OnSubStart1902301")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902301)
    actorMgr:CreateActorWithPos(datas.Q1902301Trigger_.alias, datas.Q1902301Trigger_.script, datas.Q1902301Trigger_.id, 0, datas.Q1902301Trigger_.point.pos, datas.Q1902301Trigger_.point.rot, true, false, 3)
end

function Quest19023:OnSubFinish1902301(arg1)
    print("OnSubFinish1902301")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19023:OnSubFailed1902301(arg1)
    print("OnSubFailed1902301")
end

function Quest19023:OnSubStart1902302(arg1)
    print("OnSubStart1902302")
    actorMgr:CreateActorWithPos(datas.Q1902302Trigger_.alias, datas.Q1902302Trigger_.script, datas.Q1902302Trigger_.id, 0, datas.Q1902302Trigger_.point.pos, datas.Q1902302Trigger_.point.rot, true, false, 3)
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902302)
end

function Quest19023:OnSubFinish1902302(arg1)
    print("OnSubFinish1902302")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data1.alias, 3)
end

function Quest19023:OnSubFailed1902302(arg1)
    print("OnSubFailed1902302")
end

function Quest19023:OnSubStart1902303(arg1)
    print("OnSubStart1902303")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902303)
    self:CreateQuestNpc(arg1, npcs.Npc10913Data.id, 2)
end

function Quest19023:OnSubFinish1902303(arg1)
    print("OnSubFinish1902303")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data2.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10913Data.alias, 3)
    self:NarratorOnlyTaskByData(clientData.NarratorData1, nil, "StoryCut")
end

function Quest19023:OnSubFailed1902303(arg1)
    print("OnSubFailed1902303")
end

function Quest19023:OnSubStart1902304(arg1)
    print("OnSubStart1902304")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902304)
    self:CreateQuestNpc(arg1, npcs.Npc10914Data.id, 2)
end

function Quest19023:OnSubFinish1902304(arg1)
    print("OnSubFinish1902304")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data3.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10914Data.alias, 3)
end

function Quest19023:OnSubFailed1902304(arg1)
    print("OnSubFailed1902304")
end

function Quest19023:OnSubStart1902305(arg1)
    print("OnSubStart1902305")
    self:NarratorOnlyTaskByData(clientData.NarratorData2, nil, "StoryCut")
end

function Quest19023:OnSubFinish1902305(arg1)
    print("OnSubFinish1902305")
end

function Quest19023:OnSubFailed1902305(arg1)
    print("OnSubFailed1902305")
end

function Quest19023:OnSubStart1902306(arg1)
    print("OnSubStart1902306")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902305)
    local actor = actorMgr:GetActor(actorAlias)
    self:CallDelay(2, function(arg1)
        arg1:TransmitPlayerByQuestId(1902306, 1, nil, function(arg1)
            arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
                arg1:CreateQuestNpcById(1902306, npcs.Npc1023Data3.id, 0)
                arg1:RequestInteraction(npcs.Npc1023Data3.alias)
            end, nil, task, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest19023:OnSubFinish1902306(arg1)
    print("OnSubFinish1902306")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data3.alias, 3)
end

function Quest19023:OnSubFailed1902306(arg1)
    print("OnSubFailed1902306")
end

return Quest19023
