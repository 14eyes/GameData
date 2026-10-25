require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6034 = class("Quest6034", QuestActorProxy)
Quest6034.defaultAlias = "Quest6034"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6034:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["603402"] = self.OnSubStart603402,
        ["603424"] = self.OnSubStart603424,
        ["603415"] = self.OnSubStart603415,
        ["603401"] = self.OnSubStart603401,
        ["603416"] = self.OnSubStart603416,
        ["603404"] = self.OnSubStart603404,
        ["603425"] = self.OnSubStart603425,
        ["603421"] = self.OnSubStart603421,
        ["603405"] = self.OnSubStart603405,
        ["603417"] = self.OnSubStart603417,
        ["603403"] = self.OnSubStart603403,
        ["603418"] = self.OnSubStart603418,
        ["603419"] = self.OnSubStart603419,
        ["603422"] = self.OnSubStart603422,
        ["603406"] = self.OnSubStart603406,
        ["603410"] = self.OnSubStart603410,
        ["603411"] = self.OnSubStart603411,
        ["603408"] = self.OnSubStart603408,
        ["603409"] = self.OnSubStart603409,
        ["603420"] = self.OnSubStart603420,
        ["603407"] = self.OnSubStart603407,
        ["603423"] = self.OnSubStart603423,
        ["603412"] = self.OnSubStart603412,
        ["603413"] = self.OnSubStart603413,
        ["603414"] = self.OnSubStart603414
    }
end

function Quest6034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["603402"] = self.OnSubFinish603402,
        ["603424"] = self.OnSubFinish603424,
        ["603415"] = self.OnSubFinish603415,
        ["603401"] = self.OnSubFinish603401,
        ["603416"] = self.OnSubFinish603416,
        ["603404"] = self.OnSubFinish603404,
        ["603425"] = self.OnSubFinish603425,
        ["603421"] = self.OnSubFinish603421,
        ["603405"] = self.OnSubFinish603405,
        ["603417"] = self.OnSubFinish603417,
        ["603403"] = self.OnSubFinish603403,
        ["603418"] = self.OnSubFinish603418,
        ["603419"] = self.OnSubFinish603419,
        ["603422"] = self.OnSubFinish603422,
        ["603406"] = self.OnSubFinish603406,
        ["603410"] = self.OnSubFinish603410,
        ["603411"] = self.OnSubFinish603411,
        ["603408"] = self.OnSubFinish603408,
        ["603409"] = self.OnSubFinish603409,
        ["603420"] = self.OnSubFinish603420,
        ["603407"] = self.OnSubFinish603407,
        ["603423"] = self.OnSubFinish603423,
        ["603412"] = self.OnSubFinish603412,
        ["603413"] = self.OnSubFinish603413,
        ["603414"] = self.OnSubFinish603414
    }
end

function Quest6034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6034:Start()
    print("Start")
end

function Quest6034:OnDestroy()
    print("OnDestroy")
end

function Quest6034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6034:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q603403Trigger", 6034)
    this:ActorDestroy("Q603406Trigger", 6034)
    this:ActorDestroy("Q603409Trigger", 6034)
    this:ActorDestroy("Q603412Trigger", 6034)
    this:ActorDestroy("Q603413Trigger", 6034)
    this:ActorDestroy("Q603418Trigger", 6034)
    this:ActorDestroy("Q603422Trigger", 6034)
    this:ActorDestroy("Q603423Trigger", 6034)
end

function Quest6034:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 603416 then
        this:CancelStoryByQuest(110603401)
    end

    if arg1 == 603408 then
        actorUtils.FinishQuestWithParam({false}, {603424})
    end

    if arg1 == 603405 then
        actorUtils.FinishQuestWithParam({false}, {603425})
    end
end

function Quest6034:ActorDestroy(arg1, arg2)
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

function Quest6034:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6034:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest6034:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6034:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6034:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6034:OnSubStart603402(arg1)
    print("OnSubStart603402")
    this:CreateQuestNpc(arg1, npcs.Npc16714.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16566.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16567.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16568.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1085.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1085.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16694_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16694_1.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc20846.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1050.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1058.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc13992.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc13992.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc13993.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc13993.alias, 6034):DisableInteeHeadCtrl(true)
end

function Quest6034:OnSubFinish603402(arg1)
    print("OnSubFinish603402")
    this:NpcDestroyImmediately(20343, npcs.Npc16714.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1085.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1316.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16694_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc20846.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1050.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1058.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc13992.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc13993.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6034:OnSubStart603424(arg1)
    print("OnSubStart603424")
end

function Quest6034:OnSubFinish603424(arg1)
    print("OnSubFinish603424")
end

function Quest6034:OnSubStart603415(arg1)
    print("OnSubStart603415")
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6034):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6034:OnSubFinish603415(arg1)
    print("OnSubFinish603415")
