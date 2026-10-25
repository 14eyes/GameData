require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15010 = class("Quest15010", QuestActorProxy)
Quest15010.defaultAlias = "Quest15010"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501001"] = self.OnSubStart1501001,
        ["1501002"] = self.OnSubStart1501002,
        ["1501003"] = self.OnSubStart1501003,
        ["1501017"] = self.OnSubStart1501017,
        ["1501004"] = self.OnSubStart1501004,
        ["1501011"] = self.OnSubStart1501011,
        ["1501012"] = self.OnSubStart1501012,
        ["1501013"] = self.OnSubStart1501013,
        ["1501025"] = self.OnSubStart1501025,
        ["1501005"] = self.OnSubStart1501005,
        ["1501020"] = self.OnSubStart1501020,
        ["1501006"] = self.OnSubStart1501006,
        ["1501007"] = self.OnSubStart1501007,
        ["1501021"] = self.OnSubStart1501021,
        ["1501016"] = self.OnSubStart1501016,
        ["1501018"] = self.OnSubStart1501018,
        ["1501024"] = self.OnSubStart1501024,
        ["1501008"] = self.OnSubStart1501008,
        ["1501014"] = self.OnSubStart1501014,
        ["1501009"] = self.OnSubStart1501009,
        ["1501010"] = self.OnSubStart1501010,
        ["1501023"] = self.OnSubStart1501023,
        ["1501022"] = self.OnSubStart1501022,
        ["1501015"] = self.OnSubStart1501015,
        ["1501019"] = self.OnSubStart1501019
    }
end

function Quest15010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501001"] = self.OnSubFinish1501001,
        ["1501002"] = self.OnSubFinish1501002,
        ["1501003"] = self.OnSubFinish1501003,
        ["1501017"] = self.OnSubFinish1501017,
        ["1501004"] = self.OnSubFinish1501004,
        ["1501011"] = self.OnSubFinish1501011,
        ["1501012"] = self.OnSubFinish1501012,
        ["1501013"] = self.OnSubFinish1501013,
        ["1501025"] = self.OnSubFinish1501025,
        ["1501005"] = self.OnSubFinish1501005,
        ["1501020"] = self.OnSubFinish1501020,
        ["1501006"] = self.OnSubFinish1501006,
        ["1501007"] = self.OnSubFinish1501007,
        ["1501021"] = self.OnSubFinish1501021,
        ["1501016"] = self.OnSubFinish1501016,
        ["1501018"] = self.OnSubFinish1501018,
        ["1501024"] = self.OnSubFinish1501024,
        ["1501008"] = self.OnSubFinish1501008,
        ["1501014"] = self.OnSubFinish1501014,
        ["1501009"] = self.OnSubFinish1501009,
        ["1501010"] = self.OnSubFinish1501010,
        ["1501023"] = self.OnSubFinish1501023,
        ["1501022"] = self.OnSubFinish1501022,
        ["1501015"] = self.OnSubFinish1501015,
        ["1501019"] = self.OnSubFinish1501019
    }
end

function Quest15010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1501003"] = self.OnSubFailed1501003,
        ["1501017"] = self.OnSubFailed1501017,
        ["1501004"] = self.OnSubFailed1501004,
        ["1501011"] = self.OnSubFailed1501011,
        ["1501012"] = self.OnSubFailed1501012,
        ["1501013"] = self.OnSubFailed1501013,
        ["1501005"] = self.OnSubFailed1501005,
        ["1501007"] = self.OnSubFailed1501007,
        ["1501021"] = self.OnSubFailed1501021,
        ["1501024"] = self.OnSubFailed1501024,
        ["1501008"] = self.OnSubFailed1501008,
        ["1501014"] = self.OnSubFailed1501014
    }
end

function Quest15010:Start()
    print("Start")
end

function Quest15010:OnDestroy()
    print("OnDestroy")
end

function Quest15010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 20 then
        actorUtils.FinishQuestID(false, 1501020)
    end
end

function Quest15010:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15010:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15010:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest15010:OnSubStart1501001(arg1)
    print("OnSubStart1501001")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 7, 1501001)
        this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
        if this:GetQuestVar(1501001, 0) == 0 then
            this:QuestNarratorTask(datas.NarratorWithId_1501001, nil)
            this:SetQuestVarByMainId(0, 1)
        end
    end)
