require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40144 = class("Quest40144", QuestActorProxy)
Quest40144.defaultAlias = "Quest40144"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40144:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014401"] = self.OnSubStart4014401,
        ["4014402"] = self.OnSubStart4014402,
        ["4014403"] = self.OnSubStart4014403,
        ["4014404"] = self.OnSubStart4014404,
        ["4014405"] = self.OnSubStart4014405,
        ["4014406"] = self.OnSubStart4014406,
        ["4014407"] = self.OnSubStart4014407,
        ["4014408"] = self.OnSubStart4014408,
        ["4014409"] = self.OnSubStart4014409
    }
end

function Quest40144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014401"] = self.OnSubFinish4014401,
        ["4014402"] = self.OnSubFinish4014402,
        ["4014403"] = self.OnSubFinish4014403,
        ["4014404"] = self.OnSubFinish4014404,
        ["4014405"] = self.OnSubFinish4014405,
        ["4014406"] = self.OnSubFinish4014406,
        ["4014407"] = self.OnSubFinish4014407,
        ["4014408"] = self.OnSubFinish4014408,
        ["4014409"] = self.OnSubFinish4014409
    }
end

function Quest40144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40144:Start()
    print("Start")
end

function Quest40144:OnDestroy()
    print("OnDestroy")
end

function Quest40144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40144:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30519Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40144Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40144Trigger1", 0, false)
    actorMgr:DestroyEntityActor("Q40144Trigger2", 1004, false)
    this:UnCallDelayByQuest("1")
end

function Quest40144:OnSubStart4014401(arg1)
    print("OnSubStart4014401")
    this:CreateQuestNpc(arg1, npcs.LisaData.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.LisaData.alias)
    questNpcActor:SitOnChair(8013, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40144Trigger2", "Actor/Gadget/Q40144Trigger2", 70900002, 0, points.TPos_Q40144Trigger2.pos, points.TPos_Q40144Trigger2.rot, true, false, 1004)
    if self:GetQuestVar(4014401, 0) == 0 then
        this:QuestNarratorTask(datas.Narrator_4014401, function(arg1)
            arg1:SetQuestVarByMainId(0, 1)
        end, 40144)
    end
end

function Quest40144:OnSubFinish4014401(arg1)
    print("OnSubFinish4014401")
    this:GetQuestNpcActor(npcs.LisaData.alias):DisableInteeHeadCtrl(false)
    this:DestroyQuestNpcActor(npcs.LisaData.alias, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40144:OnSubStart4014402(arg1)
    print("OnSubStart4014402")
    actorMgr:CreateActorWithPos("Q40144Trigger", "Actor/Gadget/Q40144Trigger", 70900002, 0, points.TPos_Q40144Trigger.pos, points.TPos_Q40144Trigger.rot, true, false, 3)
end

function Quest40144:OnSubFinish4014402(arg1)
    print("OnSubFinish4014402")
end

function Quest40144:OnSubStart4014403(arg1)
    print("OnSubStart4014403")
end

function Quest40144:OnSubFinish4014403(arg1)
    print("OnSubFinish4014403")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
        this:CallDelayByQuest("1", 1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.LisaData.alias)
            local pos = questNpcActor:GetPos()
            local n = actorUtils.GetAvatarPos() - pos
            questNpcActor:SteerToTask(n, 1, true, true)
            this:QuestNarratorTask(datas.Narrator_4014402)
        end)
    end)
end

function Quest40144:OnSubStart4014404(arg1)
    print("OnSubStart4014404")
end

function Quest40144:OnSubFinish4014404(arg1)
    print("OnSubFinish4014404")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator_4014403)
    end)
end

function Quest40144:OnSubStart4014405(arg1)
    print("OnSubStart4014405")
end

function Quest40144:OnSubFinish4014405(arg1)
    print("OnSubFinish4014405")
end

function Quest40144:OnSubStart4014406(arg1)
    print("OnSubStart4014406")
    actorMgr:CreateActorWithPos("Q40144Trigger1", "Actor/Gadget/Q40144Trigger1", 70900002, 0, {x = 2518.878, y = 202.746, z = -1133.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40144:OnSubFinish4014406(arg1)
    print("OnSubFinish4014406")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest40144:OnSubStart4014407(arg1)
    print("OnSubStart4014407")
end

function Quest40144:OnSubFinish4014407(arg1)
    print("OnSubFinish4014407")
end

function Quest40144:OnSubStart4014408(arg1)
    print("OnSubStart4014408")
    actorMgr:CreateActorWithPos("Q40144Trigger1", "Actor/Gadget/Q40144Trigger1", 70900002, 0, {x = 2518.878, y = 202.746, z = -1133.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40144:OnSubFinish4014408(arg1)
    print("OnSubFinish4014408")
    this:DestroyQuestNpcActor(npcs.LisaData.alias, 3)
end

function Quest40144:OnSubStart4014409(arg1)
    print("OnSubStart4014409")
    this:CreateQuestNpc(arg1, npcs.Npc30519Data.id, 0)
end

function Quest40144:OnSubFinish4014409(arg1)
    print("OnSubFinish4014409")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc30519Data.alias, 3)
        actorUtils.ShowContext("AlchemySimDetailPage", 0)
    end)
end

return Quest40144
