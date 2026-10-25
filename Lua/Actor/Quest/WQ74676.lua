require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74676 = class("Quest74676", QuestActorProxy)
Quest74676.defaultAlias = "Quest74676"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74676:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74676:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467601"] = self.OnSubStart7467601}
end

function Quest74676:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467601"] = self.OnSubFinish7467601}
end

function Quest74676:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74676:Start()
    print("Start")
end

function Quest74676:OnDestroy()
    print("OnDestroy")
end

function Quest74676:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74676:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74676:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30323Data.alias, 3)
end

function Quest74676:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74676:OnSubStart7467601(arg1)
    print("OnSubStart7467601")
    this:NpcCreateWithNpcTrigger(npcs.Npc30323Data.id, 7467601, 0, 5)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30323Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:LookAt({x = 2206.571, y = 230.892, z = -801.136})
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74676:OnSubFinish7467601(arg1)
    print("OnSubFinish7467601")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1817)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc30323Data.alias, 3)
end

return Quest74676
