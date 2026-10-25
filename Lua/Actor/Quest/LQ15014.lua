require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15014 = class("Quest15014", QuestActorProxy)
Quest15014.defaultAlias = "Quest15014"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501401"] = self.OnSubStart1501401,
        ["1501403"] = self.OnSubStart1501403,
        ["1501404"] = self.OnSubStart1501404,
        ["1501405"] = self.OnSubStart1501405,
        ["1501402"] = self.OnSubStart1501402,
        ["1501406"] = self.OnSubStart1501406,
        ["1501407"] = self.OnSubStart1501407,
        ["1501408"] = self.OnSubStart1501408,
        ["1501409"] = self.OnSubStart1501409,
        ["1501410"] = self.OnSubStart1501410
    }
end

function Quest15014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501401"] = self.OnSubFinish1501401,
        ["1501403"] = self.OnSubFinish1501403,
        ["1501404"] = self.OnSubFinish1501404,
        ["1501405"] = self.OnSubFinish1501405,
        ["1501402"] = self.OnSubFinish1501402,
        ["1501406"] = self.OnSubFinish1501406,
        ["1501407"] = self.OnSubFinish1501407,
        ["1501408"] = self.OnSubFinish1501408,
        ["1501409"] = self.OnSubFinish1501409,
        ["1501410"] = self.OnSubFinish1501410
    }
end

function Quest15014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15014:Start()
    print("Start")
end

function Quest15014:OnDestroy()
    print("OnDestroy")
end

function Quest15014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1501402 then
        actorUtils.FinishQuestID(false, 1501402)
    elseif arg1 == 1501403 then
        this:ActorDestroy("tigger1501402")
    end
end

function Quest15014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15014:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15014:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15014:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15014:OnSubStart1501401(arg1)
    print("OnSubStart1501401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501401, 0, 5, 3, npcs.Npc1095.id)
    this:ActionSafeCall(function(arg1)
        if this:GetQuestVar(1501401, 0) == 0 then
            this:QuestNarratorTask(datas.NarratorWithId_1501401, function(arg1)
                this:SetQuestVarByMainId(0, 1)
            end)
        end
    end)
end

function Quest15014:OnSubFinish1501401(arg1)
    print("OnSubFinish1501401")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest15014:OnSubStart1501403(arg1)
    print("OnSubStart1501403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501403, 0, 5, 3, npcs.Npc1095.id)
    actorMgr:CreateActorWithPos("tigger1501402", "Actor/Gadget/tigger1501402", 70900002, 0, points._tigger1501402Point_.pos, points._tigger1501402Point_.rot, true, false, 3)
end

function Quest15014:OnSubFinish1501403(arg1)
    print("OnSubFinish1501403")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:ActorDestroy("tigger1501402")
    this:NatsaurusVehicleOff()
end

function Quest15014:OnSubStart1501404(arg1)
    print("OnSubStart1501404")
end

function Quest15014:OnSubFinish1501404(arg1)
    print("OnSubFinish1501404")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest15014:OnSubStart1501405(arg1)
    print("OnSubStart1501405")
    this:NpcCreateWithNpcTrigger(npcs.Npc1095.id, 0, 20, 1501405)
end

function Quest15014:OnSubFinish1501405(arg1)
    print("OnSubFinish1501405")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest15014:OnSubStart1501402(arg1)
    print("OnSubStart1501402")
end

function Quest15014:OnSubFinish1501402(arg1)
    print("OnSubFinish1501402")
end

function Quest15014:OnSubStart1501406(arg1)
    print("OnSubStart1501406")
    this:NpcCreateWithNpcTrigger(npcs.Npc14310.id, 0, 5, 1501406)
    this:GetQuestNpcActor(npcs.Npc14310.alias, 15014):DoFreeStyle(1320, true, nil, true, true, false, false)
end

function Quest15014:OnSubFinish1501406(arg1)
    print("OnSubFinish1501406")
    this:SafeDestroyQuestNpc(npcs.Npc14310.alias, 1100)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1501406, nil)
    end)
end

function Quest15014:OnSubStart1501407(arg1)
    print("OnSubStart1501407")
    this:NpcCreateWithNpcTrigger(npcs.Npc6093.id, 0, 5, 1501407)
    this:GetQuestNpcActor(npcs.Npc6093.alias, 15014):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6087.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
end

function Quest15014:OnSubFinish1501407(arg1)
    print("OnSubFinish1501407")
    this:SafeDestroyQuestNpc(npcs.Npc6093.alias, 3)
end

function Quest15014:OnSubStart1501408(arg1)
    print("OnSubStart1501408")
    this:NpcCreateWithNpcTrigger(npcs.Npc6095.id, 0, 10, 1501408)
    this:GetQuestNpcActor(npcs.Npc6095.alias, 15014):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6087.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
end

function Quest15014:OnSubFinish1501408(arg1)
    print("OnSubFinish1501408")
    this:SafeDestroyQuestNpc(npcs.Npc6095.alias, 3)
end

function Quest15014:OnSubStart1501409(arg1)
    print("OnSubStart1501409")
    this:NpcCreateWithNpcTrigger(npcs.Npc6083.id, 0, 12, 1501409)
    this:GetQuestNpcActor(npcs.Npc6083.alias, 15014):DoFreeStyle(1320, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6087.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6088.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6093.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc6084.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6084.alias, 15014):DoFreeStyle(5010, true, nil, true, true, false, false)
end

function Quest15014:OnSubFinish1501409(arg1)
    print("OnSubFinish1501409")
    this:SafeDestroyQuestNpc(npcs.Npc6083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6084.alias, 3)
    this:TransmitPlayerById(arg1, 3, nil, nil, nil)
end

function Quest15014:OnSubStart1501410(arg1)
    print("OnSubStart1501410")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501410, 0, 10, 3, npcs.Npc14310.id)
    this:LightNotifyTo(npcs.Npc6087.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6093.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6088.alias, 0, true)
end

function Quest15014:OnSubFinish1501410(arg1)
    print("OnSubFinish1501410")
    this:SafeDestroyQuestNpc(npcs.Npc14310.alias, 3)
end

return Quest15014
