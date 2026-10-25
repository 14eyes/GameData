require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40074 = class("Quest40074", QuestActorProxy)
Quest40074.defaultAlias = "Quest40074"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40074:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40074:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007401"] = self.OnSubStart4007401,
        ["4007411"] = self.OnSubStart4007411,
        ["4007402"] = self.OnSubStart4007402,
        ["4007403"] = self.OnSubStart4007403,
        ["4007404"] = self.OnSubStart4007404,
        ["4007405"] = self.OnSubStart4007405,
        ["4007406"] = self.OnSubStart4007406,
        ["4007407"] = self.OnSubStart4007407,
        ["4007413"] = self.OnSubStart4007413,
        ["4007415"] = self.OnSubStart4007415,
        ["4007408"] = self.OnSubStart4007408,
        ["4007410"] = self.OnSubStart4007410,
        ["4007412"] = self.OnSubStart4007412,
        ["4007417"] = self.OnSubStart4007417,
        ["4007414"] = self.OnSubStart4007414,
        ["4007409"] = self.OnSubStart4007409,
        ["4007416"] = self.OnSubStart4007416
    }
end

function Quest40074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007401"] = self.OnSubFinish4007401,
        ["4007411"] = self.OnSubFinish4007411,
        ["4007402"] = self.OnSubFinish4007402,
        ["4007403"] = self.OnSubFinish4007403,
        ["4007404"] = self.OnSubFinish4007404,
        ["4007405"] = self.OnSubFinish4007405,
        ["4007406"] = self.OnSubFinish4007406,
        ["4007407"] = self.OnSubFinish4007407,
        ["4007413"] = self.OnSubFinish4007413,
        ["4007415"] = self.OnSubFinish4007415,
        ["4007408"] = self.OnSubFinish4007408,
        ["4007410"] = self.OnSubFinish4007410,
        ["4007412"] = self.OnSubFinish4007412,
        ["4007417"] = self.OnSubFinish4007417,
        ["4007414"] = self.OnSubFinish4007414,
        ["4007409"] = self.OnSubFinish4007409,
        ["4007416"] = self.OnSubFinish4007416
    }
end

function Quest40074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4007412"] = self.OnSubFailed4007412}
end

function Quest40074:Start()
    print("Start")
end

function Quest40074:OnDestroy()
    print("OnDestroy")
end

function Quest40074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40074:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20134)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20136)
    actorMgr:DestroyEntityActor("Q4007403_Trigger", 20134, false)
    actorMgr:DestroyEntityActor("Q4007411_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007415_Trigger", 20136, false)
    actorMgr:DestroyEntityActor("Q4007417_Trigger", 20134, false)
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest40074:GetGadgetActor(arg1)
    local actor = actorMgr:GetActor(arg1)
    return actor
end

function Quest40074:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40074:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4007416)
    end
end

function Quest40074:OnSubStart4007401(arg1)
    print("OnSubStart4007401")
end

function Quest40074:OnSubFinish4007401(arg1)
    print("OnSubFinish4007401")
end

function Quest40074:OnSubStart4007411(arg1)
    print("OnSubStart4007411")
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1042Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc10095Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q4007411_Trigger", "Actor/Gadget/Q4007411_Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "Q4007411_N10011").pos, sceneData:GetDummyPoint(9, "Q4007411_N10011").rot, true, false, 9)
end

function Quest40074:OnSubFinish4007411(arg1)
    print("OnSubFinish4007411")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40074:OnSubStart4007402(arg1)
    print("OnSubStart4007402")
    self:CreateQuestNpcWithTriggerBlack("Q4007402_Trigger", 4007402, npcs.Npc1032Data.id, 1, 10, 1)
end

function Quest40074:OnSubFinish4007402(arg1)
    print("OnSubFinish4007402")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeonPoint(29, 1139, 4007402, 1)
    end)
end

function Quest40074:OnSubStart4007403(arg1)
    print("OnSubStart4007403")
    actorMgr:CreateActorWithPos("Q4007403_Trigger", "Actor/Gadget/Q4007403_Trigger", 70900002, 0, {x = 499.939, y = 606.305, z = -1591.669}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20134)
end