end

function Quest6034:OnSubStart603401(arg1)
    print("OnSubStart603401")
    this:NpcCreateWithNoBlack(npcs.Npc16715.id, 0, 50, 603401, true, 603401)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6034):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6034:OnSubFinish603401(arg1)
    print("OnSubFinish603401")
    this:NpcDestroyImmediately(20343, npcs.Npc16715.alias)
end

function Quest6034:OnSubStart603416(arg1)
    print("OnSubStart603416")
end

function Quest6034:OnSubFinish603416(arg1)
    print("OnSubFinish603416")
end

function Quest6034:OnSubStart603404(arg1)
    print("OnSubStart603404")
    this:NpcCreateWithNoBlack(npcs.Npc16715.id, 0, 50, 603404, true, 603405)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6034):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6034:OnSubFinish603404(arg1)
    print("OnSubFinish603404")
    this:NpcDestroyImmediately(20343, npcs.Npc16715.alias)
end

function Quest6034:OnSubStart603425(arg1)
    print("OnSubStart603425")
end

function Quest6034:OnSubFinish603425(arg1)
    print("OnSubFinish603425")
end

function Quest6034:OnSubStart603421(arg1)
    print("OnSubStart603421")
end

function Quest6034:OnSubFinish603421(arg1)
    print("OnSubFinish603421")
end

function Quest6034:OnSubStart603405(arg1)
    print("OnSubStart603405")
    this:NpcCreateWithNoBlack(npcs.Npc16715.id, 0, 50, 603405, true, 603409)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6034):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest6034:OnSubFinish603405(arg1)
    print("OnSubFinish603405")
    this:NpcDestroyImmediately(20343, npcs.Npc16715.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
end

function Quest6034:OnSubStart603417(arg1)
    print("OnSubStart603417")
    this:CreateQuestNpc(arg1, npcs.Npc16716.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16566.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16566.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1050.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6034):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1053.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16568.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16568.alias, 6034):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16567.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16567.alias, 6034):DisableInteeHeadCtrl(true)
end

function Quest6034:OnSubFinish603417(arg1)
    print("OnSubFinish603417")
    this:NpcDestroyImmediately(20343, npcs.Npc16716.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16566.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1050.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc1053.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16568.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16567.alias)
end

function Quest6034:OnSubStart603403(arg1)
    print("OnSubStart603403")
    this:NpcCreateWithNpcTrigger(npcs.Npc16975.id, 0, 10, 603403)
    actorMgr:CreateActorWithPos("Q603403Trigger", "Actor/Gadget/Q603403Trigger", 70900002, 0, points._Q603403TriggerPoint_.pos, points._Q603403TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603403(arg1)
    print("OnSubFinish603403")
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:ActorDestroy("Q603403Trigger", 6034)
end

function Quest6034:OnSubStart603418(arg1)
    print("OnSubStart603418")
    this:DeployRangeStoryByQuest(110603401, 20343, {x = -2346.124, y = 173.896, z = 5325.867}, 500, 500)
    actorMgr:CreateActorWithPos("Q603418Trigger", "Actor/Gadget/Q603418Trigger", 70900002, 0, points._Q603418TriggerPoint_.pos, points._Q603418TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603418(arg1)
    print("OnSubFinish603418")
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:CancelRangeStoryByQuest(110603401)
    this:ActorDestroy("Q603418Trigger", 6034)
end

function Quest6034:OnSubStart603419(arg1)
    print("OnSubStart603419")
    this:CreateQuestNpc(arg1, npcs.Npc16767_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16723.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16766_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16768_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16765_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16765_1.alias, 6034):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16770_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16770_1.alias, 6034):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16769_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17028.id, 0, false, 0)
end

function Quest6034:OnSubFinish603419(arg1)
    print("OnSubFinish603419")
    this:NpcDestroyImmediately(20343, npcs.Npc16767_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16723.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16766_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16768_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16765_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16770_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc16769_1.alias)
    this:NpcDestroyImmediately(20343, npcs.Npc17028.alias)
end

