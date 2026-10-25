require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6036 = class("Quest6036", QuestActorProxy)
Quest6036.defaultAlias = "Quest6036"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["603611"] = self.OnSubStart603611,
        ["603612"] = self.OnSubStart603612,
        ["603613"] = self.OnSubStart603613,
        ["603620"] = self.OnSubStart603620,
        ["603601"] = self.OnSubStart603601,
        ["603614"] = self.OnSubStart603614,
        ["603625"] = self.OnSubStart603625,
        ["603626"] = self.OnSubStart603626,
        ["603615"] = self.OnSubStart603615,
        ["603627"] = self.OnSubStart603627,
        ["603621"] = self.OnSubStart603621,
        ["603622"] = self.OnSubStart603622,
        ["603616"] = self.OnSubStart603616,
        ["603635"] = self.OnSubStart603635,
        ["603623"] = self.OnSubStart603623,
        ["603636"] = self.OnSubStart603636,
        ["603602"] = self.OnSubStart603602,
        ["603628"] = self.OnSubStart603628,
        ["603603"] = self.OnSubStart603603,
        ["603619"] = self.OnSubStart603619,
        ["603624"] = self.OnSubStart603624,
        ["603617"] = self.OnSubStart603617,
        ["603632"] = self.OnSubStart603632,
        ["603634"] = self.OnSubStart603634,
        ["603618"] = self.OnSubStart603618,
        ["603630"] = self.OnSubStart603630,
        ["603604"] = self.OnSubStart603604,
        ["603605"] = self.OnSubStart603605,
        ["603629"] = self.OnSubStart603629,
        ["603606"] = self.OnSubStart603606,
        ["603631"] = self.OnSubStart603631,
        ["603607"] = self.OnSubStart603607,
        ["603608"] = self.OnSubStart603608,
        ["603609"] = self.OnSubStart603609,
        ["603633"] = self.OnSubStart603633,
        ["603610"] = self.OnSubStart603610,
        ["603637"] = self.OnSubStart603637
    }
end

function Quest6036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["603611"] = self.OnSubFinish603611,
        ["603612"] = self.OnSubFinish603612,
        ["603613"] = self.OnSubFinish603613,
        ["603620"] = self.OnSubFinish603620,
        ["603601"] = self.OnSubFinish603601,
        ["603614"] = self.OnSubFinish603614,
        ["603625"] = self.OnSubFinish603625,
        ["603626"] = self.OnSubFinish603626,
        ["603615"] = self.OnSubFinish603615,
        ["603627"] = self.OnSubFinish603627,
        ["603621"] = self.OnSubFinish603621,
        ["603622"] = self.OnSubFinish603622,
        ["603616"] = self.OnSubFinish603616,
        ["603635"] = self.OnSubFinish603635,
        ["603623"] = self.OnSubFinish603623,
        ["603636"] = self.OnSubFinish603636,
        ["603602"] = self.OnSubFinish603602,
        ["603628"] = self.OnSubFinish603628,
        ["603603"] = self.OnSubFinish603603,
        ["603619"] = self.OnSubFinish603619,
        ["603624"] = self.OnSubFinish603624,
        ["603617"] = self.OnSubFinish603617,
        ["603632"] = self.OnSubFinish603632,
        ["603634"] = self.OnSubFinish603634,
        ["603618"] = self.OnSubFinish603618,
        ["603630"] = self.OnSubFinish603630,
        ["603604"] = self.OnSubFinish603604,
        ["603605"] = self.OnSubFinish603605,
        ["603629"] = self.OnSubFinish603629,
        ["603606"] = self.OnSubFinish603606,
        ["603631"] = self.OnSubFinish603631,
        ["603607"] = self.OnSubFinish603607,
        ["603608"] = self.OnSubFinish603608,
        ["603609"] = self.OnSubFinish603609,
        ["603633"] = self.OnSubFinish603633,
        ["603610"] = self.OnSubFinish603610,
        ["603637"] = self.OnSubFinish603637
    }
end

function Quest6036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["603602"] = self.OnSubFailed603602,
        ["603603"] = self.OnSubFailed603603,
        ["603619"] = self.OnSubFailed603619,
        ["603624"] = self.OnSubFailed603624,
        ["603617"] = self.OnSubFailed603617,
        ["603632"] = self.OnSubFailed603632,
        ["603634"] = self.OnSubFailed603634,
        ["603618"] = self.OnSubFailed603618,
        ["603604"] = self.OnSubFailed603604,
        ["603605"] = self.OnSubFailed603605,
        ["603629"] = self.OnSubFailed603629,
        ["603606"] = self.OnSubFailed603606,
        ["603607"] = self.OnSubFailed603607,
        ["603608"] = self.OnSubFailed603608,
        ["603609"] = self.OnSubFailed603609,
        ["603610"] = self.OnSubFailed603610
    }
