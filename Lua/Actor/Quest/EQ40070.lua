require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40070 = class("Quest40070", QuestActorProxy)
Quest40070.defaultAlias = "Quest40070"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40070:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40070:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007001"] = self.OnSubStart4007001,
        ["4007002"] = self.OnSubStart4007002,
        ["4007003"] = self.OnSubStart4007003,
        ["4007018"] = self.OnSubStart4007018,
        ["4007015"] = self.OnSubStart4007015,
        ["4007004"] = self.OnSubStart4007004,
        ["4007005"] = self.OnSubStart4007005,
        ["4007009"] = self.OnSubStart4007009,
        ["4007013"] = self.OnSubStart4007013,
        ["4007006"] = self.OnSubStart4007006,
        ["4007007"] = self.OnSubStart4007007,
        ["4007008"] = self.OnSubStart4007008,
        ["4007019"] = self.OnSubStart4007019,
        ["4007010"] = self.OnSubStart4007010,
        ["4007011"] = self.OnSubStart4007011,
        ["4007012"] = self.OnSubStart4007012,
        ["4007016"] = self.OnSubStart4007016,
        ["4007017"] = self.OnSubStart4007017,
        ["4007014"] = self.OnSubStart4007014
    }
end

function Quest40070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007001"] = self.OnSubFinish4007001,
        ["4007002"] = self.OnSubFinish4007002,
        ["4007003"] = self.OnSubFinish4007003,
        ["4007018"] = self.OnSubFinish4007018,
        ["4007015"] = self.OnSubFinish4007015,
        ["4007004"] = self.OnSubFinish4007004,
        ["4007005"] = self.OnSubFinish4007005,
        ["4007009"] = self.OnSubFinish4007009,
        ["4007013"] = self.OnSubFinish4007013,
        ["4007006"] = self.OnSubFinish4007006,
        ["4007007"] = self.OnSubFinish4007007,
        ["4007008"] = self.OnSubFinish4007008,
        ["4007019"] = self.OnSubFinish4007019,
        ["4007010"] = self.OnSubFinish4007010,
        ["4007011"] = self.OnSubFinish4007011,
        ["4007012"] = self.OnSubFinish4007012,
        ["4007016"] = self.OnSubFinish4007016,
        ["4007017"] = self.OnSubFinish4007017,
        ["4007014"] = self.OnSubFinish4007014
    }
end

function Quest40070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40070:Start()
    print("Start")
end

function Quest40070:OnDestroy()
    print("OnDestroy")
end

function Quest40070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40070:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12616Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12623Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 9)
    actorMgr:DestroyEntityActor("Q4007005_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4007010_NarratorTrigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007010_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007011_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007016_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007017_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007018_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007019_Trigger", 20133, false)
end

function Quest40070:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40070:NPCDestroyImmediately(arg1, arg2)
    self:DestroyQuestNpcActor(arg1, arg2)
end

function Quest40070:OnSubStart4007001(arg1)
    print("OnSubStart4007001")
    self:CreateQuestNpc(arg1, npcs.Npc12616Data.id, 1)
end

function Quest40070:OnSubFinish4007001(arg1)
    print("OnSubFinish4007001")
end

function Quest40070:OnSubStart4007002(arg1)
    print("OnSubStart4007002")
end

function Quest40070:OnSubFinish4007002(arg1)
    print("OnSubFinish4007002")
end

function Quest40070:OnSubStart4007003(arg1)
    print("OnSubStart4007003")
end

function Quest40070:OnSubFinish4007003(arg1)
    print("OnSubFinish4007003")
end

function Quest40070:OnSubStart4007018(arg1)
    print("OnSubStart4007018")
    actorMgr:CreateActorWithPos("Q4007018_Trigger", "Actor/Gadget/Q4007018_Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q4007018_guide").pos, sceneData:GetDummyPoint(9, "Q4007018_guide").rot, true, false, 9)
end

function Quest40070:OnSubFinish4007018(arg1)
    print("OnSubFinish4007018")
    self:NPCDestroyImmediately(npcs.Npc1042Data.alias, 9)
    self:NPCDestroyImmediately(npcs.Npc1032Data.alias, 9)
    self:NPCDestroyImmediately(npcs.Npc10095Data.alias, 9)
    self:NPCDestroyImmediately(npcs.PaimonData.alias, 9)
end

function Quest40070:OnSubStart4007015(arg1)
    print("OnSubStart4007015")
    globalActor:PlayerEnterDungeonPoint(27, 1137, 4007015, 1)
    self:CreateQuestNpcWithTrigger("Q4007015_Trigger", 4007015, npcs.Npc12616Data.id, 1, 20)
end

function Quest40070:OnSubFinish4007015(arg1)
    print("OnSubFinish4007015")
end

function Quest40070:OnSubStart4007004(arg1)
    print("OnSubStart4007004")
end

function Quest40070:OnSubFinish4007004(arg1)
    print("OnSubFinish4007004")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:ActionSafeCall(function(arg1)
        arg1:EnterSceneLookCamera({x = -11.0, y = 146.0, z = 604.0}, 0, 2, true, false)
    end)
