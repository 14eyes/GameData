require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73002 = class("Quest73002", QuestActorProxy)
Quest73002.defaultAlias = "Quest73002"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300215"] = self.OnSubStart7300215,
        ["7300233"] = self.OnSubStart7300233,
        ["7300201"] = self.OnSubStart7300201,
        ["7300217"] = self.OnSubStart7300217,
        ["7300202"] = self.OnSubStart7300202,
        ["7300203"] = self.OnSubStart7300203,
        ["7300221"] = self.OnSubStart7300221,
        ["7300230"] = self.OnSubStart7300230,
        ["7300231"] = self.OnSubStart7300231,
        ["7300204"] = self.OnSubStart7300204,
        ["7300205"] = self.OnSubStart7300205,
        ["7300220"] = self.OnSubStart7300220,
        ["7300222"] = self.OnSubStart7300222,
        ["7300223"] = self.OnSubStart7300223,
        ["7300206"] = self.OnSubStart7300206,
        ["7300207"] = self.OnSubStart7300207,
        ["7300219"] = self.OnSubStart7300219,
        ["7300209"] = self.OnSubStart7300209,
        ["7300210"] = self.OnSubStart7300210,
        ["7300208"] = self.OnSubStart7300208,
        ["7300234"] = self.OnSubStart7300234,
        ["7300218"] = self.OnSubStart7300218,
        ["7300211"] = self.OnSubStart7300211,
        ["7300212"] = self.OnSubStart7300212,
        ["7300213"] = self.OnSubStart7300213,
        ["7300214"] = self.OnSubStart7300214,
        ["7300224"] = self.OnSubStart7300224,
        ["7300225"] = self.OnSubStart7300225,
        ["7300232"] = self.OnSubStart7300232,
        ["7300216"] = self.OnSubStart7300216,
        ["7300226"] = self.OnSubStart7300226,
        ["7300227"] = self.OnSubStart7300227,
        ["7300228"] = self.OnSubStart7300228,
        ["7300229"] = self.OnSubStart7300229
    }
end

function Quest73002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300215"] = self.OnSubFinish7300215,
        ["7300233"] = self.OnSubFinish7300233,
        ["7300201"] = self.OnSubFinish7300201,
        ["7300217"] = self.OnSubFinish7300217,
        ["7300202"] = self.OnSubFinish7300202,
        ["7300203"] = self.OnSubFinish7300203,
        ["7300221"] = self.OnSubFinish7300221,
        ["7300230"] = self.OnSubFinish7300230,
        ["7300231"] = self.OnSubFinish7300231,
        ["7300204"] = self.OnSubFinish7300204,
        ["7300205"] = self.OnSubFinish7300205,
        ["7300220"] = self.OnSubFinish7300220,
        ["7300222"] = self.OnSubFinish7300222,
        ["7300223"] = self.OnSubFinish7300223,
        ["7300206"] = self.OnSubFinish7300206,
        ["7300207"] = self.OnSubFinish7300207,
        ["7300219"] = self.OnSubFinish7300219,
        ["7300209"] = self.OnSubFinish7300209,
        ["7300210"] = self.OnSubFinish7300210,
        ["7300208"] = self.OnSubFinish7300208,
        ["7300234"] = self.OnSubFinish7300234,
        ["7300218"] = self.OnSubFinish7300218,
        ["7300211"] = self.OnSubFinish7300211,
        ["7300212"] = self.OnSubFinish7300212,
        ["7300213"] = self.OnSubFinish7300213,
        ["7300214"] = self.OnSubFinish7300214,
        ["7300224"] = self.OnSubFinish7300224,
        ["7300225"] = self.OnSubFinish7300225,
        ["7300232"] = self.OnSubFinish7300232,
        ["7300216"] = self.OnSubFinish7300216,
        ["7300226"] = self.OnSubFinish7300226,
        ["7300227"] = self.OnSubFinish7300227,
        ["7300228"] = self.OnSubFinish7300228,
        ["7300229"] = self.OnSubFinish7300229
    }
end

function Quest73002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73002:Start()
    print("Start")
end

function Quest73002:OnDestroy()
    print("OnDestroy")
end

function Quest73002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73002:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest73002:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73002:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73002:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7300213)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(true, 7300213)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7300224)
        self:ActionSafeCall(function(arg1)
            arg1:GetQuestNpcActor(npcs.Npc4198Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, false)
        end)
    elseif arg1 == 4 then
        self:ActionSafeCall(function(arg1)
            arg1:GetQuestNpcActor(npcs.Npc4198Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, false)
        end)
    end
end

function Quest73002:OnSubStart7300215(arg1)
    print("OnSubStart7300215")
end

function Quest73002:OnSubFinish7300215(arg1)
    print("OnSubFinish7300215")
end

