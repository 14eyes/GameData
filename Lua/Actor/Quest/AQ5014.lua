require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5014 = class("Quest5014", QuestActorProxy)
Quest5014.defaultAlias = "Quest5014"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501401"] = self.OnSubStart501401,
        ["501402"] = self.OnSubStart501402,
        ["501403"] = self.OnSubStart501403,
        ["501404"] = self.OnSubStart501404,
        ["501407"] = self.OnSubStart501407,
        ["501406"] = self.OnSubStart501406,
        ["501418"] = self.OnSubStart501418,
        ["501419"] = self.OnSubStart501419,
        ["501405"] = self.OnSubStart501405,
        ["501412"] = self.OnSubStart501412,
        ["501408"] = self.OnSubStart501408,
        ["501413"] = self.OnSubStart501413,
        ["501414"] = self.OnSubStart501414,
        ["501415"] = self.OnSubStart501415,
        ["501409"] = self.OnSubStart501409,
        ["501410"] = self.OnSubStart501410,
        ["501411"] = self.OnSubStart501411,
        ["501416"] = self.OnSubStart501416,
        ["501417"] = self.OnSubStart501417
    }
end

function Quest5014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501401"] = self.OnSubFinish501401,
        ["501402"] = self.OnSubFinish501402,
        ["501403"] = self.OnSubFinish501403,
        ["501404"] = self.OnSubFinish501404,
        ["501407"] = self.OnSubFinish501407,
        ["501406"] = self.OnSubFinish501406,
        ["501418"] = self.OnSubFinish501418,
        ["501419"] = self.OnSubFinish501419,
        ["501405"] = self.OnSubFinish501405,
        ["501412"] = self.OnSubFinish501412,
        ["501408"] = self.OnSubFinish501408,
        ["501413"] = self.OnSubFinish501413,
        ["501414"] = self.OnSubFinish501414,
        ["501415"] = self.OnSubFinish501415,
        ["501409"] = self.OnSubFinish501409,
        ["501410"] = self.OnSubFinish501410,
        ["501411"] = self.OnSubFinish501411,
        ["501416"] = self.OnSubFinish501416,
        ["501417"] = self.OnSubFinish501417
    }
end

function Quest5014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["501409"] = self.OnSubFailed501409}
end

function Quest5014:Start()
    print("Start")
end

function Quest5014:OnDestroy()
    print("OnDestroy")
end

function Quest5014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5014:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5014:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5014:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5014:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5014:OnSubStart501401(arg1)
    print("OnSubStart501401")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 30, 501401)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
    if sceneData.currSceneID == 20238 then
        this:LevelLoadFinishSafeCall(function(arg1_2)
            this:TransmitPlayerByData(arg1, 1, datas.TransmitDats_5014_Blank, nil, nil, nil)
        end)
    end

    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
    this:BanCrowdNpc(1099, 3, nil, true)
end

function Quest5014:OnSubFinish501401(arg1)
    print("OnSubFinish501401")
end

function Quest5014:OnSubStart501402(arg1)
    print("OnSubStart501402")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1086.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1095.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1087.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DoFreeStyle(1050, true, nil, true, true, false, false)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5014)
        local realAlias = this:GetRealAlias(npcs.Npc1095.alias)
        questNpcActor:LookAtTarget(realAlias, datas.lookParam, true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_HiClosed01", 0, false, true, true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc1095.alias, 5014)
        local realAlias2 = this:GetRealAlias(npcs.Npc1086.alias)
        v:LookAtTarget(realAlias2, datas.lookParam, false)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DisableInteeHeadCtrl(true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc1087.alias, 5014)
        local realAlias3 = this:GetRealAlias(npcs.Npc1086.alias)
        questNpcActor2:LookAtTarget(realAlias3, datas.lookParam, false)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5014):DisableInteeHeadCtrl(true)
    end)
end

