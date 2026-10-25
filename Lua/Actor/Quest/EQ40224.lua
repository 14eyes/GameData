require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40224 = class("Quest40224", QuestActorProxy)
Quest40224.defaultAlias = "Quest40224"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40224:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40224:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4022401"] = self.OnSubStart4022401,
        ["4022410"] = self.OnSubStart4022410,
        ["4022402"] = self.OnSubStart4022402,
        ["4022403"] = self.OnSubStart4022403,
        ["4022411"] = self.OnSubStart4022411,
        ["4022404"] = self.OnSubStart4022404,
        ["4022412"] = self.OnSubStart4022412,
        ["4022413"] = self.OnSubStart4022413,
        ["4022405"] = self.OnSubStart4022405,
        ["4022406"] = self.OnSubStart4022406,
        ["4022409"] = self.OnSubStart4022409,
        ["4022414"] = self.OnSubStart4022414,
        ["4022407"] = self.OnSubStart4022407,
        ["4022408"] = self.OnSubStart4022408
    }
end

function Quest40224:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4022401"] = self.OnSubFinish4022401,
        ["4022410"] = self.OnSubFinish4022410,
        ["4022402"] = self.OnSubFinish4022402,
        ["4022403"] = self.OnSubFinish4022403,
        ["4022411"] = self.OnSubFinish4022411,
        ["4022404"] = self.OnSubFinish4022404,
        ["4022412"] = self.OnSubFinish4022412,
        ["4022413"] = self.OnSubFinish4022413,
        ["4022405"] = self.OnSubFinish4022405,
        ["4022406"] = self.OnSubFinish4022406,
        ["4022409"] = self.OnSubFinish4022409,
        ["4022414"] = self.OnSubFinish4022414,
        ["4022407"] = self.OnSubFinish4022407,
        ["4022408"] = self.OnSubFinish4022408
    }
end

function Quest40224:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4022403"] = self.OnSubFailed4022403}
end

function Quest40224:Start()
    print("Start")
end

function Quest40224:OnDestroy()
    print("OnDestroy")
end

function Quest40224:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40224:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40224:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10232.alias, 20315)
    this:SafeDestroyQuestNpc(npcs.Npc15953.alias, 20315)
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2148.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1030.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15953.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:ActorDestroy("Q4022402Trigger", nil)
    this:ActorDestroy("Q4022403Trigger", nil)
    this:ActorDestroy("Q4022404Trigger", nil)
    this:DestroyNpcTrigger("Q4022403N10232Trigger")
    this:DestroyNpcTrigger("Q4022404N1012Trigger")
    this:DestroyNpcTrigger("Q4022405N2148Trigger")
    this:DestroyNpcTrigger("Q4022406N1015Trigger")
    this:DestroyNpcTrigger("Q4022407N15953Trigger")
    this:DestroyNpcTrigger("Q4022408N10232Trigger")
    this:DestroyNpcTrigger("Q4022411N15953Trigger")
    this:DestroyNpcTrigger("Q4022410N1083Trigger")
    this:DestroyNpcTrigger("Q4022412N1012Trigger")
    this:DestroyNpcTrigger("Q4022413N15953Trigger")
end

function Quest40224:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4022402Trigger", nil)
    this:ActorDestroy("Q4022403Trigger", nil)
    this:ActorDestroy("Q4022404Trigger", nil)
    this:RemoveIndexedEffect("4022402")
end

function Quest40224:ActorDestroy(arg1, arg2)
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

function Quest40224:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40224:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40224:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40224:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40224:OnSubStart4022401(arg1)
    print("OnSubStart4022401")
end

function Quest40224:OnSubFinish4022401(arg1)
    print("OnSubFinish4022401")
    this:QuestNarratorTask(datas.NarratorWithId4022401, nil)
end

function Quest40224:OnSubStart4022410(arg1)
    print("OnSubStart4022410")
    this:NpcCreateWithNpcTrigger(npcs.Npc1083.id, 0, 10, 4022410)
    this:CreateQuestNpc(arg1, npcs.Npc2093.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Xiao.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1083.alias, 40224):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc2093.alias, 40224):SitOnChair(0, false)
end

function Quest40224:OnSubFinish4022410(arg1)
    print("OnSubFinish4022410")
    this:NpcDestroyImmediately(3, npcs.Npc1083.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2093.alias)
    this:NpcDestroyImmediately(3, npcs.Xiao.alias)
    this:ClearNarratorTask()
end

