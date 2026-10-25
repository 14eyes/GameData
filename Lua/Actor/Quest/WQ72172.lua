require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72172 = class("Quest72172", QuestActorProxy)
Quest72172.defaultAlias = "Quest72172"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72172:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72172:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217219"] = self.OnSubStart7217219,
        ["7217231"] = self.OnSubStart7217231,
        ["7217229"] = self.OnSubStart7217229,
        ["7217220"] = self.OnSubStart7217220,
        ["7217224"] = self.OnSubStart7217224,
        ["7217201"] = self.OnSubStart7217201,
        ["7217221"] = self.OnSubStart7217221,
        ["7217202"] = self.OnSubStart7217202,
        ["7217225"] = self.OnSubStart7217225,
        ["7217222"] = self.OnSubStart7217222,
        ["7217203"] = self.OnSubStart7217203,
        ["7217204"] = self.OnSubStart7217204,
        ["7217227"] = self.OnSubStart7217227,
        ["7217209"] = self.OnSubStart7217209,
        ["7217210"] = self.OnSubStart7217210,
        ["7217230"] = self.OnSubStart7217230,
        ["7217217"] = self.OnSubStart7217217,
        ["7217223"] = self.OnSubStart7217223,
        ["7217205"] = self.OnSubStart7217205,
        ["7217206"] = self.OnSubStart7217206,
        ["7217207"] = self.OnSubStart7217207,
        ["7217232"] = self.OnSubStart7217232,
        ["7217212"] = self.OnSubStart7217212,
        ["7217218"] = self.OnSubStart7217218,
        ["7217213"] = self.OnSubStart7217213,
        ["7217228"] = self.OnSubStart7217228,
        ["7217208"] = self.OnSubStart7217208,
        ["7217214"] = self.OnSubStart7217214,
        ["7217215"] = self.OnSubStart7217215,
        ["7217216"] = self.OnSubStart7217216,
        ["7217226"] = self.OnSubStart7217226,
        ["7217211"] = self.OnSubStart7217211
    }
end

function Quest72172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217219"] = self.OnSubFinish7217219,
        ["7217231"] = self.OnSubFinish7217231,
        ["7217229"] = self.OnSubFinish7217229,
        ["7217220"] = self.OnSubFinish7217220,
        ["7217224"] = self.OnSubFinish7217224,
        ["7217201"] = self.OnSubFinish7217201,
        ["7217221"] = self.OnSubFinish7217221,
        ["7217202"] = self.OnSubFinish7217202,
        ["7217225"] = self.OnSubFinish7217225,
        ["7217222"] = self.OnSubFinish7217222,
        ["7217203"] = self.OnSubFinish7217203,
        ["7217204"] = self.OnSubFinish7217204,
        ["7217227"] = self.OnSubFinish7217227,
        ["7217209"] = self.OnSubFinish7217209,
        ["7217210"] = self.OnSubFinish7217210,
        ["7217230"] = self.OnSubFinish7217230,
        ["7217217"] = self.OnSubFinish7217217,
        ["7217223"] = self.OnSubFinish7217223,
        ["7217205"] = self.OnSubFinish7217205,
        ["7217206"] = self.OnSubFinish7217206,
        ["7217207"] = self.OnSubFinish7217207,
        ["7217232"] = self.OnSubFinish7217232,
        ["7217212"] = self.OnSubFinish7217212,
        ["7217218"] = self.OnSubFinish7217218,
        ["7217213"] = self.OnSubFinish7217213,
        ["7217228"] = self.OnSubFinish7217228,
        ["7217208"] = self.OnSubFinish7217208,
        ["7217214"] = self.OnSubFinish7217214,
        ["7217215"] = self.OnSubFinish7217215,
        ["7217216"] = self.OnSubFinish7217216,
        ["7217226"] = self.OnSubFinish7217226,
        ["7217211"] = self.OnSubFinish7217211
    }
end