function Quest5014:OnSubFinish501402(arg1)
    print("OnSubFinish501402")
    this:ActionSafeCall(nil)
    this:CreateQuestNpcById(501407, npcs.Npc1095.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpcById(501407, npcs.Npc1086.id, 0, false, 0)
    this:CreateQuestNpcById(501407, npcs.Npc1087.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 5014):DisableInteeHeadCtrl(true)
end

function Quest5014:OnSubStart501403(arg1)
    print("OnSubStart501403")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1088.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14221.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1091.id, arg1)
    this:CreateLocalGadget(74006083, "0", {x = 35.239, y = 0.077, z = 31.672}, {x = 0, y = 193.634, z = 0}, 1099, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest5014:OnSubFinish501403(arg1)
    print("OnSubFinish501403")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(501407, npcs.Npc14221.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14221.alias, 5014):DoFreeStyle(4, true, nil, true, true, false, true)
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc1088.alias, 5014):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1091.alias, 5014):DisableInteeHeadCtrl(true)
        end)
    end)
end

function Quest5014:OnSubStart501404(arg1)
    print("OnSubStart501404")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14235.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1094.id, arg1)
end

function Quest5014:OnSubFinish501404(arg1)
    print("OnSubFinish501404")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14235.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14235.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 5014):DisableInteeHeadCtrl(true)
    end)
end

function Quest5014:OnSubStart501407(arg1)
    print("OnSubStart501407")
    this:CreateQuestNpc(arg1, npcs.Npc1089.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
    this:BanCrowdNpc(1099, 3, nil, true)
    this:DeployStoryByQuest(110501403)
    this:CreateLocalGadget(74006083, "0", {x = 35.239, y = 0.077, z = 31.672}, {x = 0, y = 193.634, z = 0}, 1099, nil, nil, false, 0, true)
    if this:GetSubQuestState(501402) == 3 then
        this:CreateQuestNpcById(501407, npcs.Npc1095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpcById(501407, npcs.Npc1086.id, 0, false, 0)
        this:CreateQuestNpcById(501407, npcs.Npc1087.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5014):DisableInteeHeadCtrl(true)
    end

    if this:GetSubQuestState(501403) == 3 then
        this:CreateQuestNpcById(501407, npcs.Npc14221.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14221.alias, 5014):DoFreeStyle(4, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5014):DisableInteeHeadCtrl(true)
    end

    this:GetQuestNpcActor(npcs.Npc14235.alias, 5014):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 5014):DisableInteeHeadCtrl(true)
end

function Quest5014:OnSubFinish501407(arg1)
    print("OnSubFinish501407")
end

function Quest5014:OnSubStart501406(arg1)
    print("OnSubStart501406")
    this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1086.alias, 5014)
        local realAlias = this:GetRealAlias(npcs.Npc1095.alias)
        questNpcActor:LookAtTarget(realAlias, datas.lookParam, true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_HiClosed01", 0, false, true, true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc1095.alias, 5014)
        local realAlias2 = this:GetRealAlias(npcs.Npc1086.alias)
        v:LookAtTarget(realAlias2, datas.lookParam, false)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DisableInteeHeadCtrl(true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc1087.alias, 5014)
        local realAlias3 = this:GetRealAlias(npcs.Npc1086.alias)
        questNpcActor2:LookAtTarget(realAlias3, datas.lookParam, false)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5014):DisableInteeHeadCtrl(true)
    end)
end

function Quest5014:OnSubFinish501406(arg1)
    print("OnSubFinish501406")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(501407, npcs.Npc1095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpcById(501407, npcs.Npc1086.id, 0, false, 0)
        this:CreateQuestNpcById(501407, npcs.Npc1087.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5014):DisableInteeHeadCtrl(true)
    end)
end

function Quest5014:OnSubStart501418(arg1)
    print("OnSubStart501418")
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
    this:CreateLocalGadget(74006083, "0", {x = 35.239, y = 0.077, z = 31.672}, {x = 0, y = 193.634, z = 0}, 1099, nil, nil, false, 0, true)
