require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73285 = class("Quest73285", QuestActorProxy)
Quest73285.defaultAlias = "Quest73285"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73285:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73285:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7328501"] = self.OnSubStart7328501,
        ["7328502"] = self.OnSubStart7328502,
        ["7328512"] = self.OnSubStart7328512,
        ["7328503"] = self.OnSubStart7328503,
        ["7328508"] = self.OnSubStart7328508,
        ["7328504"] = self.OnSubStart7328504,
        ["7328509"] = self.OnSubStart7328509,
        ["7328510"] = self.OnSubStart7328510,
        ["7328505"] = self.OnSubStart7328505,
        ["7328513"] = self.OnSubStart7328513,
        ["7328514"] = self.OnSubStart7328514,
        ["7328515"] = self.OnSubStart7328515,
        ["7328516"] = self.OnSubStart7328516,
        ["7328517"] = self.OnSubStart7328517,
        ["7328518"] = self.OnSubStart7328518,
        ["7328506"] = self.OnSubStart7328506,
        ["7328511"] = self.OnSubStart7328511,
        ["7328507"] = self.OnSubStart7328507
    }
end

function Quest73285:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7328501"] = self.OnSubFinish7328501,
        ["7328502"] = self.OnSubFinish7328502,
        ["7328512"] = self.OnSubFinish7328512,
        ["7328503"] = self.OnSubFinish7328503,
        ["7328508"] = self.OnSubFinish7328508,
        ["7328504"] = self.OnSubFinish7328504,
        ["7328509"] = self.OnSubFinish7328509,
        ["7328510"] = self.OnSubFinish7328510,
        ["7328505"] = self.OnSubFinish7328505,
        ["7328513"] = self.OnSubFinish7328513,
        ["7328514"] = self.OnSubFinish7328514,
        ["7328515"] = self.OnSubFinish7328515,
        ["7328516"] = self.OnSubFinish7328516,
        ["7328517"] = self.OnSubFinish7328517,
        ["7328518"] = self.OnSubFinish7328518,
        ["7328506"] = self.OnSubFinish7328506,
        ["7328511"] = self.OnSubFinish7328511,
        ["7328507"] = self.OnSubFinish7328507
    }
end

function Quest73285:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73285:Start()
    print("Start")
end

function Quest73285:OnDestroy()
    print("OnDestroy")
end

function Quest73285:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73285:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73285:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73285:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest73285:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73285:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73285:OnSubStart7328501(arg1)
    print("OnSubStart7328501")
    this:CreateQuestNpc(arg1, npcs.Npc20971Data.id, 1)
end

function Quest73285:OnSubFinish7328501(arg1)
    print("OnSubFinish7328501")
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId01, 3)
end

function Quest73285:OnSubStart7328502(arg1)
    print("OnSubStart7328502")
end

function Quest73285:OnSubFinish7328502(arg1)
    print("OnSubFinish7328502")
    this:TransmitPlayerWithTextById(arg1, 2, datas.TextmapId01, 3)
end

function Quest73285:OnSubStart7328512(arg1)
    print("OnSubStart7328512")
end

function Quest73285:OnSubFinish7328512(arg1)
    print("OnSubFinish7328512")
end

function Quest73285:OnSubStart7328503(arg1)
    print("OnSubStart7328503")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:NpcCreateWithTrigger(npcs.Npc20971Data.id, 7328503, 1)
    end)
end

function Quest73285:OnSubFinish7328503(arg1)
    print("OnSubFinish7328503")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId03)
    end)
end

function Quest73285:OnSubStart7328508(arg1)
    print("OnSubStart7328508")
end

function Quest73285:OnSubFinish7328508(arg1)
    print("OnSubFinish7328508")
end

function Quest73285:OnSubStart7328504(arg1)
    print("OnSubStart7328504")
end

function Quest73285:OnSubFinish7328504(arg1)
    print("OnSubFinish7328504")
end

function Quest73285:OnSubStart7328509(arg1)
    print("OnSubStart7328509")
end

function Quest73285:OnSubFinish7328509(arg1)
    print("OnSubFinish7328509")
end

function Quest73285:OnSubStart7328510(arg1)
    print("OnSubStart7328510")
end

function Quest73285:OnSubFinish7328510(arg1)
    print("OnSubFinish7328510")
end

function Quest73285:OnSubStart7328505(arg1)
    print("OnSubStart7328505")
end

function Quest73285:OnSubFinish7328505(arg1)
    print("OnSubFinish7328505")
end

function Quest73285:OnSubStart7328513(arg1)
    print("OnSubStart7328513")
end

function Quest73285:OnSubFinish7328513(arg1)
    print("OnSubFinish7328513")
end

function Quest73285:OnSubStart7328514(arg1)
    print("OnSubStart7328514")
end

function Quest73285:OnSubFinish7328514(arg1)
    print("OnSubFinish7328514")
end

function Quest73285:OnSubStart7328515(arg1)
    print("OnSubStart7328515")
end

function Quest73285:OnSubFinish7328515(arg1)
    print("OnSubFinish7328515")
end

function Quest73285:OnSubStart7328516(arg1)
    print("OnSubStart7328516")
end

function Quest73285:OnSubFinish7328516(arg1)
    print("OnSubFinish7328516")
end

function Quest73285:OnSubStart7328517(arg1)
    print("OnSubStart7328517")
end

function Quest73285:OnSubFinish7328517(arg1)
    print("OnSubFinish7328517")
    this:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest73285:OnSubStart7328518(arg1)
    print("OnSubStart7328518")
    this:CreateQuestNpc(arg1, npcs.Npc20971Data.id, 1)
end

function Quest73285:OnSubFinish7328518(arg1)
    print("OnSubFinish7328518")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20971Data.alias)
end

function Quest73285:OnSubStart7328506(arg1)
    print("OnSubStart7328506")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc20971Data.alias, 1, true)
    end)
end

function Quest73285:OnSubFinish7328506(arg1)
    print("OnSubFinish7328506")
    this:NarratorOnlyTaskByData(datas.NarratorWithId06)
end

function Quest73285:OnSubStart7328511(arg1)
    print("OnSubStart7328511")
    actorMgr:CreateActorWithPos("Q7328511Trigger", "Actor/Gadget/Q7328511Trigger", 70900002, 0, points.TPos_Q7328511Trigger.pos, points.TPos_Q7328511Trigger.rot, true, false, 3)
end

function Quest73285:OnSubFinish7328511(arg1)
    print("OnSubFinish7328511")
end

function Quest73285:OnSubStart7328507(arg1)
    print("OnSubStart7328507")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20971Data.id, 1, npcs.Npc20971Data.alias)
end

function Quest73285:OnSubFinish7328507(arg1)
    print("OnSubFinish7328507")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20971Data.alias)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc20971Data.alias, 0, true)
    end)
end

return Quest73285
