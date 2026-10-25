require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74184 = class("Quest74184", QuestActorProxy)
Quest74184.defaultAlias = "Quest74184"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74184:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74184:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7418419"] = self.OnSubStart7418419,
        ["7418401"] = self.OnSubStart7418401,
        ["7418402"] = self.OnSubStart7418402,
        ["7418403"] = self.OnSubStart7418403,
        ["7418433"] = self.OnSubStart7418433,
        ["7418404"] = self.OnSubStart7418404,
        ["7418426"] = self.OnSubStart7418426,
        ["7418406"] = self.OnSubStart7418406,
        ["7418436"] = self.OnSubStart7418436,
        ["7418437"] = self.OnSubStart7418437,
        ["7418407"] = self.OnSubStart7418407,
        ["7418408"] = self.OnSubStart7418408,
        ["7418420"] = self.OnSubStart7418420,
        ["7418438"] = self.OnSubStart7418438,
        ["7418409"] = self.OnSubStart7418409,
        ["7418410"] = self.OnSubStart7418410,
        ["7418411"] = self.OnSubStart7418411,
        ["7418412"] = self.OnSubStart7418412,
        ["7418413"] = self.OnSubStart7418413,
        ["7418414"] = self.OnSubStart7418414,
        ["7418416"] = self.OnSubStart7418416,
        ["7418435"] = self.OnSubStart7418435,
        ["7418428"] = self.OnSubStart7418428,
        ["7418429"] = self.OnSubStart7418429,
        ["7418430"] = self.OnSubStart7418430,
        ["7418417"] = self.OnSubStart7418417,
        ["7418418"] = self.OnSubStart7418418,
        ["7418432"] = self.OnSubStart7418432
    }
end

function Quest74184:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7418419"] = self.OnSubFinish7418419,
        ["7418401"] = self.OnSubFinish7418401,
        ["7418402"] = self.OnSubFinish7418402,
        ["7418403"] = self.OnSubFinish7418403,
        ["7418433"] = self.OnSubFinish7418433,
        ["7418404"] = self.OnSubFinish7418404,
        ["7418426"] = self.OnSubFinish7418426,
        ["7418406"] = self.OnSubFinish7418406,
        ["7418436"] = self.OnSubFinish7418436,
        ["7418437"] = self.OnSubFinish7418437,
        ["7418407"] = self.OnSubFinish7418407,
        ["7418408"] = self.OnSubFinish7418408,
        ["7418420"] = self.OnSubFinish7418420,
        ["7418438"] = self.OnSubFinish7418438,
        ["7418409"] = self.OnSubFinish7418409,
        ["7418410"] = self.OnSubFinish7418410,
        ["7418411"] = self.OnSubFinish7418411,
        ["7418412"] = self.OnSubFinish7418412,
        ["7418413"] = self.OnSubFinish7418413,
        ["7418414"] = self.OnSubFinish7418414,
        ["7418416"] = self.OnSubFinish7418416,
        ["7418435"] = self.OnSubFinish7418435,
        ["7418428"] = self.OnSubFinish7418428,
        ["7418429"] = self.OnSubFinish7418429,
        ["7418430"] = self.OnSubFinish7418430,
        ["7418417"] = self.OnSubFinish7418417,
        ["7418418"] = self.OnSubFinish7418418,
        ["7418432"] = self.OnSubFinish7418432
    }
end

function Quest74184:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74184:Start()
    print("Start")
end

function Quest74184:OnDestroy()
    print("OnDestroy")
end

function Quest74184:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74184:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74184:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74184:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74184:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74184:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest74184:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74184:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74184:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74184:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74184:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7418403 then
        actorUtils.FinishQuestID(false, 7418403)
    elseif arg1 == 7418437 then
        actorUtils.FinishQuestID(false, 7418437)
    elseif arg1 == 7418436 then
        actorUtils.FinishQuestID(false, 7418436)
    end
end