end

function Quest15010:OnSubFinish1501001(arg1)
    print("OnSubFinish1501001")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 3)
end

function Quest15010:OnSubStart1501002(arg1)
    print("OnSubStart1501002")
    actorMgr:CreateActorWithPos("Q1501002Trigger", "Actor/Gadget/Q1501002Trigger", 70900002, 0, points._Q1501002TriggerPoint_.pos, points._Q1501002TriggerPoint_.rot, true, false, 3)
    this:ActorDestroy("Q1501016Trigger")
    this:ActorDestroy("Q1501018Trigger")
end

function Quest15010:OnSubFinish1501002(arg1)
    print("OnSubFinish1501002")
    this:ActorDestroy("Q1501002Trigger")
end

function Quest15010:OnSubStart1501003(arg1)
    print("OnSubStart1501003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501003, 0, 10, 1, npcs.Npc1087.id)
end

function Quest15010:OnSubFinish1501003(arg1)
    print("OnSubFinish1501003")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
end

function Quest15010:OnSubFailed1501003(arg1)
    print("OnSubFailed1501003")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
end

function Quest15010:OnSubStart1501017(arg1)
    print("OnSubStart1501017")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1501017, 0, 15, 1, npcs.Npc1087.id)
end

function Quest15010:OnSubFinish1501017(arg1)
    print("OnSubFinish1501017")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
end

function Quest15010:OnSubFailed1501017(arg1)
    print("OnSubFailed1501017")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
end

function Quest15010:OnSubStart1501004(arg1)
    print("OnSubStart1501004")
    actorMgr:CreateActorWithPos("Q1501004Trigger", "Actor/Gadget/Q1501004Trigger", 70900002, 0, points._Q1501004TriggerPoint_.pos, points._Q1501004TriggerPoint_.rot, true, false, 20232)
end

function Quest15010:OnSubFinish1501004(arg1)
    print("OnSubFinish1501004")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
end

function Quest15010:OnSubFailed1501004(arg1)
    print("OnSubFailed1501004")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
    this:ActorDestroy("Q1501004Trigger")
end

function Quest15010:OnSubStart1501011(arg1)
    print("OnSubStart1501011")
    this:CreateQuestNpc(arg1, npcs.Npc14319.id, 0, false, 0)
    this:CreateLocalGadget(70310148, "1", {x = 288.469, y = 101.94, z = 531.334}, {x = 0, y = 0, z = 0}, 20232, nil, nil, false, 0, true)
end

function Quest15010:OnSubFinish1501011(arg1)
    print("OnSubFinish1501011")
    this:SafeDestroyQuestNpc(npcs.Npc14319.alias, 20232)
    this:RemoveLocalGadget(70310148, "1")
end

function Quest15010:OnSubFailed1501011(arg1)
    print("OnSubFailed1501011")
    this:SafeDestroyQuestNpc(npcs.Npc14319.alias, 20232)
    this:RemoveLocalGadget(70310148, "1")
end

function Quest15010:OnSubStart1501012(arg1)
    print("OnSubStart1501012")
    this:CreateQuestNpc(arg1, npcs.Npc14320.id, 0, false, 0)
    this:CreateLocalGadget(70310148, "2", {x = 311.989, y = 99.29, z = 540.003}, {x = 0, y = 0, z = 0}, 20232, nil, nil, false, 0, true)
end

function Quest15010:OnSubFinish1501012(arg1)
    print("OnSubFinish1501012")
    this:SafeDestroyQuestNpc(npcs.Npc14320.alias, 20232)
    this:RemoveLocalGadget(70310148, "2")
end

function Quest15010:OnSubFailed1501012(arg1)
    print("OnSubFailed1501012")
    this:SafeDestroyQuestNpc(npcs.Npc14320.alias, 20232)
    this:RemoveLocalGadget(70310148, "2")
end

