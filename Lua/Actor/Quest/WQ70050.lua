require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70050 = class("Quest70050", QuestActorProxy)
Quest70050.defaultAlias = "Quest70050"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70050:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7005001"] = self.OnSubStart7005001,
        ["7005002"] = self.OnSubStart7005002,
        ["7005004"] = self.OnSubStart7005004,
        ["7005005"] = self.OnSubStart7005005,
        ["7005006"] = self.OnSubStart7005006,
        ["7005008"] = self.OnSubStart7005008,
        ["7005009"] = self.OnSubStart7005009,
        ["7005010"] = self.OnSubStart7005010,
        ["7005011"] = self.OnSubStart7005011,
        ["7005012"] = self.OnSubStart7005012,
        ["7005013"] = self.OnSubStart7005013,
        ["7005015"] = self.OnSubStart7005015
    }
end

function Quest70050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7005001"] = self.OnSubFinish7005001,
        ["7005002"] = self.OnSubFinish7005002,
        ["7005004"] = self.OnSubFinish7005004,
        ["7005005"] = self.OnSubFinish7005005,
        ["7005006"] = self.OnSubFinish7005006,
        ["7005008"] = self.OnSubFinish7005008,
        ["7005009"] = self.OnSubFinish7005009,
        ["7005010"] = self.OnSubFinish7005010,
        ["7005011"] = self.OnSubFinish7005011,
        ["7005012"] = self.OnSubFinish7005012,
        ["7005013"] = self.OnSubFinish7005013,
        ["7005015"] = self.OnSubFinish7005015
    }
end

function Quest70050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7005001"] = self.OnSubFailed7005001,
        ["7005002"] = self.OnSubFailed7005002,
        ["7005004"] = self.OnSubFailed7005004,
        ["7005005"] = self.OnSubFailed7005005,
        ["7005006"] = self.OnSubFailed7005006,
        ["7005008"] = self.OnSubFailed7005008,
        ["7005009"] = self.OnSubFailed7005009,
        ["7005010"] = self.OnSubFailed7005010,
        ["7005011"] = self.OnSubFailed7005011,
        ["7005012"] = self.OnSubFailed7005012,
        ["7005013"] = self.OnSubFailed7005013,
        ["7005015"] = self.OnSubFailed7005015
    }
end

function Quest70050:Start()
    print("Start")
end

function Quest70050:OnDestroy()
    print("OnDestroy")
end

function Quest70050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70050:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70050:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest70050:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest70050:OnSubStart7005001(arg1)
    print("OnSubStart7005001")
end

function Quest70050:OnSubFinish7005001(arg1)
    print("OnSubFinish7005001")
end

function Quest70050:OnSubFailed7005001(arg1)
    print("OnSubFailed7005001")
end

