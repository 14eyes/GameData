require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74009 = class("Quest74009", QuestActorProxy)
Quest74009.defaultAlias = "Quest74009"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74009:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400902"] = self.OnSubStart7400902,
        ["7400903"] = self.OnSubStart7400903,
        ["7400906"] = self.OnSubStart7400906,
        ["7400904"] = self.OnSubStart7400904,
        ["7400905"] = self.OnSubStart7400905,
        ["7400901"] = self.OnSubStart7400901
    }
end

function Quest74009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400902"] = self.OnSubFinish7400902,
        ["7400903"] = self.OnSubFinish7400903,
        ["7400906"] = self.OnSubFinish7400906,
        ["7400904"] = self.OnSubFinish7400904,
        ["7400905"] = self.OnSubFinish7400905,
        ["7400901"] = self.OnSubFinish7400901
    }
end

function Quest74009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74009:Start()
    print("Start")
end

function Quest74009:OnDestroy()
    print("OnDestroy")
end

function Quest74009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74009:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest74009:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest74009:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74009:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74009:OnSubStart7400902(arg1)
    print("OnSubStart7400902")
    this:CreateQuestNpc(arg1, npcs.Npc5131Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5132Data.id, 0)
end

function Quest74009:OnSubFinish7400902(arg1)
    print("OnSubFinish7400902")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5131Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5132Data.alias, 3)
end

function Quest74009:OnSubStart7400903(arg1)
    print("OnSubStart7400903")
    actorMgr:CreateActorWithPos("Q7400903Trigger", "Actor/Gadget/Q7400903Trigger", 70900002, 0, {x = 2499.263, y = 258.975, z = 4602.389}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74009:OnSubFinish7400903(arg1)
    print("OnSubFinish7400903")
end

function Quest74009:OnSubStart7400906(arg1)
    print("OnSubStart7400906")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5131Data.id, 7400906, 0, 10, 1)
    this:RequestInteraction(npcs.Npc5131Data.alias)
end

function Quest74009:OnSubFinish7400906(arg1)
    print("OnSubFinish7400906")
    this:SafeDestroyQuestNpc(npcs.Npc5131Data.alias, 3)
end

function Quest74009:OnSubStart7400904(arg1)
    print("OnSubStart7400904")
end

function Quest74009:OnSubFinish7400904(arg1)
    print("OnSubFinish7400904")
end

function Quest74009:OnSubStart7400905(arg1)
    print("OnSubStart7400905")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc21027Data.id, 7400905, 0, 20, 1)
    this:GetQuestNpcActor(npcs.Npc21247Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21248Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc21027Data.alias)
end

function Quest74009:OnSubFinish7400905(arg1)
    print("OnSubFinish7400905")
    this:CreateQuestNpc(arg1, npcs.Npc21247Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21248Data.id, 0)
end

function Quest74009:OnSubStart7400901(arg1)
    print("OnSubStart7400901")
    this:NpcCreateWithNpcTrigger(npcs.Npc20762Data.id, 7400901, 0, 5)
    this:RequestInteraction(npcs.Npc20762Data.alias)
end

function Quest74009:OnSubFinish7400901(arg1)
    print("OnSubFinish7400901")
    this:SafeDestroyQuestNpc(npcs.Npc20762Data.alias, 3)
end

return Quest74009
