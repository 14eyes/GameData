require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23021 = class("Quest23021", QuestActorProxy)
Quest23021.defaultAlias = "Quest23021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302101"] = self.OnSubStart2302101,
        ["2302102"] = self.OnSubStart2302102,
        ["2302103"] = self.OnSubStart2302103,
        ["2302104"] = self.OnSubStart2302104,
        ["2302105"] = self.OnSubStart2302105,
        ["2302109"] = self.OnSubStart2302109,
        ["2302106"] = self.OnSubStart2302106,
        ["2302107"] = self.OnSubStart2302107,
        ["2302108"] = self.OnSubStart2302108,
        ["2302110"] = self.OnSubStart2302110
    }
end

function Quest23021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302101"] = self.OnSubFinish2302101,
        ["2302102"] = self.OnSubFinish2302102,
        ["2302103"] = self.OnSubFinish2302103,
        ["2302104"] = self.OnSubFinish2302104,
        ["2302105"] = self.OnSubFinish2302105,
        ["2302109"] = self.OnSubFinish2302109,
        ["2302106"] = self.OnSubFinish2302106,
        ["2302107"] = self.OnSubFinish2302107,
        ["2302108"] = self.OnSubFinish2302108,
        ["2302110"] = self.OnSubFinish2302110
    }
end

function Quest23021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23021:Start()
    print("Start")
end

function Quest23021:OnDestroy()
    print("OnDestroy")
end

function Quest23021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23021:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4041Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4041Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2302102Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302105Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2302107Trigger", 3, false)
end

function Quest23021:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 2302109)
    end
end

function Quest23021:OnSubStart2302101(arg1)
    print("OnSubStart2302101")
    self:CreateQuestNpc(arg1, npcs.Npc4032Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4031Data.id, 2)
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302101(arg1)
    print("OnSubFinish2302101")
end

function Quest23021:OnSubStart2302102(arg1)
    print("OnSubStart2302102")
    actorMgr:CreateActorWithPos("Q2302102Trigger", "Actor/Gadget/Q2302102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302101_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2302101_GUIDE").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302102(arg1)
    print("OnSubFinish2302102")
end

function Quest23021:OnSubStart2302103(arg1)
    print("OnSubStart2302103")
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302103(arg1)
    print("OnSubFinish2302103")
end

function Quest23021:OnSubStart2302104(arg1)
    print("OnSubStart2302104")
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302104(arg1)
    print("OnSubFinish2302104")
end

function Quest23021:OnSubStart2302105(arg1)
    print("OnSubStart2302105")
    actorMgr:CreateActorWithPos("Q2302105Trigger", "Actor/Gadget/Q2302105Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2301901_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2301901_GUIDE").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302105(arg1)
    print("OnSubFinish2302105")
end

function Quest23021:OnSubStart2302109(arg1)
    print("OnSubStart2302109")
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302109(arg1)
    print("OnSubFinish2302109")
end

function Quest23021:OnSubStart2302106(arg1)
    print("OnSubStart2302106")
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc4032Data.alias)
end

function Quest23021:OnSubFinish2302106(arg1)
    print("OnSubFinish2302106")
    self:LightNotifyTo(npcs.Npc4041Data.alias, 0, true)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4032Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4031Data.alias)
end

function Quest23021:OnSubStart2302107(arg1)
    print("OnSubStart2302107")
    actorMgr:CreateActorWithPos("Q2302107Trigger", "Actor/Gadget/Q2302107Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2301901_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2301901_GUIDE").rot, true, false, 3)
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302107(arg1)
    print("OnSubFinish2302107")
end

function Quest23021:OnSubStart2302108(arg1)
    print("OnSubStart2302108")
    self:NotifyTo(npcs.Npc4041Data.alias, 1, true)
end

function Quest23021:OnSubFinish2302108(arg1)
    print("OnSubFinish2302108")
    self:LightNotifyTo(npcs.Npc4041Data.alias, 0, true)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4032Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4031Data.alias)
end

function Quest23021:OnSubStart2302110(arg1)
    print("OnSubStart2302110")
end

function Quest23021:OnSubFinish2302110(arg1)
    print("OnSubFinish2302110")
end

return Quest23021
