require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76153 = class("Quest76153", QuestActorProxy)
Quest76153.defaultAlias = "Quest76153"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76153:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76153:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7615301"] = self.OnSubStart7615301}
end

function Quest76153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7615301"] = self.OnSubFinish7615301}
end

function Quest76153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76153:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76153:OnSubStart7615301(arg1)
    print("OnSubStart7615301")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc7008.id, arg1)
    this:GetQuestNpcActor(npcs.Npc7008.alias, 76153):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76153:OnSubFinish7615301(arg1)
    print("OnSubFinish7615301")
    this:SafeDestroyQuestNpc(npcs.Npc7008.alias, 3)
end

return Quest76153
