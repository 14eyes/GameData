require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75157 = class("Quest75157", QuestActorProxy)
Quest75157.defaultAlias = "Quest75157"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75157:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75157:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7515701"] = self.OnSubStart7515701,
        ["7515705"] = self.OnSubStart7515705,
        ["7515702"] = self.OnSubStart7515702,
        ["7515703"] = self.OnSubStart7515703,
        ["7515704"] = self.OnSubStart7515704
    }
end

function Quest75157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7515701"] = self.OnSubFinish7515701,
        ["7515705"] = self.OnSubFinish7515705,
        ["7515702"] = self.OnSubFinish7515702,
        ["7515703"] = self.OnSubFinish7515703,
        ["7515704"] = self.OnSubFinish7515704
    }
end

function Quest75157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7515702"] = self.OnSubFailed7515702, ["7515703"] = self.OnSubFailed7515703}
end

function Quest75157:Start()
    print("Start")
end

function Quest75157:OnDestroy()
    print("OnDestroy")
end

function Quest75157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75157:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75157:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75157:OnSubStart7515701(arg1)
    print("OnSubStart7515701")
    this:CreateQuestNpc(arg1, npcs.Npc21780Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21780Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21781Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21781Data.alias):DoFreeStyle(8, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21782Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21782Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21783Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21783Data.alias):DoFreeStyle(4453, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21784Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21784Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21785Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21785Data.alias):DoFreeStyle(1283, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21779Data.id, 0, false, 0)
end

function Quest75157:OnSubFinish7515701(arg1)
    print("OnSubFinish7515701")
end

function Quest75157:OnSubStart7515705(arg1)
    print("OnSubStart7515705")
    this:GetQuestNpcActor(npcs.Npc21780Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21781Data.alias):DoFreeStyle(8, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21782Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21783Data.alias):DoFreeStyle(4453, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21784Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21785Data.alias):DoFreeStyle(1283, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7515705Trigger", "Actor/Gadget/Q7515705Trigger", 70900002, 0, {x = -983.298, y = 200.483, z = 9755.224}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75157:OnSubFinish7515705(arg1)
    print("OnSubFinish7515705")
end

function Quest75157:OnSubStart7515702(arg1)
    print("OnSubStart7515702")
    this:GetQuestNpcActor(npcs.Npc21780Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21781Data.alias):DoFreeStyle(8, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21782Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21783Data.alias):DoFreeStyle(4453, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21784Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21785Data.alias):DoFreeStyle(1283, true, nil, true, true, false, false)
end

function Quest75157:OnSubFinish7515702(arg1)
    print("OnSubFinish7515702")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21780Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21781Data.alias)
end

function Quest75157:OnSubFailed7515702(arg1)
    print("OnSubFailed7515702")
end

function Quest75157:OnSubStart7515703(arg1)
    print("OnSubStart7515703")
    this:GetQuestNpcActor(npcs.Npc21782Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21783Data.alias):DoFreeStyle(4453, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21784Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21785Data.alias):DoFreeStyle(1283, true, nil, true, true, false, false)
end

function Quest75157:OnSubFinish7515703(arg1)
    print("OnSubFinish7515703")
    this:SafeDestroyQuestNpc(npcs.Npc21782Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21784Data.alias, 3)
end

function Quest75157:OnSubFailed7515703(arg1)
    print("OnSubFailed7515703")
end

function Quest75157:OnSubStart7515704(arg1)
    print("OnSubStart7515704")
    this:CreateQuestNpc(arg1, npcs.Npc21780Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21780Data.alias):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21781Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21781Data.alias):DoFreeStyle(4, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21783Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21785Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21785Data.alias):DoFreeStyle(1283, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21779Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7515704Trigger", "Actor/Gadget/Q7515704Trigger", 70900002, 0, {x = -989.325, y = 202.955, z = 9757.623}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75157:OnSubFinish7515704(arg1)
    print("OnSubFinish7515704")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21779Data.alias)
end

return Quest75157
