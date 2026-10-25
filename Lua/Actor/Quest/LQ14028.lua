require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14028 = class("Quest14028", QuestActorProxy)
Quest14028.defaultAlias = "Quest14028"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14028:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402801"] = self.OnSubStart1402801,
        ["1402802"] = self.OnSubStart1402802,
        ["1402813"] = self.OnSubStart1402813,
        ["1402803"] = self.OnSubStart1402803,
        ["1402804"] = self.OnSubStart1402804,
        ["1402805"] = self.OnSubStart1402805,
        ["1402806"] = self.OnSubStart1402806,
        ["1402812"] = self.OnSubStart1402812,
        ["1402807"] = self.OnSubStart1402807,
        ["1402808"] = self.OnSubStart1402808,
        ["1402809"] = self.OnSubStart1402809,
        ["1402810"] = self.OnSubStart1402810,
        ["1402811"] = self.OnSubStart1402811
    }
end

function Quest14028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402801"] = self.OnSubFinish1402801,
        ["1402802"] = self.OnSubFinish1402802,
        ["1402813"] = self.OnSubFinish1402813,
        ["1402803"] = self.OnSubFinish1402803,
        ["1402804"] = self.OnSubFinish1402804,
        ["1402805"] = self.OnSubFinish1402805,
        ["1402806"] = self.OnSubFinish1402806,
        ["1402812"] = self.OnSubFinish1402812,
        ["1402807"] = self.OnSubFinish1402807,
        ["1402808"] = self.OnSubFinish1402808,
        ["1402809"] = self.OnSubFinish1402809,
        ["1402810"] = self.OnSubFinish1402810,
        ["1402811"] = self.OnSubFinish1402811
    }
end

function Quest14028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1402801"] = self.OnSubFailed1402801,
        ["1402802"] = self.OnSubFailed1402802,
        ["1402813"] = self.OnSubFailed1402813,
        ["1402803"] = self.OnSubFailed1402803,
        ["1402804"] = self.OnSubFailed1402804,
        ["1402805"] = self.OnSubFailed1402805,
        ["1402806"] = self.OnSubFailed1402806,
        ["1402812"] = self.OnSubFailed1402812,
        ["1402807"] = self.OnSubFailed1402807,
        ["1402808"] = self.OnSubFailed1402808,
        ["1402809"] = self.OnSubFailed1402809,
        ["1402810"] = self.OnSubFailed1402810,
        ["1402811"] = self.OnSubFailed1402811
    }
end

function Quest14028:Start()
    print("Start")
end

function Quest14028:OnDestroy()
    print("OnDestroy")
end

function Quest14028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14028:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            this:RemoveLocalGadget(70711024, "0")
        end)
    elseif arg1 == 1 then
        this:ActionSafeCall(function(arg1)
            this:RemoveLocalGadget(70711024, "2")
        end)
    end
end

function Quest14028:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14028:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14028:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest14028:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14028:CustomFunction() end

function Quest14028:OnSubStart1402801(arg1)
    print("OnSubStart1402801")
end

function Quest14028:OnSubFinish1402801(arg1)
    print("OnSubFinish1402801")
    this:QuestNarratorTask(datas.Narrator_1402801, nil)
end

function Quest14028:OnSubFailed1402801(arg1)
    print("OnSubFailed1402801")
end