function Quest40074:OnSubFinish4007403(arg1)
    print("OnSubFinish4007403")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40074:OnSubStart4007404(arg1)
    print("OnSubStart4007404")
end

function Quest40074:OnSubFinish4007404(arg1)
    print("OnSubFinish4007404")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.Narrator_4007401, nil, 40074)
        end)
    end)
end

function Quest40074:OnSubStart4007405(arg1)
    print("OnSubStart4007405")
end

function Quest40074:OnSubFinish4007405(arg1)
    print("OnSubFinish4007405")
    self:NarratorOnlyTaskByData(datas.Narrator_4007402, nil, 40074)
end

function Quest40074:OnSubStart4007406(arg1)
    print("OnSubStart4007406")
end

function Quest40074:OnSubFinish4007406(arg1)
    print("OnSubFinish4007406")
    self:NarratorOnlyTaskByData(datas.Narrator_4007403, nil, 40074)
end

function Quest40074:OnSubStart4007407(arg1)
    print("OnSubStart4007407")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(false, "DisableTestDIMona")
    end)
end

function Quest40074:OnSubFinish4007407(arg1)
    print("OnSubFinish4007407")
end

function Quest40074:OnSubStart4007413(arg1)
    print("OnSubStart4007413")
    globalActor:PlayerEnterDungeonPoint(31, 1140, 4007413, 1)
end

function Quest40074:OnSubFinish4007413(arg1)
    print("OnSubFinish4007413")
end

function Quest40074:OnSubStart4007415(arg1)
    print("OnSubStart4007415")
    actorMgr:CreateActorWithPos("Q4007415_Trigger", "Actor/Gadget/Q4007415_Trigger", 70900002, 0, sceneData:GetDummyPoint(20136, "Q4007408_transmit").pos, sceneData:GetDummyPoint(20136, "Q4007408_transmit").rot, true, false, 20136)
end

function Quest40074:OnSubFinish4007415(arg1)
    print("OnSubFinish4007415")
end

function Quest40074:OnSubStart4007408(arg1)
    print("OnSubStart4007408")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)

    actorMgr:CreateActorWithPos("Q4007408_SafeTrigger", "Actor/Gadget/Q4007408_SafeTrigger", 70900002, 0, {x = 775.473, y = 4.0, z = 676.84}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20136)
end

function Quest40074:OnSubFinish4007408(arg1)
    print("OnSubFinish4007408")
end

function Quest40074:OnSubStart4007410(arg1)
    print("OnSubStart4007410")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)
end

function Quest40074:OnSubFinish4007410(arg1)
    print("OnSubFinish4007410")
end

function Quest40074:OnSubStart4007412(arg1)
    print("OnSubStart4007412")
    self:CreateQuestNpcWithTriggerBlack("Q4007412_Trigger", 4007412, npcs.Npc10095Data.id, 4, 100, 1)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)
end

function Quest40074:OnSubFinish4007412(arg1)
    print("OnSubFinish4007412")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20136)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20136)
end

function Quest40074:OnSubFailed4007412(arg1)
    print("OnSubFailed4007412")
    if self:GetGadgetActor("Q4007412_Trigger") ~= nil then
        self:ActorDestroy("Q4007412_Trigger")
    end
end

function Quest40074:OnSubStart4007417(arg1)
    print("OnSubStart4007417")
end

function Quest40074:OnSubFinish4007417(arg1)
    print("OnSubFinish4007417")
end

function Quest40074:OnSubStart4007414(arg1)
    print("OnSubStart4007414")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)
end

function Quest40074:OnSubFinish4007414(arg1)
    print("OnSubFinish4007414")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest40074:OnSubStart4007409(arg1)
    print("OnSubStart4007409")
    self:CreateQuestNpcWithTriggerBlack("Q4007409_Trigger", 4007409, npcs.Npc10095Data.id, 4, 10, 1)
end

function Quest40074:OnSubFinish4007409(arg1)
    print("OnSubFinish4007409")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40074:OnSubStart4007416(arg1)
    print("OnSubStart4007416")
end

function Quest40074:OnSubFinish4007416(arg1)
    print("OnSubFinish4007416")
end

return Quest40074
