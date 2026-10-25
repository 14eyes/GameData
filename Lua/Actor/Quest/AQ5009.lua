require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5009 = class("Quest5009", QuestActorProxy)
Quest5009.defaultAlias = "Quest5009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500901"] = self.OnSubStart500901,
        ["500902"] = self.OnSubStart500902,
        ["500903"] = self.OnSubStart500903,
        ["500904"] = self.OnSubStart500904,
        ["500914"] = self.OnSubStart500914,
        ["500905"] = self.OnSubStart500905,
        ["500906"] = self.OnSubStart500906,
        ["500912"] = self.OnSubStart500912,
        ["500907"] = self.OnSubStart500907,
        ["500908"] = self.OnSubStart500908,
        ["500915"] = self.OnSubStart500915,
        ["500916"] = self.OnSubStart500916,
        ["500909"] = self.OnSubStart500909,
        ["500911"] = self.OnSubStart500911,
        ["500913"] = self.OnSubStart500913,
        ["500910"] = self.OnSubStart500910
    }
end

function Quest5009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500901"] = self.OnSubFinish500901,
        ["500902"] = self.OnSubFinish500902,
        ["500903"] = self.OnSubFinish500903,
        ["500904"] = self.OnSubFinish500904,
        ["500914"] = self.OnSubFinish500914,
        ["500905"] = self.OnSubFinish500905,
        ["500906"] = self.OnSubFinish500906,
        ["500912"] = self.OnSubFinish500912,
        ["500907"] = self.OnSubFinish500907,
        ["500908"] = self.OnSubFinish500908,
        ["500915"] = self.OnSubFinish500915,
        ["500916"] = self.OnSubFinish500916,
        ["500909"] = self.OnSubFinish500909,
        ["500911"] = self.OnSubFinish500911,
        ["500913"] = self.OnSubFinish500913,
        ["500910"] = self.OnSubFinish500910
    }
end

function Quest5009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5009:Start()
    print("Start")
end

function Quest5009:OnDestroy()
    print("OnDestroy")
end

function Quest5009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 500914)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 500915)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 500916)
    end
end

function Quest5009:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5009:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5009:OnSubStart500901(arg1)
    print("OnSubStart500901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 30, 500901)
end

function Quest5009:OnSubFinish500901(arg1)
    print("OnSubFinish500901")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
end

function Quest5009:OnSubStart500902(arg1)
    print("OnSubStart500902")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500902, 0, 10, 1, npcs.Npc1088.id)
end

function Quest5009:OnSubFinish500902(arg1)
    print("OnSubFinish500902")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

function Quest5009:OnSubStart500903(arg1)
    print("OnSubStart500903")
    actorMgr:CreateActorWithPos("Q500903Gateger", "Actor/Gadget/Q500903Gateger", 70900002, 0, points._Q500903GategerPoint_.pos, points._Q500903GategerPoint_.rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110500900)
    end)
end

function Quest5009:OnSubFinish500903(arg1)
    print("OnSubFinish500903")
end

function Quest5009:OnSubStart500904(arg1)
    print("OnSubStart500904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500904, 0, 5, 1, npcs.Npc1089.id)
    this:DeployStoryByQuest(110500900)
    actorMgr:CreateActorWithPos("Q500903Gateger", "Actor/Gadget/Q500903Gateger", 70900002, 0, points._Q500903GategerPoint_.pos, points._Q500903GategerPoint_.rot, true, false, 3)
end

function Quest5009:OnSubFinish500904(arg1)
    print("OnSubFinish500904")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
end

function Quest5009:OnSubStart500914(arg1)
    print("OnSubStart500914")
end

function Quest5009:OnSubFinish500914(arg1)
    print("OnSubFinish500914")
end

function Quest5009:OnSubStart500905(arg1)
    print("OnSubStart500905")
    this:DeployStoryByQuest(110500900)
    this:DestroyNpcTrigger("Q500908N14235Trigger")
    this:DestroyNpcTrigger("Q500909N14235Trigger")
    this:DestroyNpcTrigger("Q500911N14383Trigger")
    this:DestroyNpcTrigger("Q500912N1089Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20237)
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 20237)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 20237)
    this:SafeDestroyQuestNpc(npcs.Npc14383.alias, 20237)
    actorMgr:CreateActorWithPos("Q500903Gateger", "Actor/Gadget/Q500903Gateger", 70900002, 0, points._Q500903GategerPoint_.pos, points._Q500903GategerPoint_.rot, true, false, 3)
end

function Quest5009:OnSubFinish500905(arg1)
    print("OnSubFinish500905")
    this:ActorDestroy("Q500903Gateger")
end

function Quest5009:OnSubStart500906(arg1)
    print("OnSubStart500906")
end

function Quest5009:OnSubFinish500906(arg1)
    print("OnSubFinish500906")
end

function Quest5009:OnSubStart500912(arg1)
    print("OnSubStart500912")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500912, 0, 8, 1, npcs.Npc1089.id)
end

function Quest5009:OnSubFinish500912(arg1)
    print("OnSubFinish500912")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20237)
end

function Quest5009:OnSubStart500907(arg1)
    print("OnSubStart500907")
end

function Quest5009:OnSubFinish500907(arg1)
    print("OnSubFinish500907")
end

function Quest5009:OnSubStart500908(arg1)
    print("OnSubStart500908")
    this:NpcCreateWithNpcTrigger(npcs.Npc14235.id, 0, 50, 500908)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
end

function Quest5009:OnSubFinish500908(arg1)
    print("OnSubFinish500908")
end

function Quest5009:OnSubStart500915(arg1)
    print("OnSubStart500915")
end

function Quest5009:OnSubFinish500915(arg1)
    print("OnSubFinish500915")
end

function Quest5009:OnSubStart500916(arg1)
    print("OnSubStart500916")
end

function Quest5009:OnSubFinish500916(arg1)
    print("OnSubFinish500916")
end

function Quest5009:OnSubStart500909(arg1)
    print("OnSubStart500909")
    this:NpcCreateWithNpcTrigger(npcs.Npc14235.id, 0, 30, 500909)
end

function Quest5009:OnSubFinish500909(arg1)
    print("OnSubFinish500909")
    this:SafeDestroyQuestNpc(npcs.Npc14235.alias, 20237)
end

function Quest5009:OnSubStart500911(arg1)
    print("OnSubStart500911")
    this:NpcCreateWithNpcTrigger(npcs.Npc14383.id, 0, 50, 500911)
end

function Quest5009:OnSubFinish500911(arg1)
    print("OnSubFinish500911")
    this:PlayerEnterDungeonWithData(1403, 1225, 500911, 1, datas.TransmitData_5009, nil, nil)
end

function Quest5009:OnSubStart500913(arg1)
    print("OnSubStart500913")
    this:DeployStoryByQuest(110500900)
end

function Quest5009:OnSubFinish500913(arg1)
    print("OnSubFinish500913")
end

function Quest5009:OnSubStart500910(arg1)
    print("OnSubStart500910")
    this:CreateQuestNpc(arg1, npcs.Npc14383.id, 0, false, 0)
end

function Quest5009:OnSubFinish500910(arg1)
    print("OnSubFinish500910")
    this:SafeDestroyQuestNpc(npcs.Npc14383.alias, 20241)
end

return Quest5009
