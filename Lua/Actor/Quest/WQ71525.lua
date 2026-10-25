require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71525 = class("Quest71525", QuestActorProxy)
Quest71525.defaultAlias = "Quest71525"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71525:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71525:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7152501"] = self.OnSubStart7152501,
        ["7152502"] = self.OnSubStart7152502,
        ["7152503"] = self.OnSubStart7152503
    }
end

function Quest71525:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7152501"] = self.OnSubFinish7152501,
        ["7152502"] = self.OnSubFinish7152502,
        ["7152503"] = self.OnSubFinish7152503
    }
end

function Quest71525:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7152501"] = self.OnSubFailed7152501,
        ["7152502"] = self.OnSubFailed7152502,
        ["7152503"] = self.OnSubFailed7152503
    }
end

function Quest71525:Start()
    print("Start")
end

function Quest71525:OnDestroy()
    print("OnDestroy")
end

function Quest71525:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71525:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71525:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13951.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30471.alias, 3)
    this:DestroyNpcTrigger("Q7152503N30471Trigger")
end

function Quest71525:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest71525:OnSubStart7152501(arg1)
    print("OnSubStart7152501")
end

function Quest71525:OnSubFinish7152501(arg1)
    print("OnSubFinish7152501")
end

function Quest71525:OnSubFailed7152501(arg1)
    print("OnSubFailed7152501")
end

function Quest71525:OnSubStart7152502(arg1)
    print("OnSubStart7152502")
    this:CreateQuestNpc(arg1, npcs.Npc13951.id, 0)
end

function Quest71525:OnSubFinish7152502(arg1)
    print("OnSubFinish7152502")
    this:SafeDestroyQuestNpc(npcs.Npc13951.alias, 3)
end

function Quest71525:OnSubFailed7152502(arg1)
    print("OnSubFailed7152502")
end

function Quest71525:OnSubStart7152503(arg1)
    print("OnSubStart7152503")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc30471.id, 7152503, 0, 35)
    end)
end

function Quest71525:OnSubFinish7152503(arg1)
    print("OnSubFinish7152503")
    this:SafeDestroyQuestNpc(npcs.Npc30471.alias, 3)
end

function Quest71525:OnSubFailed7152503(arg1)
    print("OnSubFailed7152503")
end

return Quest71525
