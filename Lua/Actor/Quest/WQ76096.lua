require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76096 = class("Quest76096", QuestActorProxy)
Quest76096.defaultAlias = "Quest76096"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76096:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76096:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609601"] = self.OnSubStart7609601,
        ["7609602"] = self.OnSubStart7609602,
        ["7609603"] = self.OnSubStart7609603,
        ["7609629"] = self.OnSubStart7609629,
        ["7609628"] = self.OnSubStart7609628,
        ["7609604"] = self.OnSubStart7609604,
        ["7609632"] = self.OnSubStart7609632,
        ["7609605"] = self.OnSubStart7609605,
        ["7609624"] = self.OnSubStart7609624,
        ["7609606"] = self.OnSubStart7609606,
        ["7609607"] = self.OnSubStart7609607,
        ["7609614"] = self.OnSubStart7609614,
        ["7609634"] = self.OnSubStart7609634,
        ["7609626"] = self.OnSubStart7609626,
        ["7609608"] = self.OnSubStart7609608,
        ["7609609"] = self.OnSubStart7609609,
        ["7609610"] = self.OnSubStart7609610,
        ["7609633"] = self.OnSubStart7609633,
        ["7609622"] = self.OnSubStart7609622,
        ["7609620"] = self.OnSubStart7609620,
        ["7609621"] = self.OnSubStart7609621,
        ["7609611"] = self.OnSubStart7609611,
        ["7609630"] = self.OnSubStart7609630,
        ["7609612"] = self.OnSubStart7609612,
        ["7609625"] = self.OnSubStart7609625,
        ["7609613"] = self.OnSubStart7609613,
        ["7609635"] = self.OnSubStart7609635,
        ["7609615"] = self.OnSubStart7609615,
        ["7609616"] = self.OnSubStart7609616,
        ["7609627"] = self.OnSubStart7609627,
        ["7609631"] = self.OnSubStart7609631,
        ["7609617"] = self.OnSubStart7609617,
        ["7609618"] = self.OnSubStart7609618,
        ["7609619"] = self.OnSubStart7609619,
        ["7609623"] = self.OnSubStart7609623
    }
end

function Quest76096:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609601"] = self.OnSubFinish7609601,
        ["7609602"] = self.OnSubFinish7609602,
        ["7609603"] = self.OnSubFinish7609603,
        ["7609629"] = self.OnSubFinish7609629,
        ["7609628"] = self.OnSubFinish7609628,
        ["7609604"] = self.OnSubFinish7609604,
        ["7609632"] = self.OnSubFinish7609632,
        ["7609605"] = self.OnSubFinish7609605,
        ["7609624"] = self.OnSubFinish7609624,
        ["7609606"] = self.OnSubFinish7609606,
        ["7609607"] = self.OnSubFinish7609607,
        ["7609614"] = self.OnSubFinish7609614,
        ["7609634"] = self.OnSubFinish7609634,
        ["7609626"] = self.OnSubFinish7609626,
        ["7609608"] = self.OnSubFinish7609608,
        ["7609609"] = self.OnSubFinish7609609,
        ["7609610"] = self.OnSubFinish7609610,
        ["7609633"] = self.OnSubFinish7609633,
        ["7609622"] = self.OnSubFinish7609622,
        ["7609620"] = self.OnSubFinish7609620,
        ["7609621"] = self.OnSubFinish7609621,
        ["7609611"] = self.OnSubFinish7609611,
        ["7609630"] = self.OnSubFinish7609630,
        ["7609612"] = self.OnSubFinish7609612,
        ["7609625"] = self.OnSubFinish7609625,
        ["7609613"] = self.OnSubFinish7609613,
        ["7609635"] = self.OnSubFinish7609635,
        ["7609615"] = self.OnSubFinish7609615,
        ["7609616"] = self.OnSubFinish7609616,
        ["7609627"] = self.OnSubFinish7609627,
        ["7609631"] = self.OnSubFinish7609631,
        ["7609617"] = self.OnSubFinish7609617,
        ["7609618"] = self.OnSubFinish7609618,
        ["7609619"] = self.OnSubFinish7609619,
        ["7609623"] = self.OnSubFinish7609623
    }
end

function Quest76096:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7609629"] = self.OnSubFailed7609629, ["7609611"] = self.OnSubFailed7609611}
end

function Quest76096:Start()
    print("Start")
end

function Quest76096:OnDestroy()
    print("OnDestroy")
end

function Quest76096:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76096:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76096:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76096:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7609601Trigger", nil)
    this:ActorDestroy("Q7609603Trigger", nil)
    this:ActorDestroy("Q7609605Trigger", nil)
    this:ActorDestroy("Q7609606Trigger", nil)
    this:ActorDestroy("Q7609617Trigger", nil)
    this:ActorDestroy("Q7609607Trigger", nil)
