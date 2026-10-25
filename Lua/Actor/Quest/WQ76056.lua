require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76056 = class("Quest76056", QuestActorProxy)
Quest76056.defaultAlias = "Quest76056"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76056:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7605601"] = self.OnSubStart7605601,
        ["7605604"] = self.OnSubStart7605604,
        ["7605602"] = self.OnSubStart7605602,
        ["7605605"] = self.OnSubStart7605605,
        ["7605603"] = self.OnSubStart7605603,
        ["7605606"] = self.OnSubStart7605606,
        ["7605607"] = self.OnSubStart7605607
    }
end

function Quest76056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7605601"] = self.OnSubFinish7605601,
        ["7605604"] = self.OnSubFinish7605604,
        ["7605602"] = self.OnSubFinish7605602,
        ["7605605"] = self.OnSubFinish7605605,
        ["7605603"] = self.OnSubFinish7605603,
        ["7605606"] = self.OnSubFinish7605606,
        ["7605607"] = self.OnSubFinish7605607
    }
end

function Quest76056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76056:Start()
    print("Start")
end

function Quest76056:OnDestroy()
    print("OnDestroy")
end

function Quest76056:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76056:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76056:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76056:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76056:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76056:OnSubStart7605601(arg1)
    print("OnSubStart7605601")
    this:CreateQuestNpc(arg1, npcs.Npc22105.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22106.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22107.id, 0, false, 0)
end

function Quest76056:OnSubFinish7605601(arg1)
    print("OnSubFinish7605601")
    this:SafeDestroyQuestNpc(npcs.Npc22105.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22106.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22107.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76056:OnSubStart7605604(arg1)
    print("OnSubStart7605604")
end

function Quest76056:OnSubFinish7605604(arg1)
    print("OnSubFinish7605604")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76056:OnSubStart7605602(arg1)
    print("OnSubStart7605602")
    this:CreateQuestNpc(arg1, npcs.Npc22105.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22106.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22107.id, 0, false, 0)
end

function Quest76056:OnSubFinish7605602(arg1)
    print("OnSubFinish7605602")
    this:SafeDestroyQuestNpc(npcs.Npc22105.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22106.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22107.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76056:OnSubStart7605605(arg1)
    print("OnSubStart7605605")
end

function Quest76056:OnSubFinish7605605(arg1)
    print("OnSubFinish7605605")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76056:OnSubStart7605603(arg1)
    print("OnSubStart7605603")
    this:CreateQuestNpc(arg1, npcs.Npc22105.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22105.alias, 76056):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22106.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22107.id, 0, false, 0)
end

function Quest76056:OnSubFinish7605603(arg1)
    print("OnSubFinish7605603")
    this:SafeDestroyQuestNpc(npcs.Npc22105.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22106.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22107.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76056:OnSubStart7605606(arg1)
    print("OnSubStart7605606")
end

function Quest76056:OnSubFinish7605606(arg1)
    print("OnSubFinish7605606")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76056:OnSubStart7605607(arg1)
    print("OnSubStart7605607")
    this:CreateQuestNpc(arg1, npcs.Npc22105.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22105.alias, 76056):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22106.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22107.id, 0, false, 0)
end

function Quest76056:OnSubFinish7605607(arg1)
    print("OnSubFinish7605607")
    this:NpcDestroyWithDither(3, npcs.Npc22105.alias)
    this:NpcDestroyWithDither(3, npcs.Npc22106.alias)
    this:NpcDestroyWithDither(3, npcs.Npc22107.alias)
end

return Quest76056
