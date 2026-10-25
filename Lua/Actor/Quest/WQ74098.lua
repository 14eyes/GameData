require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74098 = class("Quest74098", QuestActorProxy)
Quest74098.defaultAlias = "Quest74098"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74098:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74098:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7409802"] = self.OnSubStart7409802,
        ["7409803"] = self.OnSubStart7409803,
        ["7409809"] = self.OnSubStart7409809,
        ["7409804"] = self.OnSubStart7409804,
        ["7409805"] = self.OnSubStart7409805,
        ["7409806"] = self.OnSubStart7409806,
        ["7409810"] = self.OnSubStart7409810,
        ["7409807"] = self.OnSubStart7409807,
        ["7409808"] = self.OnSubStart7409808,
        ["7409801"] = self.OnSubStart7409801
    }
end

function Quest74098:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7409802"] = self.OnSubFinish7409802,
        ["7409803"] = self.OnSubFinish7409803,
        ["7409809"] = self.OnSubFinish7409809,
        ["7409804"] = self.OnSubFinish7409804,
        ["7409805"] = self.OnSubFinish7409805,
        ["7409806"] = self.OnSubFinish7409806,
        ["7409810"] = self.OnSubFinish7409810,
        ["7409807"] = self.OnSubFinish7409807,
        ["7409808"] = self.OnSubFinish7409808,
        ["7409801"] = self.OnSubFinish7409801
    }
end

function Quest74098:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74098:Start()
    print("Start")
end

function Quest74098:OnDestroy()
    print("OnDestroy")
end

function Quest74098:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74098:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74098:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74098:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74098:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74098:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74098:OnSubStart7409802(arg1)
    print("OnSubStart7409802")
    this:CreateQuestNpc(arg1, npcs.Npc5210Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5210Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest74098:OnSubFinish7409802(arg1)
    print("OnSubFinish7409802")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5210Data.alias)
end

function Quest74098:OnSubStart7409803(arg1)
    print("OnSubStart7409803")
    this:CreateQuestNpc(arg1, npcs.Npc5210Data.id, 0)
end

function Quest74098:OnSubFinish7409803(arg1)
    print("OnSubFinish7409803")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.Null, 3, nil, nil)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5210Data.alias)
end

function Quest74098:OnSubStart7409809(arg1)
    print("OnSubStart7409809")
    this:DailyNpcSafeHideSelf(npcs.Npc5210Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7409809Trigger", "Actor/Gadget/Q7409809Trigger", 70900002, 0, points.TPos_Q7409809Trigger.pos, points.TPos_Q7409809Trigger.rot, true, false, 3)
end

function Quest74098:OnSubFinish7409809(arg1)
    print("OnSubFinish7409809")
end

function Quest74098:OnSubStart7409804(arg1)
    print("OnSubStart7409804")
    this:DailyNpcSafeHideSelf(npcs.Npc5210Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74098:OnSubFinish7409804(arg1)
    print("OnSubFinish7409804")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.Null, 3, nil, nil)
end

function Quest74098:OnSubStart7409805(arg1)
    print("OnSubStart7409805")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5210Data.id, 0, npcs.Npc5210Data.alias)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74098:OnSubFinish7409805(arg1)
    print("OnSubFinish7409805")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5210Data.alias)
end

function Quest74098:OnSubStart7409806(arg1)
    print("OnSubStart7409806")
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest74098:OnSubFinish7409806(arg1)
    print("OnSubFinish7409806")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5262Data.alias)
end

function Quest74098:OnSubStart7409810(arg1)
    print("OnSubStart7409810")
    this:DailyNpcSafeHideSelf(npcs.Npc5262Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7409810Trigger", "Actor/Gadget/Q7409810Trigger", 70900002, 0, points.TPos_Q7409810Trigger.pos, points.TPos_Q7409810Trigger.rot, true, false, 3)
end

function Quest74098:OnSubFinish7409810(arg1)
    print("OnSubFinish7409810")
end

function Quest74098:OnSubStart7409807(arg1)
    print("OnSubStart7409807")
    this:DailyNpcSafeHideSelf(npcs.Npc5262Data.alias, 1, true)
end

function Quest74098:OnSubFinish7409807(arg1)
    print("OnSubFinish7409807")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.Null, 3, nil, nil)
end

function Quest74098:OnSubStart7409808(arg1)
    print("OnSubStart7409808")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5262Data.id, 0, npcs.Npc5262Data.alias)
end

function Quest74098:OnSubFinish7409808(arg1)
    print("OnSubFinish7409808")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5262Data.alias)
end

function Quest74098:OnSubStart7409801(arg1)
    print("OnSubStart7409801")
end

function Quest74098:OnSubFinish7409801(arg1)
    print("OnSubFinish7409801")
end

return Quest74098
