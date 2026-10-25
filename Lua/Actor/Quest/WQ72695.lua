require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72695 = class("Quest72695", QuestActorProxy)
Quest72695.defaultAlias = "Quest72695"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72695:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72695:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7269501"] = self.OnSubStart7269501,
        ["7269502"] = self.OnSubStart7269502,
        ["7269504"] = self.OnSubStart7269504,
        ["7269505"] = self.OnSubStart7269505,
        ["7269503"] = self.OnSubStart7269503
    }
end

function Quest72695:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7269501"] = self.OnSubFinish7269501,
        ["7269502"] = self.OnSubFinish7269502,
        ["7269504"] = self.OnSubFinish7269504,
        ["7269505"] = self.OnSubFinish7269505,
        ["7269503"] = self.OnSubFinish7269503
    }
end

function Quest72695:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72695:Start()
    print("Start")
end

function Quest72695:OnDestroy()
    print("OnDestroy")
end

function Quest72695:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72695:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72695:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72695:OnSubStart7269501(arg1)
    print("OnSubStart7269501")
end

function Quest72695:OnSubFinish7269501(arg1)
    print("OnSubFinish7269501")
end

function Quest72695:OnSubStart7269502(arg1)
    print("OnSubStart7269502")
end

function Quest72695:OnSubFinish7269502(arg1)
    print("OnSubFinish7269502")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest72695:OnSubStart7269504(arg1)
    print("OnSubStart7269504")
end

function Quest72695:OnSubFinish7269504(arg1)
    print("OnSubFinish7269504")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest72695:OnSubStart7269505(arg1)
    print("OnSubStart7269505")
end

function Quest72695:OnSubFinish7269505(arg1)
    print("OnSubFinish7269505")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest72695:OnSubStart7269503(arg1)
    print("OnSubStart7269503")
end

function Quest72695:OnSubFinish7269503(arg1)
    print("OnSubFinish7269503")
end

return Quest72695
