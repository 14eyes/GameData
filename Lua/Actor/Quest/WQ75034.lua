require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75034 = class("Quest75034", QuestActorProxy)
Quest75034.defaultAlias = "Quest75034"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75034:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503401"] = self.OnSubStart7503401,
        ["7503402"] = self.OnSubStart7503402,
        ["7503404"] = self.OnSubStart7503404,
        ["7503440"] = self.OnSubStart7503440,
        ["7503430"] = self.OnSubStart7503430,
        ["7503403"] = self.OnSubStart7503403,
        ["7503405"] = self.OnSubStart7503405,
        ["7503406"] = self.OnSubStart7503406,
        ["7503407"] = self.OnSubStart7503407,
        ["7503408"] = self.OnSubStart7503408,
        ["7503409"] = self.OnSubStart7503409,
        ["7503439"] = self.OnSubStart7503439,
        ["7503431"] = self.OnSubStart7503431,
        ["7503410"] = self.OnSubStart7503410,
        ["7503411"] = self.OnSubStart7503411,
        ["7503432"] = self.OnSubStart7503432,
        ["7503441"] = self.OnSubStart7503441,
        ["7503433"] = self.OnSubStart7503433,
        ["7503412"] = self.OnSubStart7503412,
        ["7503413"] = self.OnSubStart7503413,
        ["7503415"] = self.OnSubStart7503415,
        ["7503416"] = self.OnSubStart7503416,
        ["7503442"] = self.OnSubStart7503442,
        ["7503434"] = self.OnSubStart7503434,
        ["7503417"] = self.OnSubStart7503417,
        ["7503418"] = self.OnSubStart7503418,
        ["7503419"] = self.OnSubStart7503419,
        ["7503420"] = self.OnSubStart7503420,
        ["7503443"] = self.OnSubStart7503443,
        ["7503421"] = self.OnSubStart7503421,
        ["7503422"] = self.OnSubStart7503422,
        ["7503435"] = self.OnSubStart7503435,
        ["7503436"] = self.OnSubStart7503436,
        ["7503437"] = self.OnSubStart7503437,
        ["7503438"] = self.OnSubStart7503438,
        ["7503423"] = self.OnSubStart7503423,
        ["7503424"] = self.OnSubStart7503424,
        ["7503425"] = self.OnSubStart7503425,
        ["7503426"] = self.OnSubStart7503426,
        ["7503427"] = self.OnSubStart7503427,
        ["7503429"] = self.OnSubStart7503429,
        ["7503428"] = self.OnSubStart7503428,
        ["7503414"] = self.OnSubStart7503414
    }
end

function Quest75034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503401"] = self.OnSubFinish7503401,
        ["7503402"] = self.OnSubFinish7503402,
        ["7503404"] = self.OnSubFinish7503404,
        ["7503440"] = self.OnSubFinish7503440,
        ["7503430"] = self.OnSubFinish7503430,
        ["7503403"] = self.OnSubFinish7503403,
        ["7503405"] = self.OnSubFinish7503405,
        ["7503406"] = self.OnSubFinish7503406,
        ["7503407"] = self.OnSubFinish7503407,
        ["7503408"] = self.OnSubFinish7503408,
        ["7503409"] = self.OnSubFinish7503409,
        ["7503439"] = self.OnSubFinish7503439,
        ["7503431"] = self.OnSubFinish7503431,
        ["7503410"] = self.OnSubFinish7503410,
        ["7503411"] = self.OnSubFinish7503411,
        ["7503432"] = self.OnSubFinish7503432,
        ["7503441"] = self.OnSubFinish7503441,
        ["7503433"] = self.OnSubFinish7503433,
        ["7503412"] = self.OnSubFinish7503412,
        ["7503413"] = self.OnSubFinish7503413,
        ["7503415"] = self.OnSubFinish7503415,
        ["7503416"] = self.OnSubFinish7503416,
        ["7503442"] = self.OnSubFinish7503442,
        ["7503434"] = self.OnSubFinish7503434,
        ["7503417"] = self.OnSubFinish7503417,
        ["7503418"] = self.OnSubFinish7503418,
        ["7503419"] = self.OnSubFinish7503419,
        ["7503420"] = self.OnSubFinish7503420,
        ["7503443"] = self.OnSubFinish7503443,
        ["7503421"] = self.OnSubFinish7503421,
        ["7503422"] = self.OnSubFinish7503422,
        ["7503435"] = self.OnSubFinish7503435,
        ["7503436"] = self.OnSubFinish7503436,
        ["7503437"] = self.OnSubFinish7503437,
        ["7503438"] = self.OnSubFinish7503438,
        ["7503423"] = self.OnSubFinish7503423,
        ["7503424"] = self.OnSubFinish7503424,
        ["7503425"] = self.OnSubFinish7503425,
        ["7503426"] = self.OnSubFinish7503426,
        ["7503427"] = self.OnSubFinish7503427,
        ["7503429"] = self.OnSubFinish7503429,
        ["7503428"] = self.OnSubFinish7503428,
        ["7503414"] = self.OnSubFinish7503414
    }
