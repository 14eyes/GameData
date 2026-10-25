require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74690 = class("Quest74690", QuestActorProxy)
Quest74690.defaultAlias = "Quest74690"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74690:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74690:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7469001"] = self.OnSubStart7469001}
end

function Quest74690:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7469001"] = self.OnSubFinish7469001}
end

function Quest74690:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74690:Start()
    print("Start")
end

function Quest74690:OnDestroy()
    print("OnDestroy")
end

function Quest74690:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74690:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74690:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7469001N31002Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc31001.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31002.alias, 3)
    this:RecycleAllRes()
end

function Quest74690:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74690:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74690:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74690:OnSubStart7469001(arg1)
    print("OnSubStart7469001")
    this:CreateQuestNpc(arg1, npcs.Npc31001.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc31001.alias, 74690):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc31002.id, 0, 15, 7469001)
    this:GetQuestNpcActor(npcs.Npc31002.alias, 74690):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74690:OnSubFinish7469001(arg1)
    print("OnSubFinish7469001")
    this:NpcDestroyImmediately(3, npcs.Npc31001.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31002.alias)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ShortVideoChooseLevelPage", 0)
        this:ShowTutorialDialog(2632, nil)
    end)
end

return Quest74690
