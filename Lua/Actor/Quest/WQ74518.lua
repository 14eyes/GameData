require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74518 = class("Quest74518", QuestActorProxy)
Quest74518.defaultAlias = "Quest74518"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74518:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74518:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7451801"] = self.OnSubStart7451801}
end

function Quest74518:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7451801"] = self.OnSubFinish7451801}
end

function Quest74518:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74518:Start()
    print("Start")
end

function Quest74518:OnDestroy()
    print("OnDestroy")
end

function Quest74518:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74518:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74518:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30834.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30835.alias, 3)
end

function Quest74518:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74518:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest74518:OnSubStart7451801(arg1)
    print("OnSubStart7451801")
    this:CreateQuestNpc(arg1, npcs.Npc30834.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30834.alias, 74518):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30835.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30835.alias, 74518):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30834.alias, 74518):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30835.alias, 74518):DisableInteeHeadCtrl(true)
end

function Quest74518:OnSubFinish7451801(arg1)
    print("OnSubFinish7451801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30834.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30835.alias)
end

return Quest74518
