require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73689 = class("Quest73689", QuestActorProxy)
Quest73689.defaultAlias = "Quest73689"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73689:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73689:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7368901"] = self.OnSubStart7368901}
end

function Quest73689:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7368901"] = self.OnSubFinish7368901}
end

function Quest73689:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73689:Start()
    print("Start")
end

function Quest73689:OnDestroy()
    print("OnDestroy")
end

function Quest73689:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73689:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73689:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30322Data.alias, 3)
end

function Quest73689:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73689:OnSubStart7368901(arg1)
    print("OnSubStart7368901")
    this:CreateQuestNpc(arg1, npcs.Npc30322Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc30322Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest73689:OnSubFinish7368901(arg1)
    print("OnSubFinish7368901")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30322Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(852)
    end)
end

return Quest73689
