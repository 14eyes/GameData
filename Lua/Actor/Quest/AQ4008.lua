require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4008 = class("Quest4008", QuestActorProxy)
Quest4008.defaultAlias = "Quest4008"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4008:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400802"] = self.OnSubStart400802,
        ["400803"] = self.OnSubStart400803,
        ["400804"] = self.OnSubStart400804,
        ["400805"] = self.OnSubStart400805,
        ["400806"] = self.OnSubStart400806,
        ["400807"] = self.OnSubStart400807,
        ["400823"] = self.OnSubStart400823,
        ["400808"] = self.OnSubStart400808,
        ["400809"] = self.OnSubStart400809,
        ["400810"] = self.OnSubStart400810,
        ["400811"] = self.OnSubStart400811,
        ["400812"] = self.OnSubStart400812,
        ["400813"] = self.OnSubStart400813,
        ["400824"] = self.OnSubStart400824,
        ["400814"] = self.OnSubStart400814,
        ["400815"] = self.OnSubStart400815,
        ["400821"] = self.OnSubStart400821,
        ["400816"] = self.OnSubStart400816,
        ["400817"] = self.OnSubStart400817,
        ["400818"] = self.OnSubStart400818,
        ["400819"] = self.OnSubStart400819,
        ["400822"] = self.OnSubStart400822,
        ["400820"] = self.OnSubStart400820
    }
end

function Quest4008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400802"] = self.OnSubFinish400802,
        ["400803"] = self.OnSubFinish400803,
        ["400804"] = self.OnSubFinish400804,
        ["400805"] = self.OnSubFinish400805,
        ["400806"] = self.OnSubFinish400806,
        ["400807"] = self.OnSubFinish400807,
        ["400823"] = self.OnSubFinish400823,
        ["400808"] = self.OnSubFinish400808,
        ["400809"] = self.OnSubFinish400809,
        ["400810"] = self.OnSubFinish400810,
        ["400811"] = self.OnSubFinish400811,
        ["400812"] = self.OnSubFinish400812,
        ["400813"] = self.OnSubFinish400813,
        ["400824"] = self.OnSubFinish400824,
        ["400814"] = self.OnSubFinish400814,
        ["400815"] = self.OnSubFinish400815,
        ["400821"] = self.OnSubFinish400821,
        ["400816"] = self.OnSubFinish400816,
        ["400817"] = self.OnSubFinish400817,
        ["400818"] = self.OnSubFinish400818,
        ["400819"] = self.OnSubFinish400819,
        ["400822"] = self.OnSubFinish400822,
        ["400820"] = self.OnSubFinish400820
    }
end

function Quest4008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["400816"] = self.OnSubFailed400816,
        ["400817"] = self.OnSubFailed400817,
        ["400818"] = self.OnSubFailed400818,
        ["400819"] = self.OnSubFailed400819
    }
end

function Quest4008:Start()
    print("Start")
end

function Quest4008:OnDestroy()
    print("OnDestroy")
end

function Quest4008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4008:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4008:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest4008:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest4008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 400823 then
        actorMgr:GetActor("4008"):PlayerEnterDungeonPointWithDialogs(1043, 1186, 400816, 1, datas.DialogsId, 0.5, nil, nil)
    elseif arg1 == 400807 then
        this:RemoveLocalGadget(70711260, "1")
    end
end

function Quest4008:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    if arg1.valueString == "FreminetLoseHpWQ" then
        actorUtils.FinishQuestID(false, 400822)
        this:CreateQuestNpcFaceToPlayer(400819, 13477, 5)
        this:RequestInteraction(npcs.Npc13477Data.alias, "", true)
    end
end

function Quest4008:OnSubStart400802(arg1)
    print("OnSubStart400802")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    actorMgr:CreateActorWithPos("Q400802_TriggerIn", "Actor/Gadget/Q400802_TriggerIn", 70900002, 0, {x = 4489.684, y = 42.321, z = 4608.048}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4008:OnSubFinish400802(arg1)
    print("OnSubFinish400802")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 0.5, nil, nil)
end

function Quest4008:OnSubStart400803(arg1)
    print("OnSubStart400803")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400803_TriggerIn", "Actor/Gadget/Q400803_TriggerIn", 70900002, 0, {x = 4573.298, y = 167.481, z = 4628.255}, {x = 0.0, y = 10.715, z = 0.0}, true, false, 3)
end

function Quest4008:OnSubFinish400803(arg1)
    print("OnSubFinish400803")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
end

