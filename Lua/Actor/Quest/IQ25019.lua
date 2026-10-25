require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25019 = class("Quest25019", QuestActorProxy)
Quest25019.defaultAlias = "Quest25019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest25019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest25019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2501901"] = self.OnSubStart2501901,
        ["2501902"] = self.OnSubStart2501902,
        ["2501903"] = self.OnSubStart2501903,
        ["2501904"] = self.OnSubStart2501904,
        ["2501911"] = self.OnSubStart2501911,
        ["2501905"] = self.OnSubStart2501905,
        ["2501913"] = self.OnSubStart2501913,
        ["2501906"] = self.OnSubStart2501906,
        ["2501910"] = self.OnSubStart2501910,
        ["2501907"] = self.OnSubStart2501907,
        ["2501912"] = self.OnSubStart2501912,
        ["2501908"] = self.OnSubStart2501908,
        ["2501909"] = self.OnSubStart2501909
    }
end

function Quest25019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2501901"] = self.OnSubFinish2501901,
        ["2501902"] = self.OnSubFinish2501902,
        ["2501903"] = self.OnSubFinish2501903,
        ["2501904"] = self.OnSubFinish2501904,
        ["2501911"] = self.OnSubFinish2501911,
        ["2501905"] = self.OnSubFinish2501905,
        ["2501913"] = self.OnSubFinish2501913,
        ["2501906"] = self.OnSubFinish2501906,
        ["2501910"] = self.OnSubFinish2501910,
        ["2501907"] = self.OnSubFinish2501907,
        ["2501912"] = self.OnSubFinish2501912,
        ["2501908"] = self.OnSubFinish2501908,
        ["2501909"] = self.OnSubFinish2501909
    }
end

function Quest25019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25019:Start()
    print("Start")
end

function Quest25019:OnDestroy()
    print("OnDestroy")
end

function Quest25019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25019:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14264.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14265.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14461.alias, 3)
    this:ActorDestroy("Q2501906_TriggerIn")
    this:ActorDestroy("Q2501910_TriggerIn")
    this:ActorDestroy("Q2501907_TriggerIn")
    this:ActorDestroy("Q2501909_TriggerIn")
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, false)
end

function Quest25019:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest25019:OnSubStart2501901(arg1)
    print("OnSubStart2501901")
    actorUtils.FinishQuestID(false, 2501901)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501901(arg1)
    print("OnSubFinish2501901")
end

function Quest25019:OnSubStart2501902(arg1)
    print("OnSubStart2501902")
end

function Quest25019:OnSubFinish2501902(arg1)
    print("OnSubFinish2501902")
end

function Quest25019:OnSubStart2501903(arg1)
    print("OnSubStart2501903")
end

function Quest25019:OnSubFinish2501903(arg1)
    print("OnSubFinish2501903")
end

function Quest25019:OnSubStart2501904(arg1)
    print("OnSubStart2501904")
    this:CreateQuestNpc(arg1, npcs.Npc14264.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14265.id, 0, false, 0)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
    this:GetQuestNpcActor(npcs.Npc14264.alias, 25019):DisableInteeHeadCtrl(true)
end

function Quest25019:OnSubFinish2501904(arg1)
    print("OnSubFinish2501904")
    this:GetQuestNpcActor(npcs.Npc14264.alias, 25019):DisableInteeHeadCtrl(false)
end

function Quest25019:OnSubStart2501911(arg1)
    print("OnSubStart2501911")
    this:CreateQuestNpc(arg1, npcs.Npc14264.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14265.id, 0, false, 0)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
    this:GetQuestNpcActor(npcs.Npc14264.alias, 25019):DisableInteeHeadCtrl(true)
end

function Quest25019:OnSubFinish2501911(arg1)
    print("OnSubFinish2501911")
    this:GetQuestNpcActor(npcs.Npc14264.alias, 25019):DisableInteeHeadCtrl(false)
end

function Quest25019:OnSubStart2501905(arg1)
    print("OnSubStart2501905")
    this:CreateQuestNpc(arg1, npcs.Npc14264.id, 0, false, 0)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501905(arg1)
    print("OnSubFinish2501905")
end

function Quest25019:OnSubStart2501913(arg1)
    print("OnSubStart2501913")
    this:CreateQuestNpc(arg1, npcs.Npc14264.id, 0, false, 0)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501913(arg1)
    print("OnSubFinish2501913")
end

function Quest25019:OnSubStart2501906(arg1)
    print("OnSubStart2501906")
    actorMgr:CreateActorWithPos("Q2501906_TriggerIn", "Actor/Gadget/Q2501906_TriggerIn", 70900002, 0, points.Q2501906_TriggerIn.pos, points.Q2501906_TriggerIn.rot, true, false, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501906(arg1)
    print("OnSubFinish2501906")
    this:SafeDestroyQuestNpc(npcs.Npc14264.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14265.alias, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, false)
end

function Quest25019:OnSubStart2501910(arg1)
    print("OnSubStart2501910")
    actorMgr:CreateActorWithPos("Q2501910_TriggerIn", "Actor/Gadget/Q2501910_TriggerIn", 70900002, 0, points.Q2501910_TriggerIn.pos, points.Q2501910_TriggerIn.rot, true, false, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501910(arg1)
    print("OnSubFinish2501910")
    this:SafeDestroyQuestNpc(npcs.Npc14264.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14265.alias, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, false)
end

function Quest25019:OnSubStart2501907(arg1)
    print("OnSubStart2501907")
    this:CreateQuestNpc(arg1, npcs.Npc14264.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14265.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14461.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q2501907_TriggerIn", "Actor/Gadget/Q2501907_TriggerIn", 70900002, 0, points.Q2501907_TriggerIn.pos, points.Q2501907_TriggerIn.rot, true, false, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501907(arg1)
    print("OnSubFinish2501907")
    this:SafeDestroyQuestNpc(npcs.Npc14264.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14461.alias, 3)
end

function Quest25019:OnSubStart2501912(arg1)
    print("OnSubStart2501912")
    this:CreateQuestNpc(arg1, npcs.Npc14264.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14265.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14461.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q2501907_TriggerIn", "Actor/Gadget/Q2501907_TriggerIn", 70900002, 0, points.Q2501907_TriggerIn.pos, points.Q2501907_TriggerIn.rot, true, false, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501912(arg1)
    print("OnSubFinish2501912")
    this:SafeDestroyQuestNpc(npcs.Npc14264.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14461.alias, 3)
end

function Quest25019:OnSubStart2501908(arg1)
    print("OnSubStart2501908")
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501908(arg1)
    print("OnSubFinish2501908")
end

function Quest25019:OnSubStart2501909(arg1)
    print("OnSubStart2501909")
    this:CreateQuestNpc(arg1, npcs.Npc14264.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q2501909_TriggerIn", "Actor/Gadget/Q2501909_TriggerIn", 70900002, 0, points.Q2501909_TriggerIn.pos, points.Q2501909_TriggerIn.rot, true, false, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, true)
end

function Quest25019:OnSubFinish2501909(arg1)
    print("OnSubFinish2501909")
    this:SafeDestroyQuestNpc(npcs.Npc14264.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14265.alias, 3)
    this:BanCrowdNpc(3501, 1, datas.InstanceIDList, false)
end

return Quest25019
