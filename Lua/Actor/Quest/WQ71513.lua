require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71513 = class("Quest71513", QuestActorProxy)
Quest71513.defaultAlias = "Quest71513"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71513:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71513:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151301"] = self.OnSubStart7151301}
end

function Quest71513:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151301"] = self.OnSubFinish7151301}
end

function Quest71513:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71513:Start()
    print("Start")
end

function Quest71513:OnDestroy()
    print("OnDestroy")
end

function Quest71513:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71513:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71513:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2434Data.alias, 3)
end

function Quest71513:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71513:OnSubStart7151301(arg1)
    print("OnSubStart7151301")
    this:CreateQuestNpc(arg1, npcs.Npc2434Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc2434Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest71513:OnSubFinish7151301(arg1)
    print("OnSubFinish7151301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2434Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(1311)
    end)
end

return Quest71513