function Quest14028:OnSubStart1402802(arg1)
    print("OnSubStart1402802")
    this:NpcCreateWithNpcTrigger(npcs.Npc1079.id, 1402802, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc1078.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14048.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14042.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14043.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14049.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14051.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5228.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14244.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14295.id, 0, false, 0)
    this:CreateLocalGadget(70291004, "0", {x = 4578.398, y = 154.246, z = 4625.023}, {x = 0, y = 2.4, z = 0}, 3, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14295.alias, 14028):SitOnChair(0, true)
    this:CreateLocalGadget(70291004, "1", {x = 4579.104, y = 154.246, z = 4629.104}, {x = 0, y = 1.57, z = 0}, 3, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14048.alias, 14028):SitOnChair(8010, true)
    this:CreateLocalGadget(70291004, "2", {x = 4579.435, y = 154.246, z = 4630.813}, {x = 0, y = -157.53, z = 0}, 3, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14049.alias, 14028):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc14042.alias, 14028):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1078.alias, 14028):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateLocalGadget(70291004, "3", {x = 4580.024, y = 154.25, z = 4633.131}, {x = 0, y = 2.713, z = 0}, 3, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14244.alias, 14028):SitOnChair(8010, true)
end

function Quest14028:OnSubFinish1402802(arg1)
    print("OnSubFinish1402802")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14051.alias, 3)
    this:ClearNarratorTask()
end

function Quest14028:OnSubFailed1402802(arg1)
    print("OnSubFailed1402802")
end

function Quest14028:OnSubStart1402813(arg1)
    print("OnSubStart1402813")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14042.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14043.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1078.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14048.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14049.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc5228.alias, 1, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14244.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14295.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14043.alias, 14028):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14042.alias, 14028):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1078.alias, 14028):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14043.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14295.alias, 14028):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc14048.alias, 14028):SitOnChair(8020, true)
        this:GetQuestNpcActor(npcs.Npc14049.alias, 14028):SitOnChair(8040, true)
        this:GetQuestNpcActor(npcs.Npc14244.alias, 14028):SitOnChair(8010, true)
        this:GetQuestNpcActor(npcs.Npc14042.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14043.alias, 14028):DisableInteeHeadCtrl(true)
    end)

    this:CreateLocalGadget(70291004, "0", {x = 4578.406, y = 154.14, z = 4624.825}, {x = 0, y = 2.4, z = 0}, 3, nil, nil, true, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4579.085, y = 154.14, z = 4628.904}, {x = 0, y = 1.57, z = 0}, 3, nil, nil, true, 0)
    this:CreateLocalGadget(70291004, "2", {x = 4579.505, y = 154.16, z = 4630.991}, {x = 0, y = -157.53, z = 0}, 3, nil, nil, true, 0)
    this:CreateLocalGadget(70291004, "3", {x = 4580.033, y = 154.14, z = 4632.937}, {x = 0, y = 2.713, z = 0}, 3, nil, nil, true, 0)
end

function Quest14028:OnSubFinish1402813(arg1)
    print("OnSubFinish1402813")
    this:SafeDestroyQuestNpc(npcs.Npc14042.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14043.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14244.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14295.alias, 3)
    this:RemoveLocalGadget(70291004, "0")
    this:RemoveLocalGadget(70291004, "1")
    this:RemoveLocalGadget(70291004, "2")
    this:RemoveLocalGadget(70291004, "3")
end

function Quest14028:OnSubFailed1402813(arg1)
    print("OnSubFailed1402813")
end

function Quest14028:OnSubStart1402803(arg1)
    print("OnSubStart1402803")
    this:NpcCreateWithNpcTrigger(npcs.Npc14035.id, 1402803, 0, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc5228.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc14035.alias, 14028):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest14028:OnSubFinish1402803(arg1)
    print("OnSubFinish1402803")
    this:SafeDestroyQuestNpc(npcs.Npc14035.alias, 3)
    this:LightNotifyTo(npcs.Npc5228.alias, 0, true)
end

function Quest14028:OnSubFailed1402803(arg1)
    print("OnSubFailed1402803")
end

function Quest14028:OnSubStart1402804(arg1)
    print("OnSubStart1402804")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14036.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14037.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14038.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14249.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14250.id, arg1)
end

function Quest14028:OnSubFinish1402804(arg1)
    print("OnSubFinish1402804")
end

function Quest14028:OnSubFailed1402804(arg1)
    print("OnSubFailed1402804")
end

