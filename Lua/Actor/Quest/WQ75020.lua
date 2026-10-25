require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75020 = class("Quest75020", QuestActorProxy)
Quest75020.defaultAlias = "Quest75020"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest75020:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest75020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502017"] = self.OnSubStart7502017,
        ["7502002"] = self.OnSubStart7502002,
        ["7502018"] = self.OnSubStart7502018,
        ["7502003"] = self.OnSubStart7502003,
        ["7502004"] = self.OnSubStart7502004,
        ["7502005"] = self.OnSubStart7502005,
        ["7502006"] = self.OnSubStart7502006,
        ["7502007"] = self.OnSubStart7502007,
        ["7502019"] = self.OnSubStart7502019,
        ["7502008"] = self.OnSubStart7502008,
        ["7502009"] = self.OnSubStart7502009,
        ["7502015"] = self.OnSubStart7502015,
        ["7502010"] = self.OnSubStart7502010,
        ["7502016"] = self.OnSubStart7502016,
        ["7502020"] = self.OnSubStart7502020,
        ["7502021"] = self.OnSubStart7502021,
        ["7502022"] = self.OnSubStart7502022,
        ["7502023"] = self.OnSubStart7502023,
        ["7502011"] = self.OnSubStart7502011,
        ["7502001"] = self.OnSubStart7502001,
        ["7502012"] = self.OnSubStart7502012,
        ["7502013"] = self.OnSubStart7502013,
        ["7502014"] = self.OnSubStart7502014
    }
end

function Quest75020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502017"] = self.OnSubFinish7502017,
        ["7502002"] = self.OnSubFinish7502002,
        ["7502018"] = self.OnSubFinish7502018,
        ["7502003"] = self.OnSubFinish7502003,
        ["7502004"] = self.OnSubFinish7502004,
        ["7502005"] = self.OnSubFinish7502005,
        ["7502006"] = self.OnSubFinish7502006,
        ["7502007"] = self.OnSubFinish7502007,
        ["7502019"] = self.OnSubFinish7502019,
        ["7502008"] = self.OnSubFinish7502008,
        ["7502009"] = self.OnSubFinish7502009,
        ["7502015"] = self.OnSubFinish7502015,
        ["7502010"] = self.OnSubFinish7502010,
        ["7502016"] = self.OnSubFinish7502016,
        ["7502020"] = self.OnSubFinish7502020,
        ["7502021"] = self.OnSubFinish7502021,
        ["7502022"] = self.OnSubFinish7502022,
        ["7502023"] = self.OnSubFinish7502023,
        ["7502011"] = self.OnSubFinish7502011,
        ["7502001"] = self.OnSubFinish7502001,
        ["7502012"] = self.OnSubFinish7502012,
        ["7502013"] = self.OnSubFinish7502013,
        ["7502014"] = self.OnSubFinish7502014
    }
end

function Quest75020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7502013"] = self.OnSubFailed7502013}
end

function Quest75020:Start()
    print("Start")
end

function Quest75020:OnDestroy()
    print("OnDestroy")
end

function Quest75020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75020:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest75020:OnSubStart7502017(arg1)
    print("OnSubStart7502017")
end

function Quest75020:OnSubFinish7502017(arg1)
    print("OnSubFinish7502017")
end

