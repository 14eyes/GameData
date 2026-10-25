require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13021 = class("Quest13021", QuestActorProxy)
Quest13021.defaultAlias = "Quest13021"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13021:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302101"] = self.OnSubStart1302101,
        ["1302102"] = self.OnSubStart1302102,
        ["1302103"] = self.OnSubStart1302103,
        ["1302104"] = self.OnSubStart1302104,
        ["1302105"] = self.OnSubStart1302105,
        ["1302106"] = self.OnSubStart1302106,
        ["1302107"] = self.OnSubStart1302107,
        ["1302108"] = self.OnSubStart1302108,
        ["1302109"] = self.OnSubStart1302109,
        ["1302114"] = self.OnSubStart1302114,
        ["1302110"] = self.OnSubStart1302110,
        ["1302113"] = self.OnSubStart1302113,
        ["1302111"] = self.OnSubStart1302111,
        ["1302112"] = self.OnSubStart1302112
    }
end

function Quest13021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302101"] = self.OnSubFinish1302101,
        ["1302102"] = self.OnSubFinish1302102,
        ["1302103"] = self.OnSubFinish1302103,
        ["1302104"] = self.OnSubFinish1302104,
        ["1302105"] = self.OnSubFinish1302105,
        ["1302106"] = self.OnSubFinish1302106,
        ["1302107"] = self.OnSubFinish1302107,
        ["1302108"] = self.OnSubFinish1302108,
        ["1302109"] = self.OnSubFinish1302109,
        ["1302114"] = self.OnSubFinish1302114,
        ["1302110"] = self.OnSubFinish1302110,
        ["1302113"] = self.OnSubFinish1302113,
        ["1302111"] = self.OnSubFinish1302111,
        ["1302112"] = self.OnSubFinish1302112
    }
end

function Quest13021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1302109"] = self.OnSubFailed1302109}
end

function Quest13021:Start()
    print("Start")
end

function Quest13021:OnDestroy()
    print("OnDestroy")
end

function Quest13021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13021:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13021:NpcCreateWithBlackscreenInteractionByID(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpcById(arg3, arg1, arg2)
        this:RequestInteraction(arg4)
    end)
end

function Quest13021:AlhamWalk2()
    print("AlhamWalk2")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):WalkToRouteTask(datas.RoutePointsData2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1053Data.alias)
        questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(1073, "Q1302109_Walk1").rot))
        questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CallDelay(10, this.AlhamDiscover4)
    end)
end

function Quest13021:AlhamDiscover4()
    print("AlhamDiscover4")
    actorUtils.FinishQuestID(false, 1302109)
end

function Quest13021:AlhamDiscover3()
    print("AlhamDiscover3")
    this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStateTrigger()
    this:CallDelay(2, this.AlhamWalk2)
end

function Quest13021:AlhamDiscover2()
    print("AlhamDiscover2")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStateTrigger()
        this:CallDelay(1.4, this.AlhamStand)
    end)
end

function Quest13021:AlhamDiscover()
    print("AlhamDiscover")
    actorMgr:GetActor("13021")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1053Data.alias)
    questNpcActor:SitOnChair(8066)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:CallDelay(15, self.AlhamDiscover2)
end

function Quest13021:AlhamStand()
    print("AlhamStand")
    this:AfterMainPageActiveSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1053Data.alias)
        questNpcActor:StandFromChairEx(0)
        questNpcActor:WalkToRouteTask(datas.RoutePointsData, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc1053Data.alias)
            questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(1073, "Q1302109_Walk3").rot))
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
            this:CallDelay(10, this.AlhamDiscover3)
        end)
    end)
end

function Quest13021:OnSubStart1302101(arg1)
    print("OnSubStart1302101")
    this:CreateQuestNpc(arg1, npcs.Npc13007Data.id, 0)
    actorMgr:CreateActorWithPos("Q1302101Finish", "Actor/Gadget/Q1302101Finish", 70900002, 0, sceneData:GetDummyPoint(1073, "Q1302101_Q1302102_Q1302113_N13007").pos, sceneData:GetDummyPoint(1073, "Q1302101_Q1302102_Q1302113_N13007").rot, true, false, 1073)
end

function Quest13021:OnSubFinish1302101(arg1)
    print("OnSubFinish1302101")
end

function Quest13021:OnSubStart1302102(arg1)
    print("OnSubStart1302102")
    this:RequestInteraction(npcs.Npc13007Data.alias)
end

function Quest13021:OnSubFinish1302102(arg1)
    print("OnSubFinish1302102")
    this:SafeDestroyQuestNpc(npcs.Npc13007Data.alias, 1073)
end

function Quest13021:OnSubStart1302103(arg1)
    print("OnSubStart1302103")
    this:CreateQuestNpc(arg1, npcs.Npc13005Data.id, 0)
    actorMgr:CreateActorWithPos("Q1302103Finish", "Actor/Gadget/Q1302103Finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302104_N13005").pos, sceneData:GetDummyPoint(3, "Q1302104_N13005").rot, true, false, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13007Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13005Data.alias):SitOnChair(8010)
end

function Quest13021:OnSubFinish1302103(arg1)
    print("OnSubFinish1302103")
end

function Quest13021:OnSubStart1302104(arg1)
    print("OnSubStart1302104")
    this:RequestInteraction(npcs.Npc13005Data.alias)
end

function Quest13021:OnSubFinish1302104(arg1)
    print("OnSubFinish1302104")
    this:SafeDestroyQuestNpc(npcs.Npc13005Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13007Data.alias, 1073)
end

