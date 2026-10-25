require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40098 = class("Quest40098", QuestActorProxy)
Quest40098.defaultAlias = "Quest40098"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40098:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40098:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009801"] = self.OnSubStart4009801,
        ["4009802"] = self.OnSubStart4009802,
        ["4009803"] = self.OnSubStart4009803,
        ["4009804"] = self.OnSubStart4009804,
        ["4009805"] = self.OnSubStart4009805,
        ["4009806"] = self.OnSubStart4009806,
        ["4009807"] = self.OnSubStart4009807,
        ["4009808"] = self.OnSubStart4009808,
        ["4009809"] = self.OnSubStart4009809,
        ["4009811"] = self.OnSubStart4009811,
        ["4009812"] = self.OnSubStart4009812,
        ["4009813"] = self.OnSubStart4009813,
        ["4009814"] = self.OnSubStart4009814,
        ["4009810"] = self.OnSubStart4009810
    }
end

function Quest40098:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009801"] = self.OnSubFinish4009801,
        ["4009802"] = self.OnSubFinish4009802,
        ["4009803"] = self.OnSubFinish4009803,
        ["4009804"] = self.OnSubFinish4009804,
        ["4009805"] = self.OnSubFinish4009805,
        ["4009806"] = self.OnSubFinish4009806,
        ["4009807"] = self.OnSubFinish4009807,
        ["4009808"] = self.OnSubFinish4009808,
        ["4009809"] = self.OnSubFinish4009809,
        ["4009811"] = self.OnSubFinish4009811,
        ["4009812"] = self.OnSubFinish4009812,
        ["4009813"] = self.OnSubFinish4009813,
        ["4009814"] = self.OnSubFinish4009814,
        ["4009810"] = self.OnSubFinish4009810
    }
end

function Quest40098:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4009809"] = self.OnSubFailed4009809}
end

function Quest40098:Start()
    print("Start")
end

function Quest40098:OnDestroy()
    print("OnDestroy")
end

function Quest40098:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40098:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40098:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1062Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    this:LightNotifyTo(npcs.Npc1587Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4009804Trigger", 1004, false)
    actorMgr:DestroyEntityActor("Q4009805Trigger", 1004, false)
    actorMgr:DestroyEntityActor("Q4009808Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009803Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009806N1005Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009807N1060Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009809Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009811N10095Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009812Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009813N1001Trigger", 3, false)
    globalActor:LeaveAllWeather()
end

function Quest40098:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest40098:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest40098:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest40098:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest40098:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40098:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40098:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4009808 then
        globalActor:LeaveAllWeather()
    end
end

function Quest40098:OnSubStart4009801(arg1)
    print("OnSubStart4009801")
end

function Quest40098:OnSubFinish4009801(arg1)
    print("OnSubFinish4009801")
    this:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40098)
end

function Quest40098:OnSubStart4009802(arg1)
    print("OnSubStart4009802")
    this:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 0)
end

function Quest40098:OnSubFinish4009802(arg1)
    print("OnSubFinish4009802")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1019Data.alias)
    this:ClearNarratorTask()
end

function Quest40098:OnSubStart4009803(arg1)
    print("OnSubStart4009803")
    this:CreateQuestNpcWithTrigger("Q4009803Trigger", 4009803, npcs.Npc1051Data.id, 0, 5)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40098:OnSubFinish4009803(arg1)
    print("OnSubFinish4009803")
    this:DestroyQuestNpcActor(npcs.Npc1051Data.alias, 3)
    this:TransmitPlayerByQuestId(4009803, 1)
end

function Quest40098:OnSubStart4009804(arg1)
    print("OnSubStart4009804")
    actorMgr:CreateActorWithPos("Q4009804Trigger", "Actor/Gadget/Q4009804Trigger", 70900002, 0, sceneData:GetDummyPoint(1004, "Q4009803").pos, sceneData:GetDummyPoint(1004, "Q4009803").rot, true, false, 1004)
end

function Quest40098:OnSubFinish4009804(arg1)
    print("OnSubFinish4009804")
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:ActorDestroy("Q4009804Trigger")
end

function Quest40098:OnSubStart4009805(arg1)
    print("OnSubStart4009805")
    actorMgr:CreateActorWithPos("Q4009805Trigger", "Actor/Gadget/Q4009805Trigger", 70900002, 0, sceneData:GetDummyPoint(1004, "N1019_T4009804").pos, sceneData:GetDummyPoint(1004, "N1019_T4009804").rot, true, false, 1004)
