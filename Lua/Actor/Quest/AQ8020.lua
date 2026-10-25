require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8020 = class("Quest8020", QuestActorProxy)
Quest8020.defaultAlias = "Quest8020"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest8020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest8020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["802008"] = self.OnSubStart802008,
        ["802009"] = self.OnSubStart802009,
        ["802002"] = self.OnSubStart802002,
        ["802003"] = self.OnSubStart802003,
        ["802004"] = self.OnSubStart802004,
        ["802001"] = self.OnSubStart802001,
        ["802013"] = self.OnSubStart802013,
        ["802007"] = self.OnSubStart802007,
        ["802011"] = self.OnSubStart802011,
        ["802012"] = self.OnSubStart802012,
        ["802010"] = self.OnSubStart802010,
        ["802005"] = self.OnSubStart802005,
        ["802006"] = self.OnSubStart802006
    }
end

function Quest8020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["802008"] = self.OnSubFinish802008,
        ["802009"] = self.OnSubFinish802009,
        ["802002"] = self.OnSubFinish802002,
        ["802003"] = self.OnSubFinish802003,
        ["802004"] = self.OnSubFinish802004,
        ["802001"] = self.OnSubFinish802001,
        ["802013"] = self.OnSubFinish802013,
        ["802007"] = self.OnSubFinish802007,
        ["802011"] = self.OnSubFinish802011,
        ["802012"] = self.OnSubFinish802012,
        ["802010"] = self.OnSubFinish802010,
        ["802005"] = self.OnSubFinish802005,
        ["802006"] = self.OnSubFinish802006
    }
end

function Quest8020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["802008"] = self.OnSubFailed802008,
        ["802009"] = self.OnSubFailed802009,
        ["802002"] = self.OnSubFailed802002,
        ["802003"] = self.OnSubFailed802003,
        ["802004"] = self.OnSubFailed802004,
        ["802001"] = self.OnSubFailed802001,
        ["802013"] = self.OnSubFailed802013,
        ["802007"] = self.OnSubFailed802007,
        ["802011"] = self.OnSubFailed802011,
        ["802012"] = self.OnSubFailed802012,
        ["802010"] = self.OnSubFailed802010,
        ["802005"] = self.OnSubFailed802005,
        ["802006"] = self.OnSubFailed802006
    }
end

function Quest8020:Start()
    print("Start")
end

function Quest8020:OnDestroy()
    print("OnDestroy")
end

function Quest8020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8020:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 802007)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 802011)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 802012)
    end
end

function Quest8020:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest8020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest8020:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest8020:OnSubStart802008(arg1)
    print("OnSubStart802008")
    this:NpcCreateWithNpcTrigger(npcs.Npc1022.id, 802008, 0, 10)
end

function Quest8020:OnSubFinish802008(arg1)
    print("OnSubFinish802008")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_1, 2, nil, nil, nil)
    end)
end

function Quest8020:OnSubFailed802008(arg1)
    print("OnSubFailed802008")
end

function Quest8020:OnSubStart802009(arg1)
    print("OnSubStart802009")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1022.id, 802009, 0, 10, 1)
end

function Quest8020:OnSubFinish802009(arg1)
    print("OnSubFinish802009")
end

function Quest8020:OnSubFailed802009(arg1)
    print("OnSubFailed802009")
end

function Quest8020:OnSubStart802002(arg1)
    print("OnSubStart802002")
    this:NpcCreateWithNpcTrigger(npcs.Npc1022.id, 802002, 0, 10)
end

function Quest8020:OnSubFinish802002(arg1)
    print("OnSubFinish802002")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 3)
end

function Quest8020:OnSubFailed802002(arg1)
    print("OnSubFailed802002")
end

function Quest8020:OnSubStart802003(arg1)
    print("OnSubStart802003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1022.id, 802003, 0, 15, 1)
    this:CreateLocalGadget(70291289, "1", {x = -511.118, y = 315.147, z = 2124.474}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0)
end

function Quest8020:OnSubFinish802003(arg1)
    print("OnSubFinish802003")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 3)
    this:RemoveLocalGadget(70291289, "1")
end

