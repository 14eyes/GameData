require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70073 = class("Quest70073", QuestActorProxy)
Quest70073.defaultAlias = "Quest70073"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70073:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70073:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7007302"] = self.OnSubStart7007302,
        ["7007303"] = self.OnSubStart7007303,
        ["7007301"] = self.OnSubStart7007301
    }
end

function Quest70073:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7007302"] = self.OnSubFinish7007302,
        ["7007303"] = self.OnSubFinish7007303,
        ["7007301"] = self.OnSubFinish7007301
    }
end

function Quest70073:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7007303"] = self.OnSubFailed7007303, ["7007301"] = self.OnSubFailed7007301}
end

function Quest70073:Start()
    print("Start")
end

function Quest70073:OnDestroy()
    print("OnDestroy")
end

function Quest70073:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70073:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70073:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70073:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70073:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70073:OnSubStart7007302(arg1)
    print("OnSubStart7007302")
    this:CreateQuestNpc(arg1, npcs.Npc1803.id, 0, false, 0)
end

function Quest70073:OnSubFinish7007302(arg1)
    print("OnSubFinish7007302")
end

function Quest70073:OnSubStart7007303(arg1)
    print("OnSubStart7007303")
    this:CreateQuestNpc(arg1, npcs.Npc1803.id, 0, false, 0)
end

function Quest70073:OnSubFinish7007303(arg1)
    print("OnSubFinish7007303")
    this:NpcDestroyImmediately(103, npcs.Npc1803.alias)
end

function Quest70073:OnSubFailed7007303(arg1)
    print("OnSubFailed7007303")
    this:RecycleAllRes()
end

function Quest70073:OnSubStart7007301(arg1)
    print("OnSubStart7007301")
    this:CreateQuestNpc(arg1, npcs.Npc1803.id, 0, false, 0)
end

function Quest70073:OnSubFinish7007301(arg1)
    print("OnSubFinish7007301")
    this:NpcDestroyImmediately(103, npcs.Npc1803.alias)
end

function Quest70073:OnSubFailed7007301(arg1)
    print("OnSubFailed7007301")
    this:RecycleAllRes()
end

return Quest70073
