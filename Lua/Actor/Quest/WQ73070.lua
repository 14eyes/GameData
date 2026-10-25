require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73070 = class("Quest73070", QuestActorProxy)
Quest73070.defaultAlias = "Quest73070"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73070:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73070:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307002"] = self.OnSubStart7307002,
        ["7307020"] = self.OnSubStart7307020,
        ["7307004"] = self.OnSubStart7307004,
        ["7307005"] = self.OnSubStart7307005,
        ["7307011"] = self.OnSubStart7307011,
        ["7307006"] = self.OnSubStart7307006,
        ["7307018"] = self.OnSubStart7307018,
        ["7307007"] = self.OnSubStart7307007,
        ["7307010"] = self.OnSubStart7307010,
        ["7307001"] = self.OnSubStart7307001,
        ["7307012"] = self.OnSubStart7307012,
        ["7307013"] = self.OnSubStart7307013,
        ["7307017"] = self.OnSubStart7307017,
        ["7307019"] = self.OnSubStart7307019,
        ["7307014"] = self.OnSubStart7307014,
        ["7307015"] = self.OnSubStart7307015,
        ["7307016"] = self.OnSubStart7307016
    }
end

function Quest73070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307002"] = self.OnSubFinish7307002,
        ["7307020"] = self.OnSubFinish7307020,
        ["7307004"] = self.OnSubFinish7307004,
        ["7307005"] = self.OnSubFinish7307005,
        ["7307011"] = self.OnSubFinish7307011,
        ["7307006"] = self.OnSubFinish7307006,
        ["7307018"] = self.OnSubFinish7307018,
        ["7307007"] = self.OnSubFinish7307007,
        ["7307010"] = self.OnSubFinish7307010,
        ["7307001"] = self.OnSubFinish7307001,
        ["7307012"] = self.OnSubFinish7307012,
        ["7307013"] = self.OnSubFinish7307013,
        ["7307017"] = self.OnSubFinish7307017,
        ["7307019"] = self.OnSubFinish7307019,
        ["7307014"] = self.OnSubFinish7307014,
        ["7307015"] = self.OnSubFinish7307015,
        ["7307016"] = self.OnSubFinish7307016
    }
end

function Quest73070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73070:Start()
    print("Start")
end

function Quest73070:OnDestroy()
    print("OnDestroy")
end

function Quest73070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73070:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73070:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73070:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73070:OnSubStart7307002(arg1)
    print("OnSubStart7307002")
end

function Quest73070:OnSubFinish7307002(arg1)
    print("OnSubFinish7307002")
end

function Quest73070:OnSubStart7307020(arg1)
    print("OnSubStart7307020")
    self:CreateQuestNpc(arg1, npcs.Npc20666Data.id, 1)
    actorMgr:CreateActorWithPos("Q7307002Trigger", "Actor/Gadget/Q7307002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7307002_N20666").pos, sceneData:GetDummyPoint(3, "Q7307002_N20666").rot, true, false, 3)
end

function Quest73070:OnSubFinish7307020(arg1)
    print("OnSubFinish7307020")
end

function Quest73070:OnSubStart7307004(arg1)
    print("OnSubStart7307004")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
end

function Quest73070:OnSubFinish7307004(arg1)
    print("OnSubFinish7307004")
end

function Quest73070:OnSubStart7307005(arg1)
    print("OnSubStart7307005")
end

function Quest73070:OnSubFinish7307005(arg1)
    print("OnSubFinish7307005")
    self:NarratorOnlyTask(datas.Q7307011NarratorTable, nil, "")
end

function Quest73070:OnSubStart7307011(arg1)
    print("OnSubStart7307011")
end

function Quest73070:OnSubFinish7307011(arg1)
    print("OnSubFinish7307011")
end

function Quest73070:OnSubStart7307006(arg1)
    print("OnSubStart7307006")
    self:NpcCreateWithTriggerBlack(npcs.Npc20666Data.id, 7307006, 1)
    self:NpcCreateWithTriggerBlack(npcs.Npc20646Data.id, 7307006, 2)
end

function Quest73070:OnSubFinish7307006(arg1)
    print("OnSubFinish7307006")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20666Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73070:OnSubStart7307018(arg1)
    print("OnSubStart7307018")
    actorMgr:CreateActorWithPos("Q7307018Trigger", "Actor/Gadget/Q7307018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7307007_guide").pos, sceneData:GetDummyPoint(3, "Q7307007_guide").rot, true, false, 3)
end

function Quest73070:OnSubFinish7307018(arg1)
    print("OnSubFinish7307018")
end

function Quest73070:OnSubStart7307007(arg1)
    print("OnSubStart7307007")
end

function Quest73070:OnSubFinish7307007(arg1)
    print("OnSubFinish7307007")
end

function Quest73070:OnSubStart7307010(arg1)
    print("OnSubStart7307010")
    actorMgr:CreateActorWithPos("Q7307010Trigger", "Actor/Gadget/Q7307010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7307010_guide").pos, sceneData:GetDummyPoint(3, "Q7307010_guide").rot, true, false, 3)
end

function Quest73070:OnSubFinish7307010(arg1)
    print("OnSubFinish7307010")
end

function Quest73070:OnSubStart7307001(arg1)
    print("OnSubStart7307001")
end

function Quest73070:OnSubFinish7307001(arg1)
    print("OnSubFinish7307001")
end

function Quest73070:OnSubStart7307012(arg1)
    print("OnSubStart7307012")
end

function Quest73070:OnSubFinish7307012(arg1)
    print("OnSubFinish7307012")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73070:OnSubStart7307013(arg1)
    print("OnSubStart7307013")
end

function Quest73070:OnSubFinish7307013(arg1)
    print("OnSubFinish7307013")
end

function Quest73070:OnSubStart7307017(arg1)
    print("OnSubStart7307017")
end

function Quest73070:OnSubFinish7307017(arg1)
    print("OnSubFinish7307017")
end

function Quest73070:OnSubStart7307019(arg1)
    print("OnSubStart7307019")
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(661, 1152, true, datas.Q7307014TextmapId, 3)
    end)
end

function Quest73070:OnSubFinish7307019(arg1)
    print("OnSubFinish7307019")
end

function Quest73070:OnSubStart7307014(arg1)
    print("OnSubStart7307014")
end

function Quest73070:OnSubFinish7307014(arg1)
    print("OnSubFinish7307014")
end

function Quest73070:OnSubStart7307015(arg1)
    print("OnSubStart7307015")
end

function Quest73070:OnSubFinish7307015(arg1)
    print("OnSubFinish7307015")
end

function Quest73070:OnSubStart7307016(arg1)
    print("OnSubStart7307016")
    self:RequestInteraction(npcs.Npc20646Data.alias)
end

function Quest73070:OnSubFinish7307016(arg1)
    print("OnSubFinish7307016")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

return Quest73070