function Quest15010:OnSubStart1501013(arg1)
    print("OnSubStart1501013")
    this:CreateQuestNpc(arg1, npcs.Npc14321.id, 0, false, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14227.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    end)

    this:CreateLocalGadget(70310148, "3", {x = 334.687, y = 94.107, z = 552.644}, {x = 0, y = 0, z = 0}, 20232, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q1501013Trigger", "Actor/Gadget/Q1501013Trigger", 70900002, 0, points._Q1501013TriggerPoint_.pos, points._Q1501013TriggerPoint_.rot, true, false, 20232)
end

function Quest15010:OnSubFinish1501013(arg1)
    print("OnSubFinish1501013")
    this:SafeDestroyQuestNpc(npcs.Npc14321.alias, 20232)
    this:RemoveLocalGadget(70310148, "3")
end

function Quest15010:OnSubFailed1501013(arg1)
    print("OnSubFailed1501013")
    this:SafeDestroyQuestNpc(npcs.Npc14321.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 20232)
    this:RemoveLocalGadget(70310148, "3")
    this:ActorDestroy("Q1501013Trigger")
end

function Quest15010:OnSubStart1501025(arg1)
    print("OnSubStart1501025")
end

function Quest15010:OnSubFinish1501025(arg1)
    print("OnSubFinish1501025")
end

function Quest15010:OnSubStart1501005(arg1)
    print("OnSubStart1501005")
    actorMgr:CreateActorWithPos("Q1501005Trigger", "Actor/Gadget/Q1501005Trigger", 70900002, 0, points._Q1501005TriggerPoint_.pos, points._Q1501005TriggerPoint_.rot, true, false, 20232)
end

function Quest15010:OnSubFinish1501005(arg1)
    print("OnSubFinish1501005")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 20232)
end

function Quest15010:OnSubFailed1501005(arg1)
    print("OnSubFailed1501005")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
    this:ActorDestroy("Q1501005Trigger")
end

function Quest15010:OnSubStart1501020(arg1)
    print("OnSubStart1501020")
end

function Quest15010:OnSubFinish1501020(arg1)
    print("OnSubFinish1501020")
end

function Quest15010:OnSubStart1501006(arg1)
    print("OnSubStart1501006")
end

function Quest15010:OnSubFinish1501006(arg1)
    print("OnSubFinish1501006")
end

function Quest15010:OnSubStart1501007(arg1)
    print("OnSubStart1501007")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1501007, 0, 20, 1, npcs.Npc1087.id)
end

function Quest15010:OnSubFinish1501007(arg1)
    print("OnSubFinish1501007")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
end

function Quest15010:OnSubFailed1501007(arg1)
    print("OnSubFailed1501007")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
end

function Quest15010:OnSubStart1501021(arg1)
    print("OnSubStart1501021")
    this:CreateQuestNpc(arg1, npcs.Npc14228.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15010):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
end

function Quest15010:OnSubFinish1501021(arg1)
    print("OnSubFinish1501021")
end

function Quest15010:OnSubFailed1501021(arg1)
    print("OnSubFailed1501021")
    this:SafeDestroyQuestNpc(npcs.Npc14227.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Npc14228.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20232)
end

function Quest15010:OnSubStart1501016(arg1)
    print("OnSubStart1501016")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q1501016Trigger", "Actor/Gadget/Q1501016Trigger", 70900002, 0, points._Q1501016TriggerPoint_.pos, points._Q1501016TriggerPoint_.rot, true, false, 20232)
    end)
end

function Quest15010:OnSubFinish1501016(arg1)
    print("OnSubFinish1501016")
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 20232)
    this:ActorDestroy("Q1501016Trigger")
end

function Quest15010:OnSubStart1501018(arg1)
    print("OnSubStart1501018")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q1501018Trigger", "Actor/Gadget/Q1501018Trigger", 70900002, 0, points._Q1501018TriggerPoint_.pos, points._Q1501018TriggerPoint_.rot, true, false, 20232)
    end)
end

function Quest15010:OnSubFinish1501018(arg1)
    print("OnSubFinish1501018")
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 20232)
    this:ActorDestroy("Q1501018Trigger")
end

function Quest15010:OnSubStart1501024(arg1)
    print("OnSubStart1501024")
    this:CreateQuestNpc(arg1, npcs.Npc14553.id, 0, false, 0)
end

function Quest15010:OnSubFinish1501024(arg1)
    print("OnSubFinish1501024")
end

function Quest15010:OnSubFailed1501024(arg1)
    print("OnSubFailed1501024")
    this:SafeDestroyQuestNpc(npcs.Npc14553.alias, 20232)
