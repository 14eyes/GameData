require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72205 = class("Quest72205", QuestActorProxy)
Quest72205.defaultAlias = "Quest72205"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72205:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72205:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220501"] = self.OnSubStart7220501,
        ["7220502"] = self.OnSubStart7220502,
        ["7220503"] = self.OnSubStart7220503,
        ["7220512"] = self.OnSubStart7220512,
        ["7220504"] = self.OnSubStart7220504,
        ["7220505"] = self.OnSubStart7220505,
        ["7220513"] = self.OnSubStart7220513,
        ["7220506"] = self.OnSubStart7220506,
        ["7220507"] = self.OnSubStart7220507,
        ["7220514"] = self.OnSubStart7220514,
        ["7220508"] = self.OnSubStart7220508,
        ["7220509"] = self.OnSubStart7220509,
        ["7220515"] = self.OnSubStart7220515,
        ["7220510"] = self.OnSubStart7220510,
        ["7220511"] = self.OnSubStart7220511
    }
end

function Quest72205:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220501"] = self.OnSubFinish7220501,
        ["7220502"] = self.OnSubFinish7220502,
        ["7220503"] = self.OnSubFinish7220503,
        ["7220512"] = self.OnSubFinish7220512,
        ["7220504"] = self.OnSubFinish7220504,
        ["7220505"] = self.OnSubFinish7220505,
        ["7220513"] = self.OnSubFinish7220513,
        ["7220506"] = self.OnSubFinish7220506,
        ["7220507"] = self.OnSubFinish7220507,
        ["7220514"] = self.OnSubFinish7220514,
        ["7220508"] = self.OnSubFinish7220508,
        ["7220509"] = self.OnSubFinish7220509,
        ["7220515"] = self.OnSubFinish7220515,
        ["7220510"] = self.OnSubFinish7220510,
        ["7220511"] = self.OnSubFinish7220511
    }
end

function Quest72205:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7220501"] = self.OnSubFailed7220501,
        ["7220502"] = self.OnSubFailed7220502,
        ["7220503"] = self.OnSubFailed7220503,
        ["7220512"] = self.OnSubFailed7220512,
        ["7220504"] = self.OnSubFailed7220504,
        ["7220505"] = self.OnSubFailed7220505,
        ["7220513"] = self.OnSubFailed7220513,
        ["7220506"] = self.OnSubFailed7220506,
        ["7220507"] = self.OnSubFailed7220507,
        ["7220514"] = self.OnSubFailed7220514,
        ["7220508"] = self.OnSubFailed7220508,
        ["7220509"] = self.OnSubFailed7220509,
        ["7220515"] = self.OnSubFailed7220515,
        ["7220510"] = self.OnSubFailed7220510,
        ["7220511"] = self.OnSubFailed7220511
    }
end

function Quest72205:Start()
    print("Start")
end

function Quest72205:OnDestroy()
    print("OnDestroy")
end

function Quest72205:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72205:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72205:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72205:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72205:OnSubStart7220501(arg1)
    print("OnSubStart7220501")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220501(arg1)
    print("OnSubFinish7220501")
end

function Quest72205:OnSubFailed7220501(arg1)
    print("OnSubFailed7220501")
end

function Quest72205:OnSubStart7220502(arg1)
    print("OnSubStart7220502")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220502(arg1)
    print("OnSubFinish7220502")
end

function Quest72205:OnSubFailed7220502(arg1)
    print("OnSubFailed7220502")
end

function Quest72205:OnSubStart7220503(arg1)
    print("OnSubStart7220503")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220503(arg1)
    print("OnSubFinish7220503")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72205:OnSubFailed7220503(arg1)
    print("OnSubFailed7220503")
end

function Quest72205:OnSubStart7220512(arg1)
    print("OnSubStart7220512")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220512(arg1)
    print("OnSubFinish7220512")
end

function Quest72205:OnSubFailed7220512(arg1)
    print("OnSubFailed7220512")
end

function Quest72205:OnSubStart7220504(arg1)
    print("OnSubStart7220504")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220504(arg1)
    print("OnSubFinish7220504")
end

function Quest72205:OnSubFailed7220504(arg1)
    print("OnSubFailed7220504")
end

function Quest72205:OnSubStart7220505(arg1)
    print("OnSubStart7220505")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220505(arg1)
    print("OnSubFinish7220505")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72205:OnSubFailed7220505(arg1)
    print("OnSubFailed7220505")
end

function Quest72205:OnSubStart7220513(arg1)
    print("OnSubStart7220513")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220513(arg1)
    print("OnSubFinish7220513")
end

function Quest72205:OnSubFailed7220513(arg1)
    print("OnSubFailed7220513")
end

function Quest72205:OnSubStart7220506(arg1)
    print("OnSubStart7220506")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220506(arg1)
    print("OnSubFinish7220506")
end

function Quest72205:OnSubFailed7220506(arg1)
    print("OnSubFailed7220506")
end

function Quest72205:OnSubStart7220507(arg1)
    print("OnSubStart7220507")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220507(arg1)
    print("OnSubFinish7220507")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72205:OnSubFailed7220507(arg1)
    print("OnSubFailed7220507")
end

function Quest72205:OnSubStart7220514(arg1)
    print("OnSubStart7220514")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220514(arg1)
    print("OnSubFinish7220514")
end

function Quest72205:OnSubFailed7220514(arg1)
    print("OnSubFailed7220514")
end

function Quest72205:OnSubStart7220508(arg1)
    print("OnSubStart7220508")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220508(arg1)
    print("OnSubFinish7220508")
end

function Quest72205:OnSubFailed7220508(arg1)
    print("OnSubFailed7220508")
end

function Quest72205:OnSubStart7220509(arg1)
    print("OnSubStart7220509")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220509(arg1)
    print("OnSubFinish7220509")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72205:OnSubFailed7220509(arg1)
    print("OnSubFailed7220509")
end

function Quest72205:OnSubStart7220515(arg1)
    print("OnSubStart7220515")
    self:CreateQuestNpc(arg1, npcs.Npc20427Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 2)
end

function Quest72205:OnSubFinish7220515(arg1)
    print("OnSubFinish7220515")
    self:SafeDestroyQuestNpc(npcs.Npc20427Data.alias, 3)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20431Data.alias)
end

function Quest72205:OnSubFailed7220515(arg1)
    print("OnSubFailed7220515")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72205:OnSubStart7220510(arg1)
    print("OnSubStart7220510")
end

function Quest72205:OnSubFinish7220510(arg1)
    print("OnSubFinish7220510")
end

function Quest72205:OnSubFailed7220510(arg1)
    print("OnSubFailed7220510")
end

function Quest72205:OnSubStart7220511(arg1)
    print("OnSubStart7220511")
end

function Quest72205:OnSubFinish7220511(arg1)
    print("OnSubFinish7220511")
end

function Quest72205:OnSubFailed7220511(arg1)
    print("OnSubFailed7220511")
end

return Quest72205
