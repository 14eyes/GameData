require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73315 = class("Quest73315", QuestActorProxy)
Quest73315.defaultAlias = "Quest73315"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73315:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73315:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331501"] = self.OnSubStart7331501,
        ["7331502"] = self.OnSubStart7331502,
        ["7331503"] = self.OnSubStart7331503,
        ["7331508"] = self.OnSubStart7331508,
        ["7331504"] = self.OnSubStart7331504,
        ["7331505"] = self.OnSubStart7331505,
        ["7331506"] = self.OnSubStart7331506,
        ["7331510"] = self.OnSubStart7331510,
        ["7331511"] = self.OnSubStart7331511,
        ["7331513"] = self.OnSubStart7331513,
        ["7331507"] = self.OnSubStart7331507,
        ["7331509"] = self.OnSubStart7331509
    }
end

function Quest73315:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331501"] = self.OnSubFinish7331501,
        ["7331502"] = self.OnSubFinish7331502,
        ["7331503"] = self.OnSubFinish7331503,
        ["7331508"] = self.OnSubFinish7331508,
        ["7331504"] = self.OnSubFinish7331504,
        ["7331505"] = self.OnSubFinish7331505,
        ["7331506"] = self.OnSubFinish7331506,
        ["7331510"] = self.OnSubFinish7331510,
        ["7331511"] = self.OnSubFinish7331511,
        ["7331513"] = self.OnSubFinish7331513,
        ["7331507"] = self.OnSubFinish7331507,
        ["7331509"] = self.OnSubFinish7331509
    }
end

function Quest73315:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73315:Start()
    print("Start")
end

function Quest73315:OnDestroy()
    print("OnDestroy")
end

function Quest73315:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73315:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73315:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20987Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20961Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7331502Trigger", 3, false)
end

function Quest73315:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73315:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73315:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73315:OnSubStart7331501(arg1)
    print("OnSubStart7331501")
end

function Quest73315:OnSubFinish7331501(arg1)
    print("OnSubFinish7331501")
end

function Quest73315:OnSubStart7331502(arg1)
    print("OnSubStart7331502")
    actorMgr:CreateActorWithPos("Q7331502Trigger", "Actor/Gadget/Q7331502Trigger", 70900002, 0, points.TPos_Q7331502Trigger.pos, points.TPos_Q7331502Trigger.rot, true, false, 3)
end

function Quest73315:OnSubFinish7331502(arg1)
    print("OnSubFinish7331502")
end

function Quest73315:OnSubStart7331503(arg1)
    print("OnSubStart7331503")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20987Data.id, 1, npcs.Npc20987Data.alias)
end

function Quest73315:OnSubFinish7331503(arg1)
    print("OnSubFinish7331503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20987Data.alias)
end

function Quest73315:OnSubStart7331508(arg1)
    print("OnSubStart7331508")
end

function Quest73315:OnSubFinish7331508(arg1)
    print("OnSubFinish7331508")
    this:NarratorOnlyTaskByData(datas.Narrator_7331502)
end

function Quest73315:OnSubStart7331504(arg1)
    print("OnSubStart7331504")
end

function Quest73315:OnSubFinish7331504(arg1)
    print("OnSubFinish7331504")
end

function Quest73315:OnSubStart7331505(arg1)
    print("OnSubStart7331505")
    this:CreateQuestNpc(arg1, npcs.Npc20961Data.id, 1)
end

function Quest73315:OnSubFinish7331505(arg1)
    print("OnSubFinish7331505")
end

function Quest73315:OnSubStart7331506(arg1)
    print("OnSubStart7331506")
end

function Quest73315:OnSubFinish7331506(arg1)
    print("OnSubFinish7331506")
end

function Quest73315:OnSubStart7331510(arg1)
    print("OnSubStart7331510")
end

function Quest73315:OnSubFinish7331510(arg1)
    print("OnSubFinish7331510")
end

function Quest73315:OnSubStart7331511(arg1)
    print("OnSubStart7331511")
end

function Quest73315:OnSubFinish7331511(arg1)
    print("OnSubFinish7331511")
end

function Quest73315:OnSubStart7331513(arg1)
    print("OnSubStart7331513")
end

function Quest73315:OnSubFinish7331513(arg1)
    print("OnSubFinish7331513")
end

function Quest73315:OnSubStart7331507(arg1)
    print("OnSubStart7331507")
end

function Quest73315:OnSubFinish7331507(arg1)
    print("OnSubFinish7331507")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(1.5, function(arg1)
            this:NpcDestroy(npcs.Npc20961Data.alias, 3)
        end)
    end)
end

function Quest73315:OnSubStart7331509(arg1)
    print("OnSubStart7331509")
end

function Quest73315:OnSubFinish7331509(arg1)
    print("OnSubFinish7331509")
end

return Quest73315