end

function Quest15010:OnSubStart1501008(arg1)
    print("OnSubStart1501008")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14228.alias, 15010):DoFreeStyle(1050, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q1501008Trigger", "Actor/Gadget/Q1501008Trigger", 70900002, 0, points._Q1501008TriggerPoint_.pos, points._Q1501008TriggerPoint_.rot, true, false, 20232)
end

function Quest15010:OnSubFinish1501008(arg1)
    print("OnSubFinish1501008")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Npc14553.alias, 20232)
end

function Quest15010:OnSubFailed1501008(arg1)
    print("OnSubFailed1501008")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20232)
    this:SafeDestroyQuestNpc(npcs.Npc14553.alias, 20232)
    this:ActorDestroy("Q1501008Trigger")
end

function Quest15010:OnSubStart1501014(arg1)
    print("OnSubStart1501014")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1501014, 0, 8, 1, npcs.Npc1087.id)
    actorMgr:CreateActorWithPos("Q1501014Trigger", "Actor/Gadget/Q1501014Trigger", 70900002, 0, points._Q1501014TriggerPoint_.pos, points._Q1501014TriggerPoint_.rot, true, false, 20232)
end

function Quest15010:OnSubFinish1501014(arg1)
    print("OnSubFinish1501014")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
    this:TransmitPlayerWithDialogTextById(arg1, 4, datas.DialogIdsData, 1, nil, nil, nil)
    this:ActorDestroy("Q1501014Trigger")
end

function Quest15010:OnSubFailed1501014(arg1)
    print("OnSubFailed1501014")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20232)
    this:ActorDestroy("Q1501014Trigger")
end

function Quest15010:OnSubStart1501009(arg1)
    print("OnSubStart1501009")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1501009, 0, 15, 1, npcs.Npc1087.id)
end

function Quest15010:OnSubFinish1501009(arg1)
    print("OnSubFinish1501009")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
end

function Quest15010:OnSubStart1501010(arg1)
    print("OnSubStart1501010")
    this:CreateQuestNpc(arg1, npcs.Npc14230.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14230.alias, 15010):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1501010Trigger", "Actor/Gadget/Q1501010Trigger", 70900002, 0, points._Q1501010TriggerPoint_.pos, points._Q1501010TriggerPoint_.rot, true, false, 3)
    this:BanCrowdNpc(3502, 3, datas.InstanceIDList1501010, true)
end

function Quest15010:OnSubFinish1501010(arg1)
    print("OnSubFinish1501010")
    this:BanCrowdNpc(3502, 3, datas.InstanceIDList1501010, false)
end

function Quest15010:OnSubStart1501023(arg1)
    print("OnSubStart1501023")
end

function Quest15010:OnSubFinish1501023(arg1)
    print("OnSubFinish1501023")
end

function Quest15010:OnSubStart1501022(arg1)
    print("OnSubStart1501022")
end

function Quest15010:OnSubFinish1501022(arg1)
    print("OnSubFinish1501022")
end

function Quest15010:OnSubStart1501015(arg1)
    print("OnSubStart1501015")
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 7, 1501015)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 15010):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Quest15010:OnSubFinish1501015(arg1)
    print("OnSubFinish1501015")
    this:SafeDestroyQuestNpc(npcs.Npc14230.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1087.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    actorMgr:CreateActorWithPos("Q1501015Triggerout", "Actor/Gadget/Q1501015Triggerout", 70900002, 0, points._Q1501015TriggeroutPoint_.pos, points._Q1501015TriggeroutPoint_.rot, true, false, 3)
end

function Quest15010:OnSubStart1501019(arg1)
    print("OnSubStart1501019")
    actorMgr:CreateActorWithPos("Q1501019Trigger", "Actor/Gadget/Q1501019Trigger", 70900002, 0, points._Q1501019TriggerPoint_.pos, points._Q1501019TriggerPoint_.rot, true, false, 20232)
end

function Quest15010:OnSubFinish1501019(arg1)
    print("OnSubFinish1501019")
    this:SafeDestroyQuestNpc(npcs.Npc14317.alias, 20232)
    this:ActorDestroy("Q1501019Trigger")
end

return Quest15010