end

function Quest40070:OnSubStart4007005(arg1)
    print("OnSubStart4007005")
    self:CreateQuestNpc(arg1, npcs.Npc12623Data.id, 4)
    actorMgr:CreateActorWithPos("Q4007005_Trigger", "Actor/Gadget/Q4007005_Trigger", 70900002, 0, {x = -105.873, y = 209.77, z = 571.233}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40070:OnSubFinish4007005(arg1)
    print("OnSubFinish4007005")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    self:TransmitPlayerById(arg1, 1)
end

function Quest40070:OnSubStart4007009(arg1)
    print("OnSubStart4007009")
end

function Quest40070:OnSubFinish4007009(arg1)
    print("OnSubFinish4007009")
    self:NarratorOnlyTaskByData(datas.Narrator_4007001)
end

function Quest40070:OnSubStart4007013(arg1)
    print("OnSubStart4007013")
end

function Quest40070:OnSubFinish4007013(arg1)
    print("OnSubFinish4007013")
end

function Quest40070:OnSubStart4007006(arg1)
    print("OnSubStart4007006")
end

function Quest40070:OnSubFinish4007006(arg1)
    print("OnSubFinish4007006")
end

function Quest40070:OnSubStart4007007(arg1)
    print("OnSubStart4007007")
end

function Quest40070:OnSubFinish4007007(arg1)
    print("OnSubFinish4007007")
end

function Quest40070:OnSubStart4007008(arg1)
    print("OnSubStart4007008")
end

function Quest40070:OnSubFinish4007008(arg1)
    print("OnSubFinish4007008")
end

function Quest40070:OnSubStart4007019(arg1)
    print("OnSubStart4007019")
    actorMgr:CreateActorWithPos("Q4007019_Trigger", "Actor/Gadget/Q4007019_Trigger", 70900002, 0, {x = -96.935, y = 210.824, z = 578.693}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20133)
end

function Quest40070:OnSubFinish4007019(arg1)
    print("OnSubFinish4007019")
    self:NPCDestroyImmediately(npcs.Npc1042Data.alias, 20133)
    self:NPCDestroyImmediately(npcs.Npc1032Data.alias, 20133)
    self:NPCDestroyImmediately(npcs.Npc10095Data.alias, 20133)
    self:NPCDestroyImmediately(npcs.PaimonData.alias, 20133)
    self:TransmitPlayerById(arg1, 1)
end

function Quest40070:OnSubStart4007010(arg1)
    print("OnSubStart4007010")
    self:CreateQuestNpcWithTriggerBlack("Q4007010_Trigger", 4007010, npcs.Npc1042Data.id, 1, 10, 1)
    actorMgr:CreateActorWithPos("Q4007010_NarratorTrigger", "Actor/Gadget/Q4007010_NarratorTrigger", 70900002, 0, {x = 311.328, y = 120.0, z = 311.505}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40070:OnSubFinish4007010(arg1)
    print("OnSubFinish4007010")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20133)
    if actorMgr:GetActor("Q4007010_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4007010_NarratorTrigger")
    end
end

function Quest40070:OnSubStart4007011(arg1)
    print("OnSubStart4007011")
    actorMgr:CreateActorWithPos("Q4007011_Trigger", "Actor/Gadget/Q4007011_Trigger", 70900002, 0, {x = 706.204, y = 120.132, z = 261.822}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40070:OnSubFinish4007011(arg1)
    print("OnSubFinish4007011")
    self:NarratorOnlyTaskByData(datas.Narrator_4007003, nil, 40070)
end

function Quest40070:OnSubStart4007012(arg1)
    print("OnSubStart4007012")
end

function Quest40070:OnSubFinish4007012(arg1)
    print("OnSubFinish4007012")
end

function Quest40070:OnSubStart4007016(arg1)
    print("OnSubStart4007016")
    actorMgr:CreateActorWithPos("Q4007016_Trigger", "Actor/Gadget/Q4007016_Trigger", 70900002, 0, {x = 706.288, y = 120.132, z = 263.39}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40070:OnSubFinish4007016(arg1)
    print("OnSubFinish4007016")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40070:OnSubStart4007017(arg1)
    print("OnSubStart4007017")
    self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 5)
    actorMgr:CreateActorWithPos("Q4007017_Trigger", "Actor/Gadget/Q4007017_Trigger", 70900002, 0, {x = 394.807, y = 120.627, z = -389.4}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40070:OnSubFinish4007017(arg1)
    print("OnSubFinish4007017")
    self:SafeDestroyQuestNpc(npcs.Npc12616Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12623Data.alias, 20133)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 9)
    self:CallDelay(6, function(arg1)
        actorUtils.ShowContext("SummerTimeV2StagePage", 2)
    end)
end

function Quest40070:OnSubStart4007014(arg1)
    print("OnSubStart4007014")
end

function Quest40070:OnSubFinish4007014(arg1)
    print("OnSubFinish4007014")
end

return Quest40070