function Quest4008:OnSubStart400804(arg1)
    print("OnSubStart400804")
    this:CreateQuestNpc(arg1, npcs.Npc13676Data.id, 0)
    this:CreateLocalGadget(70711260, "1", {x = 4566.852, y = 153.71, z = 4629.689}, {x = 0.0, y = 141.258, z = 0.0}, 3, nil, nil, false)
end

function Quest4008:OnSubFinish400804(arg1)
    print("OnSubFinish400804")
    this:SafeDestroyQuestNpc(npcs.Npc13676Data.alias, 3)
end

function Quest4008:OnSubStart400805(arg1)
    print("OnSubStart400805")
    this:CreateQuestNpc(arg1, npcs.Npc13626Data.id, 0)
    this:CreateLocalGadget(70711260, "1", {x = 4566.852, y = 153.71, z = 4629.689}, {x = 0.0, y = 141.258, z = 0.0}, 3, nil, nil, false)
end

function Quest4008:OnSubFinish400805(arg1)
    print("OnSubFinish400805")
    this:SafeDestroyQuestNpc(npcs.Npc13626Data.alias, 3)
end

function Quest4008:OnSubStart400806(arg1)
    print("OnSubStart400806")
    this:CreateQuestNpc(arg1, npcs.Npc13627Data.id, 0)
    this:CreateLocalGadget(70711260, "1", {x = 4566.852, y = 153.71, z = 4629.689}, {x = 0.0, y = 141.258, z = 0.0}, 3, nil, nil, false)
end

function Quest4008:OnSubFinish400806(arg1)
    print("OnSubFinish400806")
    this:SafeDestroyQuestNpc(npcs.Npc13627Data.alias, 3)
end

function Quest4008:OnSubStart400807(arg1)
    print("OnSubStart400807")
    this:CreateLocalGadget(70711260, "1", {x = 4566.852, y = 153.71, z = 4629.689}, {x = 0.0, y = 141.258, z = 0.0}, 3, nil, nil, false)
end

function Quest4008:OnSubFinish400807(arg1)
    print("OnSubFinish400807")
end

function Quest4008:OnSubStart400823(arg1)
    print("OnSubStart400823")
    this:CreateLocalGadget(70711260, "1", {x = 4566.852, y = 153.71, z = 4629.689}, {x = 0.0, y = 141.258, z = 0.0}, 3, nil, nil, false)
end

function Quest4008:OnSubFinish400823(arg1)
    print("OnSubFinish400823")
end

function Quest4008:OnSubStart400808(arg1)
    print("OnSubStart400808")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400808_TriggerIn", "Actor/Gadget/Q400808_TriggerIn", 70900002, 0, {x = 4573.298, y = 167.481, z = 4628.255}, {x = 0.0, y = 10.715, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(70711260, "1", {x = 4566.852, y = 153.71, z = 4629.689}, {x = 0.0, y = 141.258, z = 0.0}, 3, nil, nil, false)
end

function Quest4008:OnSubFinish400808(arg1)
    print("OnSubFinish400808")
    this:RemoveLocalGadget(70711260, "1")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
end

function Quest4008:OnSubStart400809(arg1)
    print("OnSubStart400809")
    actorMgr:CreateActorWithPos("Q400809_TriggerIn", "Actor/Gadget/Q400809_TriggerIn", 70900002, 0, {x = 4503.291, y = 162.767, z = 4618.426}, {x = 0.0, y = 11.013, z = 0.0}, true, false, 3)
    if this:GetQuestVar(400809, 0) == 0 then
        this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_400808)
        globalActor:StopLocalAvatar()
        this:EnablePlayerInputByQuest(false)
        this:EnterSceneLookCamera({x = 4544.314, y = 159.524, z = 4610.35}, 0, 3, true, false)
        this:CallDelayByQuest("4008", 3, function(arg1)
            this:EnablePlayerInputByQuest(true)
        end)

        this:NpcRunToRouteTaskEasy(this:GetQuestNpcActor(npcs.Npc1071Data.alias, 4008), datas.Q400809_RoutePointsData, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1071Data.alias):HideSelf()
        end)
    end
end

