require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75044 = class("Quest75044", QuestActorProxy)
Quest75044.defaultAlias = "Quest75044"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75044:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7504401"] = self.OnSubStart7504401,
        ["7504402"] = self.OnSubStart7504402,
        ["7504403"] = self.OnSubStart7504403,
        ["7504404"] = self.OnSubStart7504404
    }
end

function Quest75044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7504401"] = self.OnSubFinish7504401,
        ["7504402"] = self.OnSubFinish7504402,
        ["7504403"] = self.OnSubFinish7504403,
        ["7504404"] = self.OnSubFinish7504404
    }
end

function Quest75044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75044:Start()
    print("Start")
end

function Quest75044:OnDestroy()
    print("OnDestroy")
end

function Quest75044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75044:OnSubStart7504401(arg1)
    print("OnSubStart7504401")
    this:CreateQuestNpc(arg1, npcs.Npc21593Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21594Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21595Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21761Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21761Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21762Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21762Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest75044:OnSubFinish7504401(arg1)
    print("OnSubFinish7504401")
    this:SafeDestroyQuestNpc(npcs.Npc21593Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21594Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21595Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21761Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21762Data.alias, 3)
end

function Quest75044:OnSubStart7504402(arg1)
    print("OnSubStart7504402")
    this:CreateQuestNpc(arg1, npcs.Npc21743Data.id, 0, false, 0)
end

function Quest75044:OnSubFinish7504402(arg1)
    print("OnSubFinish7504402")
    this:SafeDestroyQuestNpc(npcs.Npc21743Data.alias, 3)
end

function Quest75044:OnSubStart7504403(arg1)
    print("OnSubStart7504403")
end

function Quest75044:OnSubFinish7504403(arg1)
    print("OnSubFinish7504403")
end

function Quest75044:OnSubStart7504404(arg1)
    print("OnSubStart7504404")
end

function Quest75044:OnSubFinish7504404(arg1)
    print("OnSubFinish7504404")
end

return Quest75044