function Quest75020:OnSubStart7502002(arg1)
    print("OnSubStart7502002")
    this:CreateQuestNpc(arg1, npcs.Npc6132Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7502001Trigger", "Actor/Gadget/Q7502001Trigger", 70900002, 0, points.TPos_Q7502001Trigger.pos, points.TPos_Q7502001Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502002(arg1)
    print("OnSubFinish7502002")
end

function Quest75020:OnSubStart7502018(arg1)
    print("OnSubStart7502018")
    this:CreateQuestNpc(arg1, npcs.Npc6132Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7502001Trigger", "Actor/Gadget/Q7502001Trigger", 70900002, 0, points.TPos_Q7502001Trigger.pos, points.TPos_Q7502001Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502018(arg1)
    print("OnSubFinish7502018")
end

function Quest75020:OnSubStart7502003(arg1)
    print("OnSubStart7502003")
end

function Quest75020:OnSubFinish7502003(arg1)
    print("OnSubFinish7502003")
end

function Quest75020:OnSubStart7502004(arg1)
    print("OnSubStart7502004")
    this:CreateQuestNpc(arg1, npcs.Npc6132Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6132Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6133Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7502004Trigger", "Actor/Gadget/Q7502004Trigger", 70900002, 0, points.TPos_Q7502004Trigger.pos, points.TPos_Q7502004Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502004(arg1)
    print("OnSubFinish7502004")
end

function Quest75020:OnSubStart7502005(arg1)
    print("OnSubStart7502005")
    this:GetQuestNpcActor(npcs.Npc6132Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc6133Data.id, 7502005, 0, 80)
end

function Quest75020:OnSubFinish7502005(arg1)
    print("OnSubFinish7502005")
end

function Quest75020:OnSubStart7502006(arg1)
    print("OnSubStart7502006")
    this:GetQuestNpcActor(npcs.Npc6132Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6133Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7502006Trigger", "Actor/Gadget/Q7502006Trigger", 70900002, 0, points.TPos_Q7502006Trigger.pos, points.TPos_Q7502006Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502006(arg1)
    print("OnSubFinish7502006")
end

function Quest75020:OnSubStart7502007(arg1)
    print("OnSubStart7502007")
    this:NpcCreateWithNpcTrigger(npcs.Npc6132Data.id, 7502007, 0, 100)
    this:GetQuestNpcActor(npcs.Npc6132Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
end

function Quest75020:OnSubFinish7502007(arg1)
    print("OnSubFinish7502007")
    this:SafeDestroyQuestNpc(npcs.Npc6132Data.alias, 3)
end

function Quest75020:OnSubStart7502019(arg1)
    print("OnSubStart7502019")
    actorMgr:CreateActorWithPos("Q7502019Trigger", "Actor/Gadget/Q7502019Trigger", 70900002, 0, points.TPos_Q7502019Trigger.pos, points.TPos_Q7502019Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502019(arg1)
    print("OnSubFinish7502019")
end

function Quest75020:OnSubStart7502008(arg1)
    print("OnSubStart7502008")
end

function Quest75020:OnSubFinish7502008(arg1)
    print("OnSubFinish7502008")
end

function Quest75020:OnSubStart7502009(arg1)
    print("OnSubStart7502009")
    this:NpcCreateWithNpcTrigger(npcs.Npc6132Data.id, 7502009, 0, 50)
end

function Quest75020:OnSubFinish7502009(arg1)
    print("OnSubFinish7502009")
    this:SafeDestroyQuestNpc(npcs.Npc6132Data.alias, 3)
end

function Quest75020:OnSubStart7502015(arg1)
    print("OnSubStart7502015")
    actorMgr:CreateActorWithPos("Q7502015Trigger", "Actor/Gadget/Q7502015Trigger", 70900002, 0, points.TPos_Q7502015Trigger.pos, points.TPos_Q7502015Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502015(arg1)
    print("OnSubFinish7502015")
end

function Quest75020:OnSubStart7502010(arg1)
    print("OnSubStart7502010")
end

function Quest75020:OnSubFinish7502010(arg1)
    print("OnSubFinish7502010")
end

function Quest75020:OnSubStart7502016(arg1)
    print("OnSubStart7502016")
end

function Quest75020:OnSubFinish7502016(arg1)
    print("OnSubFinish7502016")
end

function Quest75020:OnSubStart7502020(arg1)
    print("OnSubStart7502020")
    actorMgr:CreateActorWithPos("Q7502020Trigger", "Actor/Gadget/Q7502020Trigger", 70900002, 0, points.TPos_Q7502020Trigger.pos, points.TPos_Q7502020Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502020(arg1)
    print("OnSubFinish7502020")
end

function Quest75020:OnSubStart7502021(arg1)
    print("OnSubStart7502021")
    actorMgr:CreateActorWithPos("Q7502021Trigger", "Actor/Gadget/Q7502021Trigger", 70900002, 0, points.TPos_Q7502021Trigger.pos, points.TPos_Q7502021Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502021(arg1)
    print("OnSubFinish7502021")
end

function Quest75020:OnSubStart7502022(arg1)
    print("OnSubStart7502022")
    actorMgr:CreateActorWithPos("Q7502022Trigger", "Actor/Gadget/Q7502022Trigger", 70900002, 0, points.TPos_Q7502022Trigger.pos, points.TPos_Q7502022Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502022(arg1)
    print("OnSubFinish7502022")
end

function Quest75020:OnSubStart7502023(arg1)
    print("OnSubStart7502023")
    this:NpcCreateWithNpcTrigger(npcs.Npc6132Data.id, 7502023, 0, 100)
end

function Quest75020:OnSubFinish7502023(arg1)
    print("OnSubFinish7502023")
    this:SafeDestroyQuestNpc(npcs.Npc6132Data.alias, 3)
end

function Quest75020:OnSubStart7502011(arg1)
    print("OnSubStart7502011")
    actorMgr:CreateActorWithPos("Q7502011Trigger", "Actor/Gadget/Q7502011Trigger", 70900002, 0, points.TPos_Q7502011Trigger.pos, points.TPos_Q7502011Trigger.rot, true, false, 3)
end

function Quest75020:OnSubFinish7502011(arg1)
    print("OnSubFinish7502011")
end

function Quest75020:OnSubStart7502001(arg1)
    print("OnSubStart7502001")
end

function Quest75020:OnSubFinish7502001(arg1)
    print("OnSubFinish7502001")
end

function Quest75020:OnSubStart7502012(arg1)
    print("OnSubStart7502012")
    this:NpcCreateWithNpcTrigger(npcs.Npc6132Data.id, 7502012, 0, 100)
end

function Quest75020:OnSubFinish7502012(arg1)
    print("OnSubFinish7502012")
    this:SafeDestroyQuestNpc(npcs.Npc6132Data.alias, 3)
end

function Quest75020:OnSubStart7502013(arg1)
    print("OnSubStart7502013")
end

function Quest75020:OnSubFinish7502013(arg1)
    print("OnSubFinish7502013")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitDialogsId, 0, nil, nil)
end

function Quest75020:OnSubFailed7502013(arg1)
    print("OnSubFailed7502013")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitDialogsId, 0, nil, nil)
end

function Quest75020:OnSubStart7502014(arg1)
    print("OnSubStart7502014")
    this:NpcCreateWithNpcTrigger(npcs.Npc6132Data.id, 7502014, 0, 50)
end

function Quest75020:OnSubFinish7502014(arg1)
    print("OnSubFinish7502014")
    this:SafeDestroyQuestNpc(npcs.Npc6132Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6133Data.alias, 3)
end

return Quest75020
