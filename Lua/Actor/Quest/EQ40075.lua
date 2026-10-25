require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40075 = class("Quest40075", QuestActorProxy)
Quest40075.defaultAlias = "Quest40075"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40075:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40075:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007501"] = self.OnSubStart4007501,
        ["4007502"] = self.OnSubStart4007502,
        ["4007503"] = self.OnSubStart4007503,
        ["4007504"] = self.OnSubStart4007504,
        ["4007505"] = self.OnSubStart4007505,
        ["4007509"] = self.OnSubStart4007509,
        ["4007510"] = self.OnSubStart4007510,
        ["4007506"] = self.OnSubStart4007506,
        ["4007507"] = self.OnSubStart4007507,
        ["4007508"] = self.OnSubStart4007508,
        ["4007511"] = self.OnSubStart4007511,
        ["4007512"] = self.OnSubStart4007512
    }
end

function Quest40075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007501"] = self.OnSubFinish4007501,
        ["4007502"] = self.OnSubFinish4007502,
        ["4007503"] = self.OnSubFinish4007503,
        ["4007504"] = self.OnSubFinish4007504,
        ["4007505"] = self.OnSubFinish4007505,
        ["4007509"] = self.OnSubFinish4007509,
        ["4007510"] = self.OnSubFinish4007510,
        ["4007506"] = self.OnSubFinish4007506,
        ["4007507"] = self.OnSubFinish4007507,
        ["4007508"] = self.OnSubFinish4007508,
        ["4007511"] = self.OnSubFinish4007511,
        ["4007512"] = self.OnSubFinish4007512
    }
end

function Quest40075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40075:Start()
    print("Start")
end

function Quest40075:OnDestroy()
    print("OnDestroy")
end

function Quest40075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40075:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    actorMgr:DestroyEntityActor("Q4007506_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4007510_Trigger", 20136, false)
    actorMgr:DestroyEntityActor("Q4007512_Trigger", 0, false)
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest40075:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4007511)
    end
end

function Quest40075:OnSubStart4007501(arg1)
    print("OnSubStart4007501")
end

function Quest40075:OnSubFinish4007501(arg1)
    print("OnSubFinish4007501")
end

function Quest40075:OnSubStart4007502(arg1)
    print("OnSubStart4007502")
end

function Quest40075:OnSubFinish4007502(arg1)
    print("OnSubFinish4007502")
end

function Quest40075:OnSubStart4007503(arg1)
    print("OnSubStart4007503")
end

function Quest40075:OnSubFinish4007503(arg1)
    print("OnSubFinish4007503")
    self:NarratorOnlyTaskByData(datas.Narrator_4007501, nil, 40075)
end

function Quest40075:OnSubStart4007504(arg1)
    print("OnSubStart4007504")
end

function Quest40075:OnSubFinish4007504(arg1)
    print("OnSubFinish4007504")
end

function Quest40075:OnSubStart4007505(arg1)
    print("OnSubStart4007505")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(false, "DisableTestDIMona")
    end)
end

function Quest40075:OnSubFinish4007505(arg1)
    print("OnSubFinish4007505")
end

function Quest40075:OnSubStart4007509(arg1)
    print("OnSubStart4007509")
    globalActor:PlayerEnterDungeonPoint(31, 1140, 4007509, 1)
end

function Quest40075:OnSubFinish4007509(arg1)
    print("OnSubFinish4007509")
end

function Quest40075:OnSubStart4007510(arg1)
    print("OnSubStart4007510")
    actorMgr:CreateActorWithPos("Q4007510_Trigger", "Actor/Gadget/Q4007510_Trigger", 70900002, 0, {x = 749.801, y = 3.412, z = 667.031}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20136)
end

function Quest40075:OnSubFinish4007510(arg1)
    print("OnSubFinish4007510")
end

function Quest40075:OnSubStart4007506(arg1)
    print("OnSubStart4007506")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)
end

function Quest40075:OnSubFinish4007506(arg1)
    print("OnSubFinish4007506")
end

function Quest40075:OnSubStart4007507(arg1)
    print("OnSubStart4007507")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestDIMona")
    end)
end

function Quest40075:OnSubFinish4007507(arg1)
    print("OnSubFinish4007507")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
    self:DisableMainPageWithConfig(false, "DisableTestDIMona")
end

function Quest40075:OnSubStart4007508(arg1)
    print("OnSubStart4007508")
    self:CreateQuestNpcWithTriggerBlack("Q4007508_Trigger", 4007508, npcs.Npc10095Data.id, 1, 10, 1)
end

function Quest40075:OnSubFinish4007508(arg1)
    print("OnSubFinish4007508")
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
end

function Quest40075:OnSubStart4007511(arg1)
    print("OnSubStart4007511")
end

function Quest40075:OnSubFinish4007511(arg1)
    print("OnSubFinish4007511")
end

function Quest40075:OnSubStart4007512(arg1)
    print("OnSubStart4007512")
end

function Quest40075:OnSubFinish4007512(arg1)
    print("OnSubFinish4007512")
end

return Quest40075
