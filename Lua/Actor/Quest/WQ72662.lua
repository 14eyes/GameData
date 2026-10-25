require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72662 = class("Quest72662", QuestActorProxy)
Quest72662.defaultAlias = "Quest72662"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72662:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72662:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7266201"] = self.OnSubStart7266201,
        ["7266202"] = self.OnSubStart7266202,
        ["7266203"] = self.OnSubStart7266203,
        ["7266207"] = self.OnSubStart7266207,
        ["7266208"] = self.OnSubStart7266208,
        ["7266204"] = self.OnSubStart7266204,
        ["7266205"] = self.OnSubStart7266205,
        ["7266209"] = self.OnSubStart7266209,
        ["7266206"] = self.OnSubStart7266206
    }
end

function Quest72662:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7266201"] = self.OnSubFinish7266201,
        ["7266202"] = self.OnSubFinish7266202,
        ["7266203"] = self.OnSubFinish7266203,
        ["7266207"] = self.OnSubFinish7266207,
        ["7266208"] = self.OnSubFinish7266208,
        ["7266204"] = self.OnSubFinish7266204,
        ["7266205"] = self.OnSubFinish7266205,
        ["7266209"] = self.OnSubFinish7266209,
        ["7266206"] = self.OnSubFinish7266206
    }
end

function Quest72662:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7266201"] = self.OnSubFailed7266201,
        ["7266202"] = self.OnSubFailed7266202,
        ["7266203"] = self.OnSubFailed7266203,
        ["7266207"] = self.OnSubFailed7266207,
        ["7266208"] = self.OnSubFailed7266208,
        ["7266204"] = self.OnSubFailed7266204,
        ["7266205"] = self.OnSubFailed7266205,
        ["7266209"] = self.OnSubFailed7266209,
        ["7266206"] = self.OnSubFailed7266206
    }
end

function Quest72662:Start()
    print("Start")
end

function Quest72662:OnDestroy()
    print("OnDestroy")
end

function Quest72662:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72662:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3200Data.alias, 3)
end

function Quest72662:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7266209 then
        actorUtils.FinishQuestID(false, 7266209)
    elseif arg1 == 7266202 then
        print("attachFinishpod")
        globalActor:SpawnAttach("FishingRod_WeaponR", 10000005)
        globalActor:SpawnAttach("FishingRod_WeaponR", 10000007)
        globalActor:SpawnAttachHeroEntity("FishingRod_WeaponR", 10000005)
        globalActor:SpawnAttachHeroEntity("FishingRod_WeaponR", 10000007)
    elseif arg1 == 7266290 then
        print("unattachfinishpod")
        globalActor:UnSpawnAttach("FishingRod_WeaponR", 10000005)
        globalActor:UnSpawnAttach("FishingRod_WeaponR", 10000007)
        globalActor:UnSpawnAttachHeroEntity("FishingRod_WeaponR", 10000005)
        globalActor:UnSpawnAttachHeroEntity("FishingRod_WeaponR", 10000007)
        print("AttachEffect")
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12174Data.alias, 72662)
        if questNpcActor ~= nil then
            questNpcActor:SpawnAttach("Defender_EyeTransform")
        end
    end
end

function Quest72662:OnSubStart7266201(arg1)
    print("OnSubStart7266201")
    self:CreateQuestNpc(arg1, npcs.Npc3200Data.id, 1)
end

function Quest72662:OnSubFinish7266201(arg1)
    print("OnSubFinish7266201")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3200Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3200Data.alias, 1, true)
    end)
end

function Quest72662:OnSubFailed7266201(arg1)
    print("OnSubFailed7266201")
end

function Quest72662:OnSubStart7266202(arg1)
    print("OnSubStart7266202")
    actorMgr:CreateActorWithPos("Q72662Trigger", "Actor/Gadget/Q72662Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72662_Ruin").pos, sceneData:GetDummyPoint(3, "Q72662_Ruin").rot, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3200Data.alias, 1, true)
    end)
end

function Quest72662:OnSubFinish7266202(arg1)
    print("OnSubFinish7266202")
end

function Quest72662:OnSubFailed7266202(arg1)
    print("OnSubFailed7266202")
end

function Quest72662:OnSubStart7266203(arg1)
    print("OnSubStart7266203")
end

function Quest72662:OnSubFinish7266203(arg1)
    print("OnSubFinish7266203")
    self:NarratorOnlyTaskLegacy(datas.NarratorTable, nil, "", 72662)
end

function Quest72662:OnSubFailed7266203(arg1)
    print("OnSubFailed7266203")
end

function Quest72662:OnSubStart7266207(arg1)
    print("OnSubStart7266207")
end

function Quest72662:OnSubFinish7266207(arg1)
    print("OnSubFinish7266207")
end

function Quest72662:OnSubFailed7266207(arg1)
    print("OnSubFailed7266207")
end

function Quest72662:OnSubStart7266208(arg1)
    print("OnSubStart7266208")
end

function Quest72662:OnSubFinish7266208(arg1)
    print("OnSubFinish7266208")
end

function Quest72662:OnSubFailed7266208(arg1)
    print("OnSubFailed7266208")
end

function Quest72662:OnSubStart7266204(arg1)
    print("OnSubStart7266204")
    self:CreateQuestNpc(arg1, npcs.Npc3200Data.id, 1)
    globalActor:UnSpawnAttach("FishingRod_WeaponR", 10000005)
    globalActor:UnSpawnAttach("FishingRod_WeaponR", 10000007)
    globalActor:UnSpawnAttachHeroEntity("FishingRod_WeaponR", 10000005)
    globalActor:UnSpawnAttachHeroEntity("FishingRod_WeaponR", 10000007)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12174Data.alias, 72662)
    if questNpcActor ~= nil then
        questNpcActor:UnSpawnAttach("Defender_EyeTransform")
    end
end

function Quest72662:OnSubFinish7266204(arg1)
    print("OnSubFinish7266204")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12174Data.alias, 72662)
    if questNpcActor ~= nil then
        questNpcActor:UnSpawnAttach("Defender_EyeTransform")
    end

    globalActor:UnSpawnAttach("FishingRod_WeaponR", 10000005)
    globalActor:UnSpawnAttach("FishingRod_WeaponR", 10000007)
    globalActor:UnSpawnAttachHeroEntity("FishingRod_WeaponR", 10000005)
    globalActor:UnSpawnAttachHeroEntity("FishingRod_WeaponR", 10000007)
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3200Data.alias, 3)
    end)
end

function Quest72662:OnSubFailed7266204(arg1)
    print("OnSubFailed7266204")
end

function Quest72662:OnSubStart7266205(arg1)
    print("OnSubStart7266205")
end

function Quest72662:OnSubFinish7266205(arg1)
    print("OnSubFinish7266205")
end

function Quest72662:OnSubFailed7266205(arg1)
    print("OnSubFailed7266205")
end

function Quest72662:OnSubStart7266209(arg1)
    print("OnSubStart7266209")
end

function Quest72662:OnSubFinish7266209(arg1)
    print("OnSubFinish7266209")
end

function Quest72662:OnSubFailed7266209(arg1)
    print("OnSubFailed7266209")
end

function Quest72662:OnSubStart7266206(arg1)
    print("OnSubStart7266206")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc3200Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc3200Data.alias)
        end, nil, nil, "", false, false)
    end)
end

function Quest72662:OnSubFinish7266206(arg1)
    print("OnSubFinish7266206")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3200Data.alias, 3)
    end)
end

function Quest72662:OnSubFailed7266206(arg1)
    print("OnSubFailed7266206")
end

return Quest72662
