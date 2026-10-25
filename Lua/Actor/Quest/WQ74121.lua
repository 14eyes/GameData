require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74121 = class("Quest74121", QuestActorProxy)
Quest74121.defaultAlias = "Quest74121"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74121:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7412101"] = self.OnSubStart7412101,
        ["7412102"] = self.OnSubStart7412102,
        ["7412103"] = self.OnSubStart7412103,
        ["7412104"] = self.OnSubStart7412104,
        ["7412105"] = self.OnSubStart7412105,
        ["7412106"] = self.OnSubStart7412106,
        ["7412107"] = self.OnSubStart7412107,
        ["7412108"] = self.OnSubStart7412108,
        ["7412109"] = self.OnSubStart7412109,
        ["7412112"] = self.OnSubStart7412112,
        ["7412110"] = self.OnSubStart7412110,
        ["7412111"] = self.OnSubStart7412111
    }
end

function Quest74121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7412101"] = self.OnSubFinish7412101,
        ["7412102"] = self.OnSubFinish7412102,
        ["7412103"] = self.OnSubFinish7412103,
        ["7412104"] = self.OnSubFinish7412104,
        ["7412105"] = self.OnSubFinish7412105,
        ["7412106"] = self.OnSubFinish7412106,
        ["7412107"] = self.OnSubFinish7412107,
        ["7412108"] = self.OnSubFinish7412108,
        ["7412109"] = self.OnSubFinish7412109,
        ["7412112"] = self.OnSubFinish7412112,
        ["7412110"] = self.OnSubFinish7412110,
        ["7412111"] = self.OnSubFinish7412111
    }
end

function Quest74121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74121:Start()
    print("Start")
end

function Quest74121:OnDestroy()
    print("OnDestroy")
end

function Quest74121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74121:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74121:OnSubStart7412101(arg1)
    print("OnSubStart7412101")
    this:CreateQuestNpc(arg1, npcs.Npc21106Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21029Data.id, 0)
end

function Quest74121:OnSubFinish7412101(arg1)
    print("OnSubFinish7412101")
end

function Quest74121:OnSubStart7412102(arg1)
    print("OnSubStart7412102")
    this:CreateQuestNpc(arg1, npcs.Npc21106Data.id, 0)
end

function Quest74121:OnSubFinish7412102(arg1)
    print("OnSubFinish7412102")
end

function Quest74121:OnSubStart7412103(arg1)
    print("OnSubStart7412103")
    this:CreateQuestNpc(arg1, npcs.Npc21091Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21091Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21092Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21092Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74121:OnSubFinish7412103(arg1)
    print("OnSubFinish7412103")
end

function Quest74121:OnSubStart7412104(arg1)
    print("OnSubStart7412104")
    this:GetQuestNpcActor(npcs.Npc21091Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21092Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74121:OnSubFinish7412104(arg1)
    print("OnSubFinish7412104")
end

function Quest74121:OnSubStart7412105(arg1)
    print("OnSubStart7412105")
    this:GetQuestNpcActor(npcs.Npc21091Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21092Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74121:OnSubFinish7412105(arg1)
    print("OnSubFinish7412105")
end

function Quest74121:OnSubStart7412106(arg1)
    print("OnSubStart7412106")
    this:GetQuestNpcActor(npcs.Npc21091Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21092Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74121:OnSubFinish7412106(arg1)
    print("OnSubFinish7412106")
end

function Quest74121:OnSubStart7412107(arg1)
    print("OnSubStart7412107")
    this:GetQuestNpcActor(npcs.Npc21091Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21092Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74121:OnSubFinish7412107(arg1)
    print("OnSubFinish7412107")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest74121:OnSubStart7412108(arg1)
    print("OnSubStart7412108")
    this:GetQuestNpcActor(npcs.Npc21091Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21092Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74121:OnSubFinish7412108(arg1)
    print("OnSubFinish7412108")
end

function Quest74121:OnSubStart7412109(arg1)
    print("OnSubStart7412109")
    this:GetQuestNpcActor(npcs.Npc21091Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21092Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21106Data.id, 0)
end

function Quest74121:OnSubFinish7412109(arg1)
    print("OnSubFinish7412109")
    this:SafeDestroyQuestNpc(npcs.Npc21091Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21092Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21106Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21029Data.alias)
end

function Quest74121:OnSubStart7412112(arg1)
    print("OnSubStart7412112")
    this:CreateQuestNpc(arg1, npcs.Npc5254Data.id, 0)
    this:RequestInteraction(npcs.Npc5254Data.alias)
end

function Quest74121:OnSubFinish7412112(arg1)
    print("OnSubFinish7412112")
end

function Quest74121:OnSubStart7412110(arg1)
    print("OnSubStart7412110")
end

function Quest74121:OnSubFinish7412110(arg1)
    print("OnSubFinish7412110")
end

function Quest74121:OnSubStart7412111(arg1)
    print("OnSubStart7412111")
end

function Quest74121:OnSubFinish7412111(arg1)
    print("OnSubFinish7412111")
end

return Quest74121
