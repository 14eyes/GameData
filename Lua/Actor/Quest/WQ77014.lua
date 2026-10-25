require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77014 = class("Quest77014", QuestActorProxy)
Quest77014.defaultAlias = "Quest77014"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7701401"] = self.OnSubStart7701401,
        ["7701403"] = self.OnSubStart7701403,
        ["7701404"] = self.OnSubStart7701404,
        ["7701429"] = self.OnSubStart7701429,
        ["7701405"] = self.OnSubStart7701405,
        ["7701406"] = self.OnSubStart7701406,
        ["7701407"] = self.OnSubStart7701407,
        ["7701408"] = self.OnSubStart7701408,
        ["7701409"] = self.OnSubStart7701409,
        ["7701430"] = self.OnSubStart7701430,
        ["7701410"] = self.OnSubStart7701410,
        ["7701411"] = self.OnSubStart7701411,
        ["7701412"] = self.OnSubStart7701412,
        ["7701413"] = self.OnSubStart7701413,
        ["7701431"] = self.OnSubStart7701431,
        ["7701414"] = self.OnSubStart7701414,
        ["7701415"] = self.OnSubStart7701415,
        ["7701432"] = self.OnSubStart7701432,
        ["7701416"] = self.OnSubStart7701416,
        ["7701417"] = self.OnSubStart7701417,
        ["7701433"] = self.OnSubStart7701433,
        ["7701418"] = self.OnSubStart7701418,
        ["7701419"] = self.OnSubStart7701419,
        ["7701421"] = self.OnSubStart7701421,
        ["7701424"] = self.OnSubStart7701424,
        ["7701434"] = self.OnSubStart7701434,
        ["7701425"] = self.OnSubStart7701425,
        ["7701426"] = self.OnSubStart7701426,
        ["7701427"] = self.OnSubStart7701427,
        ["7701428"] = self.OnSubStart7701428,
        ["7701402"] = self.OnSubStart7701402,
        ["7701420"] = self.OnSubStart7701420,
        ["7701422"] = self.OnSubStart7701422,
        ["7701423"] = self.OnSubStart7701423
    }
end

function Quest77014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7701401"] = self.OnSubFinish7701401,
        ["7701403"] = self.OnSubFinish7701403,
        ["7701404"] = self.OnSubFinish7701404,
        ["7701429"] = self.OnSubFinish7701429,
        ["7701405"] = self.OnSubFinish7701405,
        ["7701406"] = self.OnSubFinish7701406,
        ["7701407"] = self.OnSubFinish7701407,
        ["7701408"] = self.OnSubFinish7701408,
        ["7701409"] = self.OnSubFinish7701409,
        ["7701430"] = self.OnSubFinish7701430,
        ["7701410"] = self.OnSubFinish7701410,
        ["7701411"] = self.OnSubFinish7701411,
        ["7701412"] = self.OnSubFinish7701412,
        ["7701413"] = self.OnSubFinish7701413,
        ["7701431"] = self.OnSubFinish7701431,
        ["7701414"] = self.OnSubFinish7701414,
        ["7701415"] = self.OnSubFinish7701415,
        ["7701432"] = self.OnSubFinish7701432,
        ["7701416"] = self.OnSubFinish7701416,
        ["7701417"] = self.OnSubFinish7701417,
        ["7701433"] = self.OnSubFinish7701433,
        ["7701418"] = self.OnSubFinish7701418,
        ["7701419"] = self.OnSubFinish7701419,
        ["7701421"] = self.OnSubFinish7701421,
        ["7701424"] = self.OnSubFinish7701424,
        ["7701434"] = self.OnSubFinish7701434,
        ["7701425"] = self.OnSubFinish7701425,
        ["7701426"] = self.OnSubFinish7701426,
        ["7701427"] = self.OnSubFinish7701427,
        ["7701428"] = self.OnSubFinish7701428,
        ["7701402"] = self.OnSubFinish7701402,
        ["7701420"] = self.OnSubFinish7701420,
        ["7701422"] = self.OnSubFinish7701422,
        ["7701423"] = self.OnSubFinish7701423
    }
