require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75119 = class("Quest75119", QuestActorProxy)
Quest75119.defaultAlias = "Quest75119"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75119:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75119:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7511901"] = self.OnSubStart7511901, ["7511902"] = self.OnSubStart7511902}
end

function Quest75119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7511901"] = self.OnSubFinish7511901, ["7511902"] = self.OnSubFinish7511902}
end

function Quest75119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75119:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75119:OnSubStart7511901(arg1)
    print("OnSubStart7511901")
end

function Quest75119:OnSubFinish7511901(arg1)
    print("OnSubFinish7511901")
    this:CreateQuestNpc(arg1, npcs.Npc21634.id, 0, false, 0)
    this:SafeDestroyQuestNpc(npcs.Npc21634.alias, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21685.id, 0, false, 0)
    this:SafeDestroyQuestNpc(npcs.Npc21685.alias, 3)
end

function Quest75119:OnSubStart7511902(arg1)
    print("OnSubStart7511902")
    this:NpcCreateWithNpcTrigger(npcs.Npc6373.id, 0, 25, 7511902)
    this:GetQuestNpcActor(npcs.Npc6373.alias, 75119):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6374.id, 0, false, 0)
    this:DeployStoryByQuest(300063741)
end

function Quest75119:OnSubFinish7511902(arg1)
    print("OnSubFinish7511902")
    this:SafeDestroyQuestNpc(npcs.Npc6373.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6374.alias, 3)
    this:CancelStoryByQuest(300063741)
end

return Quest75119
