require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75103 = class("Quest75103", QuestActorProxy)
Quest75103.defaultAlias = "Quest75103"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75103:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7510307"] = self.OnSubStart7510307,
        ["7510308"] = self.OnSubStart7510308,
        ["7510301"] = self.OnSubStart7510301,
        ["7510302"] = self.OnSubStart7510302,
        ["7510303"] = self.OnSubStart7510303,
        ["7510304"] = self.OnSubStart7510304,
        ["7510309"] = self.OnSubStart7510309,
        ["7510305"] = self.OnSubStart7510305,
        ["7510306"] = self.OnSubStart7510306
    }
end

function Quest75103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7510307"] = self.OnSubFinish7510307,
        ["7510308"] = self.OnSubFinish7510308,
        ["7510301"] = self.OnSubFinish7510301,
        ["7510302"] = self.OnSubFinish7510302,
        ["7510303"] = self.OnSubFinish7510303,
        ["7510304"] = self.OnSubFinish7510304,
        ["7510309"] = self.OnSubFinish7510309,
        ["7510305"] = self.OnSubFinish7510305,
        ["7510306"] = self.OnSubFinish7510306
    }
end

function Quest75103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75103:Start()
    print("Start")
end

function Quest75103:OnDestroy()
    print("OnDestroy")
end

function Quest75103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75103:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75103:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75103:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest75103:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest75103:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75103:OnSubStart7510307(arg1)
    print("OnSubStart7510307")
    this:CreateQuestNpc(arg1, npcs.Npc6256Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6256Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6260Data.id, 0, false, 0)
end

function Quest75103:OnSubFinish7510307(arg1)
    print("OnSubFinish7510307")
end

function Quest75103:OnSubStart7510308(arg1)
    print("OnSubStart7510308")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6256Data.id, 7510308, 0, 60, 1, false)
    this:CreateQuestNpc(arg1, npcs.Npc6260Data.id, 0, false, 0)
end

function Quest75103:OnSubFinish7510308(arg1)
    print("OnSubFinish7510308")
end

function Quest75103:OnSubStart7510301(arg1)
    print("OnSubStart7510301")
    this:CreateQuestNpc(arg1, npcs.Npc6256Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6256Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6260Data.id, 0, false, 0)
end

function Quest75103:OnSubFinish7510301(arg1)
    print("OnSubFinish7510301")
end

function Quest75103:OnSubStart7510302(arg1)
    print("OnSubStart7510302")
end

function Quest75103:OnSubFinish7510302(arg1)
    print("OnSubFinish7510302")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest75103:OnSubStart7510303(arg1)
    print("OnSubStart7510303")
end

function Quest75103:OnSubFinish7510303(arg1)
    print("OnSubFinish7510303")
end

function Quest75103:OnSubStart7510304(arg1)
    print("OnSubStart7510304")
    this:CreateQuestNpc(arg1, npcs.Npc6256Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6256Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6260Data.id, 0, false, 0)
end

function Quest75103:OnSubFinish7510304(arg1)
    print("OnSubFinish7510304")
end

function Quest75103:OnSubStart7510309(arg1)
    print("OnSubStart7510309")
end

function Quest75103:OnSubFinish7510309(arg1)
    print("OnSubFinish7510309")
end

function Quest75103:OnSubStart7510305(arg1)
    print("OnSubStart7510305")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6256Data.id, 7510305, 0, 60, 1, false)
    this:CreateQuestNpc(arg1, npcs.Npc6260Data.id, 0, false, 0)
    this:TransmitPlayerByQuestId(7510305, 1)
end

function Quest75103:OnSubFinish7510305(arg1)
    print("OnSubFinish7510305")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6260Data.alias)
end

function Quest75103:OnSubStart7510306(arg1)
    print("OnSubStart7510306")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc6256Data.id, 7510306, 0, 60, 1, false)
    this:LightNotifyTo(npcs.Npc6256Data.alias, 0, true)
    this:CreateQuestNpc(arg1, npcs.Npc6260Data.id, 0, false, 0)
    this:LightNotifyTo(npcs.Npc6260Data.alias, 0, true)
    actorUtils.FinishQuestID(false, 7510306)
end

function Quest75103:OnSubFinish7510306(arg1)
    print("OnSubFinish7510306")
    this:NpcDestroyWithDither(npcs.Npc6256Data.alias, 3)
    this:NpcDestroy(npcs.Npc6260Data.alias, 3)
end

return Quest75103
