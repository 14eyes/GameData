require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76098 = class("Quest76098", QuestActorProxy)
Quest76098.defaultAlias = "Quest76098"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76098:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76098:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609803"] = self.OnSubStart7609803,
        ["7609804"] = self.OnSubStart7609804,
        ["7609802"] = self.OnSubStart7609802,
        ["7609805"] = self.OnSubStart7609805,
        ["7609826"] = self.OnSubStart7609826,
        ["7609806"] = self.OnSubStart7609806,
        ["7609807"] = self.OnSubStart7609807,
        ["7609832"] = self.OnSubStart7609832,
        ["7609808"] = self.OnSubStart7609808,
        ["7609809"] = self.OnSubStart7609809,
        ["7609818"] = self.OnSubStart7609818,
        ["7609822"] = self.OnSubStart7609822,
        ["7609823"] = self.OnSubStart7609823,
        ["7609824"] = self.OnSubStart7609824,
        ["7609825"] = self.OnSubStart7609825,
        ["7609819"] = self.OnSubStart7609819,
        ["7609834"] = self.OnSubStart7609834,
        ["7609820"] = self.OnSubStart7609820,
        ["7609821"] = self.OnSubStart7609821,
        ["7609810"] = self.OnSubStart7609810,
        ["7609811"] = self.OnSubStart7609811,
        ["7609812"] = self.OnSubStart7609812,
        ["7609813"] = self.OnSubStart7609813,
        ["7609831"] = self.OnSubStart7609831,
        ["7609814"] = self.OnSubStart7609814,
        ["7609815"] = self.OnSubStart7609815,
        ["7609816"] = self.OnSubStart7609816,
        ["7609828"] = self.OnSubStart7609828,
        ["7609817"] = self.OnSubStart7609817,
        ["7609833"] = self.OnSubStart7609833,
        ["7609827"] = self.OnSubStart7609827,
        ["7609829"] = self.OnSubStart7609829,
        ["7609801"] = self.OnSubStart7609801
    }
end

function Quest76098:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609803"] = self.OnSubFinish7609803,
        ["7609804"] = self.OnSubFinish7609804,
        ["7609802"] = self.OnSubFinish7609802,
        ["7609805"] = self.OnSubFinish7609805,
        ["7609826"] = self.OnSubFinish7609826,
        ["7609806"] = self.OnSubFinish7609806,
        ["7609807"] = self.OnSubFinish7609807,
        ["7609832"] = self.OnSubFinish7609832,
        ["7609808"] = self.OnSubFinish7609808,
        ["7609809"] = self.OnSubFinish7609809,
        ["7609818"] = self.OnSubFinish7609818,
        ["7609822"] = self.OnSubFinish7609822,
        ["7609823"] = self.OnSubFinish7609823,
        ["7609824"] = self.OnSubFinish7609824,
        ["7609825"] = self.OnSubFinish7609825,
        ["7609819"] = self.OnSubFinish7609819,
        ["7609834"] = self.OnSubFinish7609834,
        ["7609820"] = self.OnSubFinish7609820,
        ["7609821"] = self.OnSubFinish7609821,
        ["7609810"] = self.OnSubFinish7609810,
        ["7609811"] = self.OnSubFinish7609811,
        ["7609812"] = self.OnSubFinish7609812,
        ["7609813"] = self.OnSubFinish7609813,
        ["7609831"] = self.OnSubFinish7609831,
        ["7609814"] = self.OnSubFinish7609814,
        ["7609815"] = self.OnSubFinish7609815,
        ["7609816"] = self.OnSubFinish7609816,
        ["7609828"] = self.OnSubFinish7609828,
        ["7609817"] = self.OnSubFinish7609817,
        ["7609833"] = self.OnSubFinish7609833,
        ["7609827"] = self.OnSubFinish7609827,
        ["7609829"] = self.OnSubFinish7609829,
        ["7609801"] = self.OnSubFinish7609801
    }
end

function Quest76098:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76098:Start()
    print("Start")
end

function Quest76098:OnDestroy()
    print("OnDestroy")
end

function Quest76098:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76098:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76098:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76098:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7609815Trigger")
    this:ActorDestroy("Q7609807Trigger")
    this:ActorDestroy("Q7609804Trigger")
    this:ActorDestroy("Q7609802Trigger")
    this:ActorDestroy("Q7609833Trigger")
    this:ActorDestroy("Q7609826Tigger")
    this:ActorDestroy("Q7609832Trigger")
end

function Quest76098:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76098:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76098:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest76098:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76098:OnSubStart7609803(arg1)
    print("OnSubStart7609803")
    this:CreateQuestNpc(arg1, npcs.Npc22211.id, 0, false, 0)
end

function Quest76098:OnSubFinish7609803(arg1)
    print("OnSubFinish7609803")
    this:SafeDestroyQuestNpc(npcs.Npc22211.alias, 3)
    this:SetNavigationByMainId(0, true)