end

function Quest6036:Start()
    print("Start")
end

function Quest6036:OnDestroy()
    print("OnDestroy")
end

function Quest6036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6036:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q603601Trigger", 6036)
    this:ActorDestroy("Q603601Trigger_1", 6036)
    this:ActorDestroy("Q603611Trigger", 6036)
    this:ActorDestroy("Q603612Trigger", 6036)
    this:ActorDestroy("Q603612Trigger_1", 6036)
    this:ActorDestroy("Q603614Trigger", 6036)
    this:ActorDestroy("Q603620Trigger", 6036)
    this:ActorDestroy("Q603620Trigger_1", 6036)
    this:ActorDestroy("Q603625Trigger", 6036)
    this:ActorDestroy("Q603628Trigger", 6036)
    this:ActorDestroy("Q603633Trigger", 6036)
    this:ActorDestroy("Q603632Trigger", 6036)
    this:ActorDestroy("Q603636Trigger", 6036)
    this:ActorDestroy("Q603637Trigger", 6036)
end

function Quest6036:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 603615 then
        actorUtils.FinishQuestWithParam({false}, {603618})
    end
end

function Quest6036:ActorDestroy(arg1, arg2)
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

function Quest6036:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6036:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6036:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6036:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6036:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest6036:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6036:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6036:OnSubStart603611(arg1)
    print("OnSubStart603611")
    this:NpcCreateWithNpcTrigger(npcs.Npc1056.id, 0, 10, 603611)
    actorMgr:CreateActorWithPos("Q603611Trigger", "Actor/Gadget/Q603611Trigger", 70900002, 0, points._Q603611TriggerPoint_.pos, points._Q603611TriggerPoint_.rot, true, false, 20343, nil, 0, 6036)
end

function Quest6036:OnSubFinish603611(arg1)
    print("OnSubFinish603611")
    this:NpcDestroyImmediately(20343, npcs.Npc1056.alias)
    this:ActorDestroy("Q603611Trigger", 6036)
end

function Quest6036:OnSubStart603612(arg1)
    print("OnSubStart603612")
    actorMgr:CreateActorWithPos("Q603612Trigger", "Actor/Gadget/Q603612Trigger", 70900002, 0, points._Q603612TriggerPoint_.pos, points._Q603612TriggerPoint_.rot, true, false, 20343, nil, 0, 6036)
    actorMgr:CreateActorWithPos("Q603612Trigger_1", "Actor/Gadget/Q603612Trigger_1", 70900002, 0, points._Q603612Trigger_1Point_.pos, points._Q603612Trigger_1Point_.rot, true, false, 20343, nil, 0, 6036)
end

function Quest6036:OnSubFinish603612(arg1)
    print("OnSubFinish603612")
    this:ActorDestroy("Q603612Trigger", 6036)
    this:ActorDestroy("Q603612Trigger_1", 6036)
end

function Quest6036:OnSubStart603613(arg1)
    print("OnSubStart603613")
    this:NpcCreateWithNpcTrigger(npcs.Npc1056.id, 0, 20, 603613)
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
end

function Quest6036:OnSubFinish603613(arg1)
    print("OnSubFinish603613")
    this:NpcDestroyImmediately(20343, npcs.Npc1056.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16566.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16567.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16568.alias)
end

function Quest6036:OnSubStart603620(arg1)
    print("OnSubStart603620")
    actorMgr:CreateActorWithPos("Q603620Trigger", "Actor/Gadget/Q603620Trigger", 70900002, 0, points._Q603620TriggerPoint_.pos, points._Q603620TriggerPoint_.rot, true, false, 20343, nil, 0, 6036)
    actorMgr:CreateActorWithPos("Q603620Trigger_1", "Actor/Gadget/Q603620Trigger_1", 70900002, 0, points._Q603620Trigger_1Point_.pos, points._Q603620Trigger_1Point_.rot, true, false, 20341, nil, 0, 6036)
end

function Quest6036:OnSubFinish603620(arg1)
    print("OnSubFinish603620")
    this:NpcDestroyImmediately(20341, npcs.Npc16682.alias)
    this:ActorDestroy("Q603620Trigger", 6036)
    this:ActorDestroy("Q603620Trigger_1", 6036)
end

