require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75269 = class("Quest75269", QuestActorProxy)
Quest75269.defaultAlias = "Quest75269"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75269:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75269:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526901"] = self.OnSubStart7526901,
        ["7526902"] = self.OnSubStart7526902,
        ["7526903"] = self.OnSubStart7526903,
        ["7526904"] = self.OnSubStart7526904,
        ["7526905"] = self.OnSubStart7526905,
        ["7526906"] = self.OnSubStart7526906,
        ["7526907"] = self.OnSubStart7526907,
        ["7526908"] = self.OnSubStart7526908
    }
end

function Quest75269:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526901"] = self.OnSubFinish7526901,
        ["7526902"] = self.OnSubFinish7526902,
        ["7526903"] = self.OnSubFinish7526903,
        ["7526904"] = self.OnSubFinish7526904,
        ["7526905"] = self.OnSubFinish7526905,
        ["7526906"] = self.OnSubFinish7526906,
        ["7526907"] = self.OnSubFinish7526907,
        ["7526908"] = self.OnSubFinish7526908
    }
end

function Quest75269:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75269:Start()
    print("Start")
end

function Quest75269:OnDestroy()
    print("OnDestroy")
end

function Quest75269:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75269:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75269:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75269:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75269:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75269:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75269:OnSubStart7526901(arg1)
    print("OnSubStart7526901")
    this:CreateQuestNpc(arg1, npcs.Npc6588_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6589.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6577.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6585.id, 0, false, 0)
end

function Quest75269:OnSubFinish7526901(arg1)
    print("OnSubFinish7526901")
    this:SafeDestroyQuestNpc(npcs.Npc6588_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6589.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6577.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6585.alias, 3)
end

function Quest75269:OnSubStart7526902(arg1)
    print("OnSubStart7526902")
    this:NpcCreateWithNpcTrigger(npcs.Npc6588_1.id, 0, 20, 7526902)
end

function Quest75269:OnSubFinish7526902(arg1)
    print("OnSubFinish7526902")
    this:SafeDestroyQuestNpc(npcs.Npc6588_1.alias, 3)
end

function Quest75269:OnSubStart7526903(arg1)
    print("OnSubStart7526903")
    this:CreateQuestNpc(arg1, npcs.Npc6588_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6589.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6577.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6585.id, 0, false, 0)
end

function Quest75269:OnSubFinish7526903(arg1)
    print("OnSubFinish7526903")
end

function Quest75269:OnSubStart7526904(arg1)
    print("OnSubStart7526904")
end

function Quest75269:OnSubFinish7526904(arg1)
    print("OnSubFinish7526904")
end

function Quest75269:OnSubStart7526905(arg1)
    print("OnSubStart7526905")
end

function Quest75269:OnSubFinish7526905(arg1)
    print("OnSubFinish7526905")
    this:SafeDestroyQuestNpc(npcs.Npc6588_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6589.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6577.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6585.alias, 3)
end

function Quest75269:OnSubStart7526906(arg1)
    print("OnSubStart7526906")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7526906, 0, 20, 1, npcs.Npc6588_1.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7526906, 0, 20, 1, npcs.Npc22033.id)
end

function Quest75269:OnSubFinish7526906(arg1)
    print("OnSubFinish7526906")
    this:SafeDestroyQuestNpc(npcs.Npc22033.alias, 3)
end

function Quest75269:OnSubStart7526907(arg1)
    print("OnSubStart7526907")
end

function Quest75269:OnSubFinish7526907(arg1)
    print("OnSubFinish7526907")
    this:SafeDestroyQuestNpc(npcs.Npc6588_1.alias, 3)
end

function Quest75269:OnSubStart7526908(arg1)
    print("OnSubStart7526908")
    this:CreateQuestNpc(arg1, npcs.Npc6588_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6586.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6585.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6584.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6583.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6582.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6581.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6580.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6579.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6578.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6577.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6576.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6575.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6589.id, 0, false, 0)
end

function Quest75269:OnSubFinish7526908(arg1)
    print("OnSubFinish7526908")
end

return Quest75269
