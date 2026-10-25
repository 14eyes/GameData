require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73803 = class("Quest73803", QuestActorProxy)
Quest73803.defaultAlias = "Quest73803"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73803:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73803:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7380306"] = self.OnSubStart7380306,
        ["7380307"] = self.OnSubStart7380307,
        ["7380301"] = self.OnSubStart7380301,
        ["7380302"] = self.OnSubStart7380302,
        ["7380303"] = self.OnSubStart7380303,
        ["7380304"] = self.OnSubStart7380304,
        ["7380305"] = self.OnSubStart7380305
    }
end

function Quest73803:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7380306"] = self.OnSubFinish7380306,
        ["7380307"] = self.OnSubFinish7380307,
        ["7380301"] = self.OnSubFinish7380301,
        ["7380302"] = self.OnSubFinish7380302,
        ["7380303"] = self.OnSubFinish7380303,
        ["7380304"] = self.OnSubFinish7380304,
        ["7380305"] = self.OnSubFinish7380305
    }
end

function Quest73803:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73803:Start()
    print("Start")
end

function Quest73803:OnDestroy()
    print("OnDestroy")
end

function Quest73803:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73803:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73803:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73803:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73803:OnSubStart7380306(arg1)
    print("OnSubStart7380306")
end

function Quest73803:OnSubFinish7380306(arg1)
    print("OnSubFinish7380306")
end

function Quest73803:OnSubStart7380307(arg1)
    print("OnSubStart7380307")
end

function Quest73803:OnSubFinish7380307(arg1)
    print("OnSubFinish7380307")
end

function Quest73803:OnSubStart7380301(arg1)
    print("OnSubStart7380301")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
end

function Quest73803:OnSubFinish7380301(arg1)
    print("OnSubFinish7380301")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest73803:OnSubStart7380302(arg1)
    print("OnSubStart7380302")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4042Data.id, 3)
    end)
end

function Quest73803:OnSubFinish7380302(arg1)
    print("OnSubFinish7380302")
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest73803:OnSubStart7380303(arg1)
    print("OnSubStart7380303")
    self:CreateQuestNpc(arg1, npcs.Npc4060Data.id, 1)
end

function Quest73803:OnSubFinish7380303(arg1)
    print("OnSubFinish7380303")
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4060Data.alias, 3)
end

function Quest73803:OnSubStart7380304(arg1)
    print("OnSubStart7380304")
end

function Quest73803:OnSubFinish7380304(arg1)
    print("OnSubFinish7380304")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4042Data.alias, 3)
end

function Quest73803:OnSubStart7380305(arg1)
    print("OnSubStart7380305")
    self:CreateQuestNpc(arg1, npcs.Npc12700Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12700Data.alias):SitOnChair(8010)
end

function Quest73803:OnSubFinish7380305(arg1)
    print("OnSubFinish7380305")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20657Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12700Data.alias, 3)
end

return Quest73803
