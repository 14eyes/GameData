require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19078 = class("Quest19078", QuestActorProxy)
Quest19078.defaultAlias = "Quest19078"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19078:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19078:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1907801"] = self.OnSubStart1907801,
        ["1907802"] = self.OnSubStart1907802,
        ["1907803"] = self.OnSubStart1907803,
        ["1907804"] = self.OnSubStart1907804,
        ["1907808"] = self.OnSubStart1907808,
        ["1907818"] = self.OnSubStart1907818,
        ["1907805"] = self.OnSubStart1907805,
        ["1907806"] = self.OnSubStart1907806,
        ["1907807"] = self.OnSubStart1907807,
        ["1907809"] = self.OnSubStart1907809,
        ["1907810"] = self.OnSubStart1907810,
        ["1907811"] = self.OnSubStart1907811,
        ["1907812"] = self.OnSubStart1907812,
        ["1907813"] = self.OnSubStart1907813,
        ["1907814"] = self.OnSubStart1907814,
        ["1907815"] = self.OnSubStart1907815,
        ["1907816"] = self.OnSubStart1907816,
        ["1907817"] = self.OnSubStart1907817
    }
end

function Quest19078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1907801"] = self.OnSubFinish1907801,
        ["1907802"] = self.OnSubFinish1907802,
        ["1907803"] = self.OnSubFinish1907803,
        ["1907804"] = self.OnSubFinish1907804,
        ["1907808"] = self.OnSubFinish1907808,
        ["1907818"] = self.OnSubFinish1907818,
        ["1907805"] = self.OnSubFinish1907805,
        ["1907806"] = self.OnSubFinish1907806,
        ["1907807"] = self.OnSubFinish1907807,
        ["1907809"] = self.OnSubFinish1907809,
        ["1907810"] = self.OnSubFinish1907810,
        ["1907811"] = self.OnSubFinish1907811,
        ["1907812"] = self.OnSubFinish1907812,
        ["1907813"] = self.OnSubFinish1907813,
        ["1907814"] = self.OnSubFinish1907814,
        ["1907815"] = self.OnSubFinish1907815,
        ["1907816"] = self.OnSubFinish1907816,
        ["1907817"] = self.OnSubFinish1907817
    }
end

function Quest19078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19078:Start()
    print("Start")
end

function Quest19078:OnDestroy()
    print("OnDestroy")
end

function Quest19078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19078:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13240Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13241Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13242Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13244Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13243Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13265Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13266Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13270Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13267Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13268Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12772Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13271Data.alias, 3)
    this:RemoveLocalGadget(70711045, "19078")
    actorMgr:DestroyEntityActor("Q1907812Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907815Trigger", 3, false)
    this:UnCallFunc(self.unCallNPCTrigger)
    if this:IsPlayerSitOnChair(3, M.Pos(-1793.638, 204.2723, 2674.837), 2.5) then
        this:PlayerStandFromChair(0)
    end

    actorMgr:DestroyEntityActor("Q1907811N13244Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907805N515Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907813N515Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907816N515Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1907817N515Trigger", 3, false)
end

function Quest19078:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19078:unCallNPCTrigger()
    print("unCallNPCTrigger")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13244Data.id, 1907811, 2, 20, 1)
end

function Quest19078:OnSubStart1907801(arg1)
    print("OnSubStart1907801")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907801)
    this:CreateQuestNpc(arg1, npcs.Npc13240Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc13240Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest19078:OnSubFinish1907801(arg1)
    print("OnSubFinish1907801")
    this:SafeDestroyQuestNpc(npcs.Npc13240Data.alias, 3)
end

function Quest19078:OnSubStart1907802(arg1)
    print("OnSubStart1907802")
end

function Quest19078:OnSubFinish1907802(arg1)
    print("OnSubFinish1907802")
end

function Quest19078:OnSubStart1907803(arg1)
    print("OnSubStart1907803")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907803)
    this:CreateQuestNpc(arg1, npcs.Npc13240Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc13240Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest19078:OnSubFinish1907803(arg1)
    print("OnSubFinish1907803")
    this:SafeDestroyQuestNpc(npcs.Npc13240Data.alias, 3)
end

function Quest19078:OnSubStart1907804(arg1)
    print("OnSubStart1907804")
end

function Quest19078:OnSubFinish1907804(arg1)
    print("OnSubFinish1907804")
end

function Quest19078:OnSubStart1907808(arg1)
    print("OnSubStart1907808")
end

function Quest19078:OnSubFinish1907808(arg1)
    print("OnSubFinish1907808")
end

function Quest19078:OnSubStart1907818(arg1)
    print("OnSubStart1907818")
    this:CreateQuestNpc(arg1, npcs.Npc13241Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13265Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13266Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc13270Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc13265Data.alias):DoFreeStyle(1120, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13266Data.alias):DoFreeStyle(1170, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13270Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13266Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13270Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19078:OnSubFinish1907818(arg1)
    print("OnSubFinish1907818")
    this:SafeDestroyQuestNpc(npcs.Npc13241Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc13266Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13270Data.alias):DisableInteeHeadCtrl(false)
end

function Quest19078:OnSubStart1907805(arg1)
    print("OnSubStart1907805")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907805)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907805, 1, 30, 1)
    this:GetQuestNpcActor(npcs.Npc13266Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13270Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest19078:OnSubFinish1907805(arg1)
    print("OnSubFinish1907805")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13265Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13266Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13270Data.alias, 3)