end

function Quest77014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77014:Start()
    print("Start")
end

function Quest77014:OnDestroy()
    print("OnDestroy")
end

function Quest77014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77014:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7701420Trigger", 77014)
    this:ActorDestroy("Q7701424Trigger", 77014)
    this:ActorDestroy("Q7701434Trigger", 77014)
end

function Quest77014:ActorDestroy(arg1, arg2)
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

function Quest77014:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77014:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77014:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77014:OnSubStart7701401(arg1)
    print("OnSubStart7701401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701401, 0, 30, 0, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701401(arg1)
    print("OnSubFinish7701401")
    this:NpcDestroyImmediately(1158, npcs.Npc17099.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701403(arg1)
    print("OnSubStart7701403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701403, 30, true)
end

function Quest77014:OnSubFinish7701403(arg1)
    print("OnSubFinish7701403")
    this:NpcDestroyImmediately(1159, npcs.Npc17099.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701404(arg1)
    print("OnSubStart7701404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701404, 30, true)
end

function Quest77014:OnSubFinish7701404(arg1)
    print("OnSubFinish7701404")
    this:NpcDestroyImmediately(1158, npcs.Npc17099.alias)
end

function Quest77014:OnSubStart7701429(arg1)
    print("OnSubStart7701429")
end

function Quest77014:OnSubFinish7701429(arg1)
    print("OnSubFinish7701429")
end

function Quest77014:OnSubStart7701405(arg1)
    print("OnSubStart7701405")
end

function Quest77014:OnSubFinish7701405(arg1)
    print("OnSubFinish7701405")
    this:QuestNarratorTask(datas.NarratorWithId_7701405, nil)
end

function Quest77014:OnSubStart7701406(arg1)
    print("OnSubStart7701406")
    this:CreateQuestNpc(arg1, npcs.Npc7501.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7502.alias, 1, true)
    this:NotifyTo(npcs.Npc7503.alias, 1, true)
end

function Quest77014:OnSubFinish7701406(arg1)
    print("OnSubFinish7701406")
    this:NpcDestroyImmediately(3, npcs.Npc7501.alias)
    this:LightNotifyTo(npcs.Npc7502.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7503.alias, 0, true)
    this:ClearNarratorTask()
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701407(arg1)
    print("OnSubStart7701407")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701407, 0, 30, 2, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701407(arg1)
    print("OnSubFinish7701407")
    this:NpcDestroyImmediately(1159, npcs.Npc17099.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701408(arg1)
    print("OnSubStart7701408")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701408, 30, true)
end

function Quest77014:OnSubFinish7701408(arg1)
    print("OnSubFinish7701408")
    this:NpcDestroyImmediately(1159, npcs.Npc17099.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701409(arg1)
    print("OnSubStart7701409")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701409, 30, true)
end

function Quest77014:OnSubFinish7701409(arg1)
    print("OnSubFinish7701409")
    this:NpcDestroyImmediately(1159, npcs.Npc17099.alias)
end

function Quest77014:OnSubStart7701430(arg1)
    print("OnSubStart7701430")
end

function Quest77014:OnSubFinish7701430(arg1)
    print("OnSubFinish7701430")
end

function Quest77014:OnSubStart7701410(arg1)
    print("OnSubStart7701410")
end

function Quest77014:OnSubFinish7701410(arg1)
    print("OnSubFinish7701410")
    this:QuestNarratorTask(datas.NarratorWithId_7701410, nil)
end

function Quest77014:OnSubStart7701411(arg1)
    print("OnSubStart7701411")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701411, 0, 15, 2, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701411(arg1)
    print("OnSubFinish7701411")
    this:NpcDestroyImmediately(3, npcs.Npc17099.alias)
    this:ClearNarratorTask()
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701412(arg1)
    print("OnSubStart7701412")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701412, 30, true)
end

function Quest77014:OnSubFinish7701412(arg1)
    print("OnSubFinish7701412")
    this:NpcDestroyImmediately(3, npcs.Npc17099.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701413(arg1)
    print("OnSubStart7701413")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701413, 30, true)
end

function Quest77014:OnSubFinish7701413(arg1)
    print("OnSubFinish7701413")
    this:NpcDestroyImmediately(3, npcs.Npc17099.alias)
end

function Quest77014:OnSubStart7701431(arg1)
    print("OnSubStart7701431")
end

function Quest77014:OnSubFinish7701431(arg1)
    print("OnSubFinish7701431")
end

function Quest77014:OnSubStart7701414(arg1)
    print("OnSubStart7701414")
end

function Quest77014:OnSubFinish7701414(arg1)
    print("OnSubFinish7701414")
    this:QuestNarratorTask(datas.NarratorWithId_7701414, nil)
end

function Quest77014:OnSubStart7701415(arg1)
    print("OnSubStart7701415")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701415, 0, 20, 3, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701415(arg1)
    print("OnSubFinish7701415")
    this:NpcDestroyImmediately(1158, npcs.Npc17099.alias)
    this:ClearNarratorTask()
end

function Quest77014:OnSubStart7701432(arg1)
    print("OnSubStart7701432")
end

function Quest77014:OnSubFinish7701432(arg1)
    print("OnSubFinish7701432")
end

function Quest77014:OnSubStart7701416(arg1)
    print("OnSubStart7701416")
end

function Quest77014:OnSubFinish7701416(arg1)
    print("OnSubFinish7701416")
    this:QuestNarratorTask(datas.NarratorWithId_7701416, nil)
end

function Quest77014:OnSubStart7701417(arg1)
    print("OnSubStart7701417")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701417, 0, 30, 2, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701417(arg1)
    print("OnSubFinish7701417")
    this:NpcDestroyImmediately(1159, npcs.Npc17099.alias)
    this:ClearNarratorTask()
end

function Quest77014:OnSubStart7701433(arg1)
    print("OnSubStart7701433")
end

function Quest77014:OnSubFinish7701433(arg1)
    print("OnSubFinish7701433")
end

function Quest77014:OnSubStart7701418(arg1)
    print("OnSubStart7701418")
end

function Quest77014:OnSubFinish7701418(arg1)
    print("OnSubFinish7701418")
    this:QuestNarratorTask(datas.NarratorWithId_7701418, nil)
end

function Quest77014:OnSubStart7701419(arg1)
    print("OnSubStart7701419")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701419, 0, 20, 2, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701419(arg1)
    print("OnSubFinish7701419")
    this:NpcDestroyImmediately(3, npcs.Npc17099.alias)
    this:ClearNarratorTask()
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77014:OnSubStart7701421(arg1)
    print("OnSubStart7701421")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701421, 0, 50, 2, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701421(arg1)
    print("OnSubFinish7701421")
    this:NpcDestroyImmediately(3, npcs.Npc17099.alias)
end

function Quest77014:OnSubStart7701424(arg1)
    print("OnSubStart7701424")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701424, 50, true)
    actorMgr:CreateActorWithPos("Q7701424Trigger", "Actor/Gadget/Q7701424Trigger", 70900002, 0, points._Q7701424TriggerPoint_.pos, points._Q7701424TriggerPoint_.rot, true, false, 3, nil, 0, 77014)
end

function Quest77014:OnSubFinish7701424(arg1)
    print("OnSubFinish7701424")
    this:NpcDestroyImmediately(1158, npcs.Npc17099.alias)
    this:ActorDestroy("Q7701424Trigger", 77014)
end

function Quest77014:OnSubStart7701434(arg1)
    print("OnSubStart7701434")
    actorMgr:CreateActorWithPos("Q7701434Trigger", "Actor/Gadget/Q7701434Trigger", 70900002, 0, points._Q7701434TriggerPoint_.pos, points._Q7701434TriggerPoint_.rot, true, false, 1158, nil, 0, 77014)
end

function Quest77014:OnSubFinish7701434(arg1)
    print("OnSubFinish7701434")
    this:ActorDestroy("Q7701434Trigger", 77014)
end

function Quest77014:OnSubStart7701425(arg1)
    print("OnSubStart7701425")
end

function Quest77014:OnSubFinish7701425(arg1)
    print("OnSubFinish7701425")
    this:QuestNarratorTask(datas.NarratorWithId_7701425, nil)
end

function Quest77014:OnSubStart7701426(arg1)
    print("OnSubStart7701426")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701426, 0, 30, 2, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701426(arg1)
    print("OnSubFinish7701426")
    this:NpcDestroyImmediately(1159, npcs.Npc17099.alias)
    this:ClearNarratorTask()
end

function Quest77014:OnSubStart7701427(arg1)
    print("OnSubStart7701427")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7701427, 0, 50, 2, npcs.Npc17099.id)
end

function Quest77014:OnSubFinish7701427(arg1)
    print("OnSubFinish7701427")
    this:NpcDestroyImmediately(1159, npcs.Npc17099.alias)
end

function Quest77014:OnSubStart7701428(arg1)
    print("OnSubStart7701428")
    this:CreateQuestNpc(arg1, npcs.Npc1308.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1308.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1080.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1312.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 77014):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc1333.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc1334.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1334.alias, 77014):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1336.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1336.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc1338.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1338.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc1341.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1341.alias, 77014):SitOnChair(0, false)
    this:CreateQuestNpc(arg1, npcs.Npc16949.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16949.alias, 77014):DoFreeStyle(105, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15195.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15195.alias, 77014):SitOnChair(0, false)
    this:CreateLocalGadget(70330944, "1", {x = -7.314, y = -5.103, z = -413.359}, {x = 0, y = 0, z = 0}, 1159, nil, nil, false, 0, true, nil)
    this:CreateLocalGadget(70330944, "2", {x = 6.85, y = -5.075, z = -413.309}, {x = 0, y = 0, z = 0}, 1159, nil, nil, false, 0, true, nil)
    this:CreateLocalGadget(70330944, "3", {x = -11.631, y = -5.91, z = -416.973}, {x = 0, y = 0, z = 0}, 1159, nil, nil, false, 0, true, nil)
