require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74059 = class("Quest74059", QuestActorProxy)
Quest74059.defaultAlias = "Quest74059"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74059:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74059:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405901"] = self.OnSubStart7405901,
        ["7405905"] = self.OnSubStart7405905,
        ["7405902"] = self.OnSubStart7405902,
        ["7405906"] = self.OnSubStart7405906,
        ["7405903"] = self.OnSubStart7405903,
        ["7405904"] = self.OnSubStart7405904
    }
end

function Quest74059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405901"] = self.OnSubFinish7405901,
        ["7405905"] = self.OnSubFinish7405905,
        ["7405902"] = self.OnSubFinish7405902,
        ["7405906"] = self.OnSubFinish7405906,
        ["7405903"] = self.OnSubFinish7405903,
        ["7405904"] = self.OnSubFinish7405904
    }
end

function Quest74059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74059:Start()
    print("Start")
end

function Quest74059:OnDestroy()
    print("OnDestroy")
end

function Quest74059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74059:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74059:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 2 then
        actorUtils.FinishQuestID(false, 7405904)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 7405906)
    end
end

function Quest74059:OnSubStart7405901(arg1)
    print("OnSubStart7405901")
end

function Quest74059:OnSubFinish7405901(arg1)
    print("OnSubFinish7405901")
end

function Quest74059:OnSubStart7405905(arg1)
    print("OnSubStart7405905")
end

function Quest74059:OnSubFinish7405905(arg1)
    print("OnSubFinish7405905")
    this:NarratorOnlyTaskByData(datas.paim_7405901)
end

function Quest74059:OnSubStart7405902(arg1)
    print("OnSubStart7405902")
end

function Quest74059:OnSubFinish7405902(arg1)
    print("OnSubFinish7405902")
end

function Quest74059:OnSubStart7405906(arg1)
    print("OnSubStart7405906")
end

function Quest74059:OnSubFinish7405906(arg1)
    print("OnSubFinish7405906")
end

function Quest74059:OnSubStart7405903(arg1)
    print("OnSubStart7405903")
    this:CreateQuestNpc(arg1, npcs.Npc5322Data.id, 0)
end

function Quest74059:OnSubFinish7405903(arg1)
    print("OnSubFinish7405903")
    this:SafeDestroyQuestNpc(npcs.Npc5322Data.alias, 3)
end

function Quest74059:OnSubStart7405904(arg1)
    print("OnSubStart7405904")
end

function Quest74059:OnSubFinish7405904(arg1)
    print("OnSubFinish7405904")
end

return Quest74059
