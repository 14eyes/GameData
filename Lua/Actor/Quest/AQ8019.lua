require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8019 = class("Quest8019", QuestActorProxy)
Quest8019.defaultAlias = "Quest8019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest8019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest8019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801901"] = self.OnSubStart801901,
        ["801902"] = self.OnSubStart801902,
        ["801903"] = self.OnSubStart801903,
        ["801904"] = self.OnSubStart801904,
        ["801905"] = self.OnSubStart801905,
        ["801906"] = self.OnSubStart801906,
        ["801907"] = self.OnSubStart801907
    }
end

function Quest8019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801901"] = self.OnSubFinish801901,
        ["801902"] = self.OnSubFinish801902,
        ["801903"] = self.OnSubFinish801903,
        ["801904"] = self.OnSubFinish801904,
        ["801905"] = self.OnSubFinish801905,
        ["801906"] = self.OnSubFinish801906,
        ["801907"] = self.OnSubFinish801907
    }
end

function Quest8019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["801901"] = self.OnSubFailed801901,
        ["801902"] = self.OnSubFailed801902,
        ["801903"] = self.OnSubFailed801903,
        ["801904"] = self.OnSubFailed801904,
        ["801905"] = self.OnSubFailed801905,
        ["801906"] = self.OnSubFailed801906,
        ["801907"] = self.OnSubFailed801907
    }
end

function Quest8019:Start()
    print("Start")
end

function Quest8019:OnDestroy()
    print("OnDestroy")
end

function Quest8019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest8019:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest8019:OnSubStart801901(arg1)
    print("OnSubStart801901")
    this:CreateQuestNpc(arg1, npcs.Npc4019.id, 0, false, 0)
end

function Quest8019:OnSubFinish801901(arg1)
    print("OnSubFinish801901")
    this:SafeDestroyQuestNpc(npcs.Npc4019.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 1406)
    end)
end

function Quest8019:OnSubFailed801901(arg1)
    print("OnSubFailed801901")
end

function Quest8019:OnSubStart801902(arg1)
    print("OnSubStart801902")
    this:CreateQuestNpc(arg1, npcs.Npc4329.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q801902Trigger", "Actor/Gadget/Q801902Trigger", 70900002, 0, points.Point.pos, points.Point.rot, true, false, 3)
end

function Quest8019:OnSubFinish801902(arg1)
    print("OnSubFinish801902")
    this:QuestNarratorTask(datas.Narrator801902, nil)
end

function Quest8019:OnSubFailed801902(arg1)
    print("OnSubFailed801902")
end

function Quest8019:OnSubStart801903(arg1)
    print("OnSubStart801903")
end

function Quest8019:OnSubFinish801903(arg1)
    print("OnSubFinish801903")
end

function Quest8019:OnSubFailed801903(arg1)
    print("OnSubFailed801903")
end

function Quest8019:OnSubStart801904(arg1)
    print("OnSubStart801904")
    this:NpcCreateWithNpcTrigger(npcs.Npc4321.id, 801904, 0, 12)
end

function Quest8019:OnSubFinish801904(arg1)
    print("OnSubFinish801904")
    this:SafeDestroyQuestNpc(npcs.Npc4329.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4321.alias, 3)
    globalActor:ChangeDay24Time(17, true)
end

function Quest8019:OnSubFailed801904(arg1)
    print("OnSubFailed801904")
end

function Quest8019:OnSubStart801905(arg1)
    print("OnSubStart801905")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14074.id, 801905, 0, 10, 1)
end

function Quest8019:OnSubFinish801905(arg1)
    print("OnSubFinish801905")
    this:SafeDestroyQuestNpc(npcs.Npc14074.alias, 3)
end

function Quest8019:OnSubFailed801905(arg1)
    print("OnSubFailed801905")
end

function Quest8019:OnSubStart801906(arg1)
    print("OnSubStart801906")
end

function Quest8019:OnSubFinish801906(arg1)
    print("OnSubFinish801906")
end

function Quest8019:OnSubFailed801906(arg1)
    print("OnSubFailed801906")
end

function Quest8019:OnSubStart801907(arg1)
    print("OnSubStart801907")
    this:CallDelayByQuest("", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14074.id, 801907, 0, 30, 1)
    end)
end

function Quest8019:OnSubFinish801907(arg1)
    print("OnSubFinish801907")
    this:SafeDestroyQuestNpc(npcs.Npc14074.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 1, nil, 1, nil, nil, nil)
    end)
end

function Quest8019:OnSubFailed801907(arg1)
    print("OnSubFailed801907")
end

return Quest8019