function Quest72172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217219"] = self.OnSubFailed7217219,
        ["7217231"] = self.OnSubFailed7217231,
        ["7217229"] = self.OnSubFailed7217229,
        ["7217220"] = self.OnSubFailed7217220,
        ["7217224"] = self.OnSubFailed7217224,
        ["7217201"] = self.OnSubFailed7217201,
        ["7217221"] = self.OnSubFailed7217221,
        ["7217202"] = self.OnSubFailed7217202,
        ["7217225"] = self.OnSubFailed7217225,
        ["7217222"] = self.OnSubFailed7217222,
        ["7217203"] = self.OnSubFailed7217203,
        ["7217204"] = self.OnSubFailed7217204,
        ["7217227"] = self.OnSubFailed7217227,
        ["7217209"] = self.OnSubFailed7217209,
        ["7217210"] = self.OnSubFailed7217210,
        ["7217230"] = self.OnSubFailed7217230,
        ["7217217"] = self.OnSubFailed7217217,
        ["7217223"] = self.OnSubFailed7217223,
        ["7217205"] = self.OnSubFailed7217205,
        ["7217206"] = self.OnSubFailed7217206,
        ["7217207"] = self.OnSubFailed7217207,
        ["7217232"] = self.OnSubFailed7217232,
        ["7217212"] = self.OnSubFailed7217212,
        ["7217218"] = self.OnSubFailed7217218,
        ["7217213"] = self.OnSubFailed7217213,
        ["7217228"] = self.OnSubFailed7217228,
        ["7217208"] = self.OnSubFailed7217208,
        ["7217214"] = self.OnSubFailed7217214,
        ["7217215"] = self.OnSubFailed7217215,
        ["7217216"] = self.OnSubFailed7217216,
        ["7217226"] = self.OnSubFailed7217226,
        ["7217211"] = self.OnSubFailed7217211
    }
end

function Quest72172:Start()
    print("Start")
end

function Quest72172:OnDestroy()
    print("OnDestroy")
end

function Quest72172:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72172:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72172:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72172:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72172:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest72172:OnSubStart7217219(arg1)
    print("OnSubStart7217219")
end

function Quest72172:OnSubFinish7217219(arg1)
    print("OnSubFinish7217219")
end

function Quest72172:OnSubFailed7217219(arg1)
    print("OnSubFailed7217219")
end

function Quest72172:OnSubStart7217231(arg1)
    print("OnSubStart7217231")
end

function Quest72172:OnSubFinish7217231(arg1)
    print("OnSubFinish7217231")
end

function Quest72172:OnSubFailed7217231(arg1)
    print("OnSubFailed7217231")
end

function Quest72172:OnSubStart7217229(arg1)
    print("OnSubStart7217229")
end

function Quest72172:OnSubFinish7217229(arg1)
    print("OnSubFinish7217229")
end

function Quest72172:OnSubFailed7217229(arg1)
    print("OnSubFailed7217229")
end

function Quest72172:OnSubStart7217220(arg1)
    print("OnSubStart7217220")
end

function Quest72172:OnSubFinish7217220(arg1)
    print("OnSubFinish7217220")
end

function Quest72172:OnSubFailed7217220(arg1)
    print("OnSubFailed7217220")
end

function Quest72172:OnSubStart7217224(arg1)
    print("OnSubStart7217224")
    self:NarratorOnlyTask(datas.Paimon_AFu_Reminder, nil, "")
    self:FinishQuestID(false, 7217224)
end

function Quest72172:OnSubFinish7217224(arg1)
    print("OnSubFinish7217224")
end

function Quest72172:OnSubFailed7217224(arg1)
    print("OnSubFailed7217224")
end

function Quest72172:OnSubStart7217201(arg1)
    print("OnSubStart7217201")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
end

function Quest72172:OnSubFinish7217201(arg1)
    print("OnSubFinish7217201")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:CallDelay(4, function(arg1)
        arg1:NarratorOnlyTask(datas.AFu_TalkFinish_Reminder, nil, "")
    end)
end

function Quest72172:OnSubFailed7217201(arg1)
    print("OnSubFailed7217201")
end

