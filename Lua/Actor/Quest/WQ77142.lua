require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77142 = class("Quest77142", QuestActorProxy)
Quest77142.defaultAlias = "Quest77142"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77142:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7714201"] = self.OnSubStart7714201,
        ["7714202"] = self.OnSubStart7714202,
        ["7714203"] = self.OnSubStart7714203,
        ["7714204"] = self.OnSubStart7714204,
        ["7714205"] = self.OnSubStart7714205,
        ["7714206"] = self.OnSubStart7714206,
        ["7714207"] = self.OnSubStart7714207,
        ["7714208"] = self.OnSubStart7714208,
        ["7714209"] = self.OnSubStart7714209,
        ["7714211"] = self.OnSubStart7714211,
        ["7714216"] = self.OnSubStart7714216,
        ["7714212"] = self.OnSubStart7714212,
        ["7714220"] = self.OnSubStart7714220,
        ["7714213"] = self.OnSubStart7714213,
        ["7714215"] = self.OnSubStart7714215,
        ["7714210"] = self.OnSubStart7714210
    }
end

function Quest77142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7714201"] = self.OnSubFinish7714201,
        ["7714202"] = self.OnSubFinish7714202,
        ["7714203"] = self.OnSubFinish7714203,
        ["7714204"] = self.OnSubFinish7714204,
        ["7714205"] = self.OnSubFinish7714205,
        ["7714206"] = self.OnSubFinish7714206,
        ["7714207"] = self.OnSubFinish7714207,
        ["7714208"] = self.OnSubFinish7714208,
        ["7714209"] = self.OnSubFinish7714209,
        ["7714211"] = self.OnSubFinish7714211,
        ["7714216"] = self.OnSubFinish7714216,
        ["7714212"] = self.OnSubFinish7714212,
        ["7714220"] = self.OnSubFinish7714220,
        ["7714213"] = self.OnSubFinish7714213,
        ["7714215"] = self.OnSubFinish7714215,
        ["7714210"] = self.OnSubFinish7714210
    }
end

function Quest77142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7714203"] = self.OnSubFailed7714203,
        ["7714204"] = self.OnSubFailed7714204,
        ["7714209"] = self.OnSubFailed7714209
    }
end

function Quest77142:Start()
    print("Start")
end

function Quest77142:OnDestroy()
    print("OnDestroy")
end

function Quest77142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77142:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7714201Trigger", nil)
    this:ActorDestroy("Q7714208Trigger", nil)
    this:ActorDestroy("Q7714210Trigger", nil)
    this:ActorDestroy("Q7714205Trigger", nil)
    this:ActorDestroy("Q7714211igger", 77142)
    this:ActorDestroy("Q7714215Tigger", nil)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, false, true)
    this:BanCrowdNpc(3712, 25, datas.List2, false, true)
end

function Quest77142:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestWithParam({false}, {7714203})
    elseif arg1 == 2 then
        actorUtils.FinishQuestWithParam({true}, {7714203})
    elseif arg1 == 3 then
        actorUtils.FinishQuestWithParam({false}, {7714209})
    elseif arg1 == 4 then
        actorUtils.FinishQuestWithParam({true}, {7714209})
    end
end

function Quest77142:ActorDestroy(arg1, arg2)
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

function Quest77142:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77142:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77142:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77142:OnSubStart7714201(arg1)
    print("OnSubStart7714201")
    this:CreateQuestNpc(arg1, npcs.Npc22462.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22464.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22467.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22461.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22466.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714201Trigger", "Actor/Gadget/Q7714201Trigger", 70900002, 0, points._Q7714201TriggerPoint_.pos, points._Q7714201TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, true, true)
end

function Quest77142:OnSubFinish7714201(arg1)
    print("OnSubFinish7714201")
end

function Quest77142:OnSubStart7714202(arg1)
    print("OnSubStart7714202")
    this:NpcCreateWithNpcTrigger(npcs.Npc22462.id, 0, 9, 7714202)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, true, true)
end

function Quest77142:OnSubFinish7714202(arg1)
    print("OnSubFinish7714202")
end

function Quest77142:OnSubStart7714203(arg1)
    print("OnSubStart7714203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714203, 0, 15, 1, npcs.Npc22464.id)
    this:CreateQuestNpc(arg1, npcs.Npc22469.id, 0, false, 0)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, true, true)
end

function Quest77142:OnSubFinish7714203(arg1)
    print("OnSubFinish7714203")
    this:NpcDestroyImmediately(3, npcs.Npc22464.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22467.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22466.alias)
end

function Quest77142:OnSubFailed7714203(arg1)
    print("OnSubFailed7714203")
    this:RecycleAllRes()
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77142:OnSubStart7714204(arg1)
    print("OnSubStart7714204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714204, 0, 18, 0, npcs.Npc7700.id)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, true, true)
end

function Quest77142:OnSubFinish7714204(arg1)
    print("OnSubFinish7714204")
    this:NpcDestroyImmediately(3, npcs.Npc7700.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22461.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22462.alias)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, false, true)
end

