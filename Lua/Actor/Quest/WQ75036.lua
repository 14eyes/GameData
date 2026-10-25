require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75036 = class("Quest75036", QuestActorProxy)
Quest75036.defaultAlias = "Quest75036"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503601"] = self.OnSubStart7503601,
        ["7503602"] = self.OnSubStart7503602,
        ["7503603"] = self.OnSubStart7503603,
        ["7503604"] = self.OnSubStart7503604,
        ["7503605"] = self.OnSubStart7503605,
        ["7503606"] = self.OnSubStart7503606,
        ["7503610"] = self.OnSubStart7503610,
        ["7503607"] = self.OnSubStart7503607,
        ["7503608"] = self.OnSubStart7503608
    }
end

function Quest75036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503601"] = self.OnSubFinish7503601,
        ["7503602"] = self.OnSubFinish7503602,
        ["7503603"] = self.OnSubFinish7503603,
        ["7503604"] = self.OnSubFinish7503604,
        ["7503605"] = self.OnSubFinish7503605,
        ["7503606"] = self.OnSubFinish7503606,
        ["7503610"] = self.OnSubFinish7503610,
        ["7503607"] = self.OnSubFinish7503607,
        ["7503608"] = self.OnSubFinish7503608
    }
end

function Quest75036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75036:Start()
    print("Start")
end

function Quest75036:OnDestroy()
    print("OnDestroy")
end

function Quest75036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21567.alias, 3)
    this:DestroyNpcTrigger("Q7503602N21567Trigger")
    this:DestroyNpcTrigger("Q7503604N21567Trigger")
    this:DestroyNpcTrigger("Q7503610N21567Trigger")
    this:DestroyNpcTrigger("Q7503608N21567Trigger")
end

function Quest75036:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75036:OnSubStart7503601(arg1)
    print("OnSubStart7503601")
end

function Quest75036:OnSubFinish7503601(arg1)
    print("OnSubFinish7503601")
end

function Quest75036:OnSubStart7503602(arg1)
    print("OnSubStart7503602")
    this:NpcCreateWithNpcTrigger(npcs.Npc21567.id, 0, 25, 7503602)
end

function Quest75036:OnSubFinish7503602(arg1)
    print("OnSubFinish7503602")
    this:SafeDestroyQuestNpc(npcs.Npc21567.alias, 3)
    this:SetNavigationByMainId(75036, true)
end

function Quest75036:OnSubStart7503603(arg1)
    print("OnSubStart7503603")
    this:DeployStoryByQuest(147503603)
end

function Quest75036:OnSubFinish7503603(arg1)
    print("OnSubFinish7503603")
    this:CancelStoryByQuest(147503603)
end

function Quest75036:OnSubStart7503604(arg1)
    print("OnSubStart7503604")
    this:NpcCreateWithNpcTrigger(npcs.Npc21567.id, 0, 25, 7503604)
end

function Quest75036:OnSubFinish7503604(arg1)
    print("OnSubFinish7503604")
    this:SafeDestroyQuestNpc(npcs.Npc21567.alias, 3)
end

function Quest75036:OnSubStart7503605(arg1)
    print("OnSubStart7503605")
end

function Quest75036:OnSubFinish7503605(arg1)
    print("OnSubFinish7503605")
end

function Quest75036:OnSubStart7503606(arg1)
    print("OnSubStart7503606")
end

function Quest75036:OnSubFinish7503606(arg1)
    print("OnSubFinish7503606")
end

function Quest75036:OnSubStart7503610(arg1)
    print("OnSubStart7503610")
    this:NpcCreateWithNpcTrigger(npcs.Npc21567.id, 0, 25, 7503610)
end

function Quest75036:OnSubFinish7503610(arg1)
    print("OnSubFinish7503610")
    this:SafeDestroyQuestNpc(npcs.Npc21567.alias, 3)
end

function Quest75036:OnSubStart7503607(arg1)
    print("OnSubStart7503607")
end

function Quest75036:OnSubFinish7503607(arg1)
    print("OnSubFinish7503607")
end

function Quest75036:OnSubStart7503608(arg1)
    print("OnSubStart7503608")
    this:NpcCreateWithNpcTrigger(npcs.Npc21567.id, 0, 25, 7503608)
end

function Quest75036:OnSubFinish7503608(arg1)
    print("OnSubFinish7503608")
    this:SafeDestroyQuestNpc(npcs.Npc21567.alias, 3)
end

return Quest75036
