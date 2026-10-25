require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76116 = class("Quest76116", QuestActorProxy)
Quest76116.defaultAlias = "Quest76116"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76116:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76116:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7611601"] = self.OnSubStart7611601}
end

function Quest76116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7611601"] = self.OnSubFinish7611601}
end

function Quest76116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76116:OnSubStart7611601(arg1)
    print("OnSubStart7611601")
    this:CreateQuestNpc(arg1, npcs.Npc21828.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21828.alias, 76116):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7091.alias, 76116):DoFreeStyle(1171, true, nil, true, true, false, false)
end

function Quest76116:OnSubFinish7611601(arg1)
    print("OnSubFinish7611601")
    this:SafeDestroyQuestNpc(npcs.Npc21828.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7091.alias, 3)
end

return Quest76116
