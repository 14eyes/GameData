require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12015 = class("Quest12015", QuestActorProxy)
Quest12015.defaultAlias = "Quest12015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1201501"] = self.OnSubStart1201501,
        ["1201502"] = self.OnSubStart1201502,
        ["1201503"] = self.OnSubStart1201503,
        ["1201504"] = self.OnSubStart1201504,
        ["1201505"] = self.OnSubStart1201505,
        ["1201506"] = self.OnSubStart1201506,
        ["1201507"] = self.OnSubStart1201507,
        ["1201508"] = self.OnSubStart1201508,
        ["1201509"] = self.OnSubStart1201509,
        ["1201510"] = self.OnSubStart1201510,
        ["1201511"] = self.OnSubStart1201511,
        ["1201512"] = self.OnSubStart1201512,
        ["1201513"] = self.OnSubStart1201513
    }
end

function Quest12015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1201501"] = self.OnSubFinish1201501,
        ["1201502"] = self.OnSubFinish1201502,
        ["1201503"] = self.OnSubFinish1201503,
        ["1201504"] = self.OnSubFinish1201504,
        ["1201505"] = self.OnSubFinish1201505,
        ["1201506"] = self.OnSubFinish1201506,
        ["1201507"] = self.OnSubFinish1201507,
        ["1201508"] = self.OnSubFinish1201508,
        ["1201509"] = self.OnSubFinish1201509,
        ["1201510"] = self.OnSubFinish1201510,
        ["1201511"] = self.OnSubFinish1201511,
        ["1201512"] = self.OnSubFinish1201512,
        ["1201513"] = self.OnSubFinish1201513
    }
end

function Quest12015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1201501"] = self.OnSubFailed1201501,
        ["1201502"] = self.OnSubFailed1201502,
        ["1201503"] = self.OnSubFailed1201503,
        ["1201504"] = self.OnSubFailed1201504,
        ["1201505"] = self.OnSubFailed1201505,
        ["1201506"] = self.OnSubFailed1201506,
        ["1201507"] = self.OnSubFailed1201507,
        ["1201508"] = self.OnSubFailed1201508,
        ["1201509"] = self.OnSubFailed1201509,
        ["1201510"] = self.OnSubFailed1201510,
        ["1201511"] = self.OnSubFailed1201511,
        ["1201512"] = self.OnSubFailed1201512,
        ["1201513"] = self.OnSubFailed1201513
    }
end

function Quest12015:Start()
    print("Start")
end

function Quest12015:OnDestroy()
    print("OnDestroy")
end

function Quest12015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12015:WalkToRoute1201512()
    print("WalkToRoute1201512")
    local actor = actorMgr:GetActor("12015")
    actor:NpcWalkToRouteTaskEasy(self, datas.RoutePointsData1201508, actor.WalkToRoute1201512)
end

function Quest12015:OnSubStart1201501(arg1)
    print("OnSubStart1201501")
    self:CreateQuestNpc(arg1, npcs.Npc3054Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12077Data.id, 3)
    actorMgr:CreateActorWithPos("Q1201501Trigger", "Actor/Gadget/Q1201501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12015KujoKamaj1").pos, sceneData:GetDummyPoint(3, "Q12015KujoKamaj1").rot, true, false, 3)
end

function Quest12015:OnSubFinish1201501(arg1)
    print("OnSubFinish1201501")
end

function Quest12015:OnSubFailed1201501(arg1)
    print("OnSubFailed1201501")
end

function Quest12015:OnSubStart1201502(arg1)
    print("OnSubStart1201502")
    self:RequestInteraction(npcs.Npc3054Data.alias)
end

function Quest12015:OnSubFinish1201502(arg1)
    print("OnSubFinish1201502")
    self:SafeDestroyQuestNpc(npcs.Npc3054Data.alias, 3)
end

function Quest12015:OnSubFailed1201502(arg1)
    print("OnSubFailed1201502")
end

function Quest12015:OnSubStart1201503(arg1)
    print("OnSubStart1201503")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3054Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q1201503Trigger", "Actor/Gadget/Q1201503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12015Shenshe1").pos, sceneData:GetDummyPoint(3, "Q12015Shenshe1").rot, true, false, 3)
    end)
end

function Quest12015:OnSubFinish1201503(arg1)
    print("OnSubFinish1201503")
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12077Data.alias, 3)
end

function Quest12015:OnSubFailed1201503(arg1)
    print("OnSubFailed1201503")
end

function Quest12015:OnSubStart1201504(arg1)
    print("OnSubStart1201504")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1034Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q1201504Trigger", "Actor/Gadget/Q1201504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12015Yaeko1").pos, sceneData:GetDummyPoint(3, "Q12015Yaeko1").rot, true, false, 3)
end

