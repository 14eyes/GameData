require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74015 = class("Quest74015", QuestActorProxy)
Quest74015.defaultAlias = "Quest74015"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74015:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401501"] = self.OnSubStart7401501,
        ["7401502"] = self.OnSubStart7401502,
        ["7401504"] = self.OnSubStart7401504,
        ["7401503"] = self.OnSubStart7401503,
        ["7401506"] = self.OnSubStart7401506,
        ["7401505"] = self.OnSubStart7401505,
        ["7401507"] = self.OnSubStart7401507
    }
end

function Quest74015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401501"] = self.OnSubFinish7401501,
        ["7401502"] = self.OnSubFinish7401502,
        ["7401504"] = self.OnSubFinish7401504,
        ["7401503"] = self.OnSubFinish7401503,
        ["7401506"] = self.OnSubFinish7401506,
        ["7401505"] = self.OnSubFinish7401505,
        ["7401507"] = self.OnSubFinish7401507
    }
end

function Quest74015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74015:Start()
    print("Start")
end

function Quest74015:OnDestroy()
    print("OnDestroy")
end

function Quest74015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74015:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74015:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7401507 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7401507)
        end
    end
end

function Quest74015:OnSubStart7401501(arg1)
    print("OnSubStart7401501")
end

function Quest74015:OnSubFinish7401501(arg1)
    print("OnSubFinish7401501")
    this:RequestInteraction(npcs.Npc21035Data.alias)
end

function Quest74015:OnSubStart7401502(arg1)
    print("OnSubStart7401502")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21035Data.id, 7401502, 0, 10, 1)
end

function Quest74015:OnSubFinish7401502(arg1)
    print("OnSubFinish7401502")
end

function Quest74015:OnSubStart7401504(arg1)
    print("OnSubStart7401504")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74015:OnSubFinish7401504(arg1)
    print("OnSubFinish7401504")
end

function Quest74015:OnSubStart7401503(arg1)
    print("OnSubStart7401503")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74015:OnSubFinish7401503(arg1)
    print("OnSubFinish7401503")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
        this:RequestInteraction(npcs.Npc21035Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74015:OnSubStart7401506(arg1)
    print("OnSubStart7401506")
end

function Quest74015:OnSubFinish7401506(arg1)
    print("OnSubFinish7401506")
end

function Quest74015:OnSubStart7401505(arg1)
    print("OnSubStart7401505")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74015:OnSubFinish7401505(arg1)
    print("OnSubFinish7401505")
    this:SafeDestroyQuestNpc(npcs.Npc21035Data.alias, 3)
end

function Quest74015:OnSubStart7401507(arg1)
    print("OnSubStart7401507")
end

function Quest74015:OnSubFinish7401507(arg1)
    print("OnSubFinish7401507")
end

return Quest74015
