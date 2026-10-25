require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76043 = class("Quest76043", QuestActorProxy)
Quest76043.defaultAlias = "Quest76043"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76043:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76043:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7604301"] = self.OnSubStart7604301, ["7604302"] = self.OnSubStart7604302}
end

function Quest76043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7604301"] = self.OnSubFinish7604301, ["7604302"] = self.OnSubFinish7604302}
end

function Quest76043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76043:Start()
    print("Start")
end

function Quest76043:OnDestroy()
    print("OnDestroy")
end

function Quest76043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76043:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76043:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76043:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76043:OnSubStart7604301(arg1)
    print("OnSubStart7604301")
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 15, 7604301)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
end

function Quest76043:OnSubFinish7604301(arg1)
    print("OnSubFinish7604301")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 1205)
end

function Quest76043:OnSubStart7604302(arg1)
    print("OnSubStart7604302")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7051.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7051.alias, 76043):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7052.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7052.alias, 76043):DoFreeStyle(4412, true, nil, true, true, false, false)
    end)
end

function Quest76043:OnSubFinish7604302(arg1)
    print("OnSubFinish7604302")
    this:SafeDestroyQuestNpc(npcs.Npc7051.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7052.alias, 3)
end

return Quest76043
