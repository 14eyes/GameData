require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77154 = class("Quest77154", QuestActorProxy)
Quest77154.defaultAlias = "Quest77154"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77154:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77154:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715401"] = self.OnSubStart7715401,
        ["7715405"] = self.OnSubStart7715405,
        ["7715402"] = self.OnSubStart7715402,
        ["7715403"] = self.OnSubStart7715403,
        ["7715404"] = self.OnSubStart7715404,
        ["7715406"] = self.OnSubStart7715406
    }
end

function Quest77154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715401"] = self.OnSubFinish7715401,
        ["7715405"] = self.OnSubFinish7715405,
        ["7715402"] = self.OnSubFinish7715402,
        ["7715403"] = self.OnSubFinish7715403,
        ["7715404"] = self.OnSubFinish7715404,
        ["7715406"] = self.OnSubFinish7715406
    }
end

function Quest77154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7715405"] = self.OnSubFailed7715405, ["7715402"] = self.OnSubFailed7715402}
end

function Quest77154:Start()
    print("Start")
end

function Quest77154:OnDestroy()
    print("OnDestroy")
end

function Quest77154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77154:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77154:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7715403Trigger", 77154)
end

function Quest77154:ActorDestroy(arg1, arg2)
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

function Quest77154:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77154:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77154:OnSubStart7715401(arg1)
    print("OnSubStart7715401")
    this:CreateQuestNpc(arg1, npcs.Npc22489.id, 0, false, 0)
end

function Quest77154:OnSubFinish7715401(arg1)
    print("OnSubFinish7715401")
    this:NpcDestroyImmediately(3, npcs.Npc22489.alias)
end

function Quest77154:OnSubStart7715405(arg1)
    print("OnSubStart7715405")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715405, 0, 100, 0.5, npcs.Npc22489.id)
    this:CreateQuestNpc(arg1, npcs.Npc22749_1.id, 0, false, 0)
end

function Quest77154:OnSubFinish7715405(arg1)
    print("OnSubFinish7715405")
    this:NpcDestroyImmediately(3, npcs.Npc22489.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22749_1.alias)
end

function Quest77154:OnSubFailed7715405(arg1)
    print("OnSubFailed7715405")
    this:RecycleAllRes()
end

function Quest77154:OnSubStart7715402(arg1)
    print("OnSubStart7715402")
    this:CreateQuestNpc(arg1, npcs.Npc22489.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22749_1.id, 0, false, 0)
end

function Quest77154:OnSubFinish7715402(arg1)
    print("OnSubFinish7715402")
    this:NpcDestroyImmediately(3, npcs.Npc22489.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22749_1.alias)
end

function Quest77154:OnSubFailed7715402(arg1)
    print("OnSubFailed7715402")
    this:RecycleAllRes()
end

function Quest77154:OnSubStart7715403(arg1)
    print("OnSubStart7715403")
    this:CreateQuestNpc(arg1, npcs.Npc22489.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7715403Trigger", "Actor/Gadget/Q7715403Trigger", 70900002, 0, points._Q7715403TriggerPoint_.pos, points._Q7715403TriggerPoint_.rot, true, false, 3, nil, 0, 77154)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, function(arg1)
        this:AfterMainPageActiveSafeCall(nil, true)
    end, nil, nil)
end

function Quest77154:OnSubFinish7715403(arg1)
    print("OnSubFinish7715403")
    this:NpcDestroyImmediately(3, npcs.Npc22489.alias)
end

function Quest77154:OnSubStart7715404(arg1)
    print("OnSubStart7715404")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715404, 0, 30, 0.5, npcs.Npc22489.id)
    this:CreateQuestNpc(arg1, npcs.Npc22848.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22848.alias, 77154):DoFreeStyle(105, true, nil, true, true, false, false)
end

function Quest77154:OnSubFinish7715404(arg1)
    print("OnSubFinish7715404")
end

function Quest77154:OnSubStart7715406(arg1)
    print("OnSubStart7715406")
    this:CreateQuestNpc(arg1, npcs.Npc22489.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22848.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22848.alias, 77154):DoFreeStyle(105, true, nil, true, true, false, false)
end

function Quest77154:OnSubFinish7715406(arg1)
    print("OnSubFinish7715406")
    this:NpcDestroyImmediately(3, npcs.Npc22489.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22848.alias)
end

return Quest77154
