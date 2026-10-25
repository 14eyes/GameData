require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76129 = class("Quest76129", QuestActorProxy)
Quest76129.defaultAlias = "Quest76129"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76129:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76129:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7612901"] = self.OnSubStart7612901}
end

function Quest76129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7612901"] = self.OnSubFinish7612901}
end

function Quest76129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76129:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76129:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76129:OnSubStart7612901(arg1)
    print("OnSubStart7612901")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc7000.id, 0, 15, 7612901)
        this:NpcCreateWithActionSafeCall(0, npcs.Npc7016.id, arg1)
        this:GetQuestNpcActor(npcs.Npc7016.alias, 76129):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest76129:OnSubFinish7612901(arg1)
    print("OnSubFinish7612901")
    this:SafeDestroyQuestNpc(npcs.Npc7000.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7016.alias, 3)
end

return Quest76129