end

function Quest19078:OnSubStart1907806(arg1)
    print("OnSubStart1907806")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907806)
    this:CreateQuestNpc(arg1, npcs.Npc13240Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13242Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13267Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc13267Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:CreateQuestNpc(arg1, npcs.Npc13268Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc13240Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13242Data.alias)
    questNpcActor:DoFreeStyle(1090, true, nil, true, true, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13267Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13268Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19078:OnSubFinish1907806(arg1)
    print("OnSubFinish1907806")
    this:SafeDestroyQuestNpc(npcs.Npc13240Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13267Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13268Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc13242Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13267Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13268Data.alias):DisableInteeHeadCtrl(false)
end

function Quest19078:OnSubStart1907807(arg1)
    print("OnSubStart1907807")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907807)
    this:CreateQuestNpc(arg1, npcs.Npc13242Data.id, 2)
    this:CreateLocalGadget(70711045, "19078", {x = -1792.216, y = 204.916, z = 2675.286}, {x = 0.437, y = 62.464, z = 0.905}, 3, nil, nil, true)
    this:GetQuestNpcActor(npcs.Npc13242Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest19078:OnSubFinish1907807(arg1)
    print("OnSubFinish1907807")
    this:RemoveLocalGadget(70711045, "19078")
    this:SafeDestroyQuestNpc(npcs.Npc13242Data.alias, 3)
end

function Quest19078:OnSubStart1907809(arg1)
    print("OnSubStart1907809")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907809)
    this:CreateQuestNpc(arg1, npcs.Npc13244Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc13244Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19078:OnSubFinish1907809(arg1)
    print("OnSubFinish1907809")
    this:SafeDestroyQuestNpc(npcs.Npc13244Data.alias, 3)
end

function Quest19078:OnSubStart1907810(arg1)
    print("OnSubStart1907810")
end

function Quest19078:OnSubFinish1907810(arg1)
    print("OnSubFinish1907810")
end

function Quest19078:OnSubStart1907811(arg1)
    print("OnSubStart1907811")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907811)
    this:CallDelay(2, self.unCallNPCTrigger)
end

function Quest19078:OnSubFinish1907811(arg1)
    print("OnSubFinish1907811")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitText, 6, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13244Data.alias, 3)
end

function Quest19078:OnSubStart1907812(arg1)
    print("OnSubStart1907812")
    actorMgr:CreateActorWithPos("Q1907812Trigger", "Actor/Gadget/Q1907812Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1907813_N515").pos, sceneData:GetDummyPoint(3, "Q1907813_N515").rot, true, false, 3)
end

function Quest19078:OnSubFinish1907812(arg1)
    print("OnSubFinish1907812")
end

function Quest19078:OnSubStart1907813(arg1)
    print("OnSubStart1907813")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907813)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907813, 1, 15, 1)
end

function Quest19078:OnSubFinish1907813(arg1)
    print("OnSubFinish1907813")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
end

function Quest19078:OnSubStart1907814(arg1)
    print("OnSubStart1907814")
    this:CreateQuestNpc(arg1, npcs.Npc12772Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13271Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc12772Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
end

function Quest19078:OnSubFinish1907814(arg1)
    print("OnSubFinish1907814")
    this:SafeDestroyQuestNpc(npcs.Npc12772Data.alias, 3)
end

function Quest19078:OnSubStart1907815(arg1)
    print("OnSubStart1907815")
    this:CreateQuestNpc(arg1, npcs.Npc13242Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13243Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13268Data.id, 4)
    actorMgr:CreateActorWithPos("Q1907815Trigger", "Actor/Gadget/Q1907815Trigger", 70900002, 0, {x = -1791.646, y = 202.065, z = 2676.106}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13242Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13268Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest19078:OnSubFinish1907815(arg1)
    print("OnSubFinish1907815")
end

function Quest19078:OnSubStart1907816(arg1)
    print("OnSubStart1907816")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907816)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907816, 1, 5, 1)
    this:GetQuestNpcActor(npcs.Npc13242Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13268Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
end

function Quest19078:OnSubFinish1907816(arg1)
    print("OnSubFinish1907816")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13242Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13243Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13268Data.alias, 3)
end

function Quest19078:OnSubStart1907817(arg1)
    print("OnSubStart1907817")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1907817)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1907817, 1, 10, 1)
end

function Quest19078:OnSubFinish1907817(arg1)
    print("OnSubFinish1907817")
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13271Data.alias, 3)
end

return Quest19078
