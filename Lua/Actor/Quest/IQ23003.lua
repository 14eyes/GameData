require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23003 = class("Quest23003", QuestActorProxy)
Quest23003.defaultAlias = "Quest23003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300301"] = self.OnSubStart2300301,
        ["2300302"] = self.OnSubStart2300302,
        ["2300303"] = self.OnSubStart2300303,
        ["2300305"] = self.OnSubStart2300305,
        ["2300306"] = self.OnSubStart2300306,
        ["2300308"] = self.OnSubStart2300308,
        ["2300309"] = self.OnSubStart2300309,
        ["2300310"] = self.OnSubStart2300310,
        ["2300307"] = self.OnSubStart2300307
    }
end

function Quest23003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300301"] = self.OnSubFinish2300301,
        ["2300302"] = self.OnSubFinish2300302,
        ["2300303"] = self.OnSubFinish2300303,
        ["2300305"] = self.OnSubFinish2300305,
        ["2300306"] = self.OnSubFinish2300306,
        ["2300308"] = self.OnSubFinish2300308,
        ["2300309"] = self.OnSubFinish2300309,
        ["2300310"] = self.OnSubFinish2300310,
        ["2300307"] = self.OnSubFinish2300307
    }
end

function Quest23003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23003:Start()
    print("Start")
end

function Quest23003:OnDestroy()
    print("OnDestroy")
end

function Quest23003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23003:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4004Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4004Data.alias, 1072)
    self:SafeDestroyQuestNpc(npcs.Npc12729Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4004Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q23003Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300308Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300309Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300310Trigger", 3, false)
end

function Quest23003:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest23003:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest23003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23003:OnSubStart2300301(arg1)
    print("OnSubStart2300301")
end

function Quest23003:OnSubFinish2300301(arg1)
    print("OnSubFinish2300301")
end

function Quest23003:OnSubStart2300302(arg1)
    print("OnSubStart2300302")
    self:CreateQuestNpc(arg1, npcs.Npc4004Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4004Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest23003:OnSubFinish2300302(arg1)
    print("OnSubFinish2300302")
    self:TransmitPlayerByQuestId(2300302, 1)
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "", false, false)
end

function Quest23003:OnSubStart2300303(arg1)
    print("OnSubStart2300303")
    self:CreateQuestNpc(arg1, npcs.Npc4004Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4004Data.alias):SitOnChair(8010)
end

function Quest23003:OnSubFinish2300303(arg1)
    print("OnSubFinish2300303")
    self:NpcDestroy(npcs.Npc4004Data.alias, 3)
end

function Quest23003:OnSubStart2300305(arg1)
    print("OnSubStart2300305")
    self:DailyNpcSafeHideSelf(npcs.Npc4004Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q23003Trigger", "Actor/Gadget/Q23003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300305_guide").pos, sceneData:GetDummyPoint(3, "Q2300305_guide").rot, true, false, 3)
end

function Quest23003:OnSubFinish2300305(arg1)
    print("OnSubFinish2300305")
    self:NarratorOnlyTask(datas.NarratorTable230039901, nil, "")
end

function Quest23003:OnSubStart2300306(arg1)
    print("OnSubStart2300306")
end

function Quest23003:OnSubFinish2300306(arg1)
    print("OnSubFinish2300306")
    self:NarratorOnlyTask(datas.NarratorTable230039904, nil, "")
end

function Quest23003:OnSubStart2300308(arg1)
    print("OnSubStart2300308")
    self:DailyNpcSafeHideSelf(npcs.Npc4004Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2300308Trigger", "Actor/Gadget/Q2300308Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300308_guide").pos, sceneData:GetDummyPoint(3, "Q2300308_guide").rot, true, false, 3)
end

function Quest23003:OnSubFinish2300308(arg1)
    print("OnSubFinish2300308")
    if actorMgr:GetActor("Q2300308Trigger") ~= nil then
        self:ActorDestroy("Q2300308Trigger")
    end
end

function Quest23003:OnSubStart2300309(arg1)
    print("OnSubStart2300309")
    self:DailyNpcSafeHideSelf(npcs.Npc4004Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2300309Trigger", "Actor/Gadget/Q2300309Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300309_guide").pos, sceneData:GetDummyPoint(3, "Q2300309_guide").rot, true, false, 3)
end

function Quest23003:OnSubFinish2300309(arg1)
    print("OnSubFinish2300309")
    if actorMgr:GetActor("Q2300309Trigger") ~= nil then
        self:ActorDestroy("Q2300309Trigger")
    end
end

function Quest23003:OnSubStart2300310(arg1)
    print("OnSubStart2300310")
    self:DailyNpcSafeHideSelf(npcs.Npc4004Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2300310Trigger", "Actor/Gadget/Q2300310Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300310_guide").pos, sceneData:GetDummyPoint(3, "Q2300310_guide").rot, true, false, 3)
end

function Quest23003:OnSubFinish2300310(arg1)
    print("OnSubFinish2300310")
    if actorMgr:GetActor("Q2300310Trigger") ~= nil then
        self:ActorDestroy("Q2300310Trigger")
    end
end

function Quest23003:OnSubStart2300307(arg1)
    print("OnSubStart2300307")
    self:DailyNpcSafeHideSelf(npcs.Npc4004Data.alias, 1, true)
end

function Quest23003:OnSubFinish2300307(arg1)
    print("OnSubFinish2300307")
    self:LightNotifyTo(npcs.Npc4004Data.alias, 0, true)
end

return Quest23003
