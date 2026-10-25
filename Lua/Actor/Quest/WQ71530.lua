require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71530 = class("Quest71530", QuestActorProxy)
Quest71530.defaultAlias = "Quest71530"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71530:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71530:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7153001"] = self.OnSubStart7153001}
end

function Quest71530:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7153001"] = self.OnSubFinish7153001}
end

function Quest71530:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71530:Start()
    print("Start")
end

function Quest71530:OnDestroy()
    print("OnDestroy")
end

function Quest71530:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71530:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71530:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyQuestNpcActor(npcs.Npc30457Data.alias, 3)
end

function Quest71530:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest71530:OnSubStart7153001(arg1)
    print("OnSubStart7153001")
    this:CreateQuestNpc(arg1, npcs.Npc30457Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30457Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
end

function Quest71530:OnSubFinish7153001(arg1)
    print("OnSubFinish7153001")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:NPCDestroyImmediately(npcs.Npc30457Data.alias, 3)
        end)
    end, function(arg1)
        this:ShowTutorialDialog(1677)
    end, nil, 0, false, true)
end

return Quest71530
