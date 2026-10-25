require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23033 = class("Quest23033", QuestActorProxy)
Quest23033.defaultAlias = "Quest23033"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest23033:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest23033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303311"] = self.OnSubStart2303311,
        ["2303301"] = self.OnSubStart2303301,
        ["2303302"] = self.OnSubStart2303302,
        ["2303303"] = self.OnSubStart2303303,
        ["2303304"] = self.OnSubStart2303304,
        ["2303305"] = self.OnSubStart2303305,
        ["2303306"] = self.OnSubStart2303306,
        ["2303307"] = self.OnSubStart2303307,
        ["2303308"] = self.OnSubStart2303308,
        ["2303309"] = self.OnSubStart2303309,
        ["2303310"] = self.OnSubStart2303310
    }
end

function Quest23033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303311"] = self.OnSubFinish2303311,
        ["2303301"] = self.OnSubFinish2303301,
        ["2303302"] = self.OnSubFinish2303302,
        ["2303303"] = self.OnSubFinish2303303,
        ["2303304"] = self.OnSubFinish2303304,
        ["2303305"] = self.OnSubFinish2303305,
        ["2303306"] = self.OnSubFinish2303306,
        ["2303307"] = self.OnSubFinish2303307,
        ["2303308"] = self.OnSubFinish2303308,
        ["2303309"] = self.OnSubFinish2303309,
        ["2303310"] = self.OnSubFinish2303310
    }
end

function Quest23033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23033:Start()
    print("Start")
end

function Quest23033:OnDestroy()
    print("OnDestroy")
end

function Quest23033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23033:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc12717Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13476Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 3)
    actorMgr:GetActor("23033"):UnSpawn(gadgets.Gadget70710787Data.alias)
    actorMgr:DestroyEntityActor("Q2303302Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q2303307Trigger", 0, false)
end

function Quest23033:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest23033:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest23033:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest23033:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest23033:OnSubStart2303311(arg1)
    print("OnSubStart2303311")
end

function Quest23033:OnSubFinish2303311(arg1)
    print("OnSubFinish2303311")
end

function Quest23033:OnSubStart2303301(arg1)
    print("OnSubStart2303301")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
end

function Quest23033:OnSubFinish2303301(arg1)
    print("OnSubFinish2303301")
end

function Quest23033:OnSubStart2303302(arg1)
    print("OnSubStart2303302")
    actorMgr:CreateActorWithPos("Q2303302Trigger", "Actor/Gadget/Q2303302Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303302_guide_1749").pos, sceneData:GetDummyPoint(3, "Q2303302_guide_1749").rot, true, false, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
end

function Quest23033:OnSubFinish2303302(arg1)
    print("OnSubFinish2303302")
end

function Quest23033:OnSubStart2303303(arg1)
    print("OnSubStart2303303")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12717Data.id, 1, npcs.Npc12717Data.alias)
end

function Quest23033:OnSubFinish2303303(arg1)
    print("OnSubFinish2303303")
end

function Quest23033:OnSubStart2303304(arg1)
    print("OnSubStart2303304")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12717Data.id, 1)
end

function Quest23033:OnSubFinish2303304(arg1)
    print("OnSubFinish2303304")
end

function Quest23033:OnSubStart2303305(arg1)
    print("OnSubStart2303305")
end

function Quest23033:OnSubFinish2303305(arg1)
    print("OnSubFinish2303305")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
end

function Quest23033:OnSubStart2303306(arg1)
    print("OnSubStart2303306")
    this:CreateQuestNpc(arg1, npcs.Npc12717Data.id, 1)
end

function Quest23033:OnSubFinish2303306(arg1)
    print("OnSubFinish2303306")
end

function Quest23033:OnSubStart2303307(arg1)
    print("OnSubStart2303307")
    actorMgr:CreateActorWithPos("Q2303307Trigger", "Actor/Gadget/Q2303307Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303307_guide_1805").pos, sceneData:GetDummyPoint(3, "Q2303307_guide_1805").rot, true, false, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
end

function Quest23033:OnSubFinish2303307(arg1)
    print("OnSubFinish2303307")
end

function Quest23033:OnSubStart2303308(arg1)
    print("OnSubStart2303308")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12717Data.id, 1, npcs.Npc12717Data.alias)
end

function Quest23033:OnSubFinish2303308(arg1)
    print("OnSubFinish2303308")
end

function Quest23033:OnSubStart2303309(arg1)
    print("OnSubStart2303309")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12717Data.id, 1)
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc13476Data.id, 2)
    this:UnSpawn(gadgets.Gadget70710787Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710787Data.id, 1, 0)
end

function Quest23033:OnSubFinish2303309(arg1)
    print("OnSubFinish2303309")
    this:SafeDestroyQuestNpc(npcs.Npc13476Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1025Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1026Data.alias)
end

function Quest23033:OnSubStart2303310(arg1)
    print("OnSubStart2303310")
end

function Quest23033:OnSubFinish2303310(arg1)
    print("OnSubFinish2303310")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc12717Data.alias)
    this:UnSpawn(gadgets.Gadget70710787Data.alias)
end

return Quest23033