end

function Quest75034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75034:Start()
    print("Start")
end

function Quest75034:OnDestroy()
    print("OnDestroy")
end

function Quest75034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75034:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75034:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest75034:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest75034:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75034:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7503440)
        actorUtils.FinishQuestID(false, 7503430)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7503439)
        actorUtils.FinishQuestID(false, 7503431)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7503441)
        actorUtils.FinishQuestID(false, 7503433)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 7503442)
        actorUtils.FinishQuestID(false, 7503434)
    end
end

function Quest75034:OnSubStart7503401(arg1)
    print("OnSubStart7503401")
    this:CreateQuestNpc(arg1, npcs.Npc21581Data.id, 1, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21582Data.id, 2, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21577Data.id, 3, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21576Data.id, 4, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21578Data.id, 5, false, 0)
end

function Quest75034:OnSubFinish7503401(arg1)
    print("OnSubFinish7503401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21581Data.alias)
end

function Quest75034:OnSubStart7503402(arg1)
    print("OnSubStart7503402")
    actorMgr:CreateActorWithPos("Q7503402_EnterTrigger", "Actor/Gadget/Q7503402_EnterTrigger", 70900002, 0, {x = -1776.659, y = 17.089, z = 8996.849}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:NpcCreate(arg1, npcs.Npc21582Data.id, 1)
end

function Quest75034:OnSubFinish7503402(arg1)
    print("OnSubFinish7503402")
end

function Quest75034:OnSubStart7503404(arg1)
    print("OnSubStart7503404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21571Data.id, 7503404, 2, 30, 1, false)
    this:NpcCreate(arg1, npcs.Npc21582Data.id, 1)
end

function Quest75034:OnSubFinish7503404(arg1)
    print("OnSubFinish7503404")
    this:NpcDestroy(npcs.Npc21582Data.alias, 3)
end

function Quest75034:OnSubStart7503440(arg1)
    print("OnSubStart7503440")
end

function Quest75034:OnSubFinish7503440(arg1)
    print("OnSubFinish7503440")
end

function Quest75034:OnSubStart7503430(arg1)
    print("OnSubStart7503430")
    this:NpcCreate(arg1, npcs.Npc21571Data.id, 1)
end

function Quest75034:OnSubFinish7503430(arg1)
    print("OnSubFinish7503430")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21571Data.alias)
end

function Quest75034:OnSubStart7503403(arg1)
    print("OnSubStart7503403")
    this:NpcDestroy(npcs.Npc21571Data.alias, 3)
end

function Quest75034:OnSubFinish7503403(arg1)
    print("OnSubFinish7503403")
end

function Quest75034:OnSubStart7503405(arg1)
    print("OnSubStart7503405")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21571Data.id, 7503405, 1, 30, 1, false)
end

function Quest75034:OnSubFinish7503405(arg1)
    print("OnSubFinish7503405")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21571Data.alias)
end

function Quest75034:OnSubStart7503406(arg1)
    print("OnSubStart7503406")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_T1, 5, function(arg1)
        actorUtils.FinishQuestID(false, 7503406)
    end, nil)
end

function Quest75034:OnSubFinish7503406(arg1)
    print("OnSubFinish7503406")
end

function Quest75034:OnSubStart7503407(arg1)
    print("OnSubStart7503407")
    this:NpcCreate(arg1, npcs.Npc21571Data.id, 1)
    this:CallDelayByQuest("", 0.2, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
    end)
end

function Quest75034:OnSubFinish7503407(arg1)
    print("OnSubFinish7503407")
end

function Quest75034:OnSubStart7503408(arg1)
    print("OnSubStart7503408")
    actorMgr:CreateActorWithPos("Q7503408_EnterTrigger", "Actor/Gadget/Q7503408_EnterTrigger", 70900002, 0, {x = -1765.453, y = 142.172, z = 8610.766}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503408(arg1)
    print("OnSubFinish7503408")
end

function Quest75034:OnSubStart7503409(arg1)
    print("OnSubStart7503409")
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503409(arg1)
    print("OnSubFinish7503409")
end

function Quest75034:OnSubStart7503439(arg1)
    print("OnSubStart7503439")
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503439(arg1)
    print("OnSubFinish7503439")
end

function Quest75034:OnSubStart7503431(arg1)
    print("OnSubStart7503431")
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 0)
end

function Quest75034:OnSubFinish7503431(arg1)
    print("OnSubFinish7503431")
end

function Quest75034:OnSubStart7503410(arg1)
    print("OnSubStart7503410")
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 1)
end

