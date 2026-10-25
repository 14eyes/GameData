require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75031 = class("Quest75031", QuestActorProxy)
Quest75031.defaultAlias = "Quest75031"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest75031:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest75031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503101"] = self.OnSubStart7503101,
        ["7503102"] = self.OnSubStart7503102,
        ["7503103"] = self.OnSubStart7503103,
        ["7503104"] = self.OnSubStart7503104,
        ["7503107"] = self.OnSubStart7503107,
        ["7503105"] = self.OnSubStart7503105,
        ["7503106"] = self.OnSubStart7503106
    }
end

function Quest75031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503101"] = self.OnSubFinish7503101,
        ["7503102"] = self.OnSubFinish7503102,
        ["7503103"] = self.OnSubFinish7503103,
        ["7503104"] = self.OnSubFinish7503104,
        ["7503107"] = self.OnSubFinish7503107,
        ["7503105"] = self.OnSubFinish7503105,
        ["7503106"] = self.OnSubFinish7503106
    }
end

function Quest75031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75031:Start()
    print("Start")
end

function Quest75031:OnDestroy()
    print("OnDestroy")
end

function Quest75031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75031:OnSubStart7503101(arg1)
    print("OnSubStart7503101")
end

function Quest75031:OnSubFinish7503101(arg1)
    print("OnSubFinish7503101")
end

function Quest75031:OnSubStart7503102(arg1)
    print("OnSubStart7503102")
end

function Quest75031:OnSubFinish7503102(arg1)
    print("OnSubFinish7503102")
end

function Quest75031:OnSubStart7503103(arg1)
    print("OnSubStart7503103")
end

function Quest75031:OnSubFinish7503103(arg1)
    print("OnSubFinish7503103")
end

function Quest75031:OnSubStart7503104(arg1)
    print("OnSubStart7503104")
end

function Quest75031:OnSubFinish7503104(arg1)
    print("OnSubFinish7503104")
end

function Quest75031:OnSubStart7503107(arg1)
    print("OnSubStart7503107")
end

function Quest75031:OnSubFinish7503107(arg1)
    print("OnSubFinish7503107")
    this:QuestNarratorTask(datas.GetItem)
end

function Quest75031:OnSubStart7503105(arg1)
    print("OnSubStart7503105")
end

function Quest75031:OnSubFinish7503105(arg1)
    print("OnSubFinish7503105")
end

function Quest75031:OnSubStart7503106(arg1)
    print("OnSubStart7503106")
    actorUtils.FinishQuestID(false, 7503106)
end

function Quest75031:OnSubFinish7503106(arg1)
    print("OnSubFinish7503106")
end

return Quest75031
