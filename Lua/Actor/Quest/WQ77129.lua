require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77129 = class("Quest77129", QuestActorProxy)
Quest77129.defaultAlias = "Quest77129"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77129:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77129:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7712912"] = self.OnSubStart7712912,
        ["7712901"] = self.OnSubStart7712901,
        ["7712902"] = self.OnSubStart7712902,
        ["7712903"] = self.OnSubStart7712903,
        ["7712911"] = self.OnSubStart7712911,
        ["7712913"] = self.OnSubStart7712913,
        ["7712914"] = self.OnSubStart7712914,
        ["7712915"] = self.OnSubStart7712915,
        ["7712918"] = self.OnSubStart7712918,
        ["7712904"] = self.OnSubStart7712904,
        ["7712905"] = self.OnSubStart7712905,
        ["7712910"] = self.OnSubStart7712910,
        ["7712908"] = self.OnSubStart7712908,
        ["7712909"] = self.OnSubStart7712909,
        ["7712916"] = self.OnSubStart7712916,
        ["7712917"] = self.OnSubStart7712917,
        ["7712906"] = self.OnSubStart7712906,
        ["7712907"] = self.OnSubStart7712907
    }
end

function Quest77129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7712912"] = self.OnSubFinish7712912,
        ["7712901"] = self.OnSubFinish7712901,
        ["7712902"] = self.OnSubFinish7712902,
        ["7712903"] = self.OnSubFinish7712903,
        ["7712911"] = self.OnSubFinish7712911,
        ["7712913"] = self.OnSubFinish7712913,
        ["7712914"] = self.OnSubFinish7712914,
        ["7712915"] = self.OnSubFinish7712915,
        ["7712918"] = self.OnSubFinish7712918,
        ["7712904"] = self.OnSubFinish7712904,
        ["7712905"] = self.OnSubFinish7712905,
        ["7712910"] = self.OnSubFinish7712910,
        ["7712908"] = self.OnSubFinish7712908,
        ["7712909"] = self.OnSubFinish7712909,
        ["7712916"] = self.OnSubFinish7712916,
        ["7712917"] = self.OnSubFinish7712917,
        ["7712906"] = self.OnSubFinish7712906,
        ["7712907"] = self.OnSubFinish7712907
    }
end

function Quest77129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7712901"] = self.OnSubFailed7712901,
        ["7712902"] = self.OnSubFailed7712902,
        ["7712903"] = self.OnSubFailed7712903
    }
end

function Quest77129:Start()
    print("Start")
end

function Quest77129:OnDestroy()
    print("OnDestroy")
end

function Quest77129:OnMainFinished(arg1)
    print("OnMainFinished")
    this:ActorDestroy("Q7712901Trigger", nil)
    this:ActorDestroy("Q7712902Trigger", nil)
end

function Quest77129:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77129:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77129:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7712901Trigger", 0)
    this:ActorDestroy("Q7712902Trigger", 0)
    this:ActorDestroy("Q7712906Trigger", 0)
end

function Quest77129:ActorDestroy(arg1, arg2)
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

function Quest77129:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77129:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77129:OnSubStart7712912(arg1)
    print("OnSubStart7712912")
    actorUtils.FinishQuestWithParam({false}, {7712912})
end

function Quest77129:OnSubFinish7712912(arg1)
    print("OnSubFinish7712912")
end