function Quest70050:OnSubStart7005002(arg1)
    print("OnSubStart7005002")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13898.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13898.alias, 70050)
        this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePointsData, nil)
    end)

    actorMgr:CreateActorWithPos("Q7005002tigger", "Actor/Gadget/Q7005002tigger", 70900002, 0, points.Q7005002tiggerpoint.pos, points.Q7005002tiggerpoint.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7005004tigger", "Actor/Gadget/Q7005004tigger", 70900002, 0, points.Q7005004tiggerpoint.pos, points.Q7005004tiggerpoint.rot, true, false, 3)
    actorUtils.FinishQuestID(false, 7005002)
end

function Quest70050:OnSubFinish7005002(arg1)
    print("OnSubFinish7005002")
    this:EnterSceneLookCamera({x = 2121.533, y = 293.59, z = 1557.449}, 0, 3, false, false)
end

function Quest70050:OnSubFailed7005002(arg1)
    print("OnSubFailed7005002")
end

function Quest70050:OnSubStart7005004(arg1)
    print("OnSubStart7005004")
end

function Quest70050:OnSubFinish7005004(arg1)
    print("OnSubFinish7005004")
end

function Quest70050:OnSubFailed7005004(arg1)
    print("OnSubFailed7005004")
end

function Quest70050:OnSubStart7005005(arg1)
    print("OnSubStart7005005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5268.id, 7005005, 0, 3, 1.5)
    actorMgr:CreateActorWithPos("Q7005002tigger", "Actor/Gadget/Q7005002tigger", 70900002, 0, points.Q7005002tiggerpoint.pos, points.Q7005002tiggerpoint.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7005004tigger", "Actor/Gadget/Q7005004tigger", 70900002, 0, points.Q7005004tiggerpoint.pos, points.Q7005004tiggerpoint.rot, true, false, 3)
end

function Quest70050:OnSubFinish7005005(arg1)
    print("OnSubFinish7005005")
    this:SafeDestroyQuestNpc(npcs.Npc5268.alias, 3)
    this:ActorDestroy("Q7005002tigger")
    this:ActorDestroy("Q7005004tigger")
    this:SafeDestroyQuestNpc(npcs.Npc13898.alias, 3)
    this:ClearNarratorTask()
end

function Quest70050:OnSubFailed7005005(arg1)
    print("OnSubFailed7005005")
end

function Quest70050:OnSubStart7005006(arg1)
    print("OnSubStart7005006")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5268.id, 7005006, 0, 3, 1.5)
    this:NotifyTo(npcs.Npc2255.alias, 1, true)
end

function Quest70050:OnSubFinish7005006(arg1)
    print("OnSubFinish7005006")
    this:SafeDestroyQuestNpc(npcs.Npc5268.alias, 3)
    this:NarratorOnlyTaskByData(datas.Q7005006NarratorWithId, nil, 70050)
end

function Quest70050:OnSubFailed7005006(arg1)
    print("OnSubFailed7005006")
end

function Quest70050:OnSubStart7005008(arg1)
    print("OnSubStart7005008")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5268.id, 7005008, 0, 3, 1.5)
    this:NotifyTo(npcs.Npc2255.alias, 1, true)
end

function Quest70050:OnSubFinish7005008(arg1)
    print("OnSubFinish7005008")
    this:ClearNarratorTask()
    this:LightNotifyTo(npcs.Npc2255.alias, 0, true)
end

function Quest70050:OnSubFailed7005008(arg1)
    print("OnSubFailed7005008")
end

function Quest70050:OnSubStart7005009(arg1)
    print("OnSubStart7005009")
    this:CreateQuestNpc(arg1, npcs.Npc13877.id, 0)
    this:GetQuestNpcActor(npcs.Npc5268.alias, 70050):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest70050:OnSubFinish7005009(arg1)
    print("OnSubFinish7005009")
    this:DestroyQuestNpcActor(npcs.Npc5268.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13877.alias, 3)
end

function Quest70050:OnSubFailed7005009(arg1)
    print("OnSubFailed7005009")
end

function Quest70050:OnSubStart7005010(arg1)
    print("OnSubStart7005010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13927.id, 7005010, 0, 15, 1.5)
end

function Quest70050:OnSubFinish7005010(arg1)
    print("OnSubFinish7005010")
    this:SafeDestroyQuestNpc(npcs.Npc13927.alias, 3)
    this:NarratorOnlyTaskByData(datas.Q7005010NarratorWithId, nil, 70050)
end

function Quest70050:OnSubFailed7005010(arg1)
    print("OnSubFailed7005010")
end

function Quest70050:OnSubStart7005011(arg1)
    print("OnSubStart7005011")
    this:CreateQuestNpc(arg1, npcs.Npc5268.id, 0)
    this:GetQuestNpcActor(npcs.Npc5268.alias, 70050):DoFreeStyle(1050, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7005011tigger", "Actor/Gadget/Q7005011tigger", 70900002, 0, points.Q7005011tiggerpoint.pos, points.Q7005011tiggerpoint.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5268.alias, 70050):DisableInteeHeadCtrl(true)
end

function Quest70050:OnSubFinish7005011(arg1)
    print("OnSubFinish7005011")
    this:NarratorOnlyTaskByData(datas.Q7005011NarratorWithId, nil, 70050)
end

function Quest70050:OnSubFailed7005011(arg1)
    print("OnSubFailed7005011")
end

function Quest70050:OnSubStart7005012(arg1)
    print("OnSubStart7005012")
    this:GetQuestNpcActor(npcs.Npc5268.alias, 70050):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5268.alias, 70050):DisableInteeHeadCtrl(true)
end

function Quest70050:OnSubFinish7005012(arg1)
    print("OnSubFinish7005012")
    this:ClearNarratorTask()
end

function Quest70050:OnSubFailed7005012(arg1)
    print("OnSubFailed7005012")
end

function Quest70050:OnSubStart7005013(arg1)
    print("OnSubStart7005013")
    this:CreateQuestNpc(arg1, npcs.Npc5268.id, 0)
    this:GetQuestNpcActor(npcs.Npc5268.alias, 70050):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest70050:OnSubFinish7005013(arg1)
    print("OnSubFinish7005013")
end

function Quest70050:OnSubFailed7005013(arg1)
    print("OnSubFailed7005013")
end

function Quest70050:OnSubStart7005015(arg1)
    print("OnSubStart7005015")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5268.id, 0)
        actorMgr:CreateActorWithPos("Q7005014tigger", "Actor/Gadget/Q7005014tigger", 70900002, 0, points.Q7005014tiggerpoint.pos, points.Q7005014tiggerpoint.rot, true, false, 3)
    end)
end

function Quest70050:OnSubFinish7005015(arg1)
    print("OnSubFinish7005015")
    this:SafeDestroyQuestNpc(npcs.Npc5268.alias, 3)
end

function Quest70050:OnSubFailed7005015(arg1)
    print("OnSubFailed7005015")
end

return Quest70050
