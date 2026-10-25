require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74716 = class("Quest74716", QuestActorProxy)
Quest74716.defaultAlias = "Quest74716"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest74716:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest74716:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7471601"] = self.OnSubStart7471601, ["7471602"] = self.OnSubStart7471602}
end

function Quest74716:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7471601"] = self.OnSubFinish7471601, ["7471602"] = self.OnSubFinish7471602}
end

function Quest74716:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74716:Start()
    print("Start")
end

function Quest74716:OnDestroy()
    print("OnDestroy")
end

function Quest74716:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74716:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74716:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1074.alias, 1161)
    this:RecycleAllRes()
end

function Quest74716:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74716:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 747160101 then
        actorUtils.FinishQuestWithParam({false}, {7471602})
    end
end

function Quest74716:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74716:OnSubStart7471601(arg1)
    print("OnSubStart7471601")
    this:CreateQuestNpc(arg1, npcs.Npc1074.id, 0, false, 0)
end

function Quest74716:OnSubFinish7471601(arg1)
    print("OnSubFinish7471601")
    this:NpcDestroyImmediately(1161, npcs.Npc1074.alias)
end

function Quest74716:OnSubStart7471602(arg1)
    print("OnSubStart7471602")
end

function Quest74716:OnSubFinish7471602(arg1)
    print("OnSubFinish7471602")
end

return Quest74716