end

function Quest77014:OnSubFinish7701428(arg1)
    print("OnSubFinish7701428")
    this:NpcDestroyImmediately(1159, npcs.Npc1308.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1080.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1313.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1333.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1334.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1336.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1338.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1341.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc16949.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc15195.alias)
    this:RemoveLocalGadget(70330944, "1")
    this:RemoveLocalGadget(70330944, "2")
    this:RemoveLocalGadget(70330944, "3")
end

function Quest77014:OnSubStart7701402(arg1)
    print("OnSubStart7701402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc17099.id, 0, 7701402, 30, true)
end

function Quest77014:OnSubFinish7701402(arg1)
    print("OnSubFinish7701402")
end

function Quest77014:OnSubStart7701420(arg1)
    print("OnSubStart7701420")
    actorMgr:CreateActorWithPos("Q7701420Trigger", "Actor/Gadget/Q7701420Trigger", 70900002, 0, points._Q7701420TriggerPoint_.pos, points._Q7701420TriggerPoint_.rot, true, false, 3, nil, 0, 77014)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
end

function Quest77014:OnSubFinish7701420(arg1)
    print("OnSubFinish7701420")
end

function Quest77014:OnSubStart7701422(arg1)
    print("OnSubStart7701422")
end

function Quest77014:OnSubFinish7701422(arg1)
    print("OnSubFinish7701422")
end

function Quest77014:OnSubStart7701423(arg1)
    print("OnSubStart7701423")
end

function Quest77014:OnSubFinish7701423(arg1)
    print("OnSubFinish7701423")
    this:NpcDestroyImmediately(3, npcs.Npc17099.alias)
end

return Quest77014
