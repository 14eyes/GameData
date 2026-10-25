require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75079 = class("Quest75079", QuestActorProxy)
Quest75079.defaultAlias = "Quest75079"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75079:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75079:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7507906"] = self.OnSubStart7507906,
        ["7507903"] = self.OnSubStart7507903,
        ["7507911"] = self.OnSubStart7507911,
        ["7507910"] = self.OnSubStart7507910,
        ["7507902"] = self.OnSubStart7507902,
        ["7507907"] = self.OnSubStart7507907,
        ["7507908"] = self.OnSubStart7507908,
        ["7507909"] = self.OnSubStart7507909
    }
end

function Quest75079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7507906"] = self.OnSubFinish7507906,
        ["7507903"] = self.OnSubFinish7507903,
        ["7507911"] = self.OnSubFinish7507911,
        ["7507910"] = self.OnSubFinish7507910,
        ["7507902"] = self.OnSubFinish7507902,
        ["7507907"] = self.OnSubFinish7507907,
        ["7507908"] = self.OnSubFinish7507908,
        ["7507909"] = self.OnSubFinish7507909
    }
end

function Quest75079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7507902"] = self.OnSubFailed7507902}
end

function Quest75079:Start()
    print("Start")
end

function Quest75079:OnDestroy()
    print("OnDestroy")
end

function Quest75079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75079:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75079:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7507910)
    end
end

function Quest75079:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75079:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75079:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75079:OnSubStart7507906(arg1)
    print("OnSubStart7507906")
    this:CreateQuestNpc(arg1, npcs.Npc6274.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6178.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6171.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6173.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21777.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6168.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21607.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6285.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6172.id, 0, false, 0)
end

function Quest75079:OnSubFinish7507906(arg1)
    print("OnSubFinish7507906")
end

function Quest75079:OnSubStart7507903(arg1)
    print("OnSubStart7507903")
    this:NpcCreateWithNpcTrigger(npcs.Npc6274.id, 0, 40, 7507903)
end

function Quest75079:OnSubFinish7507903(arg1)
    print("OnSubFinish7507903")
end

function Quest75079:OnSubStart7507911(arg1)
    print("OnSubStart7507911")
    actorMgr:CreateActorWithPos("Trigger7507911", "Actor/Gadget/Trigger7507911", 70900002, 0, points._Trigger7507911Point_.pos, points._Trigger7507911Point_.rot, true, false, 3)
end

function Quest75079:OnSubFinish7507911(arg1)
    print("OnSubFinish7507911")
    this:ActorDestroy("Trigger7507911")
end

function Quest75079:OnSubStart7507910(arg1)
    print("OnSubStart7507910")
    this:CreateQuestNpc(arg1, npcs.Npc6275.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6275.alias, 75079):DoFreeStyle(4453, true, nil, true, true, false, false)
end

function Quest75079:OnSubFinish7507910(arg1)
    print("OnSubFinish7507910")
end

function Quest75079:OnSubStart7507902(arg1)
    print("OnSubStart7507902")
    this:GetQuestNpcActor(npcs.Npc6275.alias, 75079):DoFreeStyle(4453, true, nil, true, true, false, false)
end

function Quest75079:OnSubFinish7507902(arg1)
    print("OnSubFinish7507902")
    this:QuestNarratorTask(datas.NarratorWithId_750790107, nil)
end

function Quest75079:OnSubFailed7507902(arg1)
    print("OnSubFailed7507902")
    this:TransmitPlayerByQuestId(7507902, 2, nil, nil, nil)
end

function Quest75079:OnSubStart7507907(arg1)
    print("OnSubStart7507907")
    this:NpcCreateWithNpcTrigger(npcs.Npc6171.id, 0, 10, 7507907)
end

function Quest75079:OnSubFinish7507907(arg1)
    print("OnSubFinish7507907")
    this:SafeDestroyQuestNpc(npcs.Npc6171.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21777.alias, 3)
end

function Quest75079:OnSubStart7507908(arg1)
    print("OnSubStart7507908")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6173.id, arg1)
end

function Quest75079:OnSubFinish7507908(arg1)
    print("OnSubFinish7507908")
end

function Quest75079:OnSubStart7507909(arg1)
    print("OnSubStart7507909")
    this:NpcCreateWithNpcTrigger(npcs.Npc6173.id, 0, 10, 7507909)
end

function Quest75079:OnSubFinish7507909(arg1)
    print("OnSubFinish7507909")
    this:SafeDestroyQuestNpc(npcs.Npc6275.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21607.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6285.alias, 3)
end

return Quest75079