function Quest73002:OnSubStart7300233(arg1)
    print("OnSubStart7300233")
    actorMgr:CreateActorWithPos("Q73002Trigger_7300233", "Actor/Gadget/Q73002Trigger_7300233", 70900002, 0, {x = -1042.315, y = 217.987, z = 2772.629}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    self:NpcDestroyWithDither(npcs.Npc4198Data.alias, 3)
end

function Quest73002:OnSubFinish7300233(arg1)
    print("OnSubFinish7300233")
end

function Quest73002:OnSubStart7300201(arg1)
    print("OnSubStart7300201")
    actorMgr:CreateActorWithPos("Q73002Trigger2_7300201Finish", "Actor/Gadget/Q73002Trigger2_7300201Finish", 70900002, 0, {x = -1036.304, y = 217.394, z = 2868.689}, {x = 0.0, y = 59.084, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73002Trigger1_NarratorTable_RanaHint2", "Actor/Gadget/Q73002Trigger1_NarratorTable_RanaHint2", 70900002, 0, {x = -1035.295, y = 206.968, z = 2852.997}, {x = 88.797, y = 180.0, z = 150.106}, true, false, 3)
end

function Quest73002:OnSubFinish7300201(arg1)
    print("OnSubFinish7300201")
end

function Quest73002:OnSubStart7300217(arg1)
    print("OnSubStart7300217")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubFinish7300217(arg1)
    print("OnSubFinish7300217")
    self:NarratorOnlyTask(datas.NarratorTable_RanaHint3, nil, "")
end

function Quest73002:OnSubStart7300202(arg1)
    print("OnSubStart7300202")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73002:OnSubFinish7300202(arg1)
    print("OnSubFinish7300202")
    self:NarratorOnlyTask(datas.NarratorTable_RanaHint4, nil, "")
    self:SafeDestroyQuestNpc(npcs.Npc4198Data.alias, 3)
end

function Quest73002:OnSubStart7300203(arg1)
    print("OnSubStart7300203")
    actorMgr:CreateActorWithPos("Q73002Trigger3_7300203Finish", "Actor/Gadget/Q73002Trigger3_7300203Finish", 70900002, 0, {x = -1212.971, y = 176.5, z = 2968.296}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73002:OnSubFinish7300203(arg1)
    print("OnSubFinish7300203")
end

function Quest73002:OnSubStart7300221(arg1)
    print("OnSubStart7300221")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73002:OnSubFinish7300221(arg1)
    print("OnSubFinish7300221")
end

function Quest73002:OnSubStart7300230(arg1)
    print("OnSubStart7300230")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73002:OnSubFinish7300230(arg1)
    print("OnSubFinish7300230")
end

function Quest73002:OnSubStart7300231(arg1)
    print("OnSubStart7300231")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
    self:NarratorOnlyTask(datas.NarratorTable_RanaHint5, function(arg1)
        actorUtils.FinishQuestID(false, 7300231)
    end, "")

    self:EnterSceneLookCamera({x = -1252.974, y = 176.5, z = 3002.135}, 0.2, 3, true, true)
    self:CallDelay(9, function(arg1)
        actorUtils.FinishQuestID(false, 7300231)
    end)
end

function Quest73002:OnSubFinish7300231(arg1)
    print("OnSubFinish7300231")
end

function Quest73002:OnSubStart7300204(arg1)
    print("OnSubStart7300204")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
end

function Quest73002:OnSubFinish7300204(arg1)
    print("OnSubFinish7300204")
    self:NpcDestroyWithDither(npcs.Npc4198Data.alias, 3)
end

function Quest73002:OnSubStart7300205(arg1)
    print("OnSubStart7300205")
    actorMgr:CreateActorWithPos("Q73002Trigger4_7300205Talk", "Actor/Gadget/Q73002Trigger4_7300205Talk", 70900002, 0, {x = -1263.907, y = 176.5, z = 3009.81}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73002:OnSubFinish7300205(arg1)
    print("OnSubFinish7300205")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73002:OnSubStart7300220(arg1)
    print("OnSubStart7300220")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubFinish7300220(arg1)
    print("OnSubFinish7300220")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubStart7300222(arg1)
    print("OnSubStart7300222")
end

function Quest73002:OnSubFinish7300222(arg1)
    print("OnSubFinish7300222")
end

function Quest73002:OnSubStart7300223(arg1)
    print("OnSubStart7300223")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubFinish7300223(arg1)
    print("OnSubFinish7300223")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubStart7300206(arg1)
    print("OnSubStart7300206")
    actorMgr:CreateActorWithPos("Q73002Trigger5_7300206Finsh", "Actor/Gadget/Q73002Trigger5_7300206Finsh", 70900002, 0, {x = -1323.749, y = 177.347, z = 3162.037}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73002:OnSubFinish7300206(arg1)
    print("OnSubFinish7300206")
end

function Quest73002:OnSubStart7300207(arg1)
    print("OnSubStart7300207")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubFinish7300207(arg1)
    print("OnSubFinish7300207")
end

function Quest73002:OnSubStart7300219(arg1)
    print("OnSubStart7300219")
    self:NpcCreate(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest73002:OnSubFinish7300219(arg1)
    print("OnSubFinish7300219")
end

function Quest73002:OnSubStart7300209(arg1)
    print("OnSubStart7300209")
end

function Quest73002:OnSubFinish7300209(arg1)
    print("OnSubFinish7300209")
end

function Quest73002:OnSubStart7300210(arg1)
    print("OnSubStart7300210")
end

function Quest73002:OnSubFinish7300210(arg1)
    print("OnSubFinish7300210")
end

function Quest73002:OnSubStart7300208(arg1)
    print("OnSubStart7300208")
end

function Quest73002:OnSubFinish7300208(arg1)
    print("OnSubFinish7300208")
end

function Quest73002:OnSubStart7300234(arg1)
    print("OnSubStart7300234")
end

function Quest73002:OnSubFinish7300234(arg1)
    print("OnSubFinish7300234")
end

function Quest73002:OnSubStart7300218(arg1)
    print("OnSubStart7300218")
    self.CallDelay(self, 0, function(arg1)
        arg1:EnablePlayerInput(false)
    end)

    self.CallDelay(self, 0.4, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7300218, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 0.5, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest73002:OnSubFinish7300218(arg1)
    print("OnSubFinish7300218")
    self:ShowBlackScreen(0.2, 0.5, 0.2, nil, nil, nil, "", false, true)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73002:OnSubStart7300211(arg1)
    print("OnSubStart7300211")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(4140, true, nil, true, true, false, false)
end

function Quest73002:OnSubFinish7300211(arg1)
    print("OnSubFinish7300211")
end

function Quest73002:OnSubStart7300212(arg1)
    print("OnSubStart7300212")
    self:CallDelay(0.5, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest73002:OnSubFinish7300212(arg1)
    print("OnSubFinish7300212")
end

function Quest73002:OnSubStart7300213(arg1)
    print("OnSubStart7300213")
    self:RequestInteraction(npcs.Npc4198Data.alias)
end

function Quest73002:OnSubFinish7300213(arg1)
    print("OnSubFinish7300213")
end

function Quest73002:OnSubStart7300214(arg1)
    print("OnSubStart7300214")
    self:NpcCreate(arg1, npcs.Npc4198Data.id, 1)
    actorMgr:CreateActorWithPos("Q73002Trigger6_7300224_25_26Faild", "Actor/Gadget/Q73002Trigger6_7300224_25_26Faild", 70900002, 0, {x = -1328.24, y = 177.65, z = 3151.592}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):SitOnChair(0)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc4198Data.alias)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:LookAt(sceneData:GetDummyPoint(3, "Ranahead").pos)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, false)
    end)
end

function Quest73002:OnSubFinish7300214(arg1)
    print("OnSubFinish7300214")
    self:ActorDestroy("Q73002Trigger6_7300224_25_26Faild")
end

function Quest73002:OnSubStart7300224(arg1)
    print("OnSubStart7300224")
end

function Quest73002:OnSubFinish7300224(arg1)
    print("OnSubFinish7300224")
end

function Quest73002:OnSubStart7300225(arg1)
    print("OnSubStart7300225")
    self:ShowBlackScreen(0, 3.5, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc4198Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73002:OnSubFinish7300225(arg1)
    print("OnSubFinish7300225")
end

function Quest73002:OnSubStart7300232(arg1)
    print("OnSubStart7300232")
end

function Quest73002:OnSubFinish7300232(arg1)
    print("OnSubFinish7300232")
end

function Quest73002:OnSubStart7300216(arg1)
    print("OnSubStart7300216")
    self:RequestInteraction("4198")
end

function Quest73002:OnSubFinish7300216(arg1)
    print("OnSubFinish7300216")
end

function Quest73002:OnSubStart7300226(arg1)
    print("OnSubStart7300226")
end

function Quest73002:OnSubFinish7300226(arg1)
    print("OnSubFinish7300226")
end

function Quest73002:OnSubStart7300227(arg1)
    print("OnSubStart7300227")
end

function Quest73002:OnSubFinish7300227(arg1)
    print("OnSubFinish7300227")
end

function Quest73002:OnSubStart7300228(arg1)
    print("OnSubStart7300228")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubFinish7300228(arg1)
    print("OnSubFinish7300228")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
end

function Quest73002:OnSubStart7300229(arg1)
    print("OnSubStart7300229")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
end

function Quest73002:OnSubFinish7300229(arg1)
    print("OnSubFinish7300229")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4198Data.alias)
end

return Quest73002