function Quest6034:OnSubStart603422(arg1)
    print("OnSubStart603422")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc13993.id, 0, 603422, 50, true)
    actorMgr:CreateActorWithPos("Q603422Trigger", "Actor/Gadget/Q603422Trigger", 70900002, 0, points._Q603422TriggerPoint_.pos, points._Q603422TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603422(arg1)
    print("OnSubFinish603422")
    this:NpcDestroyImmediately(20343, npcs.Npc13993.alias)
    this:ActorDestroy("Q603422Trigger", 6034)
end

function Quest6034:OnSubStart603406(arg1)
    print("OnSubStart603406")
    this:NpcCreateWithNoBlackData(603406, 1, npcs.Npc1058.id, 0, 15, 603406, datas.NoBlackData)
    actorMgr:CreateActorWithPos("Q603406Trigger", "Actor/Gadget/Q603406Trigger", 70900002, 0, points._Q603406TriggerPoint_.pos, points._Q603406TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603406(arg1)
    print("OnSubFinish603406")
    this:NpcDestroyImmediately(20343, npcs.Npc1058.alias)
    this:ActorDestroy("Q603406Trigger", 6034)
end

function Quest6034:OnSubStart603410(arg1)
    print("OnSubStart603410")
    this:CreateQuestNpc(arg1, npcs.Npc1053.id, 0, false, 0)
    actorUtils.FinishQuestWithParam({false}, {603410})
end

function Quest6034:OnSubFinish603410(arg1)
    print("OnSubFinish603410")
end

function Quest6034:OnSubStart603411(arg1)
    print("OnSubStart603411")
end

function Quest6034:OnSubFinish603411(arg1)
    print("OnSubFinish603411")
    this:QuestNarratorTask(datas.NarratorWithId_603402, function(arg1)
        this:RequestInteraction(npcs.Npc16722.alias, "", true)
    end)
end

function Quest6034:OnSubStart603408(arg1)
    print("OnSubStart603408")
    this:NpcCreateWithNpcTrigger(npcs.Npc16722.id, 0, 10, 603408)
end

function Quest6034:OnSubFinish603408(arg1)
    print("OnSubFinish603408")
    this:NpcDestroyImmediately(20343, npcs.Npc16722.alias)
    this:ClearNarratorTask()
end

function Quest6034:OnSubStart603409(arg1)
    print("OnSubStart603409")
    this:NpcCreateWithNoBlack(npcs.Npc16975.id, 0, 8, 603409, true, 603402)
    actorMgr:CreateActorWithPos("Q603409Trigger", "Actor/Gadget/Q603409Trigger", 70900002, 0, points._Q603409TriggerPoint_.pos, points._Q603409TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603409(arg1)
    print("OnSubFinish603409")
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:ClearNarratorTask()
    this:ActorDestroy("Q603409Trigger", 6034)
end

function Quest6034:OnSubStart603420(arg1)
    print("OnSubStart603420")
    this:NpcCreateWithNoBlack(npcs.Npc1065.id, 0, 15, 603420, true, 603404)
end

function Quest6034:OnSubFinish603420(arg1)
    print("OnSubFinish603420")
    this:NpcDestroyImmediately(20343, npcs.Npc1065.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Q603420, nil, nil, nil)
end

function Quest6034:OnSubStart603407(arg1)
    print("OnSubStart603407")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1056.id, 0, 603407, 50, true)
end

function Quest6034:OnSubFinish603407(arg1)
    print("OnSubFinish603407")
end

function Quest6034:OnSubStart603423(arg1)
    print("OnSubStart603423")
    this:NpcCreateWithNpcTrigger(npcs.Npc16975.id, 0, 50, 603423)
    actorMgr:CreateActorWithPos("Q603423Trigger", "Actor/Gadget/Q603423Trigger", 70900002, 0, points._Q603423TriggerPoint_.pos, points._Q603423TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603423(arg1)
    print("OnSubFinish603423")
    this:NpcDestroyImmediately(20343, npcs.Npc16975.alias)
    this:ActorDestroy("Q603423Trigger", 6034)
end

function Quest6034:OnSubStart603412(arg1)
    print("OnSubStart603412")
    this:NpcCreateWithNpcTrigger(npcs.Npc1056.id, 0, 10, 603412)
    actorMgr:CreateActorWithPos("Q603412Trigger", "Actor/Gadget/Q603412Trigger", 70900002, 0, points._Q603412TriggerPoint_.pos, points._Q603412TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603412(arg1)
    print("OnSubFinish603412")
    this:ActorDestroy("Q603412Trigger", 6034)
end

function Quest6034:OnSubStart603413(arg1)
    print("OnSubStart603413")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1056.id, 0, 603413, 50, true)
    actorMgr:CreateActorWithPos("Q603413Trigger", "Actor/Gadget/Q603413Trigger", 70900002, 0, points._Q603413TriggerPoint_.pos, points._Q603413TriggerPoint_.rot, true, false, 20343, nil, 0, 6034)
end

function Quest6034:OnSubFinish603413(arg1)
    print("OnSubFinish603413")
    this:NpcDestroyImmediately(20343, npcs.Npc1056.alias)
    this:ActorDestroy("Q603413Trigger", 6034)
end

function Quest6034:OnSubStart603414(arg1)
    print("OnSubStart603414")
    this:CreateQuestNpc(arg1, npcs.Npc16694.id, 0, false, 0)
end

function Quest6034:OnSubFinish603414(arg1)
    print("OnSubFinish603414")
    this:NpcDestroyImmediately(20343, npcs.Npc16694.alias)
end

return Quest6034
