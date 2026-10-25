require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71512 = class("Quest71512", QuestActorProxy)
Quest71512.defaultAlias = "Quest71512"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71512:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71512:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7151201"] = self.OnSubStart7151201}
end

function Quest71512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7151201"] = self.OnSubFinish7151201}
end

function Quest71512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71512:Start()
    print("Start")
end

function Quest71512:OnDestroy()
    print("OnDestroy")
end

function Quest71512:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71512:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30295Data.alias, 3)
end

function Quest71512:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71512:OnSubStart7151201(arg1)
    print("OnSubStart7151201")
    this:CreateQuestNpc(arg1, npcs.Npc30295Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc30295Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest71512:OnSubFinish7151201(arg1)
    print("OnSubFinish7151201")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30295Data.alias)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("OpenLanV3StagePage", 3)
    end)
end

return Quest71512
