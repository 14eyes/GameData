require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40226 = class("Quest40226", QuestActorProxy)
Quest40226.defaultAlias = "Quest40226"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40226:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40226:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4022601"] = self.OnSubStart4022601, ["4022602"] = self.OnSubStart4022602}
end

function Quest40226:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4022601"] = self.OnSubFinish4022601, ["4022602"] = self.OnSubFinish4022602}
end

function Quest40226:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40226:Start()
    print("Start")
end

function Quest40226:OnDestroy()
    print("OnDestroy")
end

function Quest40226:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40226:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40226:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4022601N1075Trigger")
    this:DestroyNpcTrigger("Q4022602N16350Trigger")
    this:ActorDestroy("Q4022602Trigger", 40226)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 1204)
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 3)
    this:RecycleAllRes()
end

function Quest40226:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q4022602Trigger", 40226)
end

function Quest40226:ActorDestroy(arg1, arg2)
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

function Quest40226:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40226:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40226:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40226:OnSubStart4022601(arg1)
    print("OnSubStart4022601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022601, 0, 20, 2, npcs.Npc1075.id)
end

function Quest40226:OnSubFinish4022601(arg1)
    print("OnSubFinish4022601")
    this:NpcDestroyImmediately(1204, npcs.Npc1075.alias)
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData_BlackScreen, nil, nil, nil)
end

function Quest40226:OnSubStart4022602(arg1)
    print("OnSubStart4022602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16350.id, 0, 4022602, 40, true)
    actorMgr:CreateActorWithPos("Q4022602Trigger", "Actor/Gadget/Q4022602Trigger", 70900002, 0, points._Q4022602TriggerPoint_.pos, points._Q4022602TriggerPoint_.rot, true, false, 1204, nil, 0, 40226)
end

function Quest40226:OnSubFinish4022602(arg1)
    print("OnSubFinish4022602")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2572, nil)
        this:ActorDestroy("Q4022602Trigger", 40226)
    end)
end

return Quest40226
