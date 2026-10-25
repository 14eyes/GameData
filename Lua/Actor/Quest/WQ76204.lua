require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76204 = class("Quest76204", QuestActorProxy)
Quest76204.defaultAlias = "Quest76204"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76204:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76204:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620406"] = self.OnSubStart7620406,
        ["7620401"] = self.OnSubStart7620401,
        ["7620402"] = self.OnSubStart7620402,
        ["7620409"] = self.OnSubStart7620409,
        ["7620412"] = self.OnSubStart7620412,
        ["7620404"] = self.OnSubStart7620404,
        ["7620410"] = self.OnSubStart7620410,
        ["7620407"] = self.OnSubStart7620407,
        ["7620411"] = self.OnSubStart7620411,
        ["7620408"] = self.OnSubStart7620408,
        ["7620405"] = self.OnSubStart7620405,
        ["7620403"] = self.OnSubStart7620403
    }
end

function Quest76204:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620406"] = self.OnSubFinish7620406,
        ["7620401"] = self.OnSubFinish7620401,
        ["7620402"] = self.OnSubFinish7620402,
        ["7620409"] = self.OnSubFinish7620409,
        ["7620412"] = self.OnSubFinish7620412,
        ["7620404"] = self.OnSubFinish7620404,
        ["7620410"] = self.OnSubFinish7620410,
        ["7620407"] = self.OnSubFinish7620407,
        ["7620411"] = self.OnSubFinish7620411,
        ["7620408"] = self.OnSubFinish7620408,
        ["7620405"] = self.OnSubFinish7620405,
        ["7620403"] = self.OnSubFinish7620403
    }
end

function Quest76204:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7620412"] = self.OnSubFailed7620412,
        ["7620404"] = self.OnSubFailed7620404,
        ["7620410"] = self.OnSubFailed7620410,
        ["7620407"] = self.OnSubFailed7620407,
        ["7620411"] = self.OnSubFailed7620411,
        ["7620408"] = self.OnSubFailed7620408
    }
end

function Quest76204:Start()
    print("Start")
end

function Quest76204:OnDestroy()
    print("OnDestroy")
end

function Quest76204:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76204:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76204:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76204:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7620401Trigger", nil)
    this:ActorDestroy("Q7620402Trigger", 76204)
    this:ActorDestroy("Q7620406Trigger", 76204)
    this:ActorDestroy("Q7620409Trigger", 76204)
    this:ActorDestroy("Q7620410Trigger", 76204)
    this:ActorDestroy("Q7620411Trigger", 76204)
end

function Quest76204:ActorDestroy(arg1, arg2)
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

function Quest76204:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76204:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76204:OnSubStart7620406(arg1)
    print("OnSubStart7620406")
    actorMgr:CreateActorWithPos("Q7620406Trigger", "Actor/Gadget/Q7620406Trigger", 70900002, 0, points._Q7620406TriggerPoint_.pos, points._Q7620406TriggerPoint_.rot, true, false, 3, nil, 0, 76204)
end

function Quest76204:OnSubFinish7620406(arg1)
    print("OnSubFinish7620406")
    this:ActorDestroy("Q7620406Trigger", 76204)
end

function Quest76204:OnSubStart7620401(arg1)
    print("OnSubStart7620401")
    actorMgr:CreateActorWithPos("Q7620401Trigger", "Actor/Gadget/Q7620401Trigger", 70900002, 0, points._Q7620401TriggerPoint_.pos, points._Q7620401TriggerPoint_.rot, true, false, 1156, nil, 0, 0)
end

function Quest76204:OnSubFinish7620401(arg1)
    print("OnSubFinish7620401")
    this:QuestNarratorTask(datas.NarratorWithId7620401, nil)
end

function Quest76204:OnSubStart7620402(arg1)
    print("OnSubStart7620402")
    actorMgr:CreateActorWithPos("Q7620402Trigger", "Actor/Gadget/Q7620402Trigger", 70900002, 0, points._Q7620402TriggerPoint_.pos, points._Q7620402TriggerPoint_.rot, true, false, 1156, nil, 0, 76204)
end

function Quest76204:OnSubFinish7620402(arg1)
    print("OnSubFinish7620402")
    this:NpcDestroyImmediately(1156, npcs.Npc16600.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(2688, nil)
    end, nil)
end

function Quest76204:OnSubStart7620409(arg1)
    print("OnSubStart7620409")
    actorMgr:CreateActorWithPos("Q7620409Trigger", "Actor/Gadget/Q7620409Trigger", 70900002, 0, points._Q7620409TriggerPoint_.pos, points._Q7620409TriggerPoint_.rot, true, false, 1156, nil, 0, 76204)
end