function Quest75034:OnSubFinish7503410(arg1)
    print("OnSubFinish7503410")
end

function Quest75034:OnSubStart7503411(arg1)
    print("OnSubStart7503411")
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503411(arg1)
    print("OnSubFinish7503411")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.N7503401)
    end)
end

function Quest75034:OnSubStart7503432(arg1)
    print("OnSubStart7503432")
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503432(arg1)
    print("OnSubFinish7503432")
end

function Quest75034:OnSubStart7503441(arg1)
    print("OnSubStart7503441")
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503441(arg1)
    print("OnSubFinish7503441")
end

function Quest75034:OnSubStart7503433(arg1)
    print("OnSubStart7503433")
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 0)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503433(arg1)
    print("OnSubFinish7503433")
end

function Quest75034:OnSubStart7503412(arg1)
    print("OnSubStart7503412")
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 0)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 0)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503412(arg1)
    print("OnSubFinish7503412")
end

function Quest75034:OnSubStart7503413(arg1)
    print("OnSubStart7503413")
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503413(arg1)
    print("OnSubFinish7503413")
end

function Quest75034:OnSubStart7503415(arg1)
    print("OnSubStart7503415")
    actorMgr:CreateActorWithPos("Q7503415_EnterTrigger", "Actor/Gadget/Q7503415_EnterTrigger", 70900002, 0, {x = -2344.137, y = 204.63, z = 8677.161}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 3)
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503415(arg1)
    print("OnSubFinish7503415")
end

function Quest75034:OnSubStart7503416(arg1)
    print("OnSubStart7503416")
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503416(arg1)
    print("OnSubFinish7503416")
end

function Quest75034:OnSubStart7503442(arg1)
    print("OnSubStart7503442")
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503442(arg1)
    print("OnSubFinish7503442")
end

function Quest75034:OnSubStart7503434(arg1)
    print("OnSubStart7503434")
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 0)
end

function Quest75034:OnSubFinish7503434(arg1)
    print("OnSubFinish7503434")
end

function Quest75034:OnSubStart7503417(arg1)
    print("OnSubStart7503417")
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 0)
end

function Quest75034:OnSubFinish7503417(arg1)
    print("OnSubFinish7503417")
end

function Quest75034:OnSubStart7503418(arg1)
    print("OnSubStart7503418")
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc21571Data.alias):DoFreeStyle(4120, true, nil, true, true, false, true)
end

function Quest75034:OnSubFinish7503418(arg1)
    print("OnSubFinish7503418")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.N7503402, function(arg1) end)
    end)
end

function Quest75034:OnSubStart7503419(arg1)
    print("OnSubStart7503419")
    this:NpcCreate(arg1, npcs.Npc21571Data.id, 1)
    actorMgr:CreateActorWithPos("Q7503419_EnterTrigger", "Actor/Gadget/Q7503419_EnterTrigger", 70900002, 0, {x = -1916.128, y = 64.69, z = 8988.961}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75034:OnSubFinish7503419(arg1)
    print("OnSubFinish7503419")
end

function Quest75034:OnSubStart7503420(arg1)
    print("OnSubStart7503420")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21571Data.id, 7503420, 1, 13, 1, false)
end

function Quest75034:OnSubFinish7503420(arg1)
    print("OnSubFinish7503420")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21571Data.alias)
end

function Quest75034:OnSubStart7503443(arg1)
    print("OnSubStart7503443")
end

function Quest75034:OnSubFinish7503443(arg1)
    print("OnSubFinish7503443")
end

function Quest75034:OnSubStart7503421(arg1)
    print("OnSubStart7503421")
    actorMgr:CreateActorWithPos("Q7503421_EnterTrigger", "Actor/Gadget/Q7503421_EnterTrigger", 70900002, 0, {x = -1776.844, y = 141.738, z = 8605.922}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:NpcCreate(arg1, npcs.Npc21570Data.id, 2)
    this:NpcCreate(arg1, npcs.Npc21573Data.id, 3)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 4)
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 6)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 7)
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 8)
    this:NpcCreate(arg1, npcs.Npc21571Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc21575Data.id, 5)
end

function Quest75034:OnSubFinish7503421(arg1)
    print("OnSubFinish7503421")
end

function Quest75034:OnSubStart7503422(arg1)
    print("OnSubStart7503422")
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc21571Data.alias, npcs.Npc21571Data.alias, true)
    end)
end

function Quest75034:OnSubFinish7503422(arg1)
    print("OnSubFinish7503422")
end

function Quest75034:OnSubStart7503435(arg1)
    print("OnSubStart7503435")
    this:NpcCreate(arg1, npcs.Npc21571Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc21570Data.id, 2)
    this:NpcCreate(arg1, npcs.Npc21573Data.id, 3)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 4)
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 6)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 7)
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 8)
    this:NpcCreate(arg1, npcs.Npc21575Data.id, 5)
