require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15016 = class("Quest15016", QuestActorProxy)
Quest15016.defaultAlias = "Quest15016"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest15016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest15016:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1501602"] = self.OnSubStart1501602, ["1501601"] = self.OnSubStart1501601}
end

function Quest15016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1501602"] = self.OnSubFinish1501602, ["1501601"] = self.OnSubFinish1501601}
end

function Quest15016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15016:OnSubStart1501602(arg1)
    print("OnSubStart1501602")
end

function Quest15016:OnSubFinish1501602(arg1)
    print("OnSubFinish1501602")
end

function Quest15016:OnSubStart1501601(arg1)
    print("OnSubStart1501601")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 12, 1501601)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 15016):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest15016:OnSubFinish1501601(arg1)
    print("OnSubFinish1501601")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

return Quest15016
