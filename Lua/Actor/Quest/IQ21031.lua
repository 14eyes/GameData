require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21031 = class("Quest21031", QuestActorProxy)
Quest21031.defaultAlias = "Quest21031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest21031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest21031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103101"] = self.OnSubStart2103101,
        ["2103102"] = self.OnSubStart2103102,
        ["2103103"] = self.OnSubStart2103103,
        ["2103107"] = self.OnSubStart2103107,
        ["2103104"] = self.OnSubStart2103104,
        ["2103105"] = self.OnSubStart2103105,
        ["2103106"] = self.OnSubStart2103106,
        ["2103108"] = self.OnSubStart2103108
    }
end

function Quest21031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103101"] = self.OnSubFinish2103101,
        ["2103102"] = self.OnSubFinish2103102,
        ["2103103"] = self.OnSubFinish2103103,
        ["2103107"] = self.OnSubFinish2103107,
        ["2103104"] = self.OnSubFinish2103104,
        ["2103105"] = self.OnSubFinish2103105,
        ["2103106"] = self.OnSubFinish2103106,
        ["2103108"] = self.OnSubFinish2103108
    }
end

function Quest21031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21031:Start()
    print("Start")
end

function Quest21031:OnDestroy()
    print("OnDestroy")
end

function Quest21031:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc2202Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10204Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:UnSpawn(gadgets.Gadget71700337Data.alias)
end

function Quest21031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2202Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10204Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:UnSpawn(gadgets.Gadget71700337Data.alias)
end

function Quest21031:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest21031:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest21031:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21031:OnSubStart2103101(arg1)
    print("OnSubStart2103101")
    self:CreateQuestNpc(arg1, npcs.Npc2202Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc2202Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest21031:OnSubFinish2103101(arg1)
    print("OnSubFinish2103101")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc2202Data.alias, 3)
        arg1:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    end, nil, nil, "", false, true)
end

function Quest21031:OnSubStart2103102(arg1)
    print("OnSubStart2103102")
    self:NotifyTo(npcs.Npc2202Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q21031Trigger", "Actor/Gadget/Q21031Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2103102").pos, sceneData:GetDummyPoint(3, "Q2103102").rot, true, false, 3)
end

function Quest21031:OnSubFinish2103102(arg1)
    print("OnSubFinish2103102")
    self:ActorDestroy("Q21031Trigger")
end

function Quest21031:OnSubStart2103103(arg1)
    print("OnSubStart2103103")
    self:DailyNpcSafeHideSelf(npcs.Npc2202Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget71700337Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700337Data.id, 1, 0)
end

function Quest21031:OnSubFinish2103103(arg1)
    print("OnSubFinish2103103")
    self:UnSpawn(gadgets.Gadget71700337Data.alias)
end

function Quest21031:OnSubStart2103107(arg1)
    print("OnSubStart2103107")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1_2)
        arg1_2:DailyNpcSafeHideSelf(npcs.Npc2202Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
        arg1_2:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, true)
end

function Quest21031:OnSubFinish2103107(arg1)
    print("OnSubFinish2103107")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest21031:OnSubStart2103104(arg1)
    print("OnSubStart2103104")
    self:CreateQuestNpc(arg1, npcs.Npc10204Data.id, 1)
end

function Quest21031:OnSubFinish2103104(arg1)
    print("OnSubFinish2103104")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc10204Data.alias)
end

function Quest21031:OnSubStart2103105(arg1)
    print("OnSubStart2103105")
    self:CreateQuestNpc(arg1, npcs.Npc2202Data.id, 1)
end

function Quest21031:OnSubFinish2103105(arg1)
    print("OnSubFinish2103105")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2202Data.alias)
end

function Quest21031:OnSubStart2103106(arg1)
    print("OnSubStart2103106")
    self:CreateQuestNpc(arg1, npcs.Npc2202Data.id, 1)
end

function Quest21031:OnSubFinish2103106(arg1)
    print("OnSubFinish2103106")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2202Data.alias)
end

function Quest21031:OnSubStart2103108(arg1)
    print("OnSubStart2103108")
end

function Quest21031:OnSubFinish2103108(arg1)
    print("OnSubFinish2103108")
end

return Quest21031