end

function Quest75034:OnSubFinish7503435(arg1)
    print("OnSubFinish7503435")
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc21570Data.alias, npcs.Npc21570Data.alias, true)
    end)
end

function Quest75034:OnSubStart7503436(arg1)
    print("OnSubStart7503436")
end

function Quest75034:OnSubFinish7503436(arg1)
    print("OnSubFinish7503436")
end

function Quest75034:OnSubStart7503437(arg1)
    print("OnSubStart7503437")
    this:NpcCreate(arg1, npcs.Npc21571Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc21570Data.id, 2)
    this:NpcCreate(arg1, npcs.Npc21573Data.id, 3)
    this:NpcCreate(arg1, npcs.Npc21572Data.id, 4)
    this:NpcCreate(arg1, npcs.Npc21577Data.id, 6)
    this:NpcCreate(arg1, npcs.Npc21576Data.id, 7)
    this:NpcCreate(arg1, npcs.Npc21578Data.id, 8)
    this:NpcCreate(arg1, npcs.Npc21575Data.id, 5)
end

function Quest75034:OnSubFinish7503437(arg1)
    print("OnSubFinish7503437")
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc21570Data.alias, npcs.Npc21570Data.alias, true)
    end)
end

function Quest75034:OnSubStart7503438(arg1)
    print("OnSubStart7503438")
end

function Quest75034:OnSubFinish7503438(arg1)
    print("OnSubFinish7503438")
    this:TransmitPlayerWithDialogTextById(arg1, 5, datas.TranID_2, 5, function(arg1)
        this:EnterSceneLookCamera({x = -1782.796, y = 14.645, z = 8945.654}, 0, 3, false, false)
    end, nil)
end

function Quest75034:OnSubStart7503423(arg1)
    print("OnSubStart7503423")
    actorMgr:CreateActorWithPos("Q7503423_EnterTrigger", "Actor/Gadget/Q7503423_EnterTrigger", 70900002, 0, {x = -1781.226, y = 14.589, z = 8954.771}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75034:OnSubFinish7503423(arg1)
    print("OnSubFinish7503423")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.N3)
    end)
end

function Quest75034:OnSubStart7503424(arg1)
    print("OnSubStart7503424")
    actorMgr:CreateActorWithPos("Q7503424_EnterTrigger", "Actor/Gadget/Q7503424_EnterTrigger", 70900002, 0, {x = -1793.254, y = 15.83, z = 8843.887}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:NpcCreate(arg1, npcs.Npc21574Data.id, 2)
    this:NpcCreate(arg1, npcs.Npc21573Data.id, 1)
end

function Quest75034:OnSubFinish7503424(arg1)
    print("OnSubFinish7503424")
end

function Quest75034:OnSubStart7503425(arg1)
    print("OnSubStart7503425")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21573Data.id, 7503425, 1, 80, 1, false)
    this:NpcCreate(arg1, npcs.Npc21574Data.id, 2)
end

function Quest75034:OnSubFinish7503425(arg1)
    print("OnSubFinish7503425")
end

function Quest75034:OnSubStart7503426(arg1)
    print("OnSubStart7503426")
end

function Quest75034:OnSubFinish7503426(arg1)
    print("OnSubFinish7503426")
end

function Quest75034:OnSubStart7503427(arg1)
    print("OnSubStart7503427")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21573Data.id, 7503427, 1, 30, 1, false)
    this:NpcCreate(arg1, npcs.Npc21574Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc21573Data.alias):DoFreeStyle(4412, true, nil, true, true, false, false)
end

function Quest75034:OnSubFinish7503427(arg1)
    print("OnSubFinish7503427")
end

function Quest75034:OnSubStart7503429(arg1)
    print("OnSubStart7503429")
    this:NpcCreate(arg1, npcs.Npc21570Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc21573Data.alias):DoFreeStyle(4412, true, nil, true, true, false, false)
end

function Quest75034:OnSubFinish7503429(arg1)
    print("OnSubFinish7503429")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21570Data.alias)
    this:NpcDestroy(npcs.Npc21573Data.alias, 3)
    this:NpcDestroy(npcs.Npc21574Data.alias, 3)
end

function Quest75034:OnSubStart7503428(arg1)
    print("OnSubStart7503428")
end

function Quest75034:OnSubFinish7503428(arg1)
    print("OnSubFinish7503428")
end

function Quest75034:OnSubStart7503414(arg1)
    print("OnSubStart7503414")
    actorMgr:CreateActorWithPos("Q7503414_EnterTrigger", "Actor/Gadget/Q7503414_EnterTrigger", 70900002, 0, {x = -2317.315, y = 204.429, z = 8724.338}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75034:OnSubFinish7503414(arg1)
    print("OnSubFinish7503414")
end

return Quest75034