function Quest72172:OnSubStart7217221(arg1)
    print("OnSubStart7217221")
    actorMgr:CreateActorWithPos("Q72172Trigger", "Actor/Gadget/Q72172Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_jinquan").pos, sceneData:GetDummyPoint(3, "72167_jinquan").rot, true, false, 3)
    actorMgr:CreateActorWithPos("GateReminder_Trigger", "Actor/Gadget/GateReminder_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "72167_jinquan").pos, sceneData:GetDummyPoint(3, "72167_jinquan").rot, true, false, 3)
end

function Quest72172:OnSubFinish7217221(arg1)
    print("OnSubFinish7217221")
end

function Quest72172:OnSubFailed7217221(arg1)
    print("OnSubFailed7217221")
end

function Quest72172:OnSubStart7217202(arg1)
    print("OnSubStart7217202")
    actorMgr:CreateActorWithPos("Q72172_Enter_1", "Actor/Gadget/Q72172_Enter_1", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72172_AreaMain_Nav").pos, sceneData:GetDummyPoint(3, "Q3_72172_AreaMain_Nav").rot, true, false, 3)
end

function Quest72172:OnSubFinish7217202(arg1)
    print("OnSubFinish7217202")
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1)
        arg1:CreateQuestNpcBesidePlayer(7217202, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(1.5, function(arg1)
            arg1:EnablePlayerInput(true)
        end)
    end)
end

function Quest72172:OnSubFailed7217202(arg1)
    print("OnSubFailed7217202")
end

function Quest72172:OnSubStart7217225(arg1)
    print("OnSubStart7217225")
end

function Quest72172:OnSubFinish7217225(arg1)
    print("OnSubFinish7217225")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72172:OnSubFailed7217225(arg1)
    print("OnSubFailed7217225")
end

function Quest72172:OnSubStart7217222(arg1)
    print("OnSubStart7217222")
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 2)
    actorMgr:CreateActorWithPos("Q72172_Enter_2", "Actor/Gadget/Q72172_Enter_2", 70900002, 0, sceneData:GetDummyPoint(3, "Q_72172_CunMin_MissionTrigger").pos, sceneData:GetDummyPoint(3, "Q_72172_CunMin_MissionTrigger").rot, true, false, 3)
end

function Quest72172:OnSubFinish7217222(arg1)
    print("OnSubFinish7217222")
    self:NarratorOnlyTask(datas.CunMin_Find_Reminder, nil, "")
end

function Quest72172:OnSubFailed7217222(arg1)
    print("OnSubFailed7217222")
end

function Quest72172:OnSubStart7217203(arg1)
    print("OnSubStart7217203")
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 2)
end

function Quest72172:OnSubFinish7217203(arg1)
    print("OnSubFinish7217203")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72172:OnSubFailed7217203(arg1)
    print("OnSubFailed7217203")
end

function Quest72172:OnSubStart7217204(arg1)
    print("OnSubStart7217204")
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 3)
end

function Quest72172:OnSubFinish7217204(arg1)
    print("OnSubFinish7217204")
end

function Quest72172:OnSubFailed7217204(arg1)
    print("OnSubFailed7217204")
end

function Quest72172:OnSubStart7217227(arg1)
    print("OnSubStart7217227")
    self:PlayCutsceneIndex("7217201", function(arg1)
        arg1:FinishQuestID(false, 7217227)
        arg1:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask(datas.QiMu_Attack_Reminder, nil, "")
        end)
    end, nil, nil, false)

    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 2)
end

function Quest72172:OnSubFinish7217227(arg1)
    print("OnSubFinish7217227")
end

function Quest72172:OnSubFailed7217227(arg1)
    print("OnSubFailed7217227")
end

function Quest72172:OnSubStart7217209(arg1)
    print("OnSubStart7217209")
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 2)
end

function Quest72172:OnSubFinish7217209(arg1)
    print("OnSubFinish7217209")
end

function Quest72172:OnSubFailed7217209(arg1)
    print("OnSubFailed7217209")
end

function Quest72172:OnSubStart7217210(arg1)
    print("OnSubStart7217210")
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 2)
end