end

function Quest76098:OnSubStart7609804(arg1)
    print("OnSubStart7609804")
    actorMgr:CreateActorWithPos("Q7609804Trigger", "Actor/Gadget/Q7609804Trigger", 70900002, 0, points._Q7609804TriggerPoint_.pos, points._Q7609804TriggerPoint_.rot, true, false, 3)
end

function Quest76098:OnSubFinish7609804(arg1)
    print("OnSubFinish7609804")
    this:SetNavigationByMainId(76098, true)
end

function Quest76098:OnSubStart7609802(arg1)
    print("OnSubStart7609802")
    actorMgr:CreateActorWithPos("Q7609802Trigger", "Actor/Gadget/Q7609802Trigger", 70900002, 0, points._Q7609802TriggerPoint_.pos, points._Q7609802TriggerPoint_.rot, true, false, 3)
end

function Quest76098:OnSubFinish7609802(arg1)
    print("OnSubFinish7609802")
end

function Quest76098:OnSubStart7609805(arg1)
    print("OnSubStart7609805")
end

function Quest76098:OnSubFinish7609805(arg1)
    print("OnSubFinish7609805")
end

function Quest76098:OnSubStart7609826(arg1)
    print("OnSubStart7609826")
    this:NpcCreateWithNpcTrigger(npcs.Npc22212.id, 0, 10, 7609826)
end

function Quest76098:OnSubFinish7609826(arg1)
    print("OnSubFinish7609826")
    this:SafeDestroyQuestNpc(npcs.Npc22212.alias, 3)
end

function Quest76098:OnSubStart7609806(arg1)
    print("OnSubStart7609806")
end

function Quest76098:OnSubFinish7609806(arg1)
    print("OnSubFinish7609806")
end

function Quest76098:OnSubStart7609807(arg1)
    print("OnSubStart7609807")
    this:NpcCreateWithNoBlackData(7609807, 0, npcs.Npc22336.id, 0, 10, 7609807, datas.NoBlackData1)
    actorMgr:CreateActorWithPos("Q7609807Trigger", "Actor/Gadget/Q7609807Trigger", 70900002, 0, points._Q7609807TriggerPoint_.pos, points._Q7609807TriggerPoint_.rot, true, false, 3)
end

function Quest76098:OnSubFinish7609807(arg1)
    print("OnSubFinish7609807")
    this:SafeDestroyQuestNpc(npcs.Npc22336.alias, 3)
end

function Quest76098:OnSubStart7609832(arg1)
    print("OnSubStart7609832")
    actorMgr:CreateActorWithPos("Q7609832Trigger", "Actor/Gadget/Q7609832Trigger", 70900002, 0, points._Q7609832TriggerPoint_.pos, points._Q7609832TriggerPoint_.rot, true, false, 3)
end

function Quest76098:OnSubFinish7609832(arg1)
    print("OnSubFinish7609832")
end

function Quest76098:OnSubStart7609808(arg1)
    print("OnSubStart7609808")
end

function Quest76098:OnSubFinish7609808(arg1)
    print("OnSubFinish7609808")
end

function Quest76098:OnSubStart7609809(arg1)
    print("OnSubStart7609809")
end

function Quest76098:OnSubFinish7609809(arg1)
    print("OnSubFinish7609809")
end

function Quest76098:OnSubStart7609818(arg1)
    print("OnSubStart7609818")
end

function Quest76098:OnSubFinish7609818(arg1)
    print("OnSubFinish7609818")
end

function Quest76098:OnSubStart7609822(arg1)
    print("OnSubStart7609822")
end

function Quest76098:OnSubFinish7609822(arg1)
    print("OnSubFinish7609822")
end

function Quest76098:OnSubStart7609823(arg1)
    print("OnSubStart7609823")
end

function Quest76098:OnSubFinish7609823(arg1)
    print("OnSubFinish7609823")
end

function Quest76098:OnSubStart7609824(arg1)
    print("OnSubStart7609824")
end

function Quest76098:OnSubFinish7609824(arg1)
    print("OnSubFinish7609824")
end

function Quest76098:OnSubStart7609825(arg1)
    print("OnSubStart7609825")
end

function Quest76098:OnSubFinish7609825(arg1)
    print("OnSubFinish7609825")
end

function Quest76098:OnSubStart7609819(arg1)
    print("OnSubStart7609819")
end

function Quest76098:OnSubFinish7609819(arg1)
    print("OnSubFinish7609819")
    this:SetNavigationByMainId(76098, true)
end

function Quest76098:OnSubStart7609834(arg1)
    print("OnSubStart7609834")
end

function Quest76098:OnSubFinish7609834(arg1)
    print("OnSubFinish7609834")
end

