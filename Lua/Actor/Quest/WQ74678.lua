require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74678 = class("Quest74678", QuestActorProxy)
Quest74678.defaultAlias = "Quest74678"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74678:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74678:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467801"] = self.OnSubStart7467801}
end

function Quest74678:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467801"] = self.OnSubFinish7467801}
end

function Quest74678:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74678:Start()
    print("Start")
end

function Quest74678:OnDestroy()
    print("OnDestroy")
end

function Quest74678:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74678:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74678:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30483Data.alias, 3)
end

function Quest74678:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74678:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74678:OnSubStart7467801(arg1)
    print("OnSubStart7467801")
    this:NpcCreateWithNpcTrigger(npcs.Npc30483Data.id, 7467801, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc30421Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30421Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest74678:OnSubFinish7467801(arg1)
    print("OnSubFinish7467801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30483Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc30421Data.alias, 3)
end

return Quest74678
