require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74045 = class("Quest74045", QuestActorProxy)
Quest74045.defaultAlias = "Quest74045"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74045:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404501"] = self.OnSubStart7404501,
        ["7404502"] = self.OnSubStart7404502,
        ["7404505"] = self.OnSubStart7404505,
        ["7404504"] = self.OnSubStart7404504,
        ["7404506"] = self.OnSubStart7404506,
        ["7404507"] = self.OnSubStart7404507,
        ["7404508"] = self.OnSubStart7404508,
        ["7404509"] = self.OnSubStart7404509,
        ["7404510"] = self.OnSubStart7404510,
        ["7404511"] = self.OnSubStart7404511,
        ["7404503"] = self.OnSubStart7404503
    }
end

function Quest74045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404501"] = self.OnSubFinish7404501,
        ["7404502"] = self.OnSubFinish7404502,
        ["7404505"] = self.OnSubFinish7404505,
        ["7404504"] = self.OnSubFinish7404504,
        ["7404506"] = self.OnSubFinish7404506,
        ["7404507"] = self.OnSubFinish7404507,
        ["7404508"] = self.OnSubFinish7404508,
        ["7404509"] = self.OnSubFinish7404509,
        ["7404510"] = self.OnSubFinish7404510,
        ["7404511"] = self.OnSubFinish7404511,
        ["7404503"] = self.OnSubFinish7404503
    }
end

function Quest74045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74045:Start()
    print("Start")
end

function Quest74045:OnDestroy()
    print("OnDestroy")
end

function Quest74045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74045:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74045:OnSubStart7404501(arg1)
    print("OnSubStart7404501")
    this:CreateQuestNpc(arg1, npcs.Npc21093Data.id, 0)
end

function Quest74045:OnSubFinish7404501(arg1)
    print("OnSubFinish7404501")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21093Data.alias)
end

function Quest74045:OnSubStart7404502(arg1)
    print("OnSubStart7404502")
    this:CreateQuestNpc(arg1, npcs.Npc5322Data.id, 0)
end

function Quest74045:OnSubFinish7404502(arg1)
    print("OnSubFinish7404502")
    this:NarratorOnlyTaskByData(datas.paim7404502)
end

function Quest74045:OnSubStart7404505(arg1)
    print("OnSubStart7404505")
    this:CreateQuestNpcWithTriggerBlackEx("7404505npctrigger", 7404505, 5322, 1, 15, 0.5, 1, 0.5, 1)
end

function Quest74045:OnSubFinish7404505(arg1)
    print("OnSubFinish7404505")
end

function Quest74045:OnSubStart7404504(arg1)
    print("OnSubStart7404504")
    this:CreateQuestNpc(arg1, npcs.Npc5096Data.id, 0)
end

function Quest74045:OnSubFinish7404504(arg1)
    print("OnSubFinish7404504")
    this:CallDelayByQuest("delay04", 3, function(arg1)
        this:NarratorOnlyTaskByData(datas.paim7404504)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc5096Data.alias, 3)
end

function Quest74045:OnSubStart7404506(arg1)
    print("OnSubStart7404506")
end

function Quest74045:OnSubFinish7404506(arg1)
    print("OnSubFinish7404506")
end

function Quest74045:OnSubStart7404507(arg1)
    print("OnSubStart7404507")
end

function Quest74045:OnSubFinish7404507(arg1)
    print("OnSubFinish7404507")
end

function Quest74045:OnSubStart7404508(arg1)
    print("OnSubStart7404508")
end

function Quest74045:OnSubFinish7404508(arg1)
    print("OnSubFinish7404508")
end

function Quest74045:OnSubStart7404509(arg1)
    print("OnSubStart7404509")
end

function Quest74045:OnSubFinish7404509(arg1)
    print("OnSubFinish7404509")
end

function Quest74045:OnSubStart7404510(arg1)
    print("OnSubStart7404510")
end

function Quest74045:OnSubFinish7404510(arg1)
    print("OnSubFinish7404510")
end

function Quest74045:OnSubStart7404511(arg1)
    print("OnSubStart7404511")
end

function Quest74045:OnSubFinish7404511(arg1)
    print("OnSubFinish7404511")
end

function Quest74045:OnSubStart7404503(arg1)
    print("OnSubStart7404503")
end

function Quest74045:OnSubFinish7404503(arg1)
    print("OnSubFinish7404503")
end

return Quest74045