function Quest72172:OnSubFinish7217210(arg1)
    print("OnSubFinish7217210")
end

function Quest72172:OnSubFailed7217210(arg1)
    print("OnSubFailed7217210")
end

function Quest72172:OnSubStart7217230(arg1)
    print("OnSubStart7217230")
    self:PlayCutsceneIndex("7217210", function(arg1)
        arg1:FinishQuestID(false, 7217230)
    end, nil, nil, false)
end

function Quest72172:OnSubFinish7217230(arg1)
    print("OnSubFinish7217230")
end

function Quest72172:OnSubFailed7217230(arg1)
    print("OnSubFailed7217230")
end

function Quest72172:OnSubStart7217217(arg1)
    print("OnSubStart7217217")
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 2)
    self:ShowBlackScreen(0, 1, 0, function(arg1)
        arg1:EnablePlayerInput(false)
        arg1:CreateQuestNpcFaceToPlayer(7217204, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72172:OnSubFinish7217217(arg1)
    print("OnSubFinish7217217")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72172:OnSubFailed7217217(arg1)
    print("OnSubFailed7217217")
end

function Quest72172:OnSubStart7217223(arg1)
    print("OnSubStart7217223")
end

function Quest72172:OnSubFinish7217223(arg1)
    print("OnSubFinish7217223")
end

function Quest72172:OnSubFailed7217223(arg1)
    print("OnSubFailed7217223")
end

function Quest72172:OnSubStart7217205(arg1)
    print("OnSubStart7217205")
end

function Quest72172:OnSubFinish7217205(arg1)
    print("OnSubFinish7217205")
end

function Quest72172:OnSubFailed7217205(arg1)
    print("OnSubFailed7217205")
end

function Quest72172:OnSubStart7217206(arg1)
    print("OnSubStart7217206")
end

function Quest72172:OnSubFinish7217206(arg1)
    print("OnSubFinish7217206")
end

function Quest72172:OnSubFailed7217206(arg1)
    print("OnSubFailed7217206")
end

function Quest72172:OnSubStart7217207(arg1)
    print("OnSubStart7217207")
end

function Quest72172:OnSubFinish7217207(arg1)
    print("OnSubFinish7217207")
end

function Quest72172:OnSubFailed7217207(arg1)
    print("OnSubFailed7217207")
end

function Quest72172:OnSubStart7217232(arg1)
    print("OnSubStart7217232")
end

function Quest72172:OnSubFinish7217232(arg1)
    print("OnSubFinish7217232")
end

function Quest72172:OnSubFailed7217232(arg1)
    print("OnSubFailed7217232")
end

function Quest72172:OnSubStart7217212(arg1)
    print("OnSubStart7217212")
    self:CreateQuestNpc(arg1, npcs.Npc20461Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20462Data.id, 2)
    self:CreateSpeechBubbleTask(npcs.Npc20461Data.id, 721729909, 10, true, 0, 1)
    self:CreateSpeechBubbleTask(npcs.Npc20462Data.id, 721729910, 10, true, 0, 1)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20462Data.alias):DoFreeStyleTask(1040, false)
        arg1:GetQuestNpcActor(npcs.Npc20461Data.alias):DoFreeStyleTask(1070, false)
    end)
end

function Quest72172:OnSubFinish7217212(arg1)
    print("OnSubFinish7217212")
end

function Quest72172:OnSubFailed7217212(arg1)
    print("OnSubFailed7217212")
end

function Quest72172:OnSubStart7217218(arg1)
    print("OnSubStart7217218")
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1)
        arg1:CreateQuestNpcFaceToPlayer(7217218, npcs.PaimonData.id, 0.5)
        arg1:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end)
    end)
end

function Quest72172:OnSubFinish7217218(arg1)
    print("OnSubFinish7217218")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72172:OnSubFailed7217218(arg1)
    print("OnSubFailed7217218")
end