end

function Quest5014:OnSubFinish501418(arg1)
    print("OnSubFinish501418")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(501407, npcs.Npc14221.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14221.alias, 5014):DoFreeStyle(4, true, nil, true, true, false, true)
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc1088.alias, 5014):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1091.alias, 5014):DisableInteeHeadCtrl(true)
        end)
    end)
end

function Quest5014:OnSubStart501419(arg1)
    print("OnSubStart501419")
    this:CreateQuestNpc(arg1, npcs.Npc14235.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
end

function Quest5014:OnSubFinish501419(arg1)
    print("OnSubFinish501419")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14235.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14235.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 5014):DisableInteeHeadCtrl(true)
    end)
end

function Quest5014:OnSubStart501405(arg1)
    print("OnSubStart501405")
    this:CreateQuestNpc(arg1, npcs.Npc14439.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
    this:BanCrowdNpc(1099, 3, nil, true)
    this:DeployStoryByQuest(110501403)
    this:CreateLocalGadget(74006083, "0", {x = 35.239, y = 0.077, z = 31.672}, {x = 0, y = 193.634, z = 0}, 1099, nil, nil, false, 0, true)
    if this:GetSubQuestState(501406) == 3 then
        this:CreateQuestNpcById(501407, npcs.Npc1095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpcById(501407, npcs.Npc1086.id, 0, false, 0)
        this:CreateQuestNpcById(501407, npcs.Npc1087.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5014):DisableInteeHeadCtrl(true)
    else
        if this:GetSubQuestState(501402) == 3 then
            this:CreateQuestNpcById(501407, npcs.Npc1095.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DoFreeStyle(1120, true, nil, true, true, false, false)
            this:CreateQuestNpcById(501407, npcs.Npc1086.id, 0, false, 0)
            this:CreateQuestNpcById(501407, npcs.Npc1087.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1095.alias, 5014):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1086.alias, 5014):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1087.alias, 5014):DisableInteeHeadCtrl(true)
        end
    end

    if this:GetSubQuestState(501418) == 3 then
        this:CreateQuestNpcById(501407, npcs.Npc14221.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14221.alias, 5014):DoFreeStyle(4, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 5014):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5014):DisableInteeHeadCtrl(true)
    else
        if this:GetSubQuestState(501403) == 3 then
            this:CreateQuestNpcById(501407, npcs.Npc14221.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc14221.alias, 5014):DoFreeStyle(4, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc1088.alias, 5014):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc1091.alias, 5014):DisableInteeHeadCtrl(true)
        end
    end

    this:GetQuestNpcActor(npcs.Npc14235.alias, 5014):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 5014):DisableInteeHeadCtrl(true)
end

function Quest5014:OnSubFinish501405(arg1)
    print("OnSubFinish501405")
    this:SafeDestroyQuestNpc(npcs.Npc14439.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1099)
    this:CancelStoryByQuest(110501403)
    this:RemoveLocalGadget(74006083, "0")
    this:LightNotifyTo(npcs.Npc6012.alias, 0, true)
end

function Quest5014:OnSubStart501412(arg1)
    print("OnSubStart501412")
    actorMgr:CreateActorWithPos("Q501412Trigger", "Actor/Gadget/Q501412Trigger", 70900002, 0, points._Q501412TriggerPoint_.pos, points._Q501412TriggerPoint_.rot, true, false, 3)
end

function Quest5014:OnSubFinish501412(arg1)
    print("OnSubFinish501412")
    this:PlayerEnterDungeonWithData(1361, 1223, 501412, 1, datas.TransmitDats_5014_Blank, nil, nil)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1096.alias, false)
end

function Quest5014:OnSubStart501408(arg1)
    print("OnSubStart501408")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlay")
    if sceneData.currSceneID == 1095 then
        this:PlayerEnterDungeonWithData(1361, 1223, 501408, 1, datas.TransmitDats_5014_Blank, nil, nil)
    end
end

