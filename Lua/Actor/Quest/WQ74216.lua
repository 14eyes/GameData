require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74216 = class("Quest74216", QuestActorProxy)
Quest74216.defaultAlias = "Quest74216"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74216:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74216:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7421612"] = self.OnSubStart7421612,
        ["7421611"] = self.OnSubStart7421611,
        ["7421601"] = self.OnSubStart7421601,
        ["7421613"] = self.OnSubStart7421613,
        ["7421602"] = self.OnSubStart7421602,
        ["7421603"] = self.OnSubStart7421603,
        ["7421604"] = self.OnSubStart7421604,
        ["7421605"] = self.OnSubStart7421605,
        ["7421606"] = self.OnSubStart7421606,
        ["7421607"] = self.OnSubStart7421607,
        ["7421608"] = self.OnSubStart7421608,
        ["7421609"] = self.OnSubStart7421609,
        ["7421610"] = self.OnSubStart7421610
    }
end

function Quest74216:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7421612"] = self.OnSubFinish7421612,
        ["7421611"] = self.OnSubFinish7421611,
        ["7421601"] = self.OnSubFinish7421601,
        ["7421613"] = self.OnSubFinish7421613,
        ["7421602"] = self.OnSubFinish7421602,
        ["7421603"] = self.OnSubFinish7421603,
        ["7421604"] = self.OnSubFinish7421604,
        ["7421605"] = self.OnSubFinish7421605,
        ["7421606"] = self.OnSubFinish7421606,
        ["7421607"] = self.OnSubFinish7421607,
        ["7421608"] = self.OnSubFinish7421608,
        ["7421609"] = self.OnSubFinish7421609,
        ["7421610"] = self.OnSubFinish7421610
    }
end

function Quest74216:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74216:Start()
    print("Start")
end

function Quest74216:OnDestroy()
    print("OnDestroy")
end

function Quest74216:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74216:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74216:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74216:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74216:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74216:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74216:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest74216:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74216:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest74216:OnSubStart7421612(arg1)
    print("OnSubStart7421612")
end

function Quest74216:OnSubFinish7421612(arg1)
    print("OnSubFinish7421612")
end

function Quest74216:OnSubStart7421611(arg1)
    print("OnSubStart7421611")
end

function Quest74216:OnSubFinish7421611(arg1)
    print("OnSubFinish7421611")
    this:ShowBlackScreen(0.2, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74216:OnSubStart7421601(arg1)
    print("OnSubStart7421601")
    this:CreateQuestNpc(arg1, npcs.Npc21484Data.id, 0)
end

function Quest74216:OnSubFinish7421601(arg1)
    print("OnSubFinish7421601")
    this:SafeDestroyQuestNpc(npcs.Npc21484Data.alias, 3)
end

function Quest74216:OnSubStart7421613(arg1)
    print("OnSubStart7421613")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_02, 3, nil, nil)
    actorMgr:CreateActorWithPos("Q74216Trigger1", "Actor/Gadget/Q74216Trigger1", 70900002, 0, {x = 424.292, y = 281.833, z = 3229.451}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74216:OnSubFinish7421613(arg1)
    print("OnSubFinish7421613")
end

function Quest74216:OnSubStart7421602(arg1)
    print("OnSubStart7421602")
    this:CreateQuestNpc(arg1, npcs.Npc21408Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21484Data.id, 7421602, 0, 20)
end

function Quest74216:OnSubFinish7421602(arg1)
    print("OnSubFinish7421602")
    this:SafeDestroyQuestNpc(npcs.Npc21408Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21484Data.alias, 3)
end

function Quest74216:OnSubStart7421603(arg1)
    print("OnSubStart7421603")
    this:CreateQuestNpc(arg1, npcs.Npc5338Data.id, 0)
end

function Quest74216:OnSubFinish7421603(arg1)
    print("OnSubFinish7421603")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId_01, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5338Data.alias, 3)