function Quest74184:OnSubStart7418419(arg1)
    print("OnSubStart7418419")
    actorMgr:CreateActorWithPos("Q74184TriggerGetMission", "Actor/Gadget/Q74184TriggerGetMission", 70900002, 0, {x = 1222.151, y = 303.105, z = 4345.808}, {x = 0.0, y = 359.022, z = 0.0}, true, false, 3)
end

function Quest74184:OnSubFinish7418419(arg1)
    print("OnSubFinish7418419")
end

function Quest74184:OnSubStart7418401(arg1)
    print("OnSubStart7418401")
    this:NpcCreateWithNpcTrigger(npcs.Npc21417Data.id, 7418401, 0, 15)
    this:GetQuestNpcActor(npcs.Npc21417Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21418Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21418Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21419Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21419Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest74184:OnSubFinish7418401(arg1)
    print("OnSubFinish7418401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21417Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21418Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21419Data.alias)
end

function Quest74184:OnSubStart7418402(arg1)
    print("OnSubStart7418402")
end

function Quest74184:OnSubFinish7418402(arg1)
    print("OnSubFinish7418402")
end

function Quest74184:OnSubStart7418403(arg1)
    print("OnSubStart7418403")
    local questGlobalVar = this:GetQuestGlobalVar(7418401)
    if questGlobalVar == 0 then
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21435Data.id, 7418403, 0, 26, 2)
    elseif questGlobalVar == 1 then
        actorMgr:GetActor("74184"):CreateQuestNpcById(7418403, npcs.Npc21435Data.id, 0)
        actorMgr:CreateActorWithPos("Q7418403RewindQuest", "Actor/Gadget/Q7418403RewindQuest", 70900002, 0, {x = 1231.499, y = 282.43, z = 4437.698}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end
end

function Quest74184:OnSubFinish7418403(arg1)
    print("OnSubFinish7418403")
    this:SafeDestroyQuestNpc(npcs.Npc21435Data.alias, 3)
end

function Quest74184:OnSubStart7418433(arg1)
    print("OnSubStart7418433")
    this:PlayerEnterDungeonWithData(1138, 1196, 7418433, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest74184:OnSubFinish7418433(arg1)
    print("OnSubFinish7418433")
end

function Quest74184:OnSubStart7418404(arg1)
    print("OnSubStart7418404")
    this:DisableMainPageWithConfigByQuest(true, "DisableFontaineRemusMainQuest")
    actorUtils.SetLevelQuestDialogEnableState(false)
end

function Quest74184:OnSubFinish7418404(arg1)
    print("OnSubFinish7418404")
end

function Quest74184:OnSubStart7418426(arg1)
    print("OnSubStart7418426")
    actorMgr:CreateActorWithPos("Q7418426_TriggerIn", "Actor/Gadget/Q7418426_TriggerIn", 70900002, 0, {x = 1566.526, y = -503.088, z = 3560.563}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20210)
end

function Quest74184:OnSubFinish7418426(arg1)
    print("OnSubFinish7418426")
    this:SafeDestroyQuestNpc(npcs.Npc21355Data.alias, 3)
end

function Quest74184:OnSubStart7418406(arg1)
    print("OnSubStart7418406")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21355Data.id, 0)
        actorUtils.SetQuestPostEffect("PostEffect_Quest_Remus_FirstPerson_01", true, 20210, false)
        actorUtils.SimpleUIShowForLua(false, "General", "ART/Effect/UI/UI/Eff_UI_Remus_FirstPerson_01")
    end)
end

function Quest74184:OnSubFinish7418406(arg1)
    print("OnSubFinish7418406")
    actorUtils.SetQuestPostEffect("PostEffect_Quest_Remus_FirstPerson_01", false, 20210, false)
    actorUtils.SimpleUIShowForLua(true, "General", "ART/Effect/UI/UI/Eff_UI_Remus_FirstPerson_01")
    this:SafeDestroyQuestNpc(npcs.Npc21355Data.alias, 3)
end

function Quest74184:OnSubStart7418436(arg1)
    print("OnSubStart7418436")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:CancelStoryByQuest(147418401)
        this:CreateQuestNpc(arg1, npcs.Npc21405Data.id, 0)
        this:RequestInteraction(npcs.Npc21405Data.alias, "", true)
    end, nil, nil, 0, false, true)
