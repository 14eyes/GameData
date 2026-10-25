require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75268 = class("Quest75268", QuestActorProxy)
Quest75268.defaultAlias = "Quest75268"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75268:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75268:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526801"] = self.OnSubStart7526801,
        ["7526802"] = self.OnSubStart7526802,
        ["7526803"] = self.OnSubStart7526803
    }
end

function Quest75268:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526801"] = self.OnSubFinish7526801,
        ["7526802"] = self.OnSubFinish7526802,
        ["7526803"] = self.OnSubFinish7526803
    }
end

function Quest75268:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75268:Start()
    print("Start")
end

function Quest75268:OnDestroy()
    print("OnDestroy")
end

function Quest75268:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75268:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75268:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75268:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75268:OnSubStart7526801(arg1)
    print("OnSubStart7526801")
    this:CreateQuestNpc(arg1, npcs.Npc6627.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6627.alias, 75268):DoFreeStyle(4061, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6627.alias, 75268):DisableInteeHeadCtrl(false)
end

function Quest75268:OnSubFinish7526801(arg1)
    print("OnSubFinish7526801")
    this:SafeDestroyQuestNpc(npcs.Npc6627.alias, 3)
end

function Quest75268:OnSubStart7526802(arg1)
    print("OnSubStart7526802")
end

function Quest75268:OnSubFinish7526802(arg1)
    print("OnSubFinish7526802")
end

function Quest75268:OnSubStart7526803(arg1)
    print("OnSubStart7526803")
end

function Quest75268:OnSubFinish7526803(arg1)
    print("OnSubFinish7526803")
end

return Quest75268
