require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72694 = class("Quest72694", QuestActorProxy)
Quest72694.defaultAlias = "Quest72694"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72694:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72694:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7269401"] = self.OnSubStart7269401,
        ["7269402"] = self.OnSubStart7269402,
        ["7269403"] = self.OnSubStart7269403,
        ["7269405"] = self.OnSubStart7269405,
        ["7269406"] = self.OnSubStart7269406,
        ["7269404"] = self.OnSubStart7269404
    }
end

function Quest72694:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7269401"] = self.OnSubFinish7269401,
        ["7269402"] = self.OnSubFinish7269402,
        ["7269403"] = self.OnSubFinish7269403,
        ["7269405"] = self.OnSubFinish7269405,
        ["7269406"] = self.OnSubFinish7269406,
        ["7269404"] = self.OnSubFinish7269404
    }
end

function Quest72694:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72694:Start()
    print("Start")
end

function Quest72694:OnDestroy()
    print("OnDestroy")
end

function Quest72694:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72694:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72694:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72694:OnSubStart7269401(arg1)
    print("OnSubStart7269401")
end

function Quest72694:OnSubFinish7269401(arg1)
    print("OnSubFinish7269401")
end

function Quest72694:OnSubStart7269402(arg1)
    print("OnSubStart7269402")
end

function Quest72694:OnSubFinish7269402(arg1)
    print("OnSubFinish7269402")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(858)
    end)
end

function Quest72694:OnSubStart7269403(arg1)
    print("OnSubStart7269403")
end

function Quest72694:OnSubFinish7269403(arg1)
    print("OnSubFinish7269403")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest72694:OnSubStart7269405(arg1)
    print("OnSubStart7269405")
end

function Quest72694:OnSubFinish7269405(arg1)
    print("OnSubFinish7269405")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest72694:OnSubStart7269406(arg1)
    print("OnSubStart7269406")
end

function Quest72694:OnSubFinish7269406(arg1)
    print("OnSubFinish7269406")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest72694:OnSubStart7269404(arg1)
    print("OnSubStart7269404")
end

function Quest72694:OnSubFinish7269404(arg1)
    print("OnSubFinish7269404")
end

return Quest72694
