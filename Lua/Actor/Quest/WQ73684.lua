require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73684 = class("Quest73684", QuestActorProxy)
Quest73684.defaultAlias = "Quest73684"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73684:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73684:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7368401"] = self.OnSubStart7368401}
end

function Quest73684:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7368401"] = self.OnSubFinish7368401}
end

function Quest73684:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73684:Start()
    print("Start")
end

function Quest73684:OnDestroy()
    print("OnDestroy")
end

function Quest73684:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73684:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73684:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30276Data.alias, 3)
end

function Quest73684:OnSubStart7368401(arg1)
    print("OnSubStart7368401")
    this:CreateQuestNpc(arg1, npcs.Npc30276Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc30276Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest73684:OnSubFinish7368401(arg1)
    print("OnSubFinish7368401")
    this:SafeDestroyQuestNpc(npcs.Npc30276Data.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(1289)
    end)
end

return Quest73684
