require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40173 = class("Quest40173", QuestActorProxy)
Quest40173.defaultAlias = "Quest40173"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40173:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40173:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4017301"] = self.OnSubStart4017301,
        ["4017302"] = self.OnSubStart4017302,
        ["4017303"] = self.OnSubStart4017303,
        ["4017304"] = self.OnSubStart4017304
    }
end

function Quest40173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4017301"] = self.OnSubFinish4017301,
        ["4017302"] = self.OnSubFinish4017302,
        ["4017303"] = self.OnSubFinish4017303,
        ["4017304"] = self.OnSubFinish4017304
    }
end

function Quest40173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40173:Start()
    print("Start")
end

function Quest40173:OnDestroy()
    print("OnDestroy")
end

function Quest40173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40173:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc6213.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14603.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:ActorDestroy("Q40173Trigger4")
    this:ActorDestroy("Q40173Trigger2")
    this:BanCrowdNpc(3509, 1, datas.crowd, false)
    this:RemoveLocalGadget(73015011, "1")
end

function Quest40173:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40173:OnSubStart4017301(arg1)
    print("OnSubStart4017301")
    this:CreateQuestNpc(arg1, npcs.Npc14603.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14603.alias, 40173):DoFreeStyle(4412, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14603.alias, 40173):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40173Trigger2", "Actor/Gadget/Q40173Trigger2", 70900002, 0, points._Q40173Trigger2Point_.pos, points._Q40173Trigger2Point_.rot, true, false, 3)
end

function Quest40173:OnSubFinish4017301(arg1)
    print("OnSubFinish4017301")
end

function Quest40173:OnSubStart4017302(arg1)
    print("OnSubStart4017302")
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14603.alias, 40173):DoFreeStyle(4412, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40173):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14603.alias, 40173):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q40173Trigger2", "Actor/Gadget/Q40173Trigger2", 70900002, 0, points._Q40173Trigger2Point_.pos, points._Q40173Trigger2Point_.rot, true, false, 3)
end

function Quest40173:OnSubFinish4017302(arg1)
    print("OnSubFinish4017302")
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14603.alias, 40173)
        if questNpcActor.uActor ~= nil then
            if questNpcActor ~= actorMgr.dummyActor then
                questNpcActor.uActor:StopCurEmojiBubble()
            end
        end

        this:DestroyQuestNpcActor(npcs.Npc14603.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
        this:ActorDestroy("Q40173Trigger2")
    end)
end

function Quest40173:OnSubStart4017303(arg1)
    print("OnSubStart4017303")
    this:CreateQuestNpc(arg1, npcs.Npc6213.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6213.alias, 40173):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc6213.alias, 40173):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3509, 1, datas.crowd, true)
    this:CreateLocalGadget(73015011, "1", {x = -1878.516, y = 55.076, z = 9649.89}, {x = 0, y = 65, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest40173:OnSubFinish4017303(arg1)
    print("OnSubFinish4017303")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc6213.alias, 3)
    end)
end

function Quest40173:OnSubStart4017304(arg1)
    print("OnSubStart4017304")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40173Trigger4", "Actor/Gadget/Q40173Trigger4", 70900002, 0, points._Q40173Trigger4Point_.pos, points._Q40173Trigger4Point_.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40173):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:BanCrowdNpc(3509, 1, datas.crowd, true)
        this:CreateLocalGadget(73015011, "1", {x = -1878.516, y = 55.076, z = 9649.89}, {x = 0, y = 65, z = 0}, 3, nil, nil, false, 0, true)
    end)
end

function Quest40173:OnSubFinish4017304(arg1)
    print("OnSubFinish4017304")
    this:ActionSafeCall(function(arg1)
        this:BanCrowdNpc(3509, 1, datas.crowd, false)
    end)
end

return Quest40173
