require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74185 = class("Quest74185", QuestActorProxy)
Quest74185.defaultAlias = "Quest74185"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74185:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7418501"] = self.OnSubStart7418501,
        ["7418502"] = self.OnSubStart7418502,
        ["7418503"] = self.OnSubStart7418503
    }
end

function Quest74185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7418501"] = self.OnSubFinish7418501,
        ["7418502"] = self.OnSubFinish7418502,
        ["7418503"] = self.OnSubFinish7418503
    }
end

function Quest74185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74185:Start()
    print("Start")
end

function Quest74185:OnDestroy()
    print("OnDestroy")
end

function Quest74185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74185:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74185:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74185:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74185:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74185:OnSubStart7418501(arg1)
    print("OnSubStart7418501")
    this:NpcCreateWithNpcTrigger(npcs.Npc5326Data.id, 7418501, 0, 10)
end

function Quest74185:OnSubFinish7418501(arg1)
    print("OnSubFinish7418501")
end

function Quest74185:OnSubStart7418502(arg1)
    print("OnSubStart7418502")
    this:CreateQuestNpc(arg1, npcs.Npc5326Data.id, 0)
end

function Quest74185:OnSubFinish7418502(arg1)
    print("OnSubFinish7418502")
end

function Quest74185:OnSubStart7418503(arg1)
    print("OnSubStart7418503")
    this:CreateQuestNpc(arg1, npcs.Npc5326Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21431Data.id, 7418503, 0, 10, 1)
end

function Quest74185:OnSubFinish7418503(arg1)
    print("OnSubFinish7418503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5326Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21431Data.alias)
end

return Quest74185