function Quest77142:OnSubFailed7714204(arg1)
    print("OnSubFailed7714204")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77142:OnSubStart7714205(arg1)
    print("OnSubStart7714205")
    this:CreateQuestNpc(arg1, npcs.Npc7699.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22463.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22474.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22475.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22556.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22557.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22558.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7698.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714205Trigger", "Actor/Gadget/Q7714205Trigger", 70900002, 0, points._Q7714205TriggerPoint_.pos, points._Q7714205TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77142:OnSubFinish7714205(arg1)
    print("OnSubFinish7714205")
end

function Quest77142:OnSubStart7714206(arg1)
    print("OnSubStart7714206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714206, 0, 8, 0, npcs.Npc7699.id)
    this:CreateQuestNpc(arg1, npcs.Npc7698.id, 0, false, 0)
end

function Quest77142:OnSubFinish7714206(arg1)
    print("OnSubFinish7714206")
end

function Quest77142:OnSubStart7714207(arg1)
    print("OnSubStart7714207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714207, 0, 12, 1, npcs.Npc22460.id)
end

function Quest77142:OnSubFinish7714207(arg1)
    print("OnSubFinish7714207")
    this:NpcDestroyImmediately(3, npcs.Npc22474.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22475.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22463.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22556.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22557.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22558.alias)
end

function Quest77142:OnSubStart7714208(arg1)
    print("OnSubStart7714208")
    this:CallDelayByQuest("", 1, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc22460.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q7714208Trigger", "Actor/Gadget/Q7714208Trigger", 70900002, 0, points._Q7714208TriggerPoint_.pos, points._Q7714208TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    end)
end

function Quest77142:OnSubFinish7714208(arg1)
    print("OnSubFinish7714208")
end

function Quest77142:OnSubStart7714209(arg1)
    print("OnSubStart7714209")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714209, 0, 20, 1, npcs.Npc22460.id)
    this:NotifyTo(npcs.Npc3487.alias, 1, true)
    this:NotifyTo(npcs.Npc7486.alias, 1, true)
    this:BanCrowdNpc(3712, 25, datas.List2, true, true)
end

function Quest77142:OnSubFinish7714209(arg1)
    print("OnSubFinish7714209")
    this:NpcDestroyImmediately(3, npcs.Npc22460.alias)
    this:LightNotifyTo(npcs.Npc3487.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7486.alias, 0, true)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:BanCrowdNpc(3712, 25, datas.List2, false, true)
end

function Quest77142:OnSubFailed7714209(arg1)
    print("OnSubFailed7714209")
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
    this:RecycleAllRes()
end

function Quest77142:OnSubStart7714211(arg1)
    print("OnSubStart7714211")
    this:CreateQuestNpc(arg1, npcs.Npc22467.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22466.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22567.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22569.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714211igger", "Actor/Gadget/Q7714211igger", 70900002, 0, points._Q7714211iggerPoint_.pos, points._Q7714211iggerPoint_.rot, true, false, 3, nil, 0, 77142)
end

function Quest77142:OnSubFinish7714211(arg1)
    print("OnSubFinish7714211")
    this:NpcDestroyImmediately(3, npcs.Npc22466.alias)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc22465.alias, 0)
    this:NpcRunToTaskEasy(questNpcActor, {x = 9375.26, y = 283.468, z = 6818.217}, nil)
    local v = this:GetQuestNpcActor(npcs.Npc22466.alias, 0)
    this:NpcRunToTaskEasy(v, {x = 9377.251, y = 283.468, z = 6819.84}, nil)
end

function Quest77142:OnSubStart7714216(arg1)
    print("OnSubStart7714216")
    this:CreateQuestNpc(arg1, npcs.Npc22467.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22567.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22569.id, 0, false, 0)
end

function Quest77142:OnSubFinish7714216(arg1)
    print("OnSubFinish7714216")
end

function Quest77142:OnSubStart7714212(arg1)
    print("OnSubStart7714212")
    this:CreateQuestNpc(arg1, npcs.Npc22467.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22469.id, 0, false, 0)
end

function Quest77142:OnSubFinish7714212(arg1)
    print("OnSubFinish7714212")
    this:NpcDestroyImmediately(3, npcs.Npc22567.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22569.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77142:OnSubStart7714220(arg1)
    print("OnSubStart7714220")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714220, 0, 20, 0, npcs.Npc22460.id)
end

function Quest77142:OnSubFinish7714220(arg1)
    print("OnSubFinish7714220")
    this:NpcDestroyImmediately(3, npcs.Npc22467.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22460.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77142:OnSubStart7714213(arg1)
    print("OnSubStart7714213")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714213, 0, 20, 1, npcs.Npc7700.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714213, 0, 20, 1, npcs.Npc22469.id)
end

function Quest77142:OnSubFinish7714213(arg1)
    print("OnSubFinish7714213")
    this:NpcDestroyImmediately(3, npcs.Npc7700.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77142:OnSubStart7714215(arg1)
    print("OnSubStart7714215")
    this:CreateQuestNpc(arg1, npcs.Npc7699.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7698.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714215Tigger", "Actor/Gadget/Q7714215Tigger", 70900002, 0, points._Q7714215TiggerPoint_.pos, points._Q7714215TiggerPoint_.rot, true, false, 3, nil, 0, 77142)
end

function Quest77142:OnSubFinish7714215(arg1)
    print("OnSubFinish7714215")
    this:NpcDestroyImmediately(3, npcs.Npc7699.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7698.alias)
    this:ActorDestroy("Q7714215Tigger", nil)
    this:SetNavigationByMainId(77143, true)
end

function Quest77142:OnSubStart7714210(arg1)
    print("OnSubStart7714210")
    actorMgr:CreateActorWithPos("Q7714210Trigger", "Actor/Gadget/Q7714210Trigger", 70900002, 0, points._Q7714210TriggerPoint_.pos, points._Q7714210TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77142:OnSubFinish7714210(arg1)
    print("OnSubFinish7714210")
end

return Quest77142