function Quest6036:OnSubStart603601(arg1)
    print("OnSubStart603601")
    actorMgr:CreateActorWithPos("Q603601Trigger", "Actor/Gadget/Q603601Trigger", 70900002, 0, points._Q603601TriggerPoint_.pos, points._Q603601TriggerPoint_.rot, true, false, 20341, nil, 0, 6036)
    actorMgr:CreateActorWithPos("Q603601Trigger_1", "Actor/Gadget/Q603601Trigger_1", 70900002, 0, points._Q603601Trigger_1Point_.pos, points._Q603601Trigger_1Point_.rot, true, false, 20343, nil, 0, 6036)
end

function Quest6036:OnSubFinish603601(arg1)
    print("OnSubFinish603601")
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:ActorDestroy("Q603601Trigger", 6036)
    this:ActorDestroy("Q603601Trigger_1", 6036)
end

function Quest6036:OnSubStart603614(arg1)
    print("OnSubStart603614")
    actorMgr:CreateActorWithPos("Q603614Trigger", "Actor/Gadget/Q603614Trigger", 70900002, 0, points._Q603614TriggerPoint_.pos, points._Q603614TriggerPoint_.rot, true, false, 20343, nil, 0, 6036)
end

function Quest6036:OnSubFinish603614(arg1)
    print("OnSubFinish603614")
end

function Quest6036:OnSubStart603625(arg1)
    print("OnSubStart603625")
    actorMgr:CreateActorWithPos("Q603625Trigger", "Actor/Gadget/Q603625Trigger", 70900002, 0, points._Q603625TriggerPoint_.pos, points._Q603625TriggerPoint_.rot, true, false, 20343, nil, 0, 6036)
end

function Quest6036:OnSubFinish603625(arg1)
    print("OnSubFinish603625")
end

function Quest6036:OnSubStart603626(arg1)
    print("OnSubStart603626")
end

function Quest6036:OnSubFinish603626(arg1)
    print("OnSubFinish603626")
end

function Quest6036:OnSubStart603615(arg1)
    print("OnSubStart603615")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(603615, 0, 50, 1, npcs.Npc1058.id)
end

function Quest6036:OnSubFinish603615(arg1)
    print("OnSubFinish603615")
    this:NpcDestroyImmediately(20343, npcs.Npc1058.alias)
end

function Quest6036:OnSubStart603627(arg1)
    print("OnSubStart603627")
end

function Quest6036:OnSubFinish603627(arg1)
    print("OnSubFinish603627")
end

function Quest6036:OnSubStart603621(arg1)
    print("OnSubStart603621")
    this:NpcCreateWithNoBlack(npcs.Npc1058.id, 0, 10, 603621, true, 603604)
end

function Quest6036:OnSubFinish603621(arg1)
    print("OnSubFinish603621")
    this:NpcDestroyImmediately(20343, npcs.Npc1058.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest6036:OnSubStart603622(arg1)
    print("OnSubStart603622")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1050.id, 0, 603622, 10, true)
end

function Quest6036:OnSubFinish603622(arg1)
    print("OnSubFinish603622")
    this:NpcDestroyImmediately(20343, npcs.Npc1050.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1232, nil)
    end)
end

function Quest6036:OnSubStart603616(arg1)
    print("OnSubStart603616")
    this:NpcCreateWithNpcTriggerAndBlackscreen(603616, 0, 10, 1, npcs.Npc1050.id)
end

function Quest6036:OnSubFinish603616(arg1)
    print("OnSubFinish603616")
    this:NpcDestroyImmediately(20343, npcs.Npc1050.alias)
end

function Quest6036:OnSubStart603635(arg1)
    print("OnSubStart603635")
end

function Quest6036:OnSubFinish603635(arg1)
    print("OnSubFinish603635")
end

function Quest6036:OnSubStart603623(arg1)
    print("OnSubStart603623")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(603623, 0, 15, 1, npcs.Npc1050.id)
end

function Quest6036:OnSubFinish603623(arg1)
    print("OnSubFinish603623")
    this:NpcDestroyImmediately(20343, npcs.Npc1050.alias)
end

function Quest6036:OnSubStart603636(arg1)
    print("OnSubStart603636")
    actorMgr:CreateActorWithPos("Q603636Trigger", "Actor/Gadget/Q603636Trigger", 70900002, 0, points._Q603636TriggerPoint_.pos, points._Q603636TriggerPoint_.rot, true, false, 20343, nil, 0, 6036)
end

function Quest6036:OnSubFinish603636(arg1)
    print("OnSubFinish603636")
    this:ActorDestroy("Q603636Trigger", 6036)
end

