require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12040 = class("Quest12040", QuestActorProxy)
Quest12040.defaultAlias = "Quest12040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest12040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest12040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1204001"] = self.OnSubStart1204001,
        ["1204002"] = self.OnSubStart1204002,
        ["1204003"] = self.OnSubStart1204003,
        ["1204004"] = self.OnSubStart1204004,
        ["1204005"] = self.OnSubStart1204005,
        ["1204006"] = self.OnSubStart1204006,
        ["1204007"] = self.OnSubStart1204007,
        ["1204008"] = self.OnSubStart1204008,
        ["1204009"] = self.OnSubStart1204009,
        ["1204010"] = self.OnSubStart1204010,
        ["1204011"] = self.OnSubStart1204011,
        ["1204012"] = self.OnSubStart1204012,
        ["1204013"] = self.OnSubStart1204013,
        ["1204014"] = self.OnSubStart1204014,
        ["1204016"] = self.OnSubStart1204016,
        ["1204015"] = self.OnSubStart1204015
    }
end

function Quest12040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1204001"] = self.OnSubFinish1204001,
        ["1204002"] = self.OnSubFinish1204002,
        ["1204003"] = self.OnSubFinish1204003,
        ["1204004"] = self.OnSubFinish1204004,
        ["1204005"] = self.OnSubFinish1204005,
        ["1204006"] = self.OnSubFinish1204006,
        ["1204007"] = self.OnSubFinish1204007,
        ["1204008"] = self.OnSubFinish1204008,
        ["1204009"] = self.OnSubFinish1204009,
        ["1204010"] = self.OnSubFinish1204010,
        ["1204011"] = self.OnSubFinish1204011,
        ["1204012"] = self.OnSubFinish1204012,
        ["1204013"] = self.OnSubFinish1204013,
        ["1204014"] = self.OnSubFinish1204014,
        ["1204016"] = self.OnSubFinish1204016,
        ["1204015"] = self.OnSubFinish1204015
    }
end

function Quest12040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12040:Start()
    print("Start")
end

function Quest12040:OnDestroy()
    print("OnDestroy")
end

function Quest12040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12040:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12040:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1204016 then
        actorUtils.FinishQuestID(false, 1204016)
    end
end

function Quest12040:OnSubStart1204001(arg1)
    print("OnSubStart1204001")
    self:CreateQuestNpc(arg1, npcs.Npc3004Data.id, 1)
end

function Quest12040:OnSubFinish1204001(arg1)
    print("OnSubFinish1204001")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3004Data.alias, 3)
        if arg1:GetSubQuestState(7210507) == 3 then
            arg1:NarratorOnlyTaskByData(datas.Q1204001Kaiche, nil, 12040)
        end
    end)
end

function Quest12040:OnSubStart1204002(arg1)
    print("OnSubStart1204002")
    actorMgr:CreateActorWithPos("Q12040Trigger", "Actor/Gadget/Q12040Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1204002_Q1204003_guide").pos, sceneData:GetDummyPoint(3, "Q1204002_Q1204003_guide").rot, true, false, 3)
end

function Quest12040:OnSubFinish1204002(arg1)
    print("OnSubFinish1204002")
    self:ActorDestroy("Q12040Trigger")
    self:NarratorOnlyTaskByData(datas.Q1204002Kaiche, nil, 12040)
end

function Quest12040:OnSubStart1204003(arg1)
    print("OnSubStart1204003")
end

function Quest12040:OnSubFinish1204003(arg1)
    print("OnSubFinish1204003")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
    end, nil, nil, "", false, false)
end

function Quest12040:OnSubStart1204004(arg1)
    print("OnSubStart1204004")
end

function Quest12040:OnSubFinish1204004(arg1)
    print("OnSubFinish1204004")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
        arg1:NarratorOnlyTaskByData(datas.Q1204005Kaiche, nil, 12040)
    end)
end

