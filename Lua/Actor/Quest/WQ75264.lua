require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75264 = class("Quest75264", QuestActorProxy)
Quest75264.defaultAlias = "Quest75264"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75264:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75264:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526401"] = self.OnSubStart7526401,
        ["7526403"] = self.OnSubStart7526403,
        ["7526404"] = self.OnSubStart7526404
    }
end

function Quest75264:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526401"] = self.OnSubFinish7526401,
        ["7526403"] = self.OnSubFinish7526403,
        ["7526404"] = self.OnSubFinish7526404
    }
end

function Quest75264:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75264:Start()
    print("Start")
end

function Quest75264:OnDestroy()
    print("OnDestroy")
end

function Quest75264:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75264:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75264:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75264:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75264:OnSubStart7526401(arg1)
    print("OnSubStart7526401")
end

function Quest75264:OnSubFinish7526401(arg1)
    print("OnSubFinish7526401")
end

function Quest75264:OnSubStart7526403(arg1)
    print("OnSubStart7526403")
    this:CreateQuestNpc(arg1, npcs.Npc22008.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22008.alias, 75264):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22119.id, 0, false, 0)
end

function Quest75264:OnSubFinish7526403(arg1)
    print("OnSubFinish7526403")
end

function Quest75264:OnSubStart7526404(arg1)
    print("OnSubStart7526404")
    this:CreateQuestNpc(arg1, npcs.Npc22008.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22008.alias, 75264):DoFreeStyle(4190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22119.id, 0, false, 0)
end

function Quest75264:OnSubFinish7526404(arg1)
    print("OnSubFinish7526404")
    this:DeployStoryByQuest(147526401)
end

return Quest75264