function Quest76204:OnSubFinish7620409(arg1)
    print("OnSubFinish7620409")
end

function Quest76204:OnSubStart7620412(arg1)
    print("OnSubStart7620412")
end

function Quest76204:OnSubFinish7620412(arg1)
    print("OnSubFinish7620412")
end

function Quest76204:OnSubFailed7620412(arg1)
    print("OnSubFailed7620412")
    this:RecycleAllRes()
end

function Quest76204:OnSubStart7620404(arg1)
    print("OnSubStart7620404")
end

function Quest76204:OnSubFinish7620404(arg1)
    print("OnSubFinish7620404")
    this:PlayIndexedEffect("1", "Eff_SceneObj_Cracker_01", {x = 36.399, y = 10.993, z = -54.192}, nil, nil)
    this:PlayIndexedEffect("2", "Eff_SceneObj_Cracker_02", {x = 37.668, y = 10.235, z = -56.972}, nil, nil)
    this:PlayIndexedEffect("3", "Eff_SceneObj_Cracker_03", {x = 37.764, y = 11.398, z = -55.472}, nil, nil)
end

function Quest76204:OnSubFailed7620404(arg1)
    print("OnSubFailed7620404")
    this:RecycleAllRes()
end

function Quest76204:OnSubStart7620410(arg1)
    print("OnSubStart7620410")
    actorMgr:CreateActorWithPos("Q7620410Trigger", "Actor/Gadget/Q7620410Trigger", 70900002, 0, points._Q7620410TriggerPoint_.pos, points._Q7620410TriggerPoint_.rot, true, false, 1156, nil, 0, 76204)
end

function Quest76204:OnSubFinish7620410(arg1)
    print("OnSubFinish7620410")
end

function Quest76204:OnSubFailed7620410(arg1)
    print("OnSubFailed7620410")
    this:RecycleAllRes()
end

function Quest76204:OnSubStart7620407(arg1)
    print("OnSubStart7620407")
end

function Quest76204:OnSubFinish7620407(arg1)
    print("OnSubFinish7620407")
    this:PlayIndexedEffect("1", "Eff_SceneObj_Cracker_01", {x = 24.89, y = 9.558, z = -57.424}, nil, nil)
    this:PlayIndexedEffect("2", "Eff_SceneObj_Cracker_02", {x = 20.247, y = 11.989, z = -55.389}, nil, nil)
    this:PlayIndexedEffect("3", "Eff_SceneObj_Cracker_03", {x = 25.407, y = 9.086, z = -53.599}, nil, nil)
end

function Quest76204:OnSubFailed7620407(arg1)
    print("OnSubFailed7620407")
    this:RecycleAllRes()
end

function Quest76204:OnSubStart7620411(arg1)
    print("OnSubStart7620411")
    actorMgr:CreateActorWithPos("Q7620411Trigger", "Actor/Gadget/Q7620411Trigger", 70900002, 0, points._Q7620411TriggerPoint_.pos, points._Q7620411TriggerPoint_.rot, true, false, 1156, nil, 0, 76204)
end

function Quest76204:OnSubFinish7620411(arg1)
    print("OnSubFinish7620411")
end

function Quest76204:OnSubFailed7620411(arg1)
    print("OnSubFailed7620411")
    this:RecycleAllRes()
end

function Quest76204:OnSubStart7620408(arg1)
    print("OnSubStart7620408")
end

function Quest76204:OnSubFinish7620408(arg1)
    print("OnSubFinish7620408")
    this:PlayIndexedEffect("1", "Eff_SceneObj_Cracker_01", {x = 34.789, y = 11.873, z = -66.512}, nil, nil)
    this:PlayIndexedEffect("2", "Eff_SceneObj_Cracker_02", {x = 31.947, y = 14.993, z = -69.474}, nil, nil)
    this:PlayIndexedEffect("3", "Eff_SceneObj_Cracker_03", {x = 29.557, y = 12.755, z = -61.599}, nil, nil)
end

function Quest76204:OnSubFailed7620408(arg1)
    print("OnSubFailed7620408")
    this:RecycleAllRes()
end

function Quest76204:OnSubStart7620405(arg1)
    print("OnSubStart7620405")
end

function Quest76204:OnSubFinish7620405(arg1)
    print("OnSubFinish7620405")
end

function Quest76204:OnSubStart7620403(arg1)
    print("OnSubStart7620403")
    this:NpcCreateWithNpcTrigger(npcs.Npc16600.id, 0, 15, 7620403)
end

function Quest76204:OnSubFinish7620403(arg1)
    print("OnSubFinish7620403")
    this:NpcDestroyImmediately(1156, npcs.Npc16600.alias)
end

return Quest76204