function Quest5014:OnSubFinish501408(arg1)
    print("OnSubFinish501408")
end

function Quest5014:OnSubStart501413(arg1)
    print("OnSubStart501413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501413, 0, 20, 1, npcs.Npc14597_1.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
    actorMgr:CreateActorWithPos("Q501413Trigger", "Actor/Gadget/Q501413Trigger", 70900002, 0, points._Q501413TriggerPoint_.pos, points._Q501413TriggerPoint_.rot, true, false, 20239)
    this:RemoveLocalGadget(70711662, "0")
    this:RemoveLocalGadget(70711663, "0")
end

function Quest5014:OnSubFinish501413(arg1)
    print("OnSubFinish501413")
    this:SafeDestroyQuestNpc(npcs.Npc14597_1.alias, 20239)
end

function Quest5014:OnSubStart501414(arg1)
    print("OnSubStart501414")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501414, 0, 8, 1, npcs.Npc14598.id)
    this:CreateLocalGadget(70711662, "0", {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, 20239, nil, nil, false, 201, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
end

function Quest5014:OnSubFinish501414(arg1)
    print("OnSubFinish501414")
    this:SafeDestroyQuestNpc(npcs.Npc14598.alias, 20239)
end

function Quest5014:OnSubStart501415(arg1)
    print("OnSubStart501415")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501415, 0, 10, 0, npcs.Npc14599.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
    this:CreateLocalGadget(70711662, "0", {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, 20239, nil, nil, false, 201, true)
end

function Quest5014:OnSubFinish501415(arg1)
    print("OnSubFinish501415")
    this:SafeDestroyQuestNpc(npcs.Npc14599.alias, 20239)
end

function Quest5014:OnSubStart501409(arg1)
    print("OnSubStart501409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501409, 0, 10, 1, npcs.Npc1089.id)
    this:DeployStoryByQuest(110501402)
    this:CreateLocalGadget(70711663, "0", {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, 20239, nil, nil, false, 201, true)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlay")
    this:CreateLocalGadget(70711662, "0", {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, 20239, nil, nil, false, 201, true)
    local questVar = this:GetQuestVar(501409, 4)
    if questVar == 0 then
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_01", "Actor/Gadget/Q501409_Trigger_In_01", 70900002, 0, points._Q501409_Trigger_In_01Point_.pos, points._Q501409_Trigger_In_01Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_02", "Actor/Gadget/Q501409_Trigger_In_02", 70900002, 0, points._Q501409_Trigger_In_02Point_.pos, points._Q501409_Trigger_In_02Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_03", "Actor/Gadget/Q501409_Trigger_In_03", 70900002, 0, points._Q501409_Trigger_In_03Point_.pos, points._Q501409_Trigger_In_03Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_04", "Actor/Gadget/Q501409_Trigger_In_04", 70900002, 0, points._Q501409_Trigger_In_04Point_.pos, points._Q501409_Trigger_In_04Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_05", "Actor/Gadget/Q501409_Trigger_In_05", 70900002, 0, points._Q501409_Trigger_In_05Point_.pos, points._Q501409_Trigger_In_05Point_.rot, true, false, 20239)
    elseif questVar == 1 then
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_02", "Actor/Gadget/Q501409_Trigger_In_02", 70900002, 0, points._Q501409_Trigger_In_02Point_.pos, points._Q501409_Trigger_In_02Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_03", "Actor/Gadget/Q501409_Trigger_In_03", 70900002, 0, points._Q501409_Trigger_In_03Point_.pos, points._Q501409_Trigger_In_03Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_04", "Actor/Gadget/Q501409_Trigger_In_04", 70900002, 0, points._Q501409_Trigger_In_04Point_.pos, points._Q501409_Trigger_In_04Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_05", "Actor/Gadget/Q501409_Trigger_In_05", 70900002, 0, points._Q501409_Trigger_In_05Point_.pos, points._Q501409_Trigger_In_05Point_.rot, true, false, 20239)
    elseif questVar == 2 then
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_03", "Actor/Gadget/Q501409_Trigger_In_03", 70900002, 0, points._Q501409_Trigger_In_03Point_.pos, points._Q501409_Trigger_In_03Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_04", "Actor/Gadget/Q501409_Trigger_In_04", 70900002, 0, points._Q501409_Trigger_In_04Point_.pos, points._Q501409_Trigger_In_04Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_05", "Actor/Gadget/Q501409_Trigger_In_05", 70900002, 0, points._Q501409_Trigger_In_05Point_.pos, points._Q501409_Trigger_In_05Point_.rot, true, false, 20239)
    elseif questVar == 3 then
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_04", "Actor/Gadget/Q501409_Trigger_In_04", 70900002, 0, points._Q501409_Trigger_In_04Point_.pos, points._Q501409_Trigger_In_04Point_.rot, true, false, 20239)
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_05", "Actor/Gadget/Q501409_Trigger_In_05", 70900002, 0, points._Q501409_Trigger_In_05Point_.pos, points._Q501409_Trigger_In_05Point_.rot, true, false, 20239)
    elseif questVar == 4 then
        actorMgr:CreateActorWithPos("Q501409_Trigger_In_05", "Actor/Gadget/Q501409_Trigger_In_05", 70900002, 0, points._Q501409_Trigger_In_05Point_.pos, points._Q501409_Trigger_In_05Point_.rot, true, false, 20239)
    end
end

function Quest5014:OnSubFinish501409(arg1)
    print("OnSubFinish501409")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20239)
    this:CancelStoryByQuest(110501402)
end

function Quest5014:OnSubFailed501409(arg1)
    print("OnSubFailed501409")
    this:CancelStoryByQuest(110501402)
    this:SetQuestVarByMainId(4, 0)
    this:NpcResetForceAvatarWalk(nil)
end

function Quest5014:OnSubStart501410(arg1)
    print("OnSubStart501410")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501410, 0, 50, 1, npcs.Npc1089.id)
    if sceneData.currSceneID == 20239 then
        this:TransmitPlayerById(arg1, 1, nil, nil, datas.TransmitDats_5014_Blank)
    end
end

function Quest5014:OnSubFinish501410(arg1)
    print("OnSubFinish501410")
end

function Quest5014:OnSubStart501411(arg1)
    print("OnSubStart501411")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1089.id, arg1)
    this:ActorDestroy("Q501416Trigger")
    this:ActorDestroy("Q501416N14383Trigger")
end

function Quest5014:OnSubFinish501411(arg1)
    print("OnSubFinish501411")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
end

function Quest5014:OnSubStart501416(arg1)
    print("OnSubStart501416")
    this:NpcCreateWithNpcTrigger(npcs.Npc14383.id, 0, 50, 501416)
    actorMgr:CreateActorWithPos("Q501416Trigger", "Actor/Gadget/Q501416Trigger", 70900002, 0, points._Q501416TriggerPoint_.pos, points._Q501416TriggerPoint_.rot, true, false, 20241)
end

function Quest5014:OnSubFinish501416(arg1)
    print("OnSubFinish501416")
    this:SafeDestroyQuestNpc(npcs.Npc14383.alias, 20241)
end

function Quest5014:OnSubStart501417(arg1)
    print("OnSubStart501417")
    this:NpcCreateWithNpcTrigger(npcs.Npc14439.id, 0, 20, 501417)
    actorMgr:CreateActorWithPos("Q501417Trigger", "Actor/Gadget/Q501417Trigger", 70900002, 0, points._Q501417TriggerPoint_.pos, points._Q501417TriggerPoint_.rot, true, false, 3)
    if sceneData.currSceneID == 20241 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitDats_5014_Blank, nil, nil, nil)
    end
end

function Quest5014:OnSubFinish501417(arg1)
    print("OnSubFinish501417")
    this:SafeDestroyQuestNpc(npcs.Npc14439.alias, 3)
end

return Quest5014
