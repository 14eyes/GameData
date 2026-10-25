require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15026 = class("Quest15026", QuestActorProxy)
Quest15026.defaultAlias = "Quest15026"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15026:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502607"] = self.OnSubStart1502607,
        ["1502601"] = self.OnSubStart1502601,
        ["1502602"] = self.OnSubStart1502602,
        ["1502603"] = self.OnSubStart1502603,
        ["1502604"] = self.OnSubStart1502604,
        ["1502605"] = self.OnSubStart1502605,
        ["1502606"] = self.OnSubStart1502606
    }
end

function Quest15026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502607"] = self.OnSubFinish1502607,
        ["1502601"] = self.OnSubFinish1502601,
        ["1502602"] = self.OnSubFinish1502602,
        ["1502603"] = self.OnSubFinish1502603,
        ["1502604"] = self.OnSubFinish1502604,
        ["1502605"] = self.OnSubFinish1502605,
        ["1502606"] = self.OnSubFinish1502606
    }
end

function Quest15026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15026:Start()
    print("Start")
end

function Quest15026:OnDestroy()
    print("OnDestroy")
end

function Quest15026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14649.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15057.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1201)
    this:ActorDestroy("Q1502605Trigger")
    this:ActorDestroy("Q1502603Trigger")
    this:ActorDestroy("Q1502607Trigger")
    this:DestroyNpcTrigger("Q1502602N14647Trigger")
    this:DestroyNpcTrigger("Q1502604N1096Trigger")
    this:DestroyNpcTrigger("Q1502606N14647Trigger")
    this:DestroyNpcTrigger("Q1502607N14649Trigger")
end

function Quest15026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15026:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15026:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15026:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15026:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15026:OnSubStart1502607(arg1)
    print("OnSubStart1502607")
    this:NpcCreateWithNpcTrigger(npcs.Npc14649.id, 0, 15, 1502607)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14943.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15057.id, 0, false, 0)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15026:OnSubFinish1502607(arg1)
    print("OnSubFinish1502607")
    this:SetNavigationByMainId(15026, true)
end

function Quest15026:OnSubStart1502601(arg1)
    print("OnSubStart1502601")
    this:CreateQuestNpc(arg1, npcs.Npc14649.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14943.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15057.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DisableInteeHeadCtrl(true)
end

function Quest15026:OnSubFinish1502601(arg1)
    print("OnSubFinish1502601")
    this:SafeDestroyQuestNpc(npcs.Npc14649.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15057.alias, 3)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DisableInteeHeadCtrl(false)
end

function Quest15026:OnSubStart1502602(arg1)
    print("OnSubStart1502602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502602, 0, 10, 1, npcs.Npc14647.id)
end

function Quest15026:OnSubFinish1502602(arg1)
    print("OnSubFinish1502602")
end

function Quest15026:OnSubStart1502603(arg1)
    print("OnSubStart1502603")
    this:CreateQuestNpc(arg1, npcs.Npc14647.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14648.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15026):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14649.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14943.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15057.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1096.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 15026):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1502603Trigger", "Actor/Gadget/Q1502603Trigger", 70900002, 0, points._Q1502603TriggerPoint_.pos, points._Q1502603TriggerPoint_.rot, true, false, 1201)
    this:CreateLocalGadget(datas.Gadget73029032_Chair, "1", {x = -4.569, y = 0.048, z = 20.526}, {x = 0, y = 180, z = 0}, 1200, nil, nil, false, 0, true)
end

function Quest15026:OnSubFinish1502603(arg1)
    print("OnSubFinish1502603")
end

function Quest15026:OnSubStart1502604(arg1)
    print("OnSubStart1502604")
    this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 20, 1502604)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 15026):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15026):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(datas.Gadget73029032_Chair, "1", {x = -4.569, y = 0.048, z = 20.526}, {x = 0, y = 180, z = 0}, 1201, nil, nil, true, 0, true)
end

function Quest15026:OnSubFinish1502604(arg1)
    print("OnSubFinish1502604")
    this:NpcDestroyImmediately(1201, npcs.Npc1096.alias)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_15026, 4, nil, nil, nil)
    end)
end

function Quest15026:OnSubStart1502605(arg1)
    print("OnSubStart1502605")
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DoFreeStyle(1120, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1502605Trigger", "Actor/Gadget/Q1502605Trigger", 70900002, 0, points._Q1502605TriggerPoint_.pos, points._Q1502605TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15026):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(datas.Gadget73029032_Chair, "1", {x = -4.569, y = 0.048, z = 20.73}, {x = 0, y = 180, z = 0}, 1201, nil, nil, true, 0, true)
end

function Quest15026:OnSubFinish1502605(arg1)
    print("OnSubFinish1502605")
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15026):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DisableInteeHeadCtrl(false)
    this:RemoveLocalGadget(datas.Gadget73029032_Chair, "1")
end

function Quest15026:OnSubStart1502606(arg1)
    print("OnSubStart1502606")
    this:NpcCreateWithNpcTrigger(npcs.Npc14647.id, 0, 15, 1502606)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15026):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14648.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14649.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14649.alias, 15026):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14943.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15057.id, 0, false, 0)
end

function Quest15026:OnSubFinish1502606(arg1)
    print("OnSubFinish1502606")
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14649.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14943.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15057.alias, 3)
end

return Quest15026