function Quest76098:OnSubStart7609820(arg1)
    print("OnSubStart7609820")
end

function Quest76098:OnSubFinish7609820(arg1)
    print("OnSubFinish7609820")
    this:SetNavigationByMainId(0, true)
end

function Quest76098:OnSubStart7609821(arg1)
    print("OnSubStart7609821")
end

function Quest76098:OnSubFinish7609821(arg1)
    print("OnSubFinish7609821")
end

function Quest76098:OnSubStart7609810(arg1)
    print("OnSubStart7609810")
    this:NpcCreateWithNpcTrigger(npcs.Npc22212.id, 0, 5, 7609810)
end

function Quest76098:OnSubFinish7609810(arg1)
    print("OnSubFinish7609810")
    this:SafeDestroyQuestNpc(npcs.Npc22212.alias, 3)
end

function Quest76098:OnSubStart7609811(arg1)
    print("OnSubStart7609811")
    this:NpcCreateWithNpcTrigger(npcs.Npc22336.id, 0, 10, 7609811)
end

function Quest76098:OnSubFinish7609811(arg1)
    print("OnSubFinish7609811")
    this:SafeDestroyQuestNpc(npcs.Npc22336.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("InstituteHomeMapPage", 0)
    end)
end

function Quest76098:OnSubStart7609812(arg1)
    print("OnSubStart7609812")
end

function Quest76098:OnSubFinish7609812(arg1)
    print("OnSubFinish7609812")
end

function Quest76098:OnSubStart7609813(arg1)
    print("OnSubStart7609813")
end

function Quest76098:OnSubFinish7609813(arg1)
    print("OnSubFinish7609813")
end

function Quest76098:OnSubStart7609831(arg1)
    print("OnSubStart7609831")
end

function Quest76098:OnSubFinish7609831(arg1)
    print("OnSubFinish7609831")
end

function Quest76098:OnSubStart7609814(arg1)
    print("OnSubStart7609814")
    this:CreateQuestNpc(arg1, npcs.Npc22227.id, 0, false, 0)
end

function Quest76098:OnSubFinish7609814(arg1)
    print("OnSubFinish7609814")
    this:SafeDestroyQuestNpc(npcs.Npc22227.alias, 3)
end

function Quest76098:OnSubStart7609815(arg1)
    print("OnSubStart7609815")
    this:NpcCreateWithNpcTrigger(npcs.Npc22336.id, 0, 5, 7609815)
    actorMgr:CreateActorWithPos("Q7609815Trigger", "Actor/Gadget/Q7609815Trigger", 70900002, 0, points.Q7609815Trigger.pos, points.Q7609815Trigger.rot, true, false, 3)
end

function Quest76098:OnSubFinish7609815(arg1)
    print("OnSubFinish7609815")
    this:SafeDestroyQuestNpc(npcs.Npc22336.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("InstituteHomeMapPage", 0)
    end)
end

function Quest76098:OnSubStart7609816(arg1)
    print("OnSubStart7609816")
end

function Quest76098:OnSubFinish7609816(arg1)
    print("OnSubFinish7609816")
end

function Quest76098:OnSubStart7609828(arg1)
    print("OnSubStart7609828")
    this:NpcCreateWithNpcTrigger(npcs.Npc22319.id, 0, 25, 7609828)
end

function Quest76098:OnSubFinish7609828(arg1)
    print("OnSubFinish7609828")
    this:SafeDestroyQuestNpc(npcs.Npc22319.alias, 3)
end

function Quest76098:OnSubStart7609817(arg1)
    print("OnSubStart7609817")
end

function Quest76098:OnSubFinish7609817(arg1)
    print("OnSubFinish7609817")
end

function Quest76098:OnSubStart7609833(arg1)
    print("OnSubStart7609833")
    actorMgr:CreateActorWithPos("Q7609833Trigger", "Actor/Gadget/Q7609833Trigger", 70900002, 0, points._Q7609833TriggerPoint_.pos, points._Q7609833TriggerPoint_.rot, true, false, 3)
end

function Quest76098:OnSubFinish7609833(arg1)
    print("OnSubFinish7609833")
end

function Quest76098:OnSubStart7609827(arg1)
    print("OnSubStart7609827")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7609827, 0, 43, 0, npcs.Paimon.id)
end

function Quest76098:OnSubFinish7609827(arg1)
    print("OnSubFinish7609827")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76098:OnSubStart7609829(arg1)
    print("OnSubStart7609829")
end

function Quest76098:OnSubFinish7609829(arg1)
    print("OnSubFinish7609829")
end

function Quest76098:OnSubStart7609801(arg1)
    print("OnSubStart7609801")
end

function Quest76098:OnSubFinish7609801(arg1)
    print("OnSubFinish7609801")
    this:QuestNarratorTask(datas.NarratorWithId_7609830, nil)
end

return Quest76098
