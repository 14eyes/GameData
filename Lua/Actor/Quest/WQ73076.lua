require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73076 = class("Quest73076", QuestActorProxy)
Quest73076.defaultAlias = "Quest73076"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73076:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73076:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307602"] = self.OnSubStart7307602,
        ["7307601"] = self.OnSubStart7307601,
        ["7307603"] = self.OnSubStart7307603,
        ["7307604"] = self.OnSubStart7307604,
        ["7307605"] = self.OnSubStart7307605,
        ["7307606"] = self.OnSubStart7307606,
        ["7307608"] = self.OnSubStart7307608,
        ["7307609"] = self.OnSubStart7307609,
        ["7307607"] = self.OnSubStart7307607
    }
end

function Quest73076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307602"] = self.OnSubFinish7307602,
        ["7307601"] = self.OnSubFinish7307601,
        ["7307603"] = self.OnSubFinish7307603,
        ["7307604"] = self.OnSubFinish7307604,
        ["7307605"] = self.OnSubFinish7307605,
        ["7307606"] = self.OnSubFinish7307606,
        ["7307608"] = self.OnSubFinish7307608,
        ["7307609"] = self.OnSubFinish7307609,
        ["7307607"] = self.OnSubFinish7307607
    }
end

function Quest73076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73076:Start()
    print("Start")
end

function Quest73076:OnDestroy()
    print("OnDestroy")
end

function Quest73076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73076:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73076:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73076:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73076:OnSubStart7307602(arg1)
    print("OnSubStart7307602")
end

function Quest73076:OnSubFinish7307602(arg1)
    print("OnSubFinish7307602")
end

function Quest73076:OnSubStart7307601(arg1)
    print("OnSubStart7307601")
    self:CreateQuestNpc(arg1, npcs.Npc20773Data.id, 2)
end

function Quest73076:OnSubFinish7307601(arg1)
    print("OnSubFinish7307601")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20743Data.id, 1)
    self:SafeDestroyQuestNpc(npcs.Npc20773Data.alias, 3)
end

function Quest73076:OnSubStart7307603(arg1)
    print("OnSubStart7307603")
    self:CreateQuestNpc(arg1, npcs.Npc20769Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20778Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20778Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20837Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20836Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc20836Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest73076:OnSubFinish7307603(arg1)
    print("OnSubFinish7307603")
end

function Quest73076:OnSubStart7307604(arg1)
    print("OnSubStart7307604")
end

function Quest73076:OnSubFinish7307604(arg1)
    print("OnSubFinish7307604")
end

function Quest73076:OnSubStart7307605(arg1)
    print("OnSubStart7307605")
end

function Quest73076:OnSubFinish7307605(arg1)
    print("OnSubFinish7307605")
end

function Quest73076:OnSubStart7307606(arg1)
    print("OnSubStart7307606")
end

function Quest73076:OnSubFinish7307606(arg1)
    print("OnSubFinish7307606")
end

function Quest73076:OnSubStart7307608(arg1)
    print("OnSubStart7307608")
end

function Quest73076:OnSubFinish7307608(arg1)
    print("OnSubFinish7307608")
    self:NarratorOnlyTask(datas.NarratorTable7307608, nil, "")
end

function Quest73076:OnSubStart7307609(arg1)
    print("OnSubStart7307609")
end

function Quest73076:OnSubFinish7307609(arg1)
    print("OnSubFinish7307609")
    self:NarratorOnlyTask(datas.NarratorTable7307609, nil, "")
end

function Quest73076:OnSubStart7307607(arg1)
    print("OnSubStart7307607")
    self:NarratorOnlyTask(datas.NarratorTable7307607, nil, "")
end

function Quest73076:OnSubFinish7307607(arg1)
    print("OnSubFinish7307607")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20743Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20769Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20778Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20837Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20836Data.alias, 3)
end

return Quest73076