function Quest6036:OnSubStart603602(arg1)
    print("OnSubStart603602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(603602, 0, 10, 1, npcs.Npc1065.id)
    this:QuestNarratorTask(datas.NarratorWithId_603606, nil)
end

function Quest6036:OnSubFinish603602(arg1)
    print("OnSubFinish603602")
    this:NpcDestroyImmediately(20345, npcs.Npc1065.alias)
    this:ClearNarratorTask()
end

function Quest6036:OnSubFailed603602(arg1)
    print("OnSubFailed603602")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603628(arg1)
    print("OnSubStart603628")
    actorMgr:CreateActorWithPos("Q603628Trigger", "Actor/Gadget/Q603628Trigger", 70900002, 0, points._Q603628TriggerPoint_.pos, points._Q603628TriggerPoint_.rot, true, false, 20345, nil, 0, 6036)
end

function Quest6036:OnSubFinish603628(arg1)
    print("OnSubFinish603628")
    this:ActorDestroy("Q603628Trigger", 6036)
end

function Quest6036:OnSubStart603603(arg1)
    print("OnSubStart603603")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1065.id, 0, 603603, 10, true)
end

function Quest6036:OnSubFinish603603(arg1)
    print("OnSubFinish603603")
    this:NpcDestroyImmediately(20341, npcs.Npc1065.alias)
end

function Quest6036:OnSubFailed603603(arg1)
    print("OnSubFailed603603")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603619(arg1)
    print("OnSubStart603619")
    this:NpcCreateWithNoBlack(npcs.Npc1065.id, 0, 13, 603619, false, 603612)
end

function Quest6036:OnSubFinish603619(arg1)
    print("OnSubFinish603619")
    this:NpcDestroyImmediately(20341, npcs.Npc1065.alias)
end

function Quest6036:OnSubFailed603619(arg1)
    print("OnSubFailed603619")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603624(arg1)
    print("OnSubStart603624")
end

function Quest6036:OnSubFinish603624(arg1)
    print("OnSubFinish603624")
end

function Quest6036:OnSubFailed603624(arg1)
    print("OnSubFailed603624")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603617(arg1)
    print("OnSubStart603617")
    this:NpcCreateWithNoBlackData(603617, 0, npcs.Npc16975.id, 0, 20, 603614, datas.NoBlackData)
end

function Quest6036:OnSubFinish603617(arg1)
    print("OnSubFinish603617")
    this:NpcDestroyImmediately(20341, npcs.Npc16975.alias)
end

function Quest6036:OnSubFailed603617(arg1)
    print("OnSubFailed603617")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603632(arg1)
    print("OnSubStart603632")
    actorMgr:CreateActorWithPos("Q603632Trigger", "Actor/Gadget/Q603632Trigger", 70900002, 0, points._Q603632TriggerPoint_.pos, points._Q603632TriggerPoint_.rot, true, false, 20341, nil, 0, 6036)
end

function Quest6036:OnSubFinish603632(arg1)
    print("OnSubFinish603632")
end

function Quest6036:OnSubFailed603632(arg1)
    print("OnSubFailed603632")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603634(arg1)
    print("OnSubStart603634")
end

function Quest6036:OnSubFinish603634(arg1)
    print("OnSubFinish603634")
end

function Quest6036:OnSubFailed603634(arg1)
    print("OnSubFailed603634")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603618(arg1)
    print("OnSubStart603618")
    this:NpcCreateWithNoBlack(npcs.Npc1065.id, 0, 30, 603618, false, 603615)
end

function Quest6036:OnSubFinish603618(arg1)
    print("OnSubFinish603618")
    this:NpcDestroyImmediately(20341, npcs.Npc1065.alias)
end

function Quest6036:OnSubFailed603618(arg1)
    print("OnSubFailed603618")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603630(arg1)
    print("OnSubStart603630")
end

function Quest6036:OnSubFinish603630(arg1)
    print("OnSubFinish603630")
end

function Quest6036:OnSubStart603604(arg1)
    print("OnSubStart603604")
end

function Quest6036:OnSubFinish603604(arg1)
    print("OnSubFinish603604")
end

function Quest6036:OnSubFailed603604(arg1)
    print("OnSubFailed603604")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603605(arg1)
    print("OnSubStart603605")
    if sceneData.currSceneID == 20341 then
        this:PlayCutsceneIndex(60360501, function(arg1)
            actorUtils.FinishQuestID(false, 603605)
        end, nil, nil, false)
    end
end

function Quest6036:OnSubFinish603605(arg1)
    print("OnSubFinish603605")
end

