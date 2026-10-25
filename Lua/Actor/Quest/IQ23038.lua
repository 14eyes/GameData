require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23038 = class("Quest23038", QuestActorProxy)
Quest23038.defaultAlias = "Quest23038"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303801"] = self.OnSubStart2303801,
        ["2303802"] = self.OnSubStart2303802,
        ["2303803"] = self.OnSubStart2303803,
        ["2303804"] = self.OnSubStart2303804,
        ["2303805"] = self.OnSubStart2303805,
        ["2303806"] = self.OnSubStart2303806,
        ["2303807"] = self.OnSubStart2303807,
        ["2303808"] = self.OnSubStart2303808
    }
end

function Quest23038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303801"] = self.OnSubFinish2303801,
        ["2303802"] = self.OnSubFinish2303802,
        ["2303803"] = self.OnSubFinish2303803,
        ["2303804"] = self.OnSubFinish2303804,
        ["2303805"] = self.OnSubFinish2303805,
        ["2303806"] = self.OnSubFinish2303806,
        ["2303807"] = self.OnSubFinish2303807,
        ["2303808"] = self.OnSubFinish2303808
    }
end

function Quest23038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23038:Start()
    print("Start")
end

function Quest23038:OnDestroy()
    print("OnDestroy")
end

function Quest23038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23038:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4412Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4071Data.alias, 3)
end

function Quest23038:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23038:OnSubStart2303801(arg1)
    print("OnSubStart2303801")
    self:CreateQuestNpc(arg1, npcs.Npc4412Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc4071Data.id, 2)
end

function Quest23038:OnSubFinish2303801(arg1)
    print("OnSubFinish2303801")
end

function Quest23038:OnSubStart2303802(arg1)
    print("OnSubStart2303802")
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest23038:OnSubFinish2303802(arg1)
    print("OnSubFinish2303802")
end

function Quest23038:OnSubStart2303803(arg1)
    print("OnSubStart2303803")
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest23038:OnSubFinish2303803(arg1)
    print("OnSubFinish2303803")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23038:OnSubStart2303804(arg1)
    print("OnSubStart2303804")
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest23038:OnSubFinish2303804(arg1)
    print("OnSubFinish2303804")
end

function Quest23038:OnSubStart2303805(arg1)
    print("OnSubStart2303805")
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest23038:OnSubFinish2303805(arg1)
    print("OnSubFinish2303805")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23038:OnSubStart2303806(arg1)
    print("OnSubStart2303806")
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest23038:OnSubFinish2303806(arg1)
    print("OnSubFinish2303806")
end

function Quest23038:OnSubStart2303807(arg1)
    print("OnSubStart2303807")
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest23038:OnSubFinish2303807(arg1)
    print("OnSubFinish2303807")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23038:OnSubStart2303808(arg1)
    print("OnSubStart2303808")
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest23038:OnSubFinish2303808(arg1)
    print("OnSubFinish2303808")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4412Data.alias)
end

return Quest23038