end

function Quest76096:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7609601 then
        this:SetQuestVarByMainId(0, 1)
    elseif arg1 == 7609602 then
        this:SetQuestVarByMainId(0, 2)
    elseif arg1 == 7609629 then
        actorUtils.FinishQuestID(false, 7609629)
    elseif arg1 == 7609630 then
        this:SetQuestVarByMainId(1, 1)
    end
end

function Quest76096:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76096:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76096:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76096:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76096:OnSubStart7609601(arg1)
    print("OnSubStart7609601")
    actorMgr:CreateActorWithPos("Q7609601Trigger", "Actor/Gadget/Q7609601Trigger", 70900002, 0, points._Q7609601TriggerPoint_.pos, points._Q7609601TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76096:OnSubFinish7609601(arg1)
    print("OnSubFinish7609601")
end

function Quest76096:OnSubStart7609602(arg1)
    print("OnSubStart7609602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609602, 0, 30, 0.5, npcs.Npc22306.id)
end

function Quest76096:OnSubFinish7609602(arg1)
    print("OnSubFinish7609602")
    if this:GetQuestVar(7609602, 0) == 1 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
    end
end

function Quest76096:OnSubStart7609603(arg1)
    print("OnSubStart7609603")
    actorMgr:CreateActorWithPos("Q7609603Trigger", "Actor/Gadget/Q7609603Trigger", 70900002, 0, points._Q7609603TriggerPoint_.pos, points._Q7609603TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76096:OnSubFinish7609603(arg1)
    print("OnSubFinish7609603")
end

function Quest76096:OnSubStart7609629(arg1)
    print("OnSubStart7609629")
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
end

function Quest76096:OnSubFinish7609629(arg1)
    print("OnSubFinish7609629")
    this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
end

function Quest76096:OnSubFailed7609629(arg1)
    print("OnSubFailed7609629")
    this:RecycleAllRes()
end

function Quest76096:OnSubStart7609628(arg1)
    print("OnSubStart7609628")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
end

function Quest76096:OnSubFinish7609628(arg1)
    print("OnSubFinish7609628")
end

function Quest76096:OnSubStart7609604(arg1)
    print("OnSubStart7609604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609604, 0, 30, 1, npcs.Npc22272.id)
end

function Quest76096:OnSubFinish7609604(arg1)
    print("OnSubFinish7609604")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData2, nil, nil, nil)
end

function Quest76096:OnSubStart7609632(arg1)
    print("OnSubStart7609632")
    actorMgr:CreateActorWithPos("Q7609632Trigger", "Actor/Gadget/Q7609632Trigger", 70900002, 0, points._Q7609632TriggerPoint_.pos, points._Q7609632TriggerPoint_.rot, true, false, 103, nil, 0, 76096)
end

function Quest76096:OnSubFinish7609632(arg1)
    print("OnSubFinish7609632")
end

function Quest76096:OnSubStart7609605(arg1)
    print("OnSubStart7609605")
    actorMgr:CreateActorWithPos("Q7609605Trigger", "Actor/Gadget/Q7609605Trigger", 70900002, 0, points._Q7609605TriggerPoint_.pos, points._Q7609605TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76096:OnSubFinish7609605(arg1)
    print("OnSubFinish7609605")
end

function Quest76096:OnSubStart7609624(arg1)
    print("OnSubStart7609624")
    this:CreateQuestNpc(arg1, npcs.Npc22347.id, 0, false, 0)
    this:QuestNarratorTask(datas.NarratorWithId_7609624, nil)
end

function Quest76096:OnSubFinish7609624(arg1)
    print("OnSubFinish7609624")
    this:SafeDestroyQuestNpc(npcs.Npc22347.alias, 103)
end

function Quest76096:OnSubStart7609606(arg1)
    print("OnSubStart7609606")
    this:DisableMainPageByQuest(false, "DisableMVRolePlayWSYL")
    actorMgr:CreateActorWithPos("Q7609606Trigger", "Actor/Gadget/Q7609606Trigger", 70900002, 0, points._Q7609606TriggerPoint_.pos, points._Q7609606TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76096:OnSubFinish7609606(arg1)
    print("OnSubFinish7609606")
end

function Quest76096:OnSubStart7609607(arg1)
    print("OnSubStart7609607")
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlayWSYL")
    actorMgr:CreateActorWithPos("Q7609607Trigger_1", "Actor/Gadget/Q7609607Trigger_1", 70900002, 0, points._Q7609607Trigger_1Point_.pos, points._Q7609607Trigger_1Point_.rot, true, false, 103, nil, 0, 76096)
end

function Quest76096:OnSubFinish7609607(arg1)
    print("OnSubFinish7609607")
end

function Quest76096:OnSubStart7609614(arg1)
    print("OnSubStart7609614")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayWSYL")
end

function Quest76096:OnSubFinish7609614(arg1)
    print("OnSubFinish7609614")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData2, nil, nil, nil)
end

function Quest76096:OnSubStart7609634(arg1)
    print("OnSubStart7609634")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayWSYL")
    actorMgr:CreateActorWithPos("Q7609607Trigger", "Actor/Gadget/Q7609607Trigger", 70900002, 0, points._Q7609607TriggerPoint_.pos, points._Q7609607TriggerPoint_.rot, true, false, 103, nil, 0, 76096)
    actorMgr:CreateActorWithPos("Q7609634Trigger", "Actor/Gadget/Q7609634Trigger", 70900002, 0, points._Q7609634TriggerPoint_.pos, points._Q7609634TriggerPoint_.rot, true, false, 103, nil, 0, 76096)
end

function Quest76096:OnSubFinish7609634(arg1)
    print("OnSubFinish7609634")
end

function Quest76096:OnSubStart7609626(arg1)
    print("OnSubStart7609626")
    this:NpcCreateWithNpcTrigger(npcs.Npc22310.id, 0, 30, 7609626)
end

function Quest76096:OnSubFinish7609626(arg1)
    print("OnSubFinish7609626")
    this:SafeDestroyQuestNpc(npcs.Npc22310.alias, 103)
end

function Quest76096:OnSubStart7609608(arg1)
    print("OnSubStart7609608")
    this:NpcCreateWithNpcTrigger(npcs.Npc22304.id, 0, 20, 7609608)
    this:DisableMainPageUI(false)
end

function Quest76096:OnSubFinish7609608(arg1)
    print("OnSubFinish7609608")
    this:SafeDestroyQuestNpc(npcs.Npc22304.alias, 103)
    this:CallDelayByQuest("delay", 2, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7609698, nil)
    end)
end

function Quest76096:OnSubStart7609609(arg1)
    print("OnSubStart7609609")
end

function Quest76096:OnSubFinish7609609(arg1)
    print("OnSubFinish7609609")
end

function Quest76096:OnSubStart7609610(arg1)
    print("OnSubStart7609610")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609610, 0, 30, 0.5, npcs.Npc22310.id)
end

function Quest76096:OnSubFinish7609610(arg1)
    print("OnSubFinish7609610")
    this:SafeDestroyQuestNpc(npcs.Npc22310.alias, 103)
    this:TransmitPlayerByQuestId(7609610, 1, nil, nil, nil)
end

function Quest76096:OnSubStart7609633(arg1)
    print("OnSubStart7609633")
    actorMgr:CreateActorWithPos("Q7609633Trigger", "Actor/Gadget/Q7609633Trigger", 70900002, 0, points._Q7609633TriggerPoint_.pos, points._Q7609633TriggerPoint_.rot, true, false, 103, nil, 0, 76096)
end

function Quest76096:OnSubFinish7609633(arg1)
    print("OnSubFinish7609633")
end

function Quest76096:OnSubStart7609622(arg1)
    print("OnSubStart7609622")
end

function Quest76096:OnSubFinish7609622(arg1)
    print("OnSubFinish7609622")
end

function Quest76096:OnSubStart7609620(arg1)
    print("OnSubStart7609620")
end

function Quest76096:OnSubFinish7609620(arg1)
    print("OnSubFinish7609620")
end

function Quest76096:OnSubStart7609621(arg1)
    print("OnSubStart7609621")
end

function Quest76096:OnSubFinish7609621(arg1)
    print("OnSubFinish7609621")
end

function Quest76096:OnSubStart7609611(arg1)
    print("OnSubStart7609611")
    actorUtils.SetMainPageFeatureDisable(76096, "MiniMap", true)
end

function Quest76096:OnSubFinish7609611(arg1)
    print("OnSubFinish7609611")
    actorUtils.SetMainPageFeatureDisable(76096, "MiniMap", false)
end

function Quest76096:OnSubFailed7609611(arg1)
    print("OnSubFailed7609611")
    this:RecycleAllRes()
    actorUtils.SetMainPageFeatureDisable(76096, "MiniMap", false)
end

function Quest76096:OnSubStart7609630(arg1)
    print("OnSubStart7609630")
    this:NpcCreateWithNpcTrigger(npcs.Npc22310.id, 0, 35, 7609630)
    this:SetQuestVarByMainId(1, 0)
end

function Quest76096:OnSubFinish7609630(arg1)
    print("OnSubFinish7609630")
    this:NpcDestroyImmediately(103, npcs.Npc22310.alias)
    this:TransmitPlayerByQuestId(7609630, 1, nil, nil, nil)
end

function Quest76096:OnSubStart7609612(arg1)
    print("OnSubStart7609612")
    actorUtils.FinishQuestID(false, 7609612)
end

function Quest76096:OnSubFinish7609612(arg1)
    print("OnSubFinish7609612")
end

function Quest76096:OnSubStart7609625(arg1)
    print("OnSubStart7609625")
    this:NpcCreateWithNpcTrigger(npcs.Npc22310.id, 0, 40, 7609625)
end

function Quest76096:OnSubFinish7609625(arg1)
    print("OnSubFinish7609625")
    this:SafeDestroyQuestNpc(npcs.Npc22310.alias, 103)
end

function Quest76096:OnSubStart7609613(arg1)
    print("OnSubStart7609613")
end

function Quest76096:OnSubFinish7609613(arg1)
    print("OnSubFinish7609613")
end

function Quest76096:OnSubStart7609635(arg1)
    print("OnSubStart7609635")
    actorMgr:CreateActorWithPos("Q7609635Trigger", "Actor/Gadget/Q7609635Trigger", 70900002, 0, points._Q7609635TriggerPoint_.pos, points._Q7609635TriggerPoint_.rot, true, false, 103, nil, 0, 76096)
end

function Quest76096:OnSubFinish7609635(arg1)
    print("OnSubFinish7609635")
end

function Quest76096:OnSubStart7609615(arg1)
    print("OnSubStart7609615")
    actorMgr:CreateActorWithPos("Q7609615Trigger", "Actor/Gadget/Q7609615Trigger", 70900002, 0, points._Q7609615TriggerPoint_.pos, points._Q7609615TriggerPoint_.rot, true, false, 103, nil, 0, 76096)
end

function Quest76096:OnSubFinish7609615(arg1)
    print("OnSubFinish7609615")
end

function Quest76096:OnSubStart7609616(arg1)
    print("OnSubStart7609616")
    this:NpcCreateWithNpcTrigger(npcs.Npc22310.id, 0, 30, 7609616)
end

function Quest76096:OnSubFinish7609616(arg1)
    print("OnSubFinish7609616")
    this:SafeDestroyQuestNpc(npcs.Npc22310.alias, 103)
end

function Quest76096:OnSubStart7609627(arg1)
    print("OnSubStart7609627")
    this:PlayCutsceneIndex(7609627, function(arg1)
        actorUtils.FinishQuestID(false, 7609627)
    end, nil, nil, false)
end

function Quest76096:OnSubFinish7609627(arg1)
    print("OnSubFinish7609627")
end

function Quest76096:OnSubStart7609631(arg1)
    print("OnSubStart7609631")
    this:NpcCreateWithNpcTrigger(npcs.Npc22310.id, 0, 30, 7609631)
end

function Quest76096:OnSubFinish7609631(arg1)
    print("OnSubFinish7609631")
    this:SafeDestroyQuestNpc(npcs.Npc22310.alias, 103)
end

function Quest76096:OnSubStart7609617(arg1)
    print("OnSubStart7609617")
    actorMgr:CreateActorWithPos("Q7609617Trigger", "Actor/Gadget/Q7609617Trigger", 70900002, 0, points._Q7609617TriggerPoint_.pos, points._Q7609617TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
end

function Quest76096:OnSubFinish7609617(arg1)
    print("OnSubFinish7609617")
end

function Quest76096:OnSubStart7609618(arg1)
    print("OnSubStart7609618")
    this:NpcCreateWithNpcTrigger(npcs.Npc22306.id, 0, 25, 7609618)
end

function Quest76096:OnSubFinish7609618(arg1)
    print("OnSubFinish7609618")
    this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
    this:TransmitPlayerByQuestId(7609618, 1, nil, nil, nil)
end

function Quest76096:OnSubStart7609619(arg1)
    print("OnSubStart7609619")
    this:NpcCreateWithNpcTrigger(npcs.Npc22310.id, 0, 30, 7609619)
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
end

function Quest76096:OnSubFinish7609619(arg1)
    print("OnSubFinish7609619")
    this:SafeDestroyQuestNpc(npcs.Npc22310.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 3)
end

function Quest76096:OnSubStart7609623(arg1)
    print("OnSubStart7609623")
end

function Quest76096:OnSubFinish7609623(arg1)
    print("OnSubFinish7609623")
end

return Quest76096