function Quest8020:OnSubFailed802003(arg1)
    print("OnSubFailed802003")
end

function Quest8020:OnSubStart802004(arg1)
    print("OnSubStart802004")
end

function Quest8020:OnSubFinish802004(arg1)
    print("OnSubFinish802004")
end

function Quest8020:OnSubFailed802004(arg1)
    print("OnSubFailed802004")
end

function Quest8020:OnSubStart802001(arg1)
    print("OnSubStart802001")
end

function Quest8020:OnSubFinish802001(arg1)
    print("OnSubFinish802001")
end

function Quest8020:OnSubFailed802001(arg1)
    print("OnSubFailed802001")
end

function Quest8020:OnSubStart802013(arg1)
    print("OnSubStart802013")
    this:NpcCreateWithNpcTrigger(npcs.Npc14150.id, 802013, 0, 30)
end

function Quest8020:OnSubFinish802013(arg1)
    print("OnSubFinish802013")
    this:SafeDestroyQuestNpc(npcs.Npc14150.alias, 20222)
end

function Quest8020:OnSubFailed802013(arg1)
    print("OnSubFailed802013")
    this:ActorDestroy("Q802013N14150Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14150.alias, 20222)
end

function Quest8020:OnSubStart802007(arg1)
    print("OnSubStart802007")
end

function Quest8020:OnSubFinish802007(arg1)
    print("OnSubFinish802007")
end

function Quest8020:OnSubFailed802007(arg1)
    print("OnSubFailed802007")
end

function Quest8020:OnSubStart802011(arg1)
    print("OnSubStart802011")
end

function Quest8020:OnSubFinish802011(arg1)
    print("OnSubFinish802011")
end

function Quest8020:OnSubFailed802011(arg1)
    print("OnSubFailed802011")
end

function Quest8020:OnSubStart802012(arg1)
    print("OnSubStart802012")
end

function Quest8020:OnSubFinish802012(arg1)
    print("OnSubFinish802012")
end

function Quest8020:OnSubFailed802012(arg1)
    print("OnSubFailed802012")
end

function Quest8020:OnSubStart802010(arg1)
    print("OnSubStart802010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1022.id, 802010, 0, 10, 1)
    this:CreateLocalGadget(70291290, "123", {x = 313.18, y = 34.51, z = -26.155}, {x = 0, y = 0, z = 0}, 20222, nil, nil, false, 0, true)
end

function Quest8020:OnSubFinish802010(arg1)
    print("OnSubFinish802010")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 20222)
end

function Quest8020:OnSubFailed802010(arg1)
    print("OnSubFailed802010")
    this:ActorDestroy("Q802010N1022Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 20222)
    this:ActorDestroy("Q802013N14150Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14150.alias, 20222)
end

function Quest8020:OnSubStart802005(arg1)
    print("OnSubStart802005")
    this:CreateLocalGadget(70291290, "123", {x = 313.18, y = 34.51, z = -26.155}, {x = 0, y = 0, z = 0}, 20222, nil, nil, false, 0, true)
end

function Quest8020:OnSubFinish802005(arg1)
    print("OnSubFinish802005")
end

function Quest8020:OnSubFailed802005(arg1)
    print("OnSubFailed802005")
    this:ActorDestroy("Q802013N14150Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14150.alias, 20222)
end

function Quest8020:OnSubStart802006(arg1)
    print("OnSubStart802006")
    this:CallDelayByQuest("", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1022.id, 802006, 0, 50, 1)
    end)

    this:CreateLocalGadget(70291290, "123", {x = 313.18, y = 34.51, z = -26.155}, {x = 0, y = 0, z = 0}, 20222, nil, nil, false, 0, true)
end

function Quest8020:OnSubFinish802006(arg1)
    print("OnSubFinish802006")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 20222)
    this:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(1288, 1210, true, datas.Emptytextmap, 1)
    end)
end

function Quest8020:OnSubFailed802006(arg1)
    print("OnSubFailed802006")
    this:ActorDestroy("Q802006N1022Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1022.alias, 20222)
    this:ActorDestroy("Q802013N14150Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc14150.alias, 20222)
end

return Quest8020
