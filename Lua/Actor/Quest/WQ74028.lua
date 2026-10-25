require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74028 = class("Quest74028", QuestActorProxy)
Quest74028.defaultAlias = "Quest74028"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74028:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402807"] = self.OnSubStart7402807,
        ["7402801"] = self.OnSubStart7402801,
        ["7402802"] = self.OnSubStart7402802,
        ["7402809"] = self.OnSubStart7402809,
        ["7402803"] = self.OnSubStart7402803
    }
end

function Quest74028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402807"] = self.OnSubFinish7402807,
        ["7402801"] = self.OnSubFinish7402801,
        ["7402802"] = self.OnSubFinish7402802,
        ["7402809"] = self.OnSubFinish7402809,
        ["7402803"] = self.OnSubFinish7402803
    }
end

function Quest74028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74028:Start()
    print("Start")
end

function Quest74028:OnDestroy()
    print("OnDestroy")
end

function Quest74028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74028:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74028:OnSubStart7402807(arg1)
    print("OnSubStart7402807")
    actorUtils.FinishQuestID(false, 7402807)
end

function Quest74028:OnSubFinish7402807(arg1)
    print("OnSubFinish7402807")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, function(arg1)
        this:NarratorOnlyTaskByData(datas.Runout, nil, 74028)
    end, nil)
end

function Quest74028:OnSubStart7402801(arg1)
    print("OnSubStart7402801")
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    actorMgr:CreateActorWithPos("Q7402801Trigger", "Actor/Gadget/Q7402801Trigger", 70900002, 0, points.TPos_Q7402801Trigger.pos, points.TPos_Q7402801Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7402801Trigger2", "Actor/Gadget/Q7402801Trigger2", 70900002, 0, {x = 4008.63, y = 548.0, z = 4967.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74028:OnSubFinish7402801(arg1)
    print("OnSubFinish7402801")
end

function Quest74028:OnSubStart7402802(arg1)
    print("OnSubStart7402802")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21034Data.id, 0, npcs.Npc21034Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21172Data.id, 0)
end

function Quest74028:OnSubFinish7402802(arg1)
    print("OnSubFinish7402802")
    this:ActorDestroy("Q7402801Trigger2")
    this:SafeDestroyQuestNpc(npcs.Npc21034Data.alias, 3)
end

function Quest74028:OnSubStart7402809(arg1)
    print("OnSubStart7402809")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
end

function Quest74028:OnSubFinish7402809(arg1)
    print("OnSubFinish7402809")
    this:SafeDestroyQuestNpc(npcs.Npc21033Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21172Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20973Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20980Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20981Data.alias, 3)
end

function Quest74028:OnSubStart7402803(arg1)
    print("OnSubStart7402803")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
end

function Quest74028:OnSubFinish7402803(arg1)
    print("OnSubFinish7402803")
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 3)
end

return Quest74028