function Quest77129:OnSubStart7712901(arg1)
    print("OnSubStart7712901")
    actorMgr:CreateActorWithPos("Q7712901Trigger", "Actor/Gadget/Q7712901Trigger", 70900002, 0, points._Q7712901TriggerPoint_.pos, points._Q7712901TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77129:OnSubFinish7712901(arg1)
    print("OnSubFinish7712901")
end

function Quest77129:OnSubFailed7712901(arg1)
    print("OnSubFailed7712901")
    this:RecycleAllRes()
end

function Quest77129:OnSubStart7712902(arg1)
    print("OnSubStart7712902")
    actorMgr:CreateActorWithPos("Q7712902Trigger", "Actor/Gadget/Q7712902Trigger", 70900002, 0, points._Q7712902TriggerPoint_.pos, points._Q7712902TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77129:OnSubFinish7712902(arg1)
    print("OnSubFinish7712902")
    this:SetNavigationByMainId(77129, true)
end

function Quest77129:OnSubFailed7712902(arg1)
    print("OnSubFailed7712902")
    this:RecycleAllRes()
end

function Quest77129:OnSubStart7712903(arg1)
    print("OnSubStart7712903")
end

function Quest77129:OnSubFinish7712903(arg1)
    print("OnSubFinish7712903")
end

function Quest77129:OnSubFailed7712903(arg1)
    print("OnSubFailed7712903")
    this:RecycleAllRes()
end

function Quest77129:OnSubStart7712911(arg1)
    print("OnSubStart7712911")
    this:DeployRangeStoryByQuest(147712900, 3, {x = 9040, y = 215, z = 6774}, 80, 100)
end

function Quest77129:OnSubFinish7712911(arg1)
    print("OnSubFinish7712911")
    this:CancelRangeStoryByQuest(147712900)
end

function Quest77129:OnSubStart7712913(arg1)
    print("OnSubStart7712913")
    this:DeployRangeStoryByQuest(147712901, 3, {x = 8831, y = 224, z = 6752}, 80, 100)
end

function Quest77129:OnSubFinish7712913(arg1)
    print("OnSubFinish7712913")
    this:CancelRangeStoryByQuest(147712901)
end

function Quest77129:OnSubStart7712914(arg1)
    print("OnSubStart7712914")
    this:DeployRangeStoryByQuest(147712902, 3, {x = 9026, y = 201, z = 6634}, 80, 100)
end

function Quest77129:OnSubFinish7712914(arg1)
    print("OnSubFinish7712914")
    this:CancelRangeStoryByQuest(147712902)
end

function Quest77129:OnSubStart7712915(arg1)
    print("OnSubStart7712915")
    this:DeployRangeStoryByQuest(147712903, 3, {x = 8827, y = 221, z = 6589}, 80, 100)
end

function Quest77129:OnSubFinish7712915(arg1)
    print("OnSubFinish7712915")
    this:CancelRangeStoryByQuest(147712903)
end

function Quest77129:OnSubStart7712918(arg1)
    print("OnSubStart7712918")
end

function Quest77129:OnSubFinish7712918(arg1)
    print("OnSubFinish7712918")
end

function Quest77129:OnSubStart7712904(arg1)
    print("OnSubStart7712904")
end

function Quest77129:OnSubFinish7712904(arg1)
    print("OnSubFinish7712904")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77129:OnSubStart7712905(arg1)
    print("OnSubStart7712905")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc22418.id, 0, 7712905, 20, true)
end

function Quest77129:OnSubFinish7712905(arg1)
    print("OnSubFinish7712905")
    this:NpcDestroyImmediately(3, npcs.Npc22418.alias)
end

function Quest77129:OnSubStart7712910(arg1)
    print("OnSubStart7712910")
end

function Quest77129:OnSubFinish7712910(arg1)
    print("OnSubFinish7712910")
end

function Quest77129:OnSubStart7712908(arg1)
    print("OnSubStart7712908")
end

function Quest77129:OnSubFinish7712908(arg1)
    print("OnSubFinish7712908")
end

function Quest77129:OnSubStart7712909(arg1)
    print("OnSubStart7712909")
end

function Quest77129:OnSubFinish7712909(arg1)
    print("OnSubFinish7712909")
end

function Quest77129:OnSubStart7712916(arg1)
    print("OnSubStart7712916")
    this:CreateQuestNpc(arg1, npcs.Npc22613.id, 0, false, 0)
end

function Quest77129:OnSubFinish7712916(arg1)
    print("OnSubFinish7712916")
    this:NpcDestroyImmediately(3, npcs.Npc22613.alias)
end

function Quest77129:OnSubStart7712917(arg1)
    print("OnSubStart7712917")
    this:CreateQuestNpc(arg1, npcs.Npc22615.id, 0, false, 0)
end

function Quest77129:OnSubFinish7712917(arg1)
    print("OnSubFinish7712917")
    this:NpcDestroyImmediately(3, npcs.Npc22615.alias)
end

function Quest77129:OnSubStart7712906(arg1)
    print("OnSubStart7712906")
    actorMgr:CreateActorWithPos("Q7712906Trigger", "Actor/Gadget/Q7712906Trigger", 70900002, 0, points._Q7712906TriggerPoint_.pos, points._Q7712906TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77129:OnSubFinish7712906(arg1)
    print("OnSubFinish7712906")
end

function Quest77129:OnSubStart7712907(arg1)
    print("OnSubStart7712907")
end

function Quest77129:OnSubFinish7712907(arg1)
    print("OnSubFinish7712907")
end

return Quest77129
