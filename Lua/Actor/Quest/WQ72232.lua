require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72232 = class("Quest72232", QuestActorProxy)
Quest72232.defaultAlias = "Quest72232"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72232:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72232:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7223201"] = self.OnSubStart7223201,
        ["7223202"] = self.OnSubStart7223202,
        ["7223203"] = self.OnSubStart7223203,
        ["7223204"] = self.OnSubStart7223204,
        ["7223205"] = self.OnSubStart7223205,
        ["7223206"] = self.OnSubStart7223206,
        ["7223207"] = self.OnSubStart7223207
    }
end

function Quest72232:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7223201"] = self.OnSubFinish7223201,
        ["7223202"] = self.OnSubFinish7223202,
        ["7223203"] = self.OnSubFinish7223203,
        ["7223204"] = self.OnSubFinish7223204,
        ["7223205"] = self.OnSubFinish7223205,
        ["7223206"] = self.OnSubFinish7223206,
        ["7223207"] = self.OnSubFinish7223207
    }
end

function Quest72232:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7223201"] = self.OnSubFailed7223201,
        ["7223202"] = self.OnSubFailed7223202,
        ["7223203"] = self.OnSubFailed7223203,
        ["7223204"] = self.OnSubFailed7223204,
        ["7223205"] = self.OnSubFailed7223205,
        ["7223206"] = self.OnSubFailed7223206,
        ["7223207"] = self.OnSubFailed7223207
    }
end

function Quest72232:Start()
    print("Start")
end

function Quest72232:OnDestroy()
    print("OnDestroy")
end

function Quest72232:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72232:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72232:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72232:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72232:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    elseif arg1 == 2 then
        globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    end
end

function Quest72232:OnSubStart7223201(arg1)
    print("OnSubStart7223201")
    self:CreateQuestNpc(arg1, npcs.Npc20463Data.id, 1)
end

function Quest72232:OnSubFinish7223201(arg1)
    print("OnSubFinish7223201")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20463Data.alias)
end

function Quest72232:OnSubFailed7223201(arg1)
    print("OnSubFailed7223201")
end

function Quest72232:OnSubStart7223202(arg1)
    print("OnSubStart7223202")
    self:CreateQuestNpc(arg1, npcs.Npc20464Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20465Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20466Data.id, 3)
    actorMgr:CreateActorWithPos("Q7223201Trigger", "Actor/Gadget/Q7223201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ7223202_mufujunguan").pos, sceneData:GetDummyPoint(3, "WQ7223202_mufujunguan").rot, true, false, 3)
end

function Quest72232:OnSubFinish7223202(arg1)
    print("OnSubFinish7223202")
    self:SafeDestroyQuestNpc(npcs.Npc20463Data.alias, 3)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20464Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20465Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20466Data.alias)
end

function Quest72232:OnSubFailed7223202(arg1)
    print("OnSubFailed7223202")
end

function Quest72232:OnSubStart7223203(arg1)
    print("OnSubStart7223203")
end

function Quest72232:OnSubFinish7223203(arg1)
    print("OnSubFinish7223203")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72232:OnSubFailed7223203(arg1)
    print("OnSubFailed7223203")
end

function Quest72232:OnSubStart7223204(arg1)
    print("OnSubStart7223204")
    self:CreateQuestNpc(arg1, npcs.Npc20468Data.id, 1)
end

function Quest72232:OnSubFinish7223204(arg1)
    print("OnSubFinish7223204")
end

function Quest72232:OnSubFailed7223204(arg1)
    print("OnSubFailed7223204")
end

function Quest72232:OnSubStart7223205(arg1)
    print("OnSubStart7223205")
    self:CreateQuestNpc(arg1, npcs.Npc20465Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20466Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20467Data.id, 4)
end

function Quest72232:OnSubFinish7223205(arg1)
    print("OnSubFinish7223205")
    self:SafeDestroyQuestNpc(npcs.Npc20463Data.alias, 3)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20465Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20466Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20468Data.alias, 3)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20467Data.alias)
end

function Quest72232:OnSubFailed7223205(arg1)
    print("OnSubFailed7223205")
end

function Quest72232:OnSubStart7223206(arg1)
    print("OnSubStart7223206")
end

function Quest72232:OnSubFinish7223206(arg1)
    print("OnSubFinish7223206")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72232:OnSubFailed7223206(arg1)
    print("OnSubFailed7223206")
end

function Quest72232:OnSubStart7223207(arg1)
    print("OnSubStart7223207")
    self:CreateQuestNpc(arg1, npcs.Npc20463Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20483Data.id, 2)
end

function Quest72232:OnSubFinish7223207(arg1)
    print("OnSubFinish7223207")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20463Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20483Data.alias, 3)
end

function Quest72232:OnSubFailed7223207(arg1)
    print("OnSubFailed7223207")
end

return Quest72232
