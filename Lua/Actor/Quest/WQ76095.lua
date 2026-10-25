require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76095 = class("Quest76095", QuestActorProxy)
Quest76095.defaultAlias = "Quest76095"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76095:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76095:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609501"] = self.OnSubStart7609501,
        ["7609512"] = self.OnSubStart7609512,
        ["7609513"] = self.OnSubStart7609513,
        ["7609511"] = self.OnSubStart7609511,
        ["7609502"] = self.OnSubStart7609502,
        ["7609503"] = self.OnSubStart7609503,
        ["7609506"] = self.OnSubStart7609506,
        ["7609505"] = self.OnSubStart7609505,
        ["7609509"] = self.OnSubStart7609509,
        ["7609510"] = self.OnSubStart7609510,
        ["7609504"] = self.OnSubStart7609504
    }
end

function Quest76095:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609501"] = self.OnSubFinish7609501,
        ["7609512"] = self.OnSubFinish7609512,
        ["7609513"] = self.OnSubFinish7609513,
        ["7609511"] = self.OnSubFinish7609511,
        ["7609502"] = self.OnSubFinish7609502,
        ["7609503"] = self.OnSubFinish7609503,
        ["7609506"] = self.OnSubFinish7609506,
        ["7609505"] = self.OnSubFinish7609505,
        ["7609509"] = self.OnSubFinish7609509,
        ["7609510"] = self.OnSubFinish7609510,
        ["7609504"] = self.OnSubFinish7609504
    }
end

function Quest76095:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7609506"] = self.OnSubFailed7609506,
        ["7609509"] = self.OnSubFailed7609509,
        ["7609510"] = self.OnSubFailed7609510,
        ["7609504"] = self.OnSubFailed7609504
    }
end

function Quest76095:Start()
    print("Start")
end

function Quest76095:OnDestroy()
    print("OnDestroy")
end

function Quest76095:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76095:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76095:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76095:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7609502Trigger", nil)
    this:ActorDestroy("Q7609510Trigger", nil)
    this:ActorDestroy("Q7609510Trigger", nil)
    this:ActorDestroy("Q7609504Trigger", nil)
end

function Quest76095:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7609505 then
        actorUtils.FinishQuestID(false, 7609505)
    end
end

function Quest76095:ActorDestroy(arg1, arg2)
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

function Quest76095:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76095:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76095:OnSubStart7609501(arg1)
    print("OnSubStart7609501")
end

function Quest76095:OnSubFinish7609501(arg1)
    print("OnSubFinish7609501")
    this:QuestNarratorTask(datas.NarratorWithId_7609599, nil)
end

function Quest76095:OnSubStart7609512(arg1)
    print("OnSubStart7609512")
end

function Quest76095:OnSubFinish7609512(arg1)
    print("OnSubFinish7609512")
end

function Quest76095:OnSubStart7609513(arg1)
    print("OnSubStart7609513")
end

function Quest76095:OnSubFinish7609513(arg1)
    print("OnSubFinish7609513")
end

function Quest76095:OnSubStart7609511(arg1)
    print("OnSubStart7609511")
end

function Quest76095:OnSubFinish7609511(arg1)
    print("OnSubFinish7609511")
end

function Quest76095:OnSubStart7609502(arg1)
    print("OnSubStart7609502")
    actorMgr:CreateActorWithPos("Q7609502Trigger", "Actor/Gadget/Q7609502Trigger", 70900002, 0, points._Q7609502TriggerPoint_.pos, points._Q7609502TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
end

function Quest76095:OnSubFinish7609502(arg1)
    print("OnSubFinish7609502")
end

function Quest76095:OnSubStart7609503(arg1)
    print("OnSubStart7609503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609503, 0, 30, 0.5, npcs.Npc22306.id)
end

function Quest76095:OnSubFinish7609503(arg1)
    print("OnSubFinish7609503")
end

function Quest76095:OnSubStart7609506(arg1)
    print("OnSubStart7609506")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc22272.id, arg1)
end

function Quest76095:OnSubFinish7609506(arg1)
    print("OnSubFinish7609506")
end

function Quest76095:OnSubFailed7609506(arg1)
    print("OnSubFailed7609506")
    this:RecycleAllRes()
end

function Quest76095:OnSubStart7609505(arg1)
    print("OnSubStart7609505")
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
end

function Quest76095:OnSubFinish7609505(arg1)
    print("OnSubFinish7609505")
    this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
end

function Quest76095:OnSubStart7609509(arg1)
    print("OnSubStart7609509")
end

function Quest76095:OnSubFinish7609509(arg1)
    print("OnSubFinish7609509")
end

function Quest76095:OnSubFailed7609509(arg1)
    print("OnSubFailed7609509")
    this:RecycleAllRes()
end

function Quest76095:OnSubStart7609510(arg1)
    print("OnSubStart7609510")
    actorMgr:CreateActorWithPos("Q7609510Trigger", "Actor/Gadget/Q7609510Trigger", 70900002, 0, points._Q7609510TriggerPoint_.pos, points._Q7609510TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7609510Trigger", "Actor/Gadget/Q7609510Trigger", 70900002, 0, points._Q7609510TriggerPoint_.pos, points._Q7609510TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76095:OnSubFinish7609510(arg1)
    print("OnSubFinish7609510")
end

function Quest76095:OnSubFailed7609510(arg1)
    print("OnSubFailed7609510")
    this:RecycleAllRes()
end

function Quest76095:OnSubStart7609504(arg1)
    print("OnSubStart7609504")
    actorMgr:CreateActorWithPos("Q7609504Trigger", "Actor/Gadget/Q7609504Trigger", 70900002, 0, points._Q7609504TriggerPoint_.pos, points._Q7609504TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76095:OnSubFinish7609504(arg1)
    print("OnSubFinish7609504")
end

function Quest76095:OnSubFailed7609504(arg1)
    print("OnSubFailed7609504")
    this:RecycleAllRes()
end

return Quest76095
