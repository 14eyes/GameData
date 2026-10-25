require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73164 = class("Quest73164", QuestActorProxy)
Quest73164.defaultAlias = "Quest73164"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73164:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73164:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316401"] = self.OnSubStart7316401,
        ["7316402"] = self.OnSubStart7316402,
        ["7316405"] = self.OnSubStart7316405,
        ["7316403"] = self.OnSubStart7316403,
        ["7316404"] = self.OnSubStart7316404
    }
end

function Quest73164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316401"] = self.OnSubFinish7316401,
        ["7316402"] = self.OnSubFinish7316402,
        ["7316405"] = self.OnSubFinish7316405,
        ["7316403"] = self.OnSubFinish7316403,
        ["7316404"] = self.OnSubFinish7316404
    }
end

function Quest73164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73164:Start()
    print("Start")
end

function Quest73164:OnDestroy()
    print("OnDestroy")
end

function Quest73164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73164:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73164:OnSubStart7316401(arg1)
    print("OnSubStart7316401")
end

function Quest73164:OnSubFinish7316401(arg1)
    print("OnSubFinish7316401")
end

function Quest73164:OnSubStart7316402(arg1)
    print("OnSubStart7316402")
    self.CreateQuestNpc(self, arg1, npcs.Npc20702Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20702Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20702Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316402_N20702").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73164:OnSubFinish7316402(arg1)
    print("OnSubFinish7316402")
end

function Quest73164:OnSubStart7316405(arg1)
    print("OnSubStart7316405")
    self:CreateQuestNpc(arg1, npcs.Npc20702Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20702Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20702Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73164:OnSubFinish7316405(arg1)
    print("OnSubFinish7316405")
end

function Quest73164:OnSubStart7316403(arg1)
    print("OnSubStart7316403")
    self:CreateQuestNpc(arg1, npcs.Npc20702Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20702Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73164:OnSubFinish7316403(arg1)
    print("OnSubFinish7316403")
end

function Quest73164:OnSubStart7316404(arg1)
    print("OnSubStart7316404")
    self:RequestInteraction(npcs.Npc20702Data.alias)
    self:GetQuestNpcActor(npcs.Npc20702Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73164:OnSubFinish7316404(arg1)
    print("OnSubFinish7316404")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20702Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73164