function Quest14028:OnSubStart1402805(arg1)
    print("OnSubStart1402805")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14036.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14037.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14038.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14249.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14250.id, arg1)
end

function Quest14028:OnSubFinish1402805(arg1)
    print("OnSubFinish1402805")
end

function Quest14028:OnSubFailed1402805(arg1)
    print("OnSubFailed1402805")
end

function Quest14028:OnSubStart1402806(arg1)
    print("OnSubStart1402806")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14036.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14037.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14038.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14249.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14250.id, arg1)
end

function Quest14028:OnSubFinish1402806(arg1)
    print("OnSubFinish1402806")
end

function Quest14028:OnSubFailed1402806(arg1)
    print("OnSubFailed1402806")
end

function Quest14028:OnSubStart1402812(arg1)
    print("OnSubStart1402812")
    this:CreateLocalGadget(70710787, "0", {x = 4747.792, y = 519.964, z = 4246.949}, {x = 0, y = -169.12, z = 0}, 3, nil, nil, false, 0)
    this:CreateLocalGadget(70711578, "0", {x = 4806.679, y = 526.32, z = 4262.311}, {x = 0, y = -113.518, z = 0}, 3, nil, nil, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14036.alias, 14028):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14036.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14037.alias, 14028):DoFreeStyle(4221, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14037.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14038.alias, 14028):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14038.alias, 14028):DisableInteeHeadCtrl(true)
    end)
end

function Quest14028:OnSubFinish1402812(arg1)
    print("OnSubFinish1402812")
end

function Quest14028:OnSubFailed1402812(arg1)
    print("OnSubFailed1402812")
end

function Quest14028:OnSubStart1402807(arg1)
    print("OnSubStart1402807")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14036.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14037.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14038.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14249.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14250.id, arg1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1079.id, 1402807, 0, 10, 1)
    if this:GetQuestVar(1402807, 0) == 0 then
        this:ActionSafeCall(function(arg1)
            this:QuestNarratorTask(datas.Narrator_1402802, function(arg1)
                this:SetQuestVarByMainId(0, 1)
            end)
        end)
    end

    this:CreateLocalGadget(70710787, "0", {x = 4748.214, y = 520.041, z = 4246.556}, {x = 0, y = -141.721, z = 0}, 3, nil, nil, false, 0)
    this:CreateLocalGadget(70711578, "0", {x = 4806.679, y = 526.32, z = 4262.311}, {x = 0, y = -113.518, z = 0}, 3, nil, nil, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14036.alias, 14028):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14036.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14037.alias, 14028):DoFreeStyle(4221, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14037.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14038.alias, 14028):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14038.alias, 14028):DisableInteeHeadCtrl(true)
    end)
end

function Quest14028:OnSubFinish1402807(arg1)
    print("OnSubFinish1402807")
    this:SafeDestroyQuestNpc(npcs.Npc14036.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14038.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14249.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14250.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:RemoveLocalGadget(70710787, "0")
    this:RemoveLocalGadget(70711578, "0")
end

function Quest14028:OnSubFailed1402807(arg1)
    print("OnSubFailed1402807")
end

function Quest14028:OnSubStart1402808(arg1)
    print("OnSubStart1402808")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14042.id, 1402808, 0, 10, 1)
end

function Quest14028:OnSubFinish1402808(arg1)
    print("OnSubFinish1402808")
    this:SafeDestroyQuestNpc(npcs.Npc14042.alias, 3)
end

function Quest14028:OnSubFailed1402808(arg1)
    print("OnSubFailed1402808")
end

