require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77163 = class("Quest77163", QuestActorProxy)
Quest77163.defaultAlias = "Quest77163"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77163:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77163:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7716301"] = self.OnSubStart7716301,
        ["7716302"] = self.OnSubStart7716302,
        ["7716303"] = self.OnSubStart7716303
    }
end

function Quest77163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7716301"] = self.OnSubFinish7716301,
        ["7716302"] = self.OnSubFinish7716302,
        ["7716303"] = self.OnSubFinish7716303
    }
end

function Quest77163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7716302"] = self.OnSubFailed7716302}
end

function Quest77163:Start()
    print("Start")
end

function Quest77163:OnDestroy()
    print("OnDestroy")
end

function Quest77163:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77163:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77163:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77163:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77163:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77163:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77163:OnSubStart7716301(arg1)
    print("OnSubStart7716301")
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
end

function Quest77163:OnSubFinish7716301(arg1)
    print("OnSubFinish7716301")
end

function Quest77163:OnSubStart7716302(arg1)
    print("OnSubStart7716302")
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
end

function Quest77163:OnSubFinish7716302(arg1)
    print("OnSubFinish7716302")
end

function Quest77163:OnSubFailed7716302(arg1)
    print("OnSubFailed7716302")
    this:RecycleAllRes()
end

function Quest77163:OnSubStart7716303(arg1)
    print("OnSubStart7716303")
    this:NpcCreateWithNpcTrigger(npcs.Npc1335.id, 0, 30, 7716303)
end

function Quest77163:OnSubFinish7716303(arg1)
    print("OnSubFinish7716303")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1335.alias)
end

return Quest77163