end

function Quest40098:OnSubFinish4009805(arg1)
    print("OnSubFinish4009805")
    this:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
    this:TransmitPlayerWithDialogTextByQuestId(4009805, 2, datas.DialogsId01, 3)
    this:ActorDestroy("Q4009805Trigger")
end

function Quest40098:OnSubStart4009806(arg1)
    print("OnSubStart4009806")
    this:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 4009806, 0)
end

function Quest40098:OnSubFinish4009806(arg1)
    print("OnSubFinish4009806")
    this:NPCDestroyImmediately(npcs.PaimonData.alias, 3)
end

function Quest40098:OnSubStart4009807(arg1)
    print("OnSubStart4009807")
    this:NpcCreateWithTrigger(npcs.Npc1060Data.id, 4009807, 0)
    this:CreateQuestNpc(arg1, npcs.RazorData.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1028Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.LisaData.id, 0)
end

function Quest40098:OnSubFinish4009807(arg1)
    print("OnSubFinish4009807")
    this:DestroyQuestNpcActor(npcs.Npc1060Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.RazorData.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1028Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.LisaData.alias, 3)
    this:TransmitPlayerWithDialogTextByQuestId(4009807, 3, datas.DialogsId02, 3)
end

function Quest40098:OnSubStart4009808(arg1)
    print("OnSubStart4009808")
    actorMgr:CreateActorWithPos("Q4009808Trigger", "Actor/Gadget/Q4009808Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4009807").pos, sceneData:GetDummyPoint(3, "Q4009807").rot, true, false, 3)
    globalActor:LeaveAllWeather()
end

function Quest40098:OnSubFinish4009808(arg1)
    print("OnSubFinish4009808")
    this:ActorDestroy("Q4009808Trigger")
    this:NpcDestroy(npcs.Npc1051Data.alias, 3)
end

function Quest40098:OnSubStart4009809(arg1)
    print("OnSubStart4009809")
    this:CreateQuestNpcWithTrigger("Q4009809Trigger", 4009809, npcs.AmborData.id, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1062Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10090Data.id, 0)
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Quest40098:OnSubFinish4009809(arg1)
    print("OnSubFinish4009809")
    this:DestroyQuestNpcActor(npcs.AmborData.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1062Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10090Data.alias, 3)
    globalActor:LeaveAllWeather()
    this:TransmitPlayerWithDialogTextByQuestId(4009809, 4, datas.DialogsId03, 3)
end

function Quest40098:OnSubFailed4009809(arg1)
    print("OnSubFailed4009809")
    this:NpcDestroy(npcs.AmborData.alias, 3)
    this:NpcDestroy(npcs.Npc1029Data.alias, 3)
    this:NpcDestroy(npcs.Npc1062Data.alias, 3)
    this:NpcDestroy(npcs.Npc10090Data.alias, 3)
    globalActor:LeaveAllWeather()
end

function Quest40098:OnSubStart4009811(arg1)
    print("OnSubStart4009811")
    this:NpcCreateWithTriggerBlack(npcs.Npc10095Data.id, 4009811, 0)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40098:OnSubFinish4009811(arg1)
    print("OnSubFinish4009811")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc10095Data.alias)
end

function Quest40098:OnSubStart4009812(arg1)
    print("OnSubStart4009812")
    this:CreateQuestNpcWithTrigger("Q4009812Trigger", 4009812, npcs.Npc1019Data.id, 0, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1019Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40098:OnSubFinish4009812(arg1)
    print("OnSubFinish4009812")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1019Data.alias)
    this:NpcDestroy(npcs.Npc1051Data.alias, 3)
end

function Quest40098:OnSubStart4009813(arg1)
    print("OnSubStart4009813")
    this:NpcCreateWithTriggerBlack(npcs.WendyData.id, 4009813, 0)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40098:OnSubFinish4009813(arg1)
    print("OnSubFinish4009813")
    this:NpcDestroyWithBlackscreen(3, npcs.WendyData.alias)
    this:LightNotifyTo(npcs.Npc1587Data.alias, 0, true)
end

function Quest40098:OnSubStart4009814(arg1)
    print("OnSubStart4009814")
end

function Quest40098:OnSubFinish4009814(arg1)
    print("OnSubFinish4009814")
end

function Quest40098:OnSubStart4009810(arg1)
    print("OnSubStart4009810")
end

function Quest40098:OnSubFinish4009810(arg1)
    print("OnSubFinish4009810")
end

return Quest40098
