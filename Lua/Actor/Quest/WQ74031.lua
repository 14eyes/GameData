require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74031 = class("Quest74031", QuestActorProxy)
Quest74031.defaultAlias = "Quest74031"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74031:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403101"] = self.OnSubStart7403101,
        ["7403104"] = self.OnSubStart7403104,
        ["7403105"] = self.OnSubStart7403105,
        ["7403102"] = self.OnSubStart7403102,
        ["7403103"] = self.OnSubStart7403103
    }
end

function Quest74031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403101"] = self.OnSubFinish7403101,
        ["7403104"] = self.OnSubFinish7403104,
        ["7403105"] = self.OnSubFinish7403105,
        ["7403102"] = self.OnSubFinish7403102,
        ["7403103"] = self.OnSubFinish7403103
    }
end

function Quest74031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74031:Start()
    print("Start")
end

function Quest74031:OnDestroy()
    print("OnDestroy")
end

function Quest74031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74031:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74031:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74031:OnSubStart7403101(arg1)
    print("OnSubStart7403101")
    this:CreateQuestNpc(arg1, npcs.Npc5251Data.id, 0)
end

function Quest74031:OnSubFinish7403101(arg1)
    print("OnSubFinish7403101")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5251Data.alias)
end

function Quest74031:OnSubStart7403104(arg1)
    print("OnSubStart7403104")
    this:CreateQuestNpc(arg1, npcs.Npc5251Data.id, 0)
end

function Quest74031:OnSubFinish7403104(arg1)
    print("OnSubFinish7403104")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.Null, 3, nil, nil)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5251Data.alias)
end

function Quest74031:OnSubStart7403105(arg1)
    print("OnSubStart7403105")
    actorMgr:CreateActorWithPos("Q74031Trigger", "Actor/Gadget/Q74031Trigger", 70900002, 0, points.TPos_Q74031Trigger.pos, points.TPos_Q74031Trigger.rot, true, false, 3)
end

function Quest74031:OnSubFinish7403105(arg1)
    print("OnSubFinish7403105")
    self:SetNavigationByMainId(74031, true)
end

function Quest74031:OnSubStart7403102(arg1)
    print("OnSubStart7403102")
end

function Quest74031:OnSubFinish7403102(arg1)
    print("OnSubFinish7403102")
end

function Quest74031:OnSubStart7403103(arg1)
    print("OnSubStart7403103")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5251Data.id, 0, npcs.Npc5251Data.alias)
end

function Quest74031:OnSubFinish7403103(arg1)
    print("OnSubFinish7403103")
    self:SetNavigationByMainId(74025, true)
    this:SafeDestroyQuestNpc(npcs.Npc5251Data.alias, 3)
end

return Quest74031
