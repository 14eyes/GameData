require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74186 = class("Quest74186", QuestActorProxy)
Quest74186.defaultAlias = "Quest74186"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74186:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74186:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7418601"] = self.OnSubStart7418601,
        ["7418602"] = self.OnSubStart7418602,
        ["7418603"] = self.OnSubStart7418603,
        ["7418604"] = self.OnSubStart7418604,
        ["7418605"] = self.OnSubStart7418605
    }
end

function Quest74186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7418601"] = self.OnSubFinish7418601,
        ["7418602"] = self.OnSubFinish7418602,
        ["7418603"] = self.OnSubFinish7418603,
        ["7418604"] = self.OnSubFinish7418604,
        ["7418605"] = self.OnSubFinish7418605
    }
end

function Quest74186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74186:Start()
    print("Start")
end

function Quest74186:OnDestroy()
    print("OnDestroy")
end

function Quest74186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74186:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74186:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74186:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74186:OnSubStart7418601(arg1)
    print("OnSubStart7418601")
    actorMgr:CreateActorWithPos("Q7418601Trigger", "Actor/Gadget/Q7418601Trigger", 70900002, 0, {x = 1313.65, y = 613.685, z = 4573.967}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74186:OnSubFinish7418601(arg1)
    print("OnSubFinish7418601")
end

function Quest74186:OnSubStart7418602(arg1)
    print("OnSubStart7418602")
end

function Quest74186:OnSubFinish7418602(arg1)
    print("OnSubFinish7418602")
    this:RequestInteraction(npcs.Npc21346Data.alias, "", true)
end

function Quest74186:OnSubStart7418603(arg1)
    print("OnSubStart7418603")
    this:NpcCreateWithNpcTrigger(npcs.Npc21346Data.id, 7418603, 0, 45)
    this:CreateQuestNpc(arg1, npcs.Npc21338Data.id, 0)
end

function Quest74186:OnSubFinish7418603(arg1)
    print("OnSubFinish7418603")
    this:SafeDestroyQuestNpc(npcs.Npc21346Data.alias, 11)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21338Data.alias)
end

function Quest74186:OnSubStart7418604(arg1)
    print("OnSubStart7418604")
end

function Quest74186:OnSubFinish7418604(arg1)
    print("OnSubFinish7418604")
end

function Quest74186:OnSubStart7418605(arg1)
    print("OnSubStart7418605")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7418605, function(arg1)
            actorUtils.FinishQuestID(false, 7418605)
        end, nil, nil, false)
    end)
end

function Quest74186:OnSubFinish7418605(arg1)
    print("OnSubFinish7418605")
end

return Quest74186
