require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73509 = class("Quest73509", QuestActorProxy)
Quest73509.defaultAlias = "Quest73509"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73509:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73509:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7350901"] = self.OnSubStart7350901}
end

function Quest73509:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7350901"] = self.OnSubFinish7350901}
end

function Quest73509:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73509:Start()
    print("Start")
end

function Quest73509:OnDestroy()
    print("OnDestroy")
end

function Quest73509:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73509:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73509:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30226Data.alias, 3)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30226Data.alias, 3)
end

function Quest73509:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73509:OnSubStart7350901(arg1)
    print("OnSubStart7350901")
    this:CreateQuestNpc(arg1, npcs.Npc30226Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc30226Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest73509:OnSubFinish7350901(arg1)
    print("OnSubFinish7350901")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30226Data.alias)
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:ShowTutorialDialog(1343)
        end)
    end)
end

return Quest73509
