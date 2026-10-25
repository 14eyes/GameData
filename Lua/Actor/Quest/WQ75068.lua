require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75068 = class("Quest75068", QuestActorProxy)
Quest75068.defaultAlias = "Quest75068"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75068:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7506801"] = self.OnSubStart7506801,
        ["7506802"] = self.OnSubStart7506802,
        ["7506803"] = self.OnSubStart7506803,
        ["7506804"] = self.OnSubStart7506804
    }
end

function Quest75068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7506801"] = self.OnSubFinish7506801,
        ["7506802"] = self.OnSubFinish7506802,
        ["7506803"] = self.OnSubFinish7506803,
        ["7506804"] = self.OnSubFinish7506804
    }
end

function Quest75068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75068:Start()
    print("Start")
end

function Quest75068:OnDestroy()
    print("OnDestroy")
end

function Quest75068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75068:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75068:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest75068:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75068:OnSubStart7506801(arg1)
    print("OnSubStart7506801")
    actorMgr:CreateActorWithPos("Q7506801Trigger", "Actor/Gadget/Q7506801Trigger", 70900002, 0, points.TPos_Q7506801Trigger.pos, points.TPos_Q7506801Trigger.rot, true, false, 3)
end

function Quest75068:OnSubFinish7506801(arg1)
    print("OnSubFinish7506801")
end

function Quest75068:OnSubStart7506802(arg1)
    print("OnSubStart7506802")
end

function Quest75068:OnSubFinish7506802(arg1)
    print("OnSubFinish7506802")
end

function Quest75068:OnSubStart7506803(arg1)
    print("OnSubStart7506803")
end

function Quest75068:OnSubFinish7506803(arg1)
    print("OnSubFinish7506803")
end

function Quest75068:OnSubStart7506804(arg1)
    print("OnSubStart7506804")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc21683Data.id, 7506804, 0, 20, 1)
end

function Quest75068:OnSubFinish7506804(arg1)
    print("OnSubFinish7506804")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21683Data.alias)
end

return Quest75068
