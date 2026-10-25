require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75229 = class("Quest75229", QuestActorProxy)
Quest75229.defaultAlias = "Quest75229"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75229:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75229:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7522901"] = self.OnSubStart7522901,
        ["7522902"] = self.OnSubStart7522902,
        ["7522903"] = self.OnSubStart7522903
    }
end

function Quest75229:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7522901"] = self.OnSubFinish7522901,
        ["7522902"] = self.OnSubFinish7522902,
        ["7522903"] = self.OnSubFinish7522903
    }
end

function Quest75229:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75229:Start()
    print("Start")
end

function Quest75229:OnDestroy()
    print("OnDestroy")
end

function Quest75229:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75229:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75229:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75229:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75229:OnSubStart7522901(arg1)
    print("OnSubStart7522901")
    this:CreateQuestNpc(arg1, npcs.Npc6570.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6570.alias, 75229):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75229:OnSubFinish7522901(arg1)
    print("OnSubFinish7522901")
end

function Quest75229:OnSubStart7522902(arg1)
    print("OnSubStart7522902")
    this:GetQuestNpcActor(npcs.Npc6570.alias, 75229):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75229:OnSubFinish7522902(arg1)
    print("OnSubFinish7522902")
    this:SafeDestroyQuestNpc(npcs.Npc6570.alias, 3)
end

function Quest75229:OnSubStart7522903(arg1)
    print("OnSubStart7522903")
end

function Quest75229:OnSubFinish7522903(arg1)
    print("OnSubFinish7522903")
end

return Quest75229
