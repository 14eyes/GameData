require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73037 = class("Quest73037", QuestActorProxy)
Quest73037.defaultAlias = "Quest73037"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303702"] = self.OnSubStart7303702,
        ["7303703"] = self.OnSubStart7303703,
        ["7303704"] = self.OnSubStart7303704,
        ["7303705"] = self.OnSubStart7303705,
        ["7303706"] = self.OnSubStart7303706,
        ["7303708"] = self.OnSubStart7303708,
        ["7303709"] = self.OnSubStart7303709,
        ["7303712"] = self.OnSubStart7303712,
        ["7303710"] = self.OnSubStart7303710,
        ["7303711"] = self.OnSubStart7303711,
        ["7303701"] = self.OnSubStart7303701,
        ["7303707"] = self.OnSubStart7303707,
        ["7303713"] = self.OnSubStart7303713
    }
end

function Quest73037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303702"] = self.OnSubFinish7303702,
        ["7303703"] = self.OnSubFinish7303703,
        ["7303704"] = self.OnSubFinish7303704,
        ["7303705"] = self.OnSubFinish7303705,
        ["7303706"] = self.OnSubFinish7303706,
        ["7303708"] = self.OnSubFinish7303708,
        ["7303709"] = self.OnSubFinish7303709,
        ["7303712"] = self.OnSubFinish7303712,
        ["7303710"] = self.OnSubFinish7303710,
        ["7303711"] = self.OnSubFinish7303711,
        ["7303701"] = self.OnSubFinish7303701,
        ["7303707"] = self.OnSubFinish7303707,
        ["7303713"] = self.OnSubFinish7303713
    }
end

function Quest73037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73037:Start()
    print("Start")
end

function Quest73037:OnDestroy()
    print("OnDestroy")
end

function Quest73037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73037:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73037:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73037:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73037:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73037:OnSubStart7303702(arg1)
    print("OnSubStart7303702")
    actorMgr:CreateActorWithPos("Q73037Trigger_backcall", "Actor/Gadget/Q73037Trigger_backcall", 70900002, 0, {x = -730.602, y = -136.949, z = 3813.323}, {x = 0.0, y = 84.384, z = 0.0}, true, false)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy_Flaring", 10000005)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl_Flaring", 10000007)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy_Flaring", 10000005)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl_Flaring", 10000007)
    self:ActorDestroy("Q73037Trigger_pullback")
    self:ActorDestroy("Q73037Trigger_gobackfail")
    actorUtils.BanUI(16, false)
    actorMgr:CreateActorWithPos("Q73037Trigger_pullback", "Actor/Gadget/Q73037Trigger_pullback", 70900002, 0, {x = -716.206, y = -165.55, z = 4113.567}, {x = 0.0, y = 356.923, z = 0.0}, true, false, 3)
    self:ClearNarratorTask()
end

function Quest73037:OnSubFinish7303702(arg1)
    print("OnSubFinish7303702")
end

function Quest73037:OnSubStart7303703(arg1)
    print("OnSubStart7303703")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
    actorMgr:CreateActorWithPos("Q73037Trigger1_7303701", "Actor/Gadget/Q73037Trigger1_7303701", 70900002, 0, {x = -754.842, y = -150.9, z = 3905.267}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73037Trigger_gobackfail", "Actor/Gadget/Q73037Trigger_gobackfail", 70900002, 0, {x = -723.717, y = -139.349, z = 3761.503}, {x = 0.0, y = 7.979, z = 0.0}, true, false)
    globalActor:SpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:SpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
    globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
end

function Quest73037:OnSubFinish7303703(arg1)
    print("OnSubFinish7303703")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73037:OnSubStart7303704(arg1)
    print("OnSubStart7303704")
    actorUtils.BanUI(16, true)
    self:ActionSafeCall(function(arg1)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
    end)
end

function Quest73037:OnSubFinish7303704(arg1)
    print("OnSubFinish7303704")
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
end

function Quest73037:OnSubStart7303705(arg1)
    print("OnSubStart7303705")
    actorUtils.BanUI(16, true)
    self:ActionSafeCall(function(arg1)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
    end)
end

function Quest73037:OnSubFinish7303705(arg1)
    print("OnSubFinish7303705")
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
end

function Quest73037:OnSubStart7303706(arg1)
    print("OnSubStart7303706")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_finalBoss)
    self:CallDelay(0.5, function(arg1)
        globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerBoy_Flaring", 10000005)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerGirl_Flaring", 10000007)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy_Flaring", 10000005)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl_Flaring", 10000007)
    end)
end

function Quest73037:OnSubFinish7303706(arg1)
    print("OnSubFinish7303706")
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy_Flaring", 10000005)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl_Flaring", 10000007)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy_Flaring", 10000005)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl_Flaring", 10000007)
end

function Quest73037:OnSubStart7303708(arg1)
    print("OnSubStart7303708")
    self:NpcCreate(arg1, npcs.Npc20646Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:ClearNarratorTask()
        arg1:ActorDestroy("Q73037Trigger_pullback")
        arg1:ActorDestroy("Q73037Trigger_gobackfail")
        actorUtils.BanUI(16, false)
    end)
end

function Quest73037:OnSubFinish7303708(arg1)
    print("OnSubFinish7303708")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73037:OnSubStart7303709(arg1)
    print("OnSubStart7303709")
end

function Quest73037:OnSubFinish7303709(arg1)
    print("OnSubFinish7303709")
end

function Quest73037:OnSubStart7303712(arg1)
    print("OnSubStart7303712")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20647Data.id, 1, npcs.Npc20647Data.alias)
end

function Quest73037:OnSubFinish7303712(arg1)
    print("OnSubFinish7303712")
end

function Quest73037:OnSubStart7303710(arg1)
    print("OnSubStart7303710")
end

function Quest73037:OnSubFinish7303710(arg1)
    print("OnSubFinish7303710")
end

function Quest73037:OnSubStart7303711(arg1)
    print("OnSubStart7303711")
    self:RequestInteraction(npcs.Npc20647Data.alias)
end

function Quest73037:OnSubFinish7303711(arg1)
    print("OnSubFinish7303711")
end

function Quest73037:OnSubStart7303701(arg1)
    print("OnSubStart7303701")
end

function Quest73037:OnSubFinish7303701(arg1)
    print("OnSubFinish7303701")
end

function Quest73037:OnSubStart7303707(arg1)
    print("OnSubStart7303707")
end

function Quest73037:OnSubFinish7303707(arg1)
    print("OnSubFinish7303707")
end

function Quest73037:OnSubStart7303713(arg1)
    print("OnSubStart7303713")
end

function Quest73037:OnSubFinish7303713(arg1)
    print("OnSubFinish7303713")
end

return Quest73037
