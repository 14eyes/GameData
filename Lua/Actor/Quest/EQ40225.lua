require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40225 = class("Quest40225", QuestActorProxy)
Quest40225.defaultAlias = "Quest40225"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40225:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40225:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4022501"] = self.OnSubStart4022501, ["4022502"] = self.OnSubStart4022502}
end

function Quest40225:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4022501"] = self.OnSubFinish4022501, ["4022502"] = self.OnSubFinish4022502}
end

function Quest40225:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40225:Start()
    print("Start")
end

function Quest40225:OnDestroy()
    print("OnDestroy")
end

function Quest40225:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40225:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40225:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4022501N1031Trigger")
    this:DestroyNpcTrigger("Q4022502N16350Trigger")
    this:ActorDestroy("Q4022502Trigger", 40225)
    this:SafeDestroyQuestNpc(npcs.Npc1031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 3)
    this:RecycleAllRes()
end

function Quest40225:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q4022502Trigger", 40225)
end

function Quest40225:ActorDestroy(arg1, arg2)
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

function Quest40225:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40225:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40225:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40225:OnSubStart4022501(arg1)
    print("OnSubStart4022501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022501, 0, 30, 2, npcs.Npc1031.id)
end

function Quest40225:OnSubFinish4022501(arg1)
    print("OnSubFinish4022501")
    this:NpcDestroyImmediately(3, npcs.Npc1031.alias)
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData_BlackScreen, nil, nil, nil)
end

function Quest40225:OnSubStart4022502(arg1)
    print("OnSubStart4022502")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16350.id, 0, 4022502, 20, true)
    actorMgr:CreateActorWithPos("Q4022502Trigger", "Actor/Gadget/Q4022502Trigger", 70900002, 0, points._Q4022502TriggerPoint_.pos, points._Q4022502TriggerPoint_.rot, true, false, 3, nil, 0, 40225)
end

function Quest40225:OnSubFinish4022502(arg1)
    print("OnSubFinish4022502")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2628, nil)
        this:ActorDestroy("Q4022502Trigger", 40225)
    end)
end

return Quest40225