function Quest12015:OnSubFinish1201504(arg1)
    print("OnSubFinish1201504")
end

function Quest12015:OnSubFailed1201504(arg1)
    print("OnSubFailed1201504")
end

function Quest12015:OnSubStart1201505(arg1)
    print("OnSubStart1201505")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
end

function Quest12015:OnSubFinish1201505(arg1)
    print("OnSubFinish1201505")
end

function Quest12015:OnSubFailed1201505(arg1)
    print("OnSubFailed1201505")
end

function Quest12015:OnSubStart1201506(arg1)
    print("OnSubStart1201506")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3064Data.id, 1)
    actorMgr:CreateActorWithPos("Q1201506Trigger", "Actor/Gadget/Q1201506Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12015Shouwei2").pos, sceneData:GetDummyPoint(3, "Q12015Shouwei2").rot, true, false, 3)
end

function Quest12015:OnSubFinish1201506(arg1)
    print("OnSubFinish1201506")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

function Quest12015:OnSubFailed1201506(arg1)
    print("OnSubFailed1201506")
end

function Quest12015:OnSubStart1201507(arg1)
    print("OnSubStart1201507")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3064Data.alias)
end

function Quest12015:OnSubFinish1201507(arg1)
    print("OnSubFinish1201507")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:TransmitPlayerById(arg1, 1201508)
end

function Quest12015:OnSubFailed1201507(arg1)
    print("OnSubFailed1201507")
end

function Quest12015:OnSubStart1201508(arg1)
    print("OnSubStart1201508")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 1)
    actorMgr:CreateActorWithPos("Q1201508Trigger", "Actor/Gadget/Q1201508Trigger", 70900002, 0, {x = 0.3331712, y = 1.553606, z = -23.13666}, {x = 0, y = 0, z = 0}, true, false, 1063)
    actorMgr:CreateActorWithPos("Q120150801Trigger", "Actor/Gadget/Q120150801Trigger", 70900002, 0, sceneData:GetDummyPoint(1063, "Q12015Shougun1").pos, sceneData:GetDummyPoint(1063, "Q12015Shougun1").rot, true, false, 1063)
end

function Quest12015:OnSubFinish1201508(arg1)
    print("OnSubFinish1201508")
    self:DestroyQuestNpcActor(npcs.Npc3064Data.alias, 3)
end

function Quest12015:OnSubFailed1201508(arg1)
    print("OnSubFailed1201508")
end

function Quest12015:OnSubStart1201509(arg1)
    print("OnSubStart1201509")
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    globalActor:PlayerEnterDungeon(348, 1121)
    self:CallDelay(1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12076Data.id, 1)
    end)
end

function Quest12015:OnSubFinish1201509(arg1)
    print("OnSubFinish1201509")
    self:SafeDestroyQuestNpc(npcs.Npc1036Data.alias, 1063)
end

function Quest12015:OnSubFailed1201509(arg1)
    print("OnSubFailed1201509")
end

function Quest12015:OnSubStart1201510(arg1)
    print("OnSubStart1201510")
end

function Quest12015:OnSubFinish1201510(arg1)
    print("OnSubFinish1201510")
    self:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 20116)
end

function Quest12015:OnSubFailed1201510(arg1)
    print("OnSubFailed1201510")
end

function Quest12015:OnSubStart1201511(arg1)
    print("OnSubStart1201511")
    actorMgr:CreateActorWithPos("Q1201511Trigger", "Actor/Gadget/Q1201511Trigger", 70900002, 0, {x = -0.6011184, y = 0.1472286, z = 6.700306}, {x = 0, y = 0, z = 0}, true, false, 1063)
end

function Quest12015:OnSubFinish1201511(arg1)
    print("OnSubFinish1201511")
end

function Quest12015:OnSubFailed1201511(arg1)
    print("OnSubFailed1201511")
end

function Quest12015:OnSubStart1201512(arg1)
    print("OnSubStart1201512")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1036Data.alias, 12015)
    self:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData1201508, self.WalkToRoute1201512)
end

function Quest12015:OnSubFinish1201512(arg1)
    print("OnSubFinish1201512")
end

function Quest12015:OnSubFailed1201512(arg1)
    print("OnSubFailed1201512")
end

function Quest12015:OnSubStart1201513(arg1)
    print("OnSubStart1201513")
    self:TransmitPlayerById(arg1, 1201513, function(arg1)
        arg1:LevelLoadFinishSafeCall(function(arg1)
            arg1:FinishQuestID(false, 1201513)
        end)
    end)
end

function Quest12015:OnSubFinish1201513(arg1)
    print("OnSubFinish1201513")
end

function Quest12015:OnSubFailed1201513(arg1)
    print("OnSubFailed1201513")
end

return Quest12015
