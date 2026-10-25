require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77664 = class("Quest77664", QuestActorProxy)
Quest77664.defaultAlias = "Quest77664"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77664:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77664:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766401"] = self.OnSubStart7766401,
        ["7766403"] = self.OnSubStart7766403,
        ["7766404"] = self.OnSubStart7766404,
        ["7766402"] = self.OnSubStart7766402
    }
end

function Quest77664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766401"] = self.OnSubFinish7766401,
        ["7766403"] = self.OnSubFinish7766403,
        ["7766404"] = self.OnSubFinish7766404,
        ["7766402"] = self.OnSubFinish7766402
    }
end

function Quest77664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7766403"] = self.OnSubFailed7766403}
end

function Quest77664:Start()
    print("Start")
end

function Quest77664:OnDestroy()
    print("OnDestroy")
end

function Quest77664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77664:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7766402N1339Trigger")
    this:ActorDestroy("Q77664Trigger", 77664)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1339.alias, 1162)
    this:RecycleAllRes()
end

function Quest77664:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q77664Trigger", 77664)
end

function Quest77664:ActorDestroy(arg1, arg2)
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

function Quest77664:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77664:OnSubStart7766401(arg1)
    print("OnSubStart7766401")
    this:QuestNarratorTask(datas.NarratorWithId_7766401, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7766401})
    end)
end

function Quest77664:OnSubFinish7766401(arg1)
    print("OnSubFinish7766401")
end

function Quest77664:OnSubStart7766403(arg1)
    print("OnSubStart7766403")
end

function Quest77664:OnSubFinish7766403(arg1)
    print("OnSubFinish7766403")
    this:QuestNarratorTask(datas.NarratorWithId_7766402, nil)
end

function Quest77664:OnSubFailed7766403(arg1)
    print("OnSubFailed7766403")
    this:RecycleAllRes()
end

function Quest77664:OnSubStart7766404(arg1)
    print("OnSubStart7766404")
end

function Quest77664:OnSubFinish7766404(arg1)
    print("OnSubFinish7766404")
    this:QuestNarratorTask(datas.NarratorWithId_7766402, nil)
end

function Quest77664:OnSubStart7766402(arg1)
    print("OnSubStart7766402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1339.id, 0, 7766402, 100, true)
end

function Quest77664:OnSubFinish7766402(arg1)
    print("OnSubFinish7766402")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1339_1.id, 5, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1341.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc7808.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1338.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:ClearNarratorTask()
        actorUtils.ShowContext("ReputationSnezhnayaPage", 0, "0;1;1;0;1")
        actorMgr:CreateActorWithPos("Q77664Trigger", "Actor/Gadget/Q77664Trigger", 70900002, 0, points._Q77664TriggerPoint_.pos, points._Q77664TriggerPoint_.rot, true, false, 1162, nil, 0, 77664)
        this:GetQuestNpcActor(npcs.Npc1339_1.alias, 77664):DoFreeStyle(8010, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc7808.alias, 77664):DoFreeStyle(1201, true, nil, true, true, false, false)
    end)
end

return Quest77664
