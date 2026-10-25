require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74701 = class("Quest74701", QuestActorProxy)
Quest74701.defaultAlias = "Quest74701"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74701:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74701:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7470101"] = self.OnSubStart7470101}
end

function Quest74701:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7470101"] = self.OnSubFinish7470101}
end

function Quest74701:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74701:Start()
    print("Start")
end

function Quest74701:OnDestroy()
    print("OnDestroy")
end

function Quest74701:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74701:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74701:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7470101N1336Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:RecycleAllRes()
end

function Quest74701:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74701:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74701:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest74701:OnSubStart7470101(arg1)
    print("OnSubStart7470101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7470101, 0, 5, 0, npcs.Npc1336.id)
end

function Quest74701:OnSubFinish7470101(arg1)
    print("OnSubFinish7470101")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
    actorUtils.ShowReminder(60010474)
end

return Quest74701