end

function Quest74184:OnSubFinish7418436(arg1)
    print("OnSubFinish7418436")
    this:NpcDestroy(npcs.Npc21405Data.alias, 20210)
end

function Quest74184:OnSubStart7418437(arg1)
    print("OnSubStart7418437")
end

function Quest74184:OnSubFinish7418437(arg1)
    print("OnSubFinish7418437")
end

function Quest74184:OnSubStart7418407(arg1)
    print("OnSubStart7418407")
end

function Quest74184:OnSubFinish7418407(arg1)
    print("OnSubFinish7418407")
    this:RemoveLocalGadget(70330987, "703309871")
    this:RemoveLocalGadget(70330987, "703309872")
end

function Quest74184:OnSubStart7418408(arg1)
    print("OnSubStart7418408")
    actorMgr:CreateActorWithPos("Q7418408Trigger_Transmit", "Actor/Gadget/Q7418408Trigger_Transmit", 70900002, 0, points.TPos_Q7418408Trigger_Transmit.pos, points.TPos_Q7418408Trigger_Transmit.rot, true, false, 20210)
    actorMgr:CreateActorWithPos("Q7418408_TriggerIn", "Actor/Gadget/Q7418408_TriggerIn", 70900002, 0, points.TPos_Q7418408_TriggerIn.pos, points.TPos_Q7418408_TriggerIn.rot, true, false, 3)
end

function Quest74184:OnSubFinish7418408(arg1)
    print("OnSubFinish7418408")
    this:SafeDestroyQuestNpc(npcs.Npc21432Data.alias, 3)
    self:SetNavigationByMainId(74184, true)
end

function Quest74184:OnSubStart7418420(arg1)
    print("OnSubStart7418420")
end

function Quest74184:OnSubFinish7418420(arg1)
    print("OnSubFinish7418420")
end

function Quest74184:OnSubStart7418438(arg1)
    print("OnSubStart7418438")
    this:NpcNarratorOnlyTaskByData(nil, datas.NarratorWithId)
end

function Quest74184:OnSubFinish7418438(arg1)
    print("OnSubFinish7418438")
end

function Quest74184:OnSubStart7418409(arg1)
    print("OnSubStart7418409")
    this:NpcCreateWithNpcTrigger(npcs.Npc5300Data.id, 7418409, 0, 5)
    this:GetQuestNpcActor(npcs.Npc5300Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74184:OnSubFinish7418409(arg1)
    print("OnSubFinish7418409")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5300Data.alias)
    self:SetNavigationByMainId(74184, true)
end

function Quest74184:OnSubStart7418410(arg1)
    print("OnSubStart7418410")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21432Data.id, 0)
    actorMgr:CreateActorWithPos("Q74184TriggerEntrance", "Actor/Gadget/Q74184TriggerEntrance", 70900002, 0, {x = 1198.432, y = 277.923, z = 4217.786}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74184:OnSubFinish7418410(arg1)
    print("OnSubFinish7418410")
    this:GetQuestNpcActor(npcs.Npc21432Data.alias):DestroyWithDitherEx(0.5)
    this:GetQuestNpcActor(npcs.Npc21338Data.alias):DoFreeStyle(15, true, nil, true, true, false, false)
end

function Quest74184:OnSubStart7418411(arg1)
    print("OnSubStart7418411")
    this:CallDelayByQuest("createcatlate", 0.5, function(arg1_2)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21432Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21432Data.alias, 74184)
        this:NpcWalkToTaskEasy(questNpcActor, {x = 1221.89, y = 278.96, z = 4211.08}, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21432Data.alias):DestroyWithDitherEx(0.5)
            this:CallDelayByQuest("finish_task", 0.5, function(arg1)
                actorUtils.FinishQuestID(false, 7418411)
                this:SafeDestroyQuestNpc(npcs.Npc21432Data.alias, 3)
            end)
        end)
    end)
