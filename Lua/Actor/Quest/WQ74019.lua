require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74019 = class("Quest74019", QuestActorProxy)
Quest74019.defaultAlias = "Quest74019"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74019:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401901"] = self.OnSubStart7401901,
        ["7401903"] = self.OnSubStart7401903,
        ["7401902"] = self.OnSubStart7401902,
        ["7401904"] = self.OnSubStart7401904,
        ["7401906"] = self.OnSubStart7401906,
        ["7401905"] = self.OnSubStart7401905,
        ["7401907"] = self.OnSubStart7401907
    }
end

function Quest74019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401901"] = self.OnSubFinish7401901,
        ["7401903"] = self.OnSubFinish7401903,
        ["7401902"] = self.OnSubFinish7401902,
        ["7401904"] = self.OnSubFinish7401904,
        ["7401906"] = self.OnSubFinish7401906,
        ["7401905"] = self.OnSubFinish7401905,
        ["7401907"] = self.OnSubFinish7401907
    }
end

function Quest74019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74019:Start()
    print("Start")
end

function Quest74019:OnDestroy()
    print("OnDestroy")
end

function Quest74019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74019:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74019:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7401907 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7401907)
        end
    end
end

function Quest74019:OnSubStart7401901(arg1)
    print("OnSubStart7401901")
end

function Quest74019:OnSubFinish7401901(arg1)
    print("OnSubFinish7401901")
    this:RequestInteraction(npcs.Npc21035Data.alias)
end

function Quest74019:OnSubStart7401903(arg1)
    print("OnSubStart7401903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21035Data.id, 7401903, 0, 10, 1)
end

function Quest74019:OnSubFinish7401903(arg1)
    print("OnSubFinish7401903")
end

function Quest74019:OnSubStart7401902(arg1)
    print("OnSubStart7401902")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74019:OnSubFinish7401902(arg1)
    print("OnSubFinish7401902")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 3)
    end, nil, nil, 0, false, true)
end

function Quest74019:OnSubStart7401904(arg1)
    print("OnSubStart7401904")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74019:OnSubFinish7401904(arg1)
    print("OnSubFinish7401904")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
        this:RequestInteraction(npcs.Npc21035Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74019:OnSubStart7401906(arg1)
    print("OnSubStart7401906")
end

function Quest74019:OnSubFinish7401906(arg1)
    print("OnSubFinish7401906")
end

function Quest74019:OnSubStart7401905(arg1)
    print("OnSubStart7401905")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74019:OnSubFinish7401905(arg1)
    print("OnSubFinish7401905")
    this:SafeDestroyQuestNpc(npcs.Npc21035Data.alias, 3)
end

function Quest74019:OnSubStart7401907(arg1)
    print("OnSubStart7401907")
end

function Quest74019:OnSubFinish7401907(arg1)
    print("OnSubFinish7401907")
end

return Quest74019
