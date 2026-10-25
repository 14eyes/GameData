require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75250 = class("Quest75250", QuestActorProxy)
Quest75250.defaultAlias = "Quest75250"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75250:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75250:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7525001"] = self.OnSubStart7525001,
        ["7525002"] = self.OnSubStart7525002,
        ["7525003"] = self.OnSubStart7525003,
        ["7525004"] = self.OnSubStart7525004
    }
end

function Quest75250:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7525001"] = self.OnSubFinish7525001,
        ["7525002"] = self.OnSubFinish7525002,
        ["7525003"] = self.OnSubFinish7525003,
        ["7525004"] = self.OnSubFinish7525004
    }
end

function Quest75250:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75250:Start()
    print("Start")
end

function Quest75250:OnDestroy()
    print("OnDestroy")
end

function Quest75250:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75250:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75250:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75250:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75250:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75250:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75250:OnSubStart7525001(arg1)
    print("OnSubStart7525001")
    this:CreateQuestNpc(arg1, npcs.Npc22126.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22126.alias, 75250):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22125.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22125.alias, 75250):DoFreeStyle(1013, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22127.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22128.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22129.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22129.alias, 75250):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22130.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22130.alias, 75250):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6588.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6588.alias, 75250):DoFreeStyle(4473, true, nil, true, true, false, false)
end

function Quest75250:OnSubFinish7525001(arg1)
    print("OnSubFinish7525001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22126.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22125.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22127.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22128.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22129.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22130.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest75250:OnSubStart7525002(arg1)
    print("OnSubStart7525002")
    this:NpcCreateWithNpcTrigger(npcs.Npc6588.id, 0, 10, 7525002)
    this:GetQuestNpcActor(npcs.Npc6588.alias, 75250):DoFreeStyle(1080, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6588.alias, 75250):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc22122.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22122.alias, 75250):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22123.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22123.alias, 75250):DoFreeStyle(7, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22124.id, 0, false, 0)
end

function Quest75250:OnSubFinish7525002(arg1)
    print("OnSubFinish7525002")
end

function Quest75250:OnSubStart7525003(arg1)
    print("OnSubStart7525003")
    this:CreateQuestNpc(arg1, npcs.Npc6588.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6588.alias, 75250):DoFreeStyle(4473, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22122.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22122.alias, 75250):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22123.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22123.alias, 75250):DoFreeStyle(5, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22124.id, 0, false, 0)
end

function Quest75250:OnSubFinish7525003(arg1)
    print("OnSubFinish7525003")
    this:SafeDestroyQuestNpc(npcs.Npc22122.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22123.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22124.alias, 3)
end

function Quest75250:OnSubStart7525004(arg1)
    print("OnSubStart7525004")
    this:NpcCreateWithNpcTrigger(npcs.Npc6588.id, 0, 40, 7525004)
end

function Quest75250:OnSubFinish7525004(arg1)
    print("OnSubFinish7525004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6588.alias)
end

return Quest75250
