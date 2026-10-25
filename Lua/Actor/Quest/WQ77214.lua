require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77214 = class("Quest77214", QuestActorProxy)
Quest77214.defaultAlias = "Quest77214"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77214:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77214:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721401"] = self.OnSubStart7721401,
        ["7721402"] = self.OnSubStart7721402,
        ["7721404"] = self.OnSubStart7721404,
        ["7721403"] = self.OnSubStart7721403
    }
end

function Quest77214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721401"] = self.OnSubFinish7721401,
        ["7721402"] = self.OnSubFinish7721402,
        ["7721404"] = self.OnSubFinish7721404,
        ["7721403"] = self.OnSubFinish7721403
    }
end

function Quest77214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77214:Start()
    print("Start")
end

function Quest77214:OnDestroy()
    print("OnDestroy")
end

function Quest77214:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77214:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77214:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77214:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77214:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        actorUtils.FinishQuestWithParam({false}, {7721401})
    end
end

function Quest77214:OnSubStart7721401(arg1)
    print("OnSubStart7721401")
    this:CreateQuestNpc(arg1, npcs.Npc22807.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22808.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22809.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22810.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22811.id, 0, false, 0)
end

function Quest77214:OnSubFinish7721401(arg1)
    print("OnSubFinish7721401")
    this:SafeDestroyQuestNpc(npcs.Npc22807.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22808.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22809.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22810.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22811.alias, 3)
end

function Quest77214:OnSubStart7721402(arg1)
    print("OnSubStart7721402")
    this:RequestInteraction(npcs.Npc22807.alias, "", true)
end

function Quest77214:OnSubFinish7721402(arg1)
    print("OnSubFinish7721402")
end

function Quest77214:OnSubStart7721404(arg1)
    print("OnSubStart7721404")
end

function Quest77214:OnSubFinish7721404(arg1)
    print("OnSubFinish7721404")
end

function Quest77214:OnSubStart7721403(arg1)
    print("OnSubStart7721403")
end

function Quest77214:OnSubFinish7721403(arg1)
    print("OnSubFinish7721403")
end

return Quest77214
