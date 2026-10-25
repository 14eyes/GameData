require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71531 = class("Quest71531", QuestActorProxy)
Quest71531.defaultAlias = "Quest71531"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71531:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71531:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7153101"] = self.OnSubStart7153101}
end

function Quest71531:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7153101"] = self.OnSubFinish7153101}
end

function Quest71531:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71531:Start()
    print("Start")
end

function Quest71531:OnDestroy()
    print("OnDestroy")
end

function Quest71531:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71531:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71531:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyQuestNpcActor(npcs.Npc30458Data.alias, 3)
end

function Quest71531:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest71531:OnSubStart7153101(arg1)
    print("OnSubStart7153101")
    this:CreateQuestNpc(arg1, npcs.Npc30458Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30458Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71531:OnSubFinish7153101(arg1)
    print("OnSubFinish7153101")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:ActionSafeCall(function(arg1)
            this:NPCDestroyImmediately(npcs.Npc30458Data.alias, 3)
        end)
    end, function(arg1)
        this:ShowTutorialDialog(1681)
    end, nil, 0, false, true)
end

return Quest71531
