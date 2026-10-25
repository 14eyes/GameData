require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13003 = class("Quest13003", QuestActorProxy)
Quest13003.defaultAlias = "Quest13003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300301"] = self.OnSubStart1300301,
        ["1300302"] = self.OnSubStart1300302,
        ["1300303"] = self.OnSubStart1300303
    }
end

function Quest13003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300301"] = self.OnSubFinish1300301,
        ["1300302"] = self.OnSubFinish1300302,
        ["1300303"] = self.OnSubFinish1300303
    }
end

function Quest13003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13003:Start()
    print("Start")
end

function Quest13003:OnDestroy()
    print("OnDestroy")
end

function Quest13003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13003:OnSubStart1300301(arg1)
    print("OnSubStart1300301")
    self:CreateQuestNpc(arg1, npcs.Npc4019Data.id, 1)
end

function Quest13003:OnSubFinish1300301(arg1)
    print("OnSubFinish1300301")
    self:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
end

function Quest13003:OnSubStart1300302(arg1)
    print("OnSubStart1300302")
end

function Quest13003:OnSubFinish1300302(arg1)
    print("OnSubFinish1300302")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 13003)
    end)
end

function Quest13003:OnSubStart1300303(arg1)
    print("OnSubStart1300303")
    self:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12747Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12748Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12686Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12686Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1300303Trigger", "Actor/Gadget/Q1300303Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300303_guide").pos, sceneData:GetDummyPoint(3, "Q1300303_guide").rot, true, false, 3)
end

function Quest13003:OnSubFinish1300303(arg1)
    print("OnSubFinish1300303")
    self:ActorDestroy("Q1300303Trigger")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12747Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12748Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12686Data.alias, 3)
    self:ClearNarratorTask()
end

return Quest13003