function Quest40224:OnSubStart4022402(arg1)
    print("OnSubStart4022402")
    actorMgr:CreateActorWithPos("Q4022402Trigger", "Actor/Gadget/Q4022402Trigger", 70900002, 0, points._Q4022402TriggerPoint_.pos, points._Q4022402TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q4022403Trigger", "Actor/Gadget/Q4022403Trigger", 70900002, 0, points._Q4022403TriggerPoint_.pos, points._Q4022403TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q4022404Trigger", "Actor/Gadget/Q4022404Trigger", 70900002, 0, points._Q4022404TriggerPoint_.pos, points._Q4022404TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest40224:OnSubFinish4022402(arg1)
    print("OnSubFinish4022402")
    this:RemoveIndexedEffect("4022402")
    this:ActorDestroy("Q4022402Trigger", nil)
    this:ActorDestroy("Q4022403Trigger", nil)
    this:ActorDestroy("Q4022404Trigger", nil)
end

function Quest40224:OnSubStart4022403(arg1)
    print("OnSubStart4022403")
    this:NpcCreateWithNpcTrigger(npcs.Npc10232.id, 0, 40, 4022403)
    this:CreateQuestNpc(arg1, npcs.Npc15953.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc10232.alias, 40224):SitOnChair(0, true)
end

function Quest40224:OnSubFinish4022403(arg1)
    print("OnSubFinish4022403")
    this:NpcDestroyImmediately(20315, npcs.Npc10232.alias)
    this:NpcDestroyImmediately(20315, npcs.Npc15953.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4022210, nil, nil, nil)
end

function Quest40224:OnSubFailed4022403(arg1)
    print("OnSubFailed4022403")
    this:ClearNpcTriggerByQuestId(4022203)
end

function Quest40224:OnSubStart4022411(arg1)
    print("OnSubStart4022411")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc15953.id, 0, 4022411, 10, true)
end

function Quest40224:OnSubFinish4022411(arg1)
    print("OnSubFinish4022411")
    this:NpcDestroyImmediately(3, npcs.Npc15953.alias)
end

function Quest40224:OnSubStart4022404(arg1)
    print("OnSubStart4022404")
    this:NpcCreateWithNpcTrigger(npcs.Xiangling.id, 0, 10, 4022404)
    this:CreateQuestNpc(arg1, npcs.Npc2045.id, 0, false, 0)
end

function Quest40224:OnSubFinish4022404(arg1)
    print("OnSubFinish4022404")
    this:NpcDestroyImmediately(3, npcs.Xiangling.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2045.alias)
end

function Quest40224:OnSubStart4022412(arg1)
    print("OnSubStart4022412")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022412, 0, 12, 0, npcs.Xiangling.id)
end

function Quest40224:OnSubFinish4022412(arg1)
    print("OnSubFinish4022412")
    this:NpcDestroyImmediately(3, npcs.Xiangling.alias)
end

function Quest40224:OnSubStart4022413(arg1)
    print("OnSubStart4022413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022413, 0, 18, 0, npcs.Npc15953.id)
end

function Quest40224:OnSubFinish4022413(arg1)
    print("OnSubFinish4022413")
    this:NpcDestroyImmediately(3, npcs.Npc15953.alias)
end

function Quest40224:OnSubStart4022405(arg1)
    print("OnSubStart4022405")
    this:NpcCreateWithNpcTrigger(npcs.Npc2148.id, 0, 4, 4022405)
    this:GetQuestNpcActor(npcs.Npc2148.alias, 40224):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1046.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1046.alias, 40224):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40224:OnSubFinish4022405(arg1)
    print("OnSubFinish4022405")
    this:NpcDestroyImmediately(3, npcs.Npc2148.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1046.alias, 3)
end

function Quest40224:OnSubStart4022406(arg1)
    print("OnSubStart4022406")
    this:NpcCreateWithNpcTrigger(npcs.Npc1015.id, 0, 10, 4022406)
    this:CreateQuestNpc(arg1, npcs.Npc1030.id, 0, false, 0)
end

function Quest40224:OnSubFinish4022406(arg1)
    print("OnSubFinish4022406")
    this:NpcDestroyImmediately(3, npcs.Npc15953.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1015.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1030.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData4022210, nil, nil, nil)
end

function Quest40224:OnSubStart4022409(arg1)
    print("OnSubStart4022409")
end

function Quest40224:OnSubFinish4022409(arg1)
    print("OnSubFinish4022409")
end

function Quest40224:OnSubStart4022414(arg1)
    print("OnSubStart4022414")
end

function Quest40224:OnSubFinish4022414(arg1)
    print("OnSubFinish4022414")
end

function Quest40224:OnSubStart4022407(arg1)
    print("OnSubStart4022407")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc15953.id, 0, 4022407, 10, true)
end

function Quest40224:OnSubFinish4022407(arg1)
    print("OnSubFinish4022407")
    this:NpcDestroyImmediately(3, npcs.Npc15953.alias)
end

function Quest40224:OnSubStart4022408(arg1)
    print("OnSubStart4022408")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022408, 0, 10, 0, npcs.Npc10232.id)
end

function Quest40224:OnSubFinish4022408(arg1)
    print("OnSubFinish4022408")
    this:NpcDestroyImmediately(3, npcs.Npc10232.alias)
end

return Quest40224