function Quest14028:OnSubStart1402809(arg1)
    print("OnSubStart1402809")
    this:CreateQuestNpc(arg1, npcs.Npc14039.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14043.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14161.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14159.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14160.id, arg1)
    actorMgr:CreateActorWithPos("Q1402809_Trigger", "Actor/Gadget/Q1402809_Trigger", 70900002, 0, points.Q1402809_Trigger.pos, points.Q1402809_Trigger.rot, true, false, 1092)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14028):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):DoFreeStyle(1280, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):DoFreeStyle(1080, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):LookAt({x = 4026.772, y = 577.698, z = 5028.752})
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):LookAt({x = 4019.926, y = 576.217, z = 5041.504})
    end)

    this:CreateLocalGadget(70711592, "0", {x = 50.705, y = 0.564, z = 6.223}, {x = 0, y = 90, z = 0}, 1092, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14039.alias, 14028):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
end

function Quest14028:OnSubFinish1402809(arg1)
    print("OnSubFinish1402809")
end

function Quest14028:OnSubFailed1402809(arg1)
    print("OnSubFailed1402809")
end

function Quest14028:OnSubStart1402810(arg1)
    print("OnSubStart1402810")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1079.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14039.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14061.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14063.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14064.id, 0, false, 0)
    this:LevelLoadFinishSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14028):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):DoFreeStyle(1280, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):DoFreeStyle(1080, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):LookAt({x = 4020.17, y = 576.141, z = 5041.306})
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):LookAt({x = 4027.45, y = 577.103, z = 5029.752})
    end)

    this:CreateLocalGadget(70711592, "0", {x = 50.705, y = 0.564, z = 6.223}, {x = 0, y = 90, z = 0}, 1092, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc14039.alias, 14028):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    this:CreateLocalGadget(70711024, "0", {x = 50.148, y = 1.009, z = 3.908}, {x = 0, y = 0, z = 0}, 1092, nil, nil, false, 0)
    this:CreateLocalGadget(70711024, "1", {x = 52.673, y = 1.012, z = 0.998}, {x = 0, y = 0, z = 0}, 1092, nil, nil, false, 0)
    this:CreateLocalGadget(70711024, "2", {x = 49.627, y = 1.828, z = -4.061}, {x = 0, y = 0, z = 0}, 1092, nil, nil, false, 0)
end

function Quest14028:OnSubFinish1402810(arg1)
    print("OnSubFinish1402810")
    this:SafeDestroyQuestNpc(npcs.Npc14064.alias, 1092)
    this:RemoveLocalGadget(70711024, "1")
end

function Quest14028:OnSubFailed1402810(arg1)
    print("OnSubFailed1402810")
end

function Quest14028:OnSubStart1402811(arg1)
    print("OnSubStart1402811")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14028):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):DoFreeStyle(1280, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):DoFreeStyle(1080, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14159.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14160.alias, 14028):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14161.alias, 14028):DisableInteeHeadCtrl(true)
        this:CreateLocalGadget(70711592, "0", {x = 50.705, y = 0.564, z = 6.223}, {x = 0, y = 90, z = 0}, 1092, nil, nil, false, 0)
        this:GetQuestNpcActor(npcs.Npc14039.alias, 14028):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        this:CreateLocalGadget(70711024, "0", {x = 50.148, y = 1.009, z = 3.908}, {x = 0, y = 0, z = 0}, 1092, nil, nil, false, 0)
        this:CreateLocalGadget(70711024, "2", {x = 49.627, y = 1.828, z = -4.061}, {x = 0, y = 0, z = 0}, 1092, nil, nil, false, 0)
    end)
end

function Quest14028:OnSubFinish1402811(arg1)
    print("OnSubFinish1402811")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 1092)
    this:SafeDestroyQuestNpc(npcs.Npc14043.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14161.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14159.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14160.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14061.alias, 1092)
    this:SafeDestroyQuestNpc(npcs.Npc14063.alias, 1092)
    this:RemoveLocalGadget(70711024, "0")
    this:RemoveLocalGadget(70711024, "1")
    this:RemoveLocalGadget(70711024, "2")
    this:DestroyQuestNpcActor(npcs.Npc14039.alias, 1092)
end

function Quest14028:OnSubFailed1402811(arg1)
    print("OnSubFailed1402811")
end

return Quest14028
