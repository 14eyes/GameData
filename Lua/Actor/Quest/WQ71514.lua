require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71514 = class("Quest71514", QuestActorProxy)
Quest71514.defaultAlias = "Quest71514"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71514:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71514:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151401"] = self.OnSubStart7151401}
end

function Quest71514:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151401"] = self.OnSubFinish7151401}
end

function Quest71514:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71514:Start()
    print("Start")
end

function Quest71514:OnDestroy()
    print("OnDestroy")
end

function Quest71514:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71514:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71514:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2096Data.alias, 3)
end

function Quest71514:OnSubStart7151401(arg1)
    print("OnSubStart7151401")
    this:CreateQuestNpc(arg1, npcs.Npc2096Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc2096Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest71514:OnSubFinish7151401(arg1)
    print("OnSubFinish7151401")
    this:SafeDestroyQuestNpc(npcs.Npc2096Data.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("OpenLanV3StagePage", 0)
    end)
end

return Quest71514