end

function Quest74184:OnSubFinish7418411(arg1)
    print("OnSubFinish7418411")
end

function Quest74184:OnSubStart7418412(arg1)
    print("OnSubStart7418412")
end

function Quest74184:OnSubFinish7418412(arg1)
    print("OnSubFinish7418412")
end

function Quest74184:OnSubStart7418413(arg1)
    print("OnSubStart7418413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21338Data.id, 7418413, 0, 30, 1)
end

function Quest74184:OnSubFinish7418413(arg1)
    print("OnSubFinish7418413")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21338Data.alias)
end

function Quest74184:OnSubStart7418414(arg1)
    print("OnSubStart7418414")
    actorMgr:CreateActorWithPos("Q7418414_Trigger", "Actor/Gadget/Q7418414_Trigger", 70900002, 0, {x = 1191.79, y = 227.106, z = 4206.087}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74184:OnSubFinish7418414(arg1)
    print("OnSubFinish7418414")
end

function Quest74184:OnSubStart7418416(arg1)
    print("OnSubStart7418416")
    actorMgr:CreateActorWithPos("Q74184TriggerInstitute", "Actor/Gadget/Q74184TriggerInstitute", 70900002, 0, {x = 1231.203, y = 96.363, z = 4038.203}, {x = 0.0, y = 11.055, z = 0.0}, true, false, 3)
end

function Quest74184:OnSubFinish7418416(arg1)
    print("OnSubFinish7418416")
end

function Quest74184:OnSubStart7418435(arg1)
    print("OnSubStart7418435")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21338Data.id, 7418435, 0, 24, 1)
end

function Quest74184:OnSubFinish7418435(arg1)
    print("OnSubFinish7418435")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21338Data.alias)
end

function Quest74184:OnSubStart7418428(arg1)
    print("OnSubStart7418428")
    actorMgr:CreateActorWithPos("Q74184TriggerGetItem", "Actor/Gadget/Q74184TriggerGetItem", 70900002, 0, {x = 1246.151, y = 99.532, z = 3936.043}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74184:OnSubFinish7418428(arg1)
    print("OnSubFinish7418428")
end

function Quest74184:OnSubStart7418429(arg1)
    print("OnSubStart7418429")
    this:DeployStoryByQuest(147418402)
    actorMgr:CreateActorWithPos("Q74184TriggerCatInHallway", "Actor/Gadget/Q74184TriggerCatInHallway", 70900002, 0, {x = 1249.14, y = 100.0, z = 3980.649}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74184:OnSubFinish7418429(arg1)
    print("OnSubFinish7418429")
end

function Quest74184:OnSubStart7418430(arg1)
    print("OnSubStart7418430")
    this:CallDelayByQuest("createcat", 1, function(arg1_2)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21338Data.id, 0)
    end)
end

function Quest74184:OnSubFinish7418430(arg1)
    print("OnSubFinish7418430")
end

function Quest74184:OnSubStart7418417(arg1)
    print("OnSubStart7418417")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21338Data.alias, 74184)
    this:NpcWalkToTaskEasy(questNpcActor, {x = 1245.56, y = 84.875, z = 3961.28}, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21338Data.alias):DoFreeStyle(14, true, nil, true, true, false, false)
        this:CallDelayByQuest("deletecat", 0.5, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21338Data.alias):DestroyWithDitherEx(0.5)
            actorUtils.FinishQuestID(false, 7418417)
        end)
    end)
end

function Quest74184:OnSubFinish7418417(arg1)
    print("OnSubFinish7418417")
end

function Quest74184:OnSubStart7418418(arg1)
    print("OnSubStart7418418")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21338Data.id, 7418418, 0, 25, 1)
end

function Quest74184:OnSubFinish7418418(arg1)
    print("OnSubFinish7418418")
end

function Quest74184:OnSubStart7418432(arg1)
    print("OnSubStart7418432")
end

function Quest74184:OnSubFinish7418432(arg1)
    print("OnSubFinish7418432")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21338Data.alias)
end

return Quest74184
