require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70119 = class("Quest70119", QuestActorProxy)
Quest70119.defaultAlias = "Quest70119"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70119:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70119:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7011901"] = self.OnSubStart7011901,
        ["7011902"] = self.OnSubStart7011902,
        ["7011903"] = self.OnSubStart7011903
    }
end

function Quest70119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7011901"] = self.OnSubFinish7011901,
        ["7011902"] = self.OnSubFinish7011902,
        ["7011903"] = self.OnSubFinish7011903
    }
end

function Quest70119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70119:Start()
    print("Start")
end

function Quest70119:OnDestroy()
    print("OnDestroy")
end

function Quest70119:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70119:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70119:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70119:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70119:OnSubStart7011901(arg1)
    print("OnSubStart7011901")
    this:CreateQuestNpc(arg1, npcs.Npc17190.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17190.alias, 70119):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest70119:OnSubFinish7011901(arg1)
    print("OnSubFinish7011901")
end

function Quest70119:OnSubStart7011902(arg1)
    print("OnSubStart7011902")
    this:CreateQuestNpc(arg1, npcs.Npc17190.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17190.alias, 70119):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest70119:OnSubFinish7011902(arg1)
    print("OnSubFinish7011902")
end

function Quest70119:OnSubStart7011903(arg1)
    print("OnSubStart7011903")
    this:CreateQuestNpc(arg1, npcs.Npc17190.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17190.alias, 70119):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest70119:OnSubFinish7011903(arg1)
    print("OnSubFinish7011903")
end

return Quest70119