function Quest72172:OnSubStart7217213(arg1)
    print("OnSubStart7217213")
    actorMgr:CreateActorWithPos("JS_Enter_Trigger_01", "Actor/Gadget/JS_Enter_Trigger_01", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72166_JiSi_Center").pos, sceneData:GetDummyPoint(3, "Q3_72166_JiSi_Center").rot, true, false, 3)
end

function Quest72172:OnSubFinish7217213(arg1)
    print("OnSubFinish7217213")
end

function Quest72172:OnSubFailed7217213(arg1)
    print("OnSubFailed7217213")
end

function Quest72172:OnSubStart7217228(arg1)
    print("OnSubStart7217228")
    self:PlayCutsceneIndex("7217205", function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.Thunder_Trans_Text, 10, function(arg1)
            arg1:FinishQuestID(false, 7217228)
        end)
    end, nil, nil, false)
end

function Quest72172:OnSubFinish7217228(arg1)
    print("OnSubFinish7217228")
end

function Quest72172:OnSubFailed7217228(arg1)
    print("OnSubFailed7217228")
end

function Quest72172:OnSubStart7217208(arg1)
    print("OnSubStart7217208")
    self:CreateQuestNpcFaceToPlayer(7217208, npcs.PaimonData.id, 0.5)
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1)
        arg1:EnablePlayerInput(true)
    end)
end

function Quest72172:OnSubFinish7217208(arg1)
    print("OnSubFinish7217208")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72172:OnSubFailed7217208(arg1)
    print("OnSubFailed7217208")
end

function Quest72172:OnSubStart7217214(arg1)
    print("OnSubStart7217214")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    actorMgr:CreateActorWithPos("ALiu_Back_Trigger", "Actor/Gadget/ALiu_Back_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72172_AreaMain_Nav").pos, sceneData:GetDummyPoint(3, "Q3_72172_AreaMain_Nav").rot, true, false, 3)
end

function Quest72172:OnSubFinish7217214(arg1)
    print("OnSubFinish7217214")
    self:NarratorOnlyTask(datas.ALiu_Find_Final_Reminder, nil, "")
end

function Quest72172:OnSubFailed7217214(arg1)
    print("OnSubFailed7217214")
end

function Quest72172:OnSubStart7217215(arg1)
    print("OnSubStart7217215")
    self:CreateQuestNpc(arg1, npcs.Npc20320Data.id, 1)
    actorMgr:CreateActorWithPos("ALiu_Talk_Trigger", "Actor/Gadget/ALiu_Talk_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q3_72172_Aliu_Point").pos, sceneData:GetDummyPoint(3, "Q3_72172_Aliu_Point").rot, true, false, 3)
end

function Quest72172:OnSubFinish7217215(arg1)
    print("OnSubFinish7217215")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc20320Data.alias):Destroy(false)
end

function Quest72172:OnSubFailed7217215(arg1)
    print("OnSubFailed7217215")
end

function Quest72172:OnSubStart7217216(arg1)
    print("OnSubStart7217216")
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 1)
end

function Quest72172:OnSubFinish7217216(arg1)
    print("OnSubFinish7217216")
    self:ShowBlackScreen(0, 1, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 2, datas.MoTian_Trans_Text, 10, function(arg1)
            arg1:RequestInteraction(npcs.Npc20322Data.alias)
        end)
    end, nil, nil, "", false, true)
end

function Quest72172:OnSubFailed7217216(arg1)
    print("OnSubFailed7217216")
end

function Quest72172:OnSubStart7217226(arg1)
    print("OnSubStart7217226")
    self:CreateQuestNpc(arg1, npcs.Npc20322Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20321Data.id, 2)
end

function Quest72172:OnSubFinish7217226(arg1)
    print("OnSubFinish7217226")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72172:OnSubFailed7217226(arg1)
    print("OnSubFailed7217226")
end

function Quest72172:OnSubStart7217211(arg1)
    print("OnSubStart7217211")
end

function Quest72172:OnSubFinish7217211(arg1)
    print("OnSubFinish7217211")
end

function Quest72172:OnSubFailed7217211(arg1)
    print("OnSubFailed7217211")
end

return Quest72172
