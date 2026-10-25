require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73697 = class("Quest73697", QuestActorProxy)
Quest73697.defaultAlias = "Quest73697"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73697:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73697:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7369701"] = self.OnSubStart7369701,
        ["7369702"] = self.OnSubStart7369702,
        ["7369703"] = self.OnSubStart7369703,
        ["7369704"] = self.OnSubStart7369704,
        ["7369705"] = self.OnSubStart7369705,
        ["7369706"] = self.OnSubStart7369706
    }
end

function Quest73697:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7369701"] = self.OnSubFinish7369701,
        ["7369702"] = self.OnSubFinish7369702,
        ["7369703"] = self.OnSubFinish7369703,
        ["7369704"] = self.OnSubFinish7369704,
        ["7369705"] = self.OnSubFinish7369705,
        ["7369706"] = self.OnSubFinish7369706
    }
end

function Quest73697:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73697:Start()
    print("Start")
end

function Quest73697:OnDestroy()
    print("OnDestroy")
end

function Quest73697:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73697:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73697:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13210Data.alias, 3)
    this:ActorDestroy("Q73697Trigger")
end

function Quest73697:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73697:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73697:OnSubStart7369701(arg1)
    print("OnSubStart7369701")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13210Data.id, 7369701, 1, 10, 1)
end

function Quest73697:OnSubFinish7369701(arg1)
    print("OnSubFinish7369701")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13210Data.alias):DestroyWithDisappear(false)
        actorMgr:CreateActorWithPos("Q73697Trigger", "Actor/Gadget/Q73697Trigger", 70900002, 0, points.TPos_Q73697Trigger.pos, points.TPos_Q73697Trigger.rot, true, false, 3)
        this:ShowTutorialDialog(1351)
    end)
end

function Quest73697:OnSubStart7369702(arg1)
    print("OnSubStart7369702")
end

function Quest73697:OnSubFinish7369702(arg1)
    print("OnSubFinish7369702")
    this:TryPauseCurOnlyNarrator()
    this:ClearNarratorTask()
end

function Quest73697:OnSubStart7369703(arg1)
    print("OnSubStart7369703")
end

function Quest73697:OnSubFinish7369703(arg1)
    print("OnSubFinish7369703")
end

function Quest73697:OnSubStart7369704(arg1)
    print("OnSubStart7369704")
end

function Quest73697:OnSubFinish7369704(arg1)
    print("OnSubFinish7369704")
end

function Quest73697:OnSubStart7369705(arg1)
    print("OnSubStart7369705")
end

function Quest73697:OnSubFinish7369705(arg1)
    print("OnSubFinish7369705")
end

function Quest73697:OnSubStart7369706(arg1)
    print("OnSubStart7369706")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13210Data.id, 7369706, 1, 10, 1)
end

function Quest73697:OnSubFinish7369706(arg1)
    print("OnSubFinish7369706")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13210Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73697
