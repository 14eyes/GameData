require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74091 = class("Quest74091", QuestActorProxy)
Quest74091.defaultAlias = "Quest74091"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74091:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74091:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7409101"] = self.OnSubStart7409101,
        ["7409112"] = self.OnSubStart7409112,
        ["7409102"] = self.OnSubStart7409102,
        ["7409115"] = self.OnSubStart7409115,
        ["7409103"] = self.OnSubStart7409103,
        ["7409113"] = self.OnSubStart7409113,
        ["7409104"] = self.OnSubStart7409104,
        ["7409114"] = self.OnSubStart7409114,
        ["7409105"] = self.OnSubStart7409105,
        ["7409106"] = self.OnSubStart7409106,
        ["7409107"] = self.OnSubStart7409107,
        ["7409108"] = self.OnSubStart7409108,
        ["7409109"] = self.OnSubStart7409109,
        ["7409111"] = self.OnSubStart7409111,
        ["7409110"] = self.OnSubStart7409110
    }
end

function Quest74091:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7409101"] = self.OnSubFinish7409101,
        ["7409112"] = self.OnSubFinish7409112,
        ["7409102"] = self.OnSubFinish7409102,
        ["7409115"] = self.OnSubFinish7409115,
        ["7409103"] = self.OnSubFinish7409103,
        ["7409113"] = self.OnSubFinish7409113,
        ["7409104"] = self.OnSubFinish7409104,
        ["7409114"] = self.OnSubFinish7409114,
        ["7409105"] = self.OnSubFinish7409105,
        ["7409106"] = self.OnSubFinish7409106,
        ["7409107"] = self.OnSubFinish7409107,
        ["7409108"] = self.OnSubFinish7409108,
        ["7409109"] = self.OnSubFinish7409109,
        ["7409111"] = self.OnSubFinish7409111,
        ["7409110"] = self.OnSubFinish7409110
    }
end

function Quest74091:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74091:Start()
    print("Start")
end

function Quest74091:OnDestroy()
    print("OnDestroy")
end

function Quest74091:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74091:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74091:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74091:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74091:OnSubStart7409101(arg1)
    print("OnSubStart7409101")
    this:CreateQuestNpc(arg1, npcs.Npc5227Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5227Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5226Data.id, 0)
end

function Quest74091:OnSubFinish7409101(arg1)
    print("OnSubFinish7409101")
end

function Quest74091:OnSubStart7409112(arg1)
    print("OnSubStart7409112")
    this:GetQuestNpcActor(npcs.Npc5227Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q74091Trigger1", "Actor/Gadget/Q74091Trigger1", 70900002, 0, points.TPos_Q74091Trigger1.pos, points.TPos_Q74091Trigger1.rot, true, false, 3)
end

function Quest74091:OnSubFinish7409112(arg1)
    print("OnSubFinish7409112")
    this:CreateQuestNpc(arg1, npcs.Npc5226Data.id, 0)
end

function Quest74091:OnSubStart7409102(arg1)
    print("OnSubStart7409102")
    this:GetQuestNpcActor(npcs.Npc5227Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q74091Trigger2", "Actor/Gadget/Q74091Trigger2", 70900002, 0, points.TPos_Q74091Trigger2.pos, points.TPos_Q74091Trigger2.rot, true, false, 3)
end

function Quest74091:OnSubFinish7409102(arg1)
    print("OnSubFinish7409102")
end

function Quest74091:OnSubStart7409115(arg1)
    print("OnSubStart7409115")
    this:GetQuestNpcActor(npcs.Npc5227Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
end

function Quest74091:OnSubFinish7409115(arg1)
    print("OnSubFinish7409115")
end

function Quest74091:OnSubStart7409103(arg1)
    print("OnSubStart7409103")
    this:GetQuestNpcActor(npcs.Npc5227Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
end

function Quest74091:OnSubFinish7409103(arg1)
    print("OnSubFinish7409103")
end

function Quest74091:OnSubStart7409113(arg1)
    print("OnSubStart7409113")
    this:GetQuestNpcActor(npcs.Npc5227Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
end

function Quest74091:OnSubFinish7409113(arg1)
    print("OnSubFinish7409113")
end

function Quest74091:OnSubStart7409104(arg1)
    print("OnSubStart7409104")
    this:GetQuestNpcActor(npcs.Npc5227Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
end

function Quest74091:OnSubFinish7409104(arg1)
    print("OnSubFinish7409104")
end

function Quest74091:OnSubStart7409114(arg1)
    print("OnSubStart7409114")
    this:CreateQuestNpc(arg1, npcs.Npc5226Data.id, 0)
    this:SafeDestroyQuestNpc(npcs.Npc5227Data.alias, 3)
end

function Quest74091:OnSubFinish7409114(arg1)
    print("OnSubFinish7409114")
end

function Quest74091:OnSubStart7409105(arg1)
    print("OnSubStart7409105")
    this:CreateQuestNpc(arg1, npcs.Npc5226Data.id, 0)
    this:SafeDestroyQuestNpc(npcs.Npc5227Data.alias, 3)
end

function Quest74091:OnSubFinish7409105(arg1)
    print("OnSubFinish7409105")
end

function Quest74091:OnSubStart7409106(arg1)
    print("OnSubStart7409106")
    this:CreateQuestNpc(arg1, npcs.Npc5227Data.id, 0)
end

function Quest74091:OnSubFinish7409106(arg1)
    print("OnSubFinish7409106")
end

function Quest74091:OnSubStart7409107(arg1)
    print("OnSubStart7409107")
end

function Quest74091:OnSubFinish7409107(arg1)
    print("OnSubFinish7409107")
end

function Quest74091:OnSubStart7409108(arg1)
    print("OnSubStart7409108")
end

function Quest74091:OnSubFinish7409108(arg1)
    print("OnSubFinish7409108")
end

function Quest74091:OnSubStart7409109(arg1)
    print("OnSubStart7409109")
end

function Quest74091:OnSubFinish7409109(arg1)
    print("OnSubFinish7409109")
end

function Quest74091:OnSubStart7409111(arg1)
    print("OnSubStart7409111")
end

function Quest74091:OnSubFinish7409111(arg1)
    print("OnSubFinish7409111")
end

function Quest74091:OnSubStart7409110(arg1)
    print("OnSubStart7409110")
end

function Quest74091:OnSubFinish7409110(arg1)
    print("OnSubFinish7409110")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5227Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5226Data.alias)
end

return Quest74091
