require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73008 = class("Quest73008", QuestActorProxy)
Quest73008.defaultAlias = "Quest73008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300801"] = self.OnSubStart7300801,
        ["7300802"] = self.OnSubStart7300802,
        ["7300808"] = self.OnSubStart7300808,
        ["7300803"] = self.OnSubStart7300803,
        ["7300804"] = self.OnSubStart7300804,
        ["7300806"] = self.OnSubStart7300806,
        ["7300807"] = self.OnSubStart7300807,
        ["7300805"] = self.OnSubStart7300805
    }
end

function Quest73008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300801"] = self.OnSubFinish7300801,
        ["7300802"] = self.OnSubFinish7300802,
        ["7300808"] = self.OnSubFinish7300808,
        ["7300803"] = self.OnSubFinish7300803,
        ["7300804"] = self.OnSubFinish7300804,
        ["7300806"] = self.OnSubFinish7300806,
        ["7300807"] = self.OnSubFinish7300807,
        ["7300805"] = self.OnSubFinish7300805
    }
end

function Quest73008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73008:Start()
    print("Start")
end

function Quest73008:OnDestroy()
    print("OnDestroy")
end

function Quest73008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73008:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73008:OnSubStart7300801(arg1)
    print("OnSubStart7300801")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73008:OnSubFinish7300801(arg1)
    print("OnSubFinish7300801")
end

function Quest73008:OnSubStart7300802(arg1)
    print("OnSubStart7300802")
end

function Quest73008:OnSubFinish7300802(arg1)
    print("OnSubFinish7300802")
end

function Quest73008:OnSubStart7300808(arg1)
    print("OnSubStart7300808")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        actorUtils.FinishQuestID(false, 7300808)
    end, nil, "", false, true)
end

function Quest73008:OnSubFinish7300808(arg1)
    print("OnSubFinish7300808")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73008:OnSubStart7300803(arg1)
    print("OnSubStart7300803")
end

function Quest73008:OnSubFinish7300803(arg1)
    print("OnSubFinish7300803")
end

function Quest73008:OnSubStart7300804(arg1)
    print("OnSubStart7300804")
end

function Quest73008:OnSubFinish7300804(arg1)
    print("OnSubFinish7300804")
end

function Quest73008:OnSubStart7300806(arg1)
    print("OnSubStart7300806")
end

function Quest73008:OnSubFinish7300806(arg1)
    print("OnSubFinish7300806")
end

function Quest73008:OnSubStart7300807(arg1)
    print("OnSubStart7300807")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        actorUtils.FinishQuestID(false, 7300807)
    end, nil, "", false, true)
end

function Quest73008:OnSubFinish7300807(arg1)
    print("OnSubFinish7300807")
end

function Quest73008:OnSubStart7300805(arg1)
    print("OnSubStart7300805")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73008:OnSubFinish7300805(arg1)
    print("OnSubFinish7300805")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20577Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

return Quest73008
