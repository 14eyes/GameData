require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74114 = class("Quest74114", QuestActorProxy)
Quest74114.defaultAlias = "Quest74114"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74114:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7411402"] = self.OnSubStart7411402,
        ["7411403"] = self.OnSubStart7411403,
        ["7411404"] = self.OnSubStart7411404,
        ["7411405"] = self.OnSubStart7411405,
        ["7411406"] = self.OnSubStart7411406,
        ["7411408"] = self.OnSubStart7411408,
        ["7411407"] = self.OnSubStart7411407,
        ["7411401"] = self.OnSubStart7411401
    }
end

function Quest74114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7411402"] = self.OnSubFinish7411402,
        ["7411403"] = self.OnSubFinish7411403,
        ["7411404"] = self.OnSubFinish7411404,
        ["7411405"] = self.OnSubFinish7411405,
        ["7411406"] = self.OnSubFinish7411406,
        ["7411408"] = self.OnSubFinish7411408,
        ["7411407"] = self.OnSubFinish7411407,
        ["7411401"] = self.OnSubFinish7411401
    }
end

function Quest74114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74114:Start()
    print("Start")
end

function Quest74114:OnDestroy()
    print("OnDestroy")
end

function Quest74114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74114:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13488Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13489Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13489Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13490Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13490Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc13491Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7411402N13489Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411404N13489Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411405N13489Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411407N13489Trigger", 3, false)
end

function Quest74114:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74114:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest74114:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74114:OnSubStart7411402(arg1)
    print("OnSubStart7411402")
    this:NpcCreateWithNpcTrigger(npcs.Npc13489Data.id, 7411402, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc13490Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13491Data.id, 0)
end

function Quest74114:OnSubFinish7411402(arg1)
    print("OnSubFinish7411402")
end

function Quest74114:OnSubStart7411403(arg1)
    print("OnSubStart7411403")
    this:GetQuestNpcActor(npcs.Npc13489Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13490Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13491Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74114:OnSubFinish7411403(arg1)
    print("OnSubFinish7411403")
end

function Quest74114:OnSubStart7411404(arg1)
    print("OnSubStart7411404")
    this:CreateQuestNpc(arg1, npcs.Npc13489Data.id, 0)
end

function Quest74114:OnSubFinish7411404(arg1)
    print("OnSubFinish7411404")
    this:SafeDestroyQuestNpc(npcs.Npc13491Data.alias, 3)
end

function Quest74114:OnSubStart7411405(arg1)
    print("OnSubStart7411405")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc13489Data.id, 7411405, 0, 5)
        this:CreateQuestNpc(arg1, npcs.Npc13490Data.id, 0)
    end)
end

function Quest74114:OnSubFinish7411405(arg1)
    print("OnSubFinish7411405")
    this:SafeDestroyQuestNpc(npcs.Npc13490Data.alias, 1084)
end

function Quest74114:OnSubStart7411406(arg1)
    print("OnSubStart7411406")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13489Data.id, 0)
end

function Quest74114:OnSubFinish7411406(arg1)
    print("OnSubFinish7411406")
end

function Quest74114:OnSubStart7411408(arg1)
    print("OnSubStart7411408")
end

function Quest74114:OnSubFinish7411408(arg1)
    print("OnSubFinish7411408")
end

function Quest74114:OnSubStart7411407(arg1)
    print("OnSubStart7411407")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13489Data.id, 7411407, 0, 15, 1)
end

function Quest74114:OnSubFinish7411407(arg1)
    print("OnSubFinish7411407")
    this:SafeDestroyQuestNpc(npcs.Npc13489Data.alias, 1084)
end

function Quest74114:OnSubStart7411401(arg1)
    print("OnSubStart7411401")
end

function Quest74114:OnSubFinish7411401(arg1)
    print("OnSubFinish7411401")
end

return Quest74114
