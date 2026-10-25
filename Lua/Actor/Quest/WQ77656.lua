require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77656 = class("Quest77656", QuestActorProxy)
Quest77656.defaultAlias = "Quest77656"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77656:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77656:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7765607"] = self.OnSubStart7765607,
        ["7765601"] = self.OnSubStart7765601,
        ["7765602"] = self.OnSubStart7765602,
        ["7765603"] = self.OnSubStart7765603,
        ["7765604"] = self.OnSubStart7765604,
        ["7765605"] = self.OnSubStart7765605,
        ["7765606"] = self.OnSubStart7765606
    }
end

function Quest77656:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7765607"] = self.OnSubFinish7765607,
        ["7765601"] = self.OnSubFinish7765601,
        ["7765602"] = self.OnSubFinish7765602,
        ["7765603"] = self.OnSubFinish7765603,
        ["7765604"] = self.OnSubFinish7765604,
        ["7765605"] = self.OnSubFinish7765605,
        ["7765606"] = self.OnSubFinish7765606
    }
end

function Quest77656:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77656:Start()
    print("Start")
end

function Quest77656:OnDestroy()
    print("OnDestroy")
end

function Quest77656:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77656:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77656:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77656:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77656Trigger_2", 77656)
    this:ActorDestroy("Q77656Trigger", 77656)
    this:ActorDestroy("Q77656Trigger_1", 77656)
end

function Quest77656:ActorDestroy(arg1, arg2)
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

function Quest77656:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77656:OnSubStart7765607(arg1)
    print("OnSubStart7765607")
end

function Quest77656:OnSubFinish7765607(arg1)
    print("OnSubFinish7765607")
end

function Quest77656:OnSubStart7765601(arg1)
    print("OnSubStart7765601")
    this:CreateQuestNpc(arg1, npcs.Npc17025.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q77656Trigger_2", "Actor/Gadget/Q77656Trigger_2", 70900002, 0, points._Q77656Trigger_2Point_.pos, points._Q77656Trigger_2Point_.rot, true, false, 3, nil, 0, 77656)
end

function Quest77656:OnSubFinish7765601(arg1)
    print("OnSubFinish7765601")
end

function Quest77656:OnSubStart7765602(arg1)
    print("OnSubStart7765602")
    this:CreateQuestNpc(arg1, npcs.Npc17025.id, 0, false, 0)
    this:DeployStoryByQuest(147765601)
end

function Quest77656:OnSubFinish7765602(arg1)
    print("OnSubFinish7765602")
end

function Quest77656:OnSubStart7765603(arg1)
    print("OnSubStart7765603")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q77656Trigger", "Actor/Gadget/Q77656Trigger", 70900002, 0, points._Q77656TriggerPoint_.pos, points._Q77656TriggerPoint_.rot, true, false, 3, nil, 0, 77656)
end

function Quest77656:OnSubFinish7765603(arg1)
    print("OnSubFinish7765603")
    this:NpcDestroyImmediately(3, npcs.Npc17025.alias)
end

function Quest77656:OnSubStart7765604(arg1)
    print("OnSubStart7765604")
    this:GetQuestNpcActor(npcs.Npc1331.alias, 77656):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 77656):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest77656:OnSubFinish7765604(arg1)
    print("OnSubFinish7765604")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1331_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1332_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1335_1.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1333.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 77656):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1331_1.alias, 77656):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1332_1.alias, 77656):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1335_1.alias, 77656):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1333.alias, 77656):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1331_1.alias, 77656):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1332_1.alias, 77656):DoFreeStyle(1190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q77656Trigger_1", "Actor/Gadget/Q77656Trigger_1", 70900002, 0, points._Q77656Trigger_1Point_.pos, points._Q77656Trigger_1Point_.rot, true, false, 3, nil, 0, 77656)
end

function Quest77656:OnSubStart7765605(arg1)
    print("OnSubStart7765605")
end

function Quest77656:OnSubFinish7765605(arg1)
    print("OnSubFinish7765605")
end

function Quest77656:OnSubStart7765606(arg1)
    print("OnSubStart7765606")
end

function Quest77656:OnSubFinish7765606(arg1)
    print("OnSubFinish7765606")
end

return Quest77656
