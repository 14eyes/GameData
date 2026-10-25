require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75263 = class("Quest75263", QuestActorProxy)
Quest75263.defaultAlias = "Quest75263"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75263:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75263:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526301"] = self.OnSubStart7526301,
        ["7526302"] = self.OnSubStart7526302,
        ["7526303"] = self.OnSubStart7526303,
        ["7526304"] = self.OnSubStart7526304,
        ["7526305"] = self.OnSubStart7526305,
        ["7526306"] = self.OnSubStart7526306
    }
end

function Quest75263:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526301"] = self.OnSubFinish7526301,
        ["7526302"] = self.OnSubFinish7526302,
        ["7526303"] = self.OnSubFinish7526303,
        ["7526304"] = self.OnSubFinish7526304,
        ["7526305"] = self.OnSubFinish7526305,
        ["7526306"] = self.OnSubFinish7526306
    }
end

function Quest75263:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75263:Start()
    print("Start")
end

function Quest75263:OnDestroy()
    print("OnDestroy")
end

function Quest75263:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75263:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75263:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75263:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75263:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75263:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75263:OnSubStart7526301(arg1)
    print("OnSubStart7526301")
    this:CreateQuestNpc(arg1, npcs.Npc6565.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22003.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22004.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22005.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22006.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22007.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6630.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6631.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6632.id, 0, false, 0)
end

function Quest75263:OnSubFinish7526301(arg1)
    print("OnSubFinish7526301")
    this:SafeDestroyQuestNpc(npcs.Npc6565.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22003.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22004.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22005.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22006.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22007.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6630.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6631.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6632.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 0, nil, nil, nil)
end

function Quest75263:OnSubStart7526302(arg1)
    print("OnSubStart7526302")
    this:CreateQuestNpc(arg1, npcs.Npc6565.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22005.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22006.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22007.id, 0, false, 0)
end

function Quest75263:OnSubFinish7526302(arg1)
    print("OnSubFinish7526302")
    this:SafeDestroyQuestNpc(npcs.Npc6565.alias, 3)
end

function Quest75263:OnSubStart7526303(arg1)
    print("OnSubStart7526303")
    this:CreateQuestNpc(arg1, npcs.Npc6565.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22005.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22006.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22007.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6630.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6631.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6632.id, 0, false, 0)
end

function Quest75263:OnSubFinish7526303(arg1)
    print("OnSubFinish7526303")
    this:SafeDestroyQuestNpc(npcs.Npc6565.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6630.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6631.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6632.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_1, 0, nil, nil, nil)
end

function Quest75263:OnSubStart7526304(arg1)
    print("OnSubStart7526304")
    this:CreateQuestNpc(arg1, npcs.Npc6565.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22005.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22006.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22007.id, 0, false, 0)
end

function Quest75263:OnSubFinish7526304(arg1)
    print("OnSubFinish7526304")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6565.alias)
end

function Quest75263:OnSubStart7526305(arg1)
    print("OnSubStart7526305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7526305, 0, 30, 1, npcs.Npc6565.id)
    this:CreateQuestNpc(arg1, npcs.Npc22005.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22006.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22007.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6630.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6631.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6632.id, 0, false, 0)
end

function Quest75263:OnSubFinish7526305(arg1)
    print("OnSubFinish7526305")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6565.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22005.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22006.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22007.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6630.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6631.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6632.alias, 3)
end

function Quest75263:OnSubStart7526306(arg1)
    print("OnSubStart7526306")
end

function Quest75263:OnSubFinish7526306(arg1)
    print("OnSubFinish7526306")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_2, 0, nil, nil, nil)
end

return Quest75263
