require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71532 = class("Quest71532", QuestActorProxy)
Quest71532.defaultAlias = "Quest71532"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71532:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71532:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7153201"] = self.OnSubStart7153201}
end

function Quest71532:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7153201"] = self.OnSubFinish7153201}
end

function Quest71532:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71532:Start()
    print("Start")
end

function Quest71532:OnDestroy()
    print("OnDestroy")
end

function Quest71532:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71532:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71532:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyQuestNpcActor(npcs.Npc30459Data.alias, 3)
end

function Quest71532:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest71532:OnSubStart7153201(arg1)
    print("OnSubStart7153201")
    this:CreateQuestNpc(arg1, npcs.Npc30459Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30459Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71532:OnSubFinish7153201(arg1)
    print("OnSubFinish7153201")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:NPCDestroyImmediately(npcs.Npc30459Data.alias, 3)
        end)
    end, function(arg1)
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("CarpJumpLevelDialog", 0)
        end)
    end, nil, 0, false, true)
end

return Quest71532