function Quest4008:OnSubFinish400809(arg1)
    print("OnSubFinish400809")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_400809)
    this:ActorDestroy(datas.Q400809_TriggerIn.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
end

function Quest4008:OnSubStart400810(arg1)
    print("OnSubStart400810")
    actorMgr:CreateActorWithPos("Q400810_TriggerIn", "Actor/Gadget/Q400810_TriggerIn", 70900002, 0, points.TPos_Q400810_TriggerIn.pos, points.TPos_Q400810_TriggerIn.rot, true, false, 1086)
    this:CreateLocalGadget(70711297, "1", {x = 4.931, y = 8.556, z = 6.39}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
end

function Quest4008:OnSubFinish400810(arg1)
    print("OnSubFinish400810")
end

function Quest4008:OnSubStart400811(arg1)
    print("OnSubStart400811")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1342, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    this:CreateLocalGadget(70711297, "1", {x = 4.931, y = 8.556, z = 6.39}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
    this:CreateLocalGadget(70291004, "2", {x = 4.783, y = 8.604, z = 6.189}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1074Data.alias)
    questNpcActor:SitOnChair(8010, true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed05", 0, false, true, true)
    this:DeployStoryByQuest(110400811)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4008:OnSubFinish400811(arg1)
    print("OnSubFinish400811")
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 1086)
    this:DeployStoryByQuest(110400811)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnChair(8010, true)
end

function Quest4008:OnSubStart400812(arg1)
    print("OnSubStart400812")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
    actorMgr:CreateActorWithPos("Q400812_TriggerIn", "Actor/Gadget/Q400812_TriggerIn", 70900002, 0, {x = -3.957, y = 13.048, z = -3.887}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
    this:CreateLocalGadget(70711297, "1", {x = 4.931, y = 8.556, z = 6.39}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
    this:CreateLocalGadget(70291004, "2", {x = 4.783, y = 8.604, z = 6.189}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1074Data.alias)
    questNpcActor:SitOnChair(8010, true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed05", 0, false, true, true)
    this:DeployStoryByQuest(110400811)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4008:OnSubFinish400812(arg1)
    print("OnSubFinish400812")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
end

function Quest4008:OnSubStart400813(arg1)
    print("OnSubStart400813")
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4008:OnSubFinish400813(arg1)
    print("OnSubFinish400813")
end

function Quest4008:OnSubStart400824(arg1)
    print("OnSubStart400824")
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4008:OnSubFinish400824(arg1)
    print("OnSubFinish400824")
end

function Quest4008:OnSubStart400814(arg1)
    print("OnSubStart400814")
    this:CreateLocalGadget(70711297, "1", {x = 4.931, y = 8.556, z = 6.39}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
    actorMgr:CreateActorWithPos("Q400814_TriggerIn", "Actor/Gadget/Q400814_TriggerIn", 70900002, 0, points.TPos_Q400814_TriggerIn.pos, points.TPos_Q400814_TriggerIn.rot, true, false, 1086)
    this:CreateLocalGadget(70291004, "2", {x = 4.783, y = 8.604, z = 6.189}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1074Data.alias)
    questNpcActor:SitOnChair(8010, true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Angry01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed05", 0, false, true, true)
    this:DeployStoryByQuest(110400811)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4008:OnSubFinish400814(arg1)
    print("OnSubFinish400814")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 1086)
    this:CancelStoryByQuest(110400811)
    this:RemoveLocalGadget(70291004, "2")
end

function Quest4008:OnSubStart400815(arg1)
    print("OnSubStart400815")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:NPCDestroyImmediately(npcs.Npc1077Data.alias, 1086)
    this:NPCDestroyImmediately(npcs.Npc1078Data.alias, 1086)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1077Data.alias)
        questNpcActor:DoFreeStyle(1172, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    end)

    actorMgr:CreateActorWithPos("Q400815_TriggerIn", "Actor/Gadget/Q400815_TriggerIn", 70900002, 0, {x = 4575.441, y = 167.481, z = 4628.064}, {x = 0.0, y = 10.715, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(70711297, "1", {x = 4.931, y = 8.556, z = 6.39}, {x = 0.0, y = -139.977, z = 0.0}, 1086, nil, nil, false)
end

function Quest4008:OnSubFinish400815(arg1)
    print("OnSubFinish400815")
    this:RemoveLocalGadget(70711297, "1")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
end

function Quest4008:OnSubStart400821(arg1)
    print("OnSubStart400821")
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DoFreeStyle(1172, true, nil, true, true, false, true)
    local questGlobalVar = this:GetQuestGlobalVar(400801)
    if questGlobalVar == 0 then
        actorMgr:CreateActorWithPos("Q400821_TriggerIn", "Actor/Gadget/Q400821_TriggerIn", 70900002, 0, {x = 4573.298, y = 167.481, z = 4628.255}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    elseif questGlobalVar == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
        this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
        this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    end
end

function Quest4008:OnSubFinish400821(arg1)
    print("OnSubFinish400821")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest4008:OnSubStart400816(arg1)
    print("OnSubStart400816")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400816_TriggerIn", "Actor/Gadget/Q400816_TriggerIn", 70900002, 0, points.TPos_Q400816_TriggerIn.pos, points.TPos_Q400816_TriggerIn.rot, true, false, 20197)
end

function Quest4008:OnSubFinish400816(arg1)
    print("OnSubFinish400816")
end

function Quest4008:OnSubFailed400816(arg1)
    print("OnSubFailed400816")
    this:ActorDestroy(datas.Q400816_TriggerIn.alias)
end

function Quest4008:OnSubStart400817(arg1)
    print("OnSubStart400817")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400817_TriggerIn", "Actor/Gadget/Q400817_TriggerIn", 70900002, 0, {x = 86.807, y = 30.861, z = 175.59}, {x = 0.0, y = 178.928, z = 0.0}, true, false, 20197)
end

function Quest4008:OnSubFinish400817(arg1)
    print("OnSubFinish400817")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 20197)
end

function Quest4008:OnSubFailed400817(arg1)
    print("OnSubFailed400817")
    this:ActorDestroy(datas.Q400817_TriggerIn.alias)
end

function Quest4008:OnSubStart400818(arg1)
    print("OnSubStart400818")
    actorMgr:CreateActorWithPos("Q400818_TriggerIn_1", "Actor/Gadget/Q400818_TriggerIn_1", 70900002, 0, {x = 86.51, y = 17.29, z = 76.129}, {x = 0.0, y = 178.928, z = 0.0}, true, false, 20197)
    actorMgr:CreateActorWithPos("Q400818_TriggerIn_2", "Actor/Gadget/Q400818_TriggerIn_2", 70900002, 0, {x = 86.51, y = 17.29, z = 15.834}, {x = 0.0, y = 178.928, z = 0.0}, true, false, 20197)
    actorMgr:CreateActorWithPos("Q400818_TriggerIn_3", "Actor/Gadget/Q400818_TriggerIn_3", 70900002, 0, {x = 96.558, y = 17.29, z = 2.135}, {x = 0.0, y = 332.187, z = 0.0}, true, false, 20197)
end

function Quest4008:OnSubFinish400818(arg1)
    print("OnSubFinish400818")
    this:ActorDestroy(datas.Q400818_TriggerIn_1.alias)
    this:ActorDestroy(datas.Q400818_TriggerIn_2.alias)
    this:ActorDestroy(datas.Q400818_TriggerIn_3.alias)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest4008:OnSubFailed400818(arg1)
    print("OnSubFailed400818")
    this:ActorDestroy(datas.Q400818_TriggerIn_1.alias)
    this:ActorDestroy(datas.Q400818_TriggerIn_2.alias)
    this:ActorDestroy(datas.Q400818_TriggerIn_3.alias)
    actorMgr:GetActor("4008"):EnablePlayerInputByQuest(true)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest4008:OnSubStart400819(arg1)
    print("OnSubStart400819")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400819_TriggerIn", "Actor/Gadget/Q400819_TriggerIn", 70900002, 0, {x = 86.51, y = 17.29, z = 124.068}, {x = 0.0, y = 178.928, z = 0.0}, true, false, 20197)
end

function Quest4008:OnSubFinish400819(arg1)
    print("OnSubFinish400819")
end

function Quest4008:OnSubFailed400819(arg1)
    print("OnSubFailed400819")
    this:ActorDestroy(datas.Q400819_TriggerIn.alias)
end

function Quest4008:OnSubStart400822(arg1)
    print("OnSubStart400822")
end

function Quest4008:OnSubFinish400822(arg1)
    print("OnSubFinish400822")
    this:ActorDestroy(datas.Q400819_TriggerIn.alias)
end

function Quest4008:OnSubStart400820(arg1)
    print("OnSubStart400820")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    actorMgr:CreateActorWithPos("Q400820_TriggerIn_1", "Actor/Gadget/Q400820_TriggerIn_1", 70900002, 0, {x = 86.51, y = 17.29, z = 124.068}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20197)
    actorMgr:CreateActorWithPos("Q400820_TriggerIn_2", "Actor/Gadget/Q400820_TriggerIn_2", 70900002, 0, {x = 4573.298, y = 167.481, z = 4628.255}, {x = 0.0, y = 10.715, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4008:OnSubFinish400820(arg1)
    print("OnSubFinish400820")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:RemoveLocalGadget(70291004, "1")
end

return Quest4008