function Quest13021:OnSubStart1302105(arg1)
    print("OnSubStart1302105")
    this:CreateQuestNpc(arg1, npcs.Npc13006Data.id, 0)
    actorMgr:CreateActorWithPos("Q1302105Finish", "Actor/Gadget/Q1302105Finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302105_N13006").pos, sceneData:GetDummyPoint(3, "Q1302105_N13006").rot, true, false, 3)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13005Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13005Data.alias):SitOnChair(8010)
    end)
end

function Quest13021:OnSubFinish1302105(arg1)
    print("OnSubFinish1302105")
    this:DestroyQuestNpcActor(npcs.Npc13005Data.alias, 3)
end

function Quest13021:OnSubStart1302106(arg1)
    print("OnSubStart1302106")
end

function Quest13021:OnSubFinish1302106(arg1)
    print("OnSubFinish1302106")
    this:SafeDestroyQuestNpc(npcs.Npc13006Data.alias, 3)
end

function Quest13021:OnSubStart1302107(arg1)
    print("OnSubStart1302107")
    actorMgr:CreateActorWithPos("Q1302107Talk", "Actor/Gadget/Q1302107Talk", 70900002, 0, sceneData:GetDummyPoint(1073, "Q1302107_N1053").pos, sceneData:GetDummyPoint(1073, "Q1302107_N1053").rot, true, false, 1073)
end

function Quest13021:OnSubFinish1302107(arg1)
    print("OnSubFinish1302107")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
end

function Quest13021:OnSubStart1302108(arg1)
    print("OnSubStart1302108")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1053Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13003Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13007Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13003Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13007Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest13021:OnSubFinish1302108(arg1)
    print("OnSubFinish1302108")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
end

function Quest13021:OnSubStart1302109(arg1)
    print("OnSubStart1302109")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1053Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13094Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13095Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13096Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:AlhamDiscover()
    end)
end

function Quest13021:OnSubFinish1302109(arg1)
    print("OnSubFinish1302109")
    this:UnCallFunc(self.AlhamDiscover2)
    this:UnCallFunc(self.AlhamDiscover3)
    this:UnCallFunc(self.AlhamDiscover4)
    this:UnCallFunc(self.AlhamStand)
    this:DestroyQuestNpcActor(npcs.Npc13094Data.alias, 1073)
    this:DestroyQuestNpcActor(npcs.Npc13095Data.alias, 1073)
    this:DestroyQuestNpcActor(npcs.Npc13096Data.alias, 1073)
    this:UnCallFunc(self.AlhamWalk2)
end

function Quest13021:OnSubFailed1302109(arg1)
    print("OnSubFailed1302109")
    this:UnCallFunc(self.AlhamDiscover2)
    this:DestroyQuestNpcActor(npcs.Npc13094Data.alias, 1073)
    this:DestroyQuestNpcActor(npcs.Npc13095Data.alias, 1073)
    this:DestroyQuestNpcActor(npcs.Npc13096Data.alias, 1073)
    this:UnCallFunc(self.AlhamDiscover3)
    this:UnCallFunc(self.AlhamDiscover4)
    this:UnCallFunc(self.AlhamStand)
    this:UnCallFunc(self.AlhamWalk2)
end

function Quest13021:OnSubStart1302114(arg1)
    print("OnSubStart1302114")
end

function Quest13021:OnSubFinish1302114(arg1)
    print("OnSubFinish1302114")
end

function Quest13021:OnSubStart1302110(arg1)
    print("OnSubStart1302110")
    actorMgr:CreateActorWithPos("Q1302110Talk", "Actor/Gadget/Q1302110Talk", 70900002, 0, sceneData:GetDummyPoint(1073, "Q1302109_N1053").pos, sceneData:GetDummyPoint(1073, "Q1302109_N1053").rot, true, false, 1073)
end

function Quest13021:OnSubFinish1302110(arg1)
    print("OnSubFinish1302110")
    self:TransmitPlayerWithTextByQuestId(1302110, 1, {"QUEST_Message_Q3007"}, 2.5)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13007Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13003Data.alias, 1073)
end

function Quest13021:OnSubStart1302113(arg1)
    print("OnSubStart1302113")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13003Data.id, 0)
        actorMgr:CreateActorWithPos("Q1302113Talk", "Actor/Gadget/Q1302113Talk", 70900002, 0, sceneData:GetDummyPoint(1073, "Q1302113_N13003").pos, sceneData:GetDummyPoint(1073, "Q1302113_N13003").rot, true, false, 1073)
    end)
end

function Quest13021:OnSubFinish1302113(arg1)
    print("OnSubFinish1302113")
    this:SafeDestroyQuestNpc(npcs.Npc13003Data.alias, 1073)
end

function Quest13021:OnSubStart1302111(arg1)
    print("OnSubStart1302111")
    actorMgr:CreateActorWithPos("Q1302111Finish", "Actor/Gadget/Q1302111Finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302111_Q1302112_N13003_guide").pos, sceneData:GetDummyPoint(3, "Q1302111_Q1302112_N13003_guide").rot, true, false, 3)
end

function Quest13021:OnSubFinish1302111(arg1)
    print("OnSubFinish1302111")
end

function Quest13021:OnSubStart1302112(arg1)
    print("OnSubStart1302112")
    this:NpcCreateWithBlackscreenInteractionByID(npcs.Npc13003Data.id, 0, 1302112, npcs.Npc13003Data.alias)
end

function Quest13021:OnSubFinish1302112(arg1)
    print("OnSubFinish1302112")
    this:SafeDestroyQuestNpc(npcs.Npc13003Data.alias, 3)
end

return Quest13021