function Quest6036:OnSubFailed603605(arg1)
    print("OnSubFailed603605")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603629(arg1)
    print("OnSubStart603629")
end

function Quest6036:OnSubFinish603629(arg1)
    print("OnSubFinish603629")
end

function Quest6036:OnSubFailed603629(arg1)
    print("OnSubFailed603629")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603606(arg1)
    print("OnSubStart603606")
    this:CallDelayByQuest("603606", 1, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1056.id, 0, false, 0)
        this:CreateLocalGadget(73164030, "1", {x = 496.639, y = 250.543, z = 1530.502}, {x = 0, y = 180, z = 0}, 20341, nil, nil, false, 0, true)
        this:GetQuestNpcActor(npcs.Npc1056.alias, 6036):DoFreeStyle(4751, false, nil, true, true, false, true)
    end)
end

function Quest6036:OnSubFinish603606(arg1)
    print("OnSubFinish603606")
    this:NpcDestroyImmediately(20341, npcs.Npc1056.alias)
    this:RecycleAllRes()
end

function Quest6036:OnSubFailed603606(arg1)
    print("OnSubFailed603606")
    this:RecycleAllRes()
    this:NpcDestroyImmediately(20341, npcs.Npc1056.alias)
end

function Quest6036:OnSubStart603631(arg1)
    print("OnSubStart603631")
end

function Quest6036:OnSubFinish603631(arg1)
    print("OnSubFinish603631")
end

function Quest6036:OnSubStart603607(arg1)
    print("OnSubStart603607")
    if sceneData.currSceneID == 20341 then
        this:PlayCutsceneIndex(60360701, function(arg1)
            this:ShowBlackScreen(0, 1, 0, nil, nil, nil, "", false, true)
            actorUtils.FinishQuestWithParam({false}, {603607})
        end, nil, nil, false)
    end
end

function Quest6036:OnSubFinish603607(arg1)
    print("OnSubFinish603607")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6036:OnSubFailed603607(arg1)
    print("OnSubFailed603607")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603608(arg1)
    print("OnSubStart603608")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1056.id, 0, 603608, 20, true)
end

function Quest6036:OnSubFinish603608(arg1)
    print("OnSubFinish603608")
    this:NpcDestroyImmediately(20341, npcs.Npc1056.alias)
end

function Quest6036:OnSubFailed603608(arg1)
    print("OnSubFailed603608")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603609(arg1)
    print("OnSubStart603609")
    if sceneData.currSceneID == 20341 then
        this:PlayCutsceneIndex(60360901, function(arg1)
            this:ShowBlackScreen(0, 0.5, 0, nil, nil, nil, "", false, true)
            this:PlayCutsceneIndex(60361001, function(arg1)
                actorUtils.FinishQuestWithParam({false}, {603609})
                this:ShowBlackScreen(0, 1, 0, nil, nil, nil, "", false, true)
            end, nil, nil, false)
        end, nil, nil, false)
    end
end

function Quest6036:OnSubFinish603609(arg1)
    print("OnSubFinish603609")
end

function Quest6036:OnSubFailed603609(arg1)
    print("OnSubFailed603609")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603633(arg1)
    print("OnSubStart603633")
    actorMgr:CreateActorWithPos("Q603633Trigger", "Actor/Gadget/Q603633Trigger", 70900002, 0, points._Q603633TriggerPoint_.pos, points._Q603633TriggerPoint_.rot, true, false, 20341, nil, 0, 6036)
end

function Quest6036:OnSubFinish603633(arg1)
    print("OnSubFinish603633")
    this:ActorDestroy("Q603633Trigger", 6036)
end

function Quest6036:OnSubStart603610(arg1)
    print("OnSubStart603610")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc12695.id, 0, 603610, 50, true)
end

function Quest6036:OnSubFinish603610(arg1)
    print("OnSubFinish603610")
    this:NpcDestroyImmediately(20343, npcs.Npc12695.alias)
end

function Quest6036:OnSubFailed603610(arg1)
    print("OnSubFailed603610")
    this:RecycleAllRes()
end

function Quest6036:OnSubStart603637(arg1)
    print("OnSubStart603637")
    actorMgr:CreateActorWithPos("Q603637Trigger", "Actor/Gadget/Q603637Trigger", 70900002, 0, points._Q603637TriggerPoint_.pos, points._Q603637TriggerPoint_.rot, true, false, 20343, nil, 0, 6036)
end

function Quest6036:OnSubFinish603637(arg1)
    print("OnSubFinish603637")
    this:ActorDestroy("Q603637Trigger", 6036)
end

return Quest6036
