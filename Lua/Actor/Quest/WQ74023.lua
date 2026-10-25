require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74023 = class("Quest74023", QuestActorProxy)
Quest74023.defaultAlias = "Quest74023"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74023:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402301"] = self.OnSubStart7402301,
        ["7402304"] = self.OnSubStart7402304,
        ["7402302"] = self.OnSubStart7402302,
        ["7402303"] = self.OnSubStart7402303
    }
end

function Quest74023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402301"] = self.OnSubFinish7402301,
        ["7402304"] = self.OnSubFinish7402304,
        ["7402302"] = self.OnSubFinish7402302,
        ["7402303"] = self.OnSubFinish7402303
    }
end

function Quest74023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74023:Start()
    print("Start")
end

function Quest74023:OnDestroy()
    print("OnDestroy")
end

function Quest74023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74023:OnSubStart7402301(arg1)
    print("OnSubStart7402301")
end

function Quest74023:OnSubFinish7402301(arg1)
    print("OnSubFinish7402301")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
        this:RequestInteraction(npcs.Npc21066Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74023:OnSubStart7402304(arg1)
    print("OnSubStart7402304")
    this:CreateQuestNpc(arg1, npcs.Npc21066Data.id, 0)
end

function Quest74023:OnSubFinish7402304(arg1)
    print("OnSubFinish7402304")
    this:SafeDestroyQuestNpc(npcs.Npc21066Data.alias, 3)
end

function Quest74023:OnSubStart7402302(arg1)
    print("OnSubStart7402302")
end

function Quest74023:OnSubFinish7402302(arg1)
    print("OnSubFinish7402302")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 1)
        this:RequestInteraction(npcs.Npc21036Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74023:OnSubStart7402303(arg1)
    print("OnSubStart7402303")
    this:CreateQuestNpc(arg1, npcs.Npc21036Data.id, 0)
end

function Quest74023:OnSubFinish7402303(arg1)
    print("OnSubFinish7402303")
    this:SafeDestroyQuestNpc(npcs.Npc21036Data.alias, 3)
end

return Quest74023