function Quest12040:OnSubStart1204005(arg1)
    print("OnSubStart1204005")
    actorMgr:CreateActorWithPos("Q12040Trigger1", "Actor/Gadget/Q12040Trigger1", 70900002, 0, {x = -2413.887, y = 245.9758, z = -4465.399}, {x = 12.2247, y = 338.9419, z = 345.6761}, true, false)
    actorMgr:CreateActorWithPos("Q12040Trigger7", "Actor/Gadget/Q12040Trigger7", 70900002, 0, {x = -2383.592, y = 239.938, z = -4433.607}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12040:OnSubFinish1204005(arg1)
    print("OnSubFinish1204005")
    self:ActorDestroy("Q12040Trigger1")
end

function Quest12040:OnSubStart1204006(arg1)
    print("OnSubStart1204006")
    actorMgr:CreateActorWithPos("Q12040Trigger2", "Actor/Gadget/Q12040Trigger2", 70900002, 0, {x = -2363.111, y = 241.4852, z = -4378.584}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q12040Trigger8", "Actor/Gadget/Q12040Trigger8", 70900002, 0, {x = -2356.1, y = 240.3501, z = -4371.286}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12040:OnSubFinish1204006(arg1)
    print("OnSubFinish1204006")
    self:ActorDestroy("Q12040Trigger2")
    self:ActorDestroy("Q12040Trigger7")
    self:ActorDestroy("Q12040Trigger8")
end

function Quest12040:OnSubStart1204007(arg1)
    print("OnSubStart1204007")
    actorMgr:CreateActorWithPos("Q12040Trigger3", "Actor/Gadget/Q12040Trigger3", 70900002, 0, {x = -2349.96, y = 227.4981, z = -4349.481}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12040:OnSubFinish1204007(arg1)
    print("OnSubFinish1204007")
    self:ActorDestroy("Q12040Trigger3")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
        end, nil, nil, "", false, false)
    end)
end

function Quest12040:OnSubStart1204008(arg1)
    print("OnSubStart1204008")
end

function Quest12040:OnSubFinish1204008(arg1)
    print("OnSubFinish1204008")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)
end

function Quest12040:OnSubStart1204009(arg1)
    print("OnSubStart1204009")
    actorMgr:CreateActorWithPos("Q12040Trigger4", "Actor/Gadget/Q12040Trigger4", 70900002, 0, {x = -2310.595, y = 226.0083, z = -4257.907}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest12040:OnSubFinish1204009(arg1)
    print("OnSubFinish1204009")
    self:ActorDestroy("Q12040Trigger4")
end

function Quest12040:OnSubStart1204010(arg1)
    print("OnSubStart1204010")
    self:NarratorOnlyTaskByData(datas.Q1204010Kaiche, nil, 12040)
end

function Quest12040:OnSubFinish1204010(arg1)
    print("OnSubFinish1204010")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
        end, nil, nil, "", false, false)
    end)
end

function Quest12040:OnSubStart1204011(arg1)
    print("OnSubStart1204011")
end

function Quest12040:OnSubFinish1204011(arg1)
    print("OnSubFinish1204011")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)
end

function Quest12040:OnSubStart1204012(arg1)
    print("OnSubStart1204012")
    actorMgr:CreateActorWithPos("Q12040Trigger6", "Actor/Gadget/Q12040Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q1204012_guide_Q1204013_N1036").pos, sceneData:GetDummyPoint(3, "Q1204012_guide_Q1204013_N1036").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NarratorOnlyTaskByData(datas.Q1204012Kaiche, nil, 12040)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12377Data.id, 0)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc3100Data.id, 0)
end

function Quest12040:OnSubFinish1204012(arg1)
    print("OnSubFinish1204012")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
    end, nil, nil, "", false, false)

    self:DestroyQuestNpcActor(npcs.Npc12377Data.alias, 3)
    self:ClearNarratorTask()
end

function Quest12040:OnSubStart1204013(arg1)
    print("OnSubStart1204013")
end

function Quest12040:OnSubFinish1204013(arg1)
    print("OnSubFinish1204013")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)
end

function Quest12040:OnSubStart1204014(arg1)
    print("OnSubStart1204014")
    actorMgr:CreateActorWithPos("Q12040Trigger5", "Actor/Gadget/Q12040Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q1204009_guide_Q1204010").pos, sceneData:GetDummyPoint(3, "Q1204009_guide_Q1204010").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3100Data.id, 0)
    end)
end

function Quest12040:OnSubFinish1204014(arg1)
    print("OnSubFinish1204014")
    self:ActorDestroy("Q12040Trigger5")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
    end, nil, nil, "", false, false)

    self:DestroyQuestNpcActor(npcs.Npc3100Data.alias, 3)
end

function Quest12040:OnSubStart1204016(arg1)
    print("OnSubStart1204016")
end

function Quest12040:OnSubFinish1204016(arg1)
    print("OnSubFinish1204016")
end

function Quest12040:OnSubStart1204015(arg1)
    print("OnSubStart1204015")
end

function Quest12040:OnSubFinish1204015(arg1)
    print("OnSubFinish1204015")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)
end

return Quest12040