end

function Quest74216:OnSubStart7421604(arg1)
    print("OnSubStart7421604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5338Data.id, 7421604, 0, 20, 1)
end

function Quest74216:OnSubFinish7421604(arg1)
    print("OnSubFinish7421604")
    this:SafeDestroyQuestNpc(npcs.Npc5338Data.alias, 3)
end

function Quest74216:OnSubStart7421605(arg1)
    print("OnSubStart7421605")
    this:CreateQuestNpc(arg1, npcs.Npc5337Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5347Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5347Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5351Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5351Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest74216:OnSubFinish7421605(arg1)
    print("OnSubFinish7421605")
    this:ShowBlackScreen(0.1, 1, 0.5, nil, nil, nil, "", false, true)
    this:NPCDestroyImmediately(npcs.Npc5337Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5347Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5351Data.alias, 3)
end

function Quest74216:OnSubStart7421606(arg1)
    print("OnSubStart7421606")
    this:CreateQuestNpc(arg1, npcs.Npc5337Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5338Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21408Data.id, 0)
    actorMgr:CreateActorWithPos("Q74216Trigger", "Actor/Gadget/Q74216Trigger", 70900002, 0, points.TPos_Q74216Trigger.pos, points.TPos_Q74216Trigger.rot, true, false, 3)
end

function Quest74216:OnSubFinish7421606(arg1)
    print("OnSubFinish7421606")
end

function Quest74216:OnSubStart7421607(arg1)
    print("OnSubStart7421607")
    this:CreateQuestNpc(arg1, npcs.Npc5337Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5338Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21408Data.id, 0)
    this:RequestInteraction(npcs.Npc21408Data.alias, "", true)
end

function Quest74216:OnSubFinish7421607(arg1)
    print("OnSubFinish7421607")
    this:NPCDestroyImmediately(npcs.Npc5337Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc5338Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc21408Data.alias, 3)
end

function Quest74216:OnSubStart7421608(arg1)
    print("OnSubStart7421608")
    this:CreateQuestNpc(arg1, npcs.Npc5337Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5337Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5338Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5338Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q74216Trigger_7421608", "Actor/Gadget/Q74216Trigger_7421608", 70900002, 0, points.TPos_Q74216Trigger_7421608.pos, points.TPos_Q74216Trigger_7421608.rot, true, false, 3)
end

function Quest74216:OnSubFinish7421608(arg1)
    print("OnSubFinish7421608")
    this:NPCDestroyImmediately(npcs.Npc5337Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc5338Data.alias, 3)
    this:ShowBlackScreen(0.2, 1, 0.5, nil, nil, nil, "", false, true)
    this:ActorDestroy("Q74216Trigger_7421608")
end

function Quest74216:OnSubStart7421609(arg1)
    print("OnSubStart7421609")
    this:CreateQuestNpc(arg1, npcs.Npc5337Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5338Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21408Data.id, 0)
    this:RequestInteraction(npcs.Npc21408Data.alias, "", true)
end

function Quest74216:OnSubFinish7421609(arg1)
    print("OnSubFinish7421609")
    this:NPCDestroyImmediately(npcs.Npc5337Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc5338Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21408Data.alias, 3)
end

function Quest74216:OnSubStart7421610(arg1)
    print("OnSubStart7421610")
    this:CreateQuestNpcById(7421610, npcs.Npc5337Data.id, 0)
    this:CreateQuestNpcById(7421610, npcs.Npc5338Data.id, 0)
    actorMgr:CreateActorWithPos("Q74216Trigger3", "Actor/Gadget/Q74216Trigger3", 70900002, 0, {x = 1221.676, y = 288.09, z = 4397.833}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74216:OnSubFinish7421610(arg1)
    print("OnSubFinish7421610")
    this:NpcDestroy(npcs.Npc5337Data.alias, 3)
    this:NpcDestroy(npcs.Npc5338Data.alias, 3)
end

return Quest74216
