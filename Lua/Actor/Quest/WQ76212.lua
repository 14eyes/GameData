require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76212 = class("Quest76212", QuestActorProxy)
Quest76212.defaultAlias = "Quest76212"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76212:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76212:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7621201"] = self.OnSubStart7621201, ["7621202"] = self.OnSubStart7621202}
end

function Quest76212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7621201"] = self.OnSubFinish7621201, ["7621202"] = self.OnSubFinish7621202}
end

function Quest76212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7621201"] = self.OnSubFailed7621201}
end

function Quest76212:Start()
    print("Start")
end

function Quest76212:OnDestroy()
    print("OnDestroy")
end

function Quest76212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76212:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76212:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76212:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76212:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76212:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76212:OnSubStart7621201(arg1)
    print("OnSubStart7621201")
    this:CreateQuestNpc(arg1, npcs.Npc7738.id, 0, true, 0)
end

function Quest76212:OnSubFinish7621201(arg1)
    print("OnSubFinish7621201")
    this:NpcDestroyImmediately(103, npcs.Npc7738.alias)
end

function Quest76212:OnSubFailed7621201(arg1)
    print("OnSubFailed7621201")
    this:RecycleAllRes()
end

function Quest76212:OnSubStart7621202(arg1)
    print("OnSubStart7621202")
    this:TransmitPlayerByQuestId(7621202, 1, nil, nil, nil)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc7738.id, arg1)
end

function Quest76212:OnSubFinish7621202(arg1)
    print("OnSubFinish7621202")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc7738.alias)
end

return Quest76212
