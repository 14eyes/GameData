require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77012 = class("Quest77012", QuestActorProxy)
Quest77012.defaultAlias = "Quest77012"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7701201"] = self.OnSubStart7701201,
        ["7701203"] = self.OnSubStart7701203,
        ["7701204"] = self.OnSubStart7701204,
        ["7701202"] = self.OnSubStart7701202
    }
end

function Quest77012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7701201"] = self.OnSubFinish7701201,
        ["7701203"] = self.OnSubFinish7701203,
        ["7701204"] = self.OnSubFinish7701204,
        ["7701202"] = self.OnSubFinish7701202
    }
end

function Quest77012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7701203"] = self.OnSubFailed7701203, ["7701204"] = self.OnSubFailed7701204}
end

function Quest77012:Start()
    print("Start")
end

function Quest77012:OnDestroy()
    print("OnDestroy")
end

function Quest77012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77012:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7701201Trigger", 77012)
end

function Quest77012:ActorDestroy(arg1, arg2)
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

function Quest77012:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77012:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77012:OnSubStart7701201(arg1)
    print("OnSubStart7701201")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7701201, 15, true)
    actorMgr:CreateActorWithPos("Q7701201Trigger", "Actor/Gadget/Q7701201Trigger", 70900002, 0, points._Q7701201TriggerPoint_.pos, points._Q7701201TriggerPoint_.rot, true, false, 1159, nil, 0, 77012)
end

function Quest77012:OnSubFinish7701201(arg1)
    print("OnSubFinish7701201")
    this:NpcDestroyImmediately(3, npcs.Npc17094.alias)
    this:ActorDestroy("Q7701201Trigger", 77012)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_5, nil, nil, nil)
end

function Quest77012:OnSubStart7701203(arg1)
    print("OnSubStart7701203")
end

function Quest77012:OnSubFinish7701203(arg1)
    print("OnSubFinish7701203")
end

function Quest77012:OnSubFailed7701203(arg1)
    print("OnSubFailed7701203")
    this:RecycleAllRes()
end

function Quest77012:OnSubStart7701204(arg1)
    print("OnSubStart7701204")
end

function Quest77012:OnSubFinish7701204(arg1)
    print("OnSubFinish7701204")
end

function Quest77012:OnSubFailed7701204(arg1)
    print("OnSubFailed7701204")
    this:RecycleAllRes()
end

function Quest77012:OnSubStart7701202(arg1)
    print("OnSubStart7701202")
    actorUtils.FinishQuestWithParam({false}, {7701202})
end

function Quest77012:OnSubFinish7701202(arg1)
    print("OnSubFinish7701202")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77012
