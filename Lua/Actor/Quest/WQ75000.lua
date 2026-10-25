require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75000 = class("Quest75000", QuestActorProxy)
Quest75000.defaultAlias = "Quest75000"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500012"] = self.OnSubStart7500012,
        ["7500001"] = self.OnSubStart7500001,
        ["7500002"] = self.OnSubStart7500002,
        ["7500004"] = self.OnSubStart7500004,
        ["7500003"] = self.OnSubStart7500003,
        ["7500005"] = self.OnSubStart7500005,
        ["7500006"] = self.OnSubStart7500006,
        ["7500007"] = self.OnSubStart7500007,
        ["7500009"] = self.OnSubStart7500009,
        ["7500011"] = self.OnSubStart7500011,
        ["7500010"] = self.OnSubStart7500010,
        ["7500008"] = self.OnSubStart7500008
    }
end

function Quest75000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500012"] = self.OnSubFinish7500012,
        ["7500001"] = self.OnSubFinish7500001,
        ["7500002"] = self.OnSubFinish7500002,
        ["7500004"] = self.OnSubFinish7500004,
        ["7500003"] = self.OnSubFinish7500003,
        ["7500005"] = self.OnSubFinish7500005,
        ["7500006"] = self.OnSubFinish7500006,
        ["7500007"] = self.OnSubFinish7500007,
        ["7500009"] = self.OnSubFinish7500009,
        ["7500011"] = self.OnSubFinish7500011,
        ["7500010"] = self.OnSubFinish7500010,
        ["7500008"] = self.OnSubFinish7500008
    }
end

function Quest75000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7500010"] = self.OnSubFailed7500010}
end

function Quest75000:Start()
    print("Start")
end

function Quest75000:OnDestroy()
    print("OnDestroy")
end

function Quest75000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21523.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:ActorDestroy("Q7500001Trigger")
    this:DestroyNpcTrigger("Q7500004N21523Trigger")
    this:DestroyNpcTrigger("Q7500006N21460Trigger")
end

function Quest75000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75000:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75000:OnSubStart7500012(arg1)
    print("OnSubStart7500012")
    this:CancelNavigation(75000)
end

function Quest75000:OnSubFinish7500012(arg1)
    print("OnSubFinish7500012")
end

function Quest75000:OnSubStart7500001(arg1)
    print("OnSubStart7500001")
    actorMgr:CreateActorWithPos("Q7500001Trigger", "Actor/Gadget/Q7500001Trigger", 70900002, 0, points._Q7500001TriggerPoint_.pos, points._Q7500001TriggerPoint_.rot, true, false, 3)
end

function Quest75000:OnSubFinish7500001(arg1)
    print("OnSubFinish7500001")
    this:SetNavigationByMainId(75000, true)
end

function Quest75000:OnSubStart7500002(arg1)
    print("OnSubStart7500002")
end

function Quest75000:OnSubFinish7500002(arg1)
    print("OnSubFinish7500002")
end

function Quest75000:OnSubStart7500004(arg1)
    print("OnSubStart7500004")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21523.id, 0, 7500004, 40, false)
    this:GetQuestNpcActor(npcs.Npc21523.alias, 75000):DoFreeStyle(6, true, nil, true, true, false, true)
end

function Quest75000:OnSubFinish7500004(arg1)
    print("OnSubFinish7500004")
    this:SafeDestroyQuestNpc(npcs.Npc21523.alias, 3)
end

function Quest75000:OnSubStart7500003(arg1)
    print("OnSubStart7500003")
end

function Quest75000:OnSubFinish7500003(arg1)
    print("OnSubFinish7500003")
end

function Quest75000:OnSubStart7500005(arg1)
    print("OnSubStart7500005")
    this:PlayCutsceneIndex(7500005, function(arg1)
        actorUtils.FinishQuestID(false, 7500005)
        this:NatsaurusVehicleOff()
    end, nil, nil, false)
end

function Quest75000:OnSubFinish7500005(arg1)
    print("OnSubFinish7500005")
end

function Quest75000:OnSubStart7500006(arg1)
    print("OnSubStart7500006")
    this:NpcCreateWithNpcTrigger(npcs.Npc21460.id, 0, 40, 7500006)
end

function Quest75000:OnSubFinish7500006(arg1)
    print("OnSubFinish7500006")
end

function Quest75000:OnSubStart7500007(arg1)
    print("OnSubStart7500007")
    actorMgr:CreateActorWithPos("Q7500007Trigger", "Actor/Gadget/Q7500007Trigger", 70900002, 0, points._Q7500007TriggerPoint_.pos, points._Q7500007TriggerPoint_.rot, true, false, 3)
end

function Quest75000:OnSubFinish7500007(arg1)
    print("OnSubFinish7500007")
end

function Quest75000:OnSubStart7500009(arg1)
    print("OnSubStart7500009")
    this:NpcCreateWithNpcTrigger(npcs.Npc21460.id, 0, 30, 7500009)
end

function Quest75000:OnSubFinish7500009(arg1)
    print("OnSubFinish7500009")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7500011, nil)
    end)

    this:NatsaurusVehicleOff()
end

function Quest75000:OnSubStart7500011(arg1)
    print("OnSubStart7500011")
    this:DeployStoryByQuest(147500001)
end

function Quest75000:OnSubFinish7500011(arg1)
    print("OnSubFinish7500011")
end

function Quest75000:OnSubStart7500010(arg1)
    print("OnSubStart7500010")
end

function Quest75000:OnSubFinish7500010(arg1)
    print("OnSubFinish7500010")
end

function Quest75000:OnSubFailed7500010(arg1)
    print("OnSubFailed7500010")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21523.alias, 3)
    this:CancelStoryByQuest(147500001)
end

function Quest75000:OnSubStart7500008(arg1)
    print("OnSubStart7500008")
    actorMgr:CreateActorWithPos("Q7500008Trigger", "Actor/Gadget/Q7500008Trigger", 70900002, 0, points._Q7500008TriggerPoint_.pos, points._Q7500008TriggerPoint_.rot, true, false, 3)
end

function Quest75000:OnSubFinish7500008(arg1)
    print("OnSubFinish7500008")
    this:CancelStoryByQuest(147500001)
    if self:GetSubQuestState(500017) == 2 then
        this:LevelLoadFinishSafeCall(function(arg1)
            this:SetNavigationByMainId(5000, true)
        end)
    end

    this:NarratorOnlyTaskByDataWithPriority(datas.NarratorWithId_7500008, 75000, 1)
end

return Quest75000
