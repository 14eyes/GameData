require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72101 = class("Quest72101", QuestActorProxy)
Quest72101.defaultAlias = "Quest72101"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72101:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72101:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210101"] = self.OnSubStart7210101,
        ["7210102"] = self.OnSubStart7210102,
        ["7210103"] = self.OnSubStart7210103,
        ["7210104"] = self.OnSubStart7210104,
        ["7210105"] = self.OnSubStart7210105,
        ["7210106"] = self.OnSubStart7210106,
        ["7210107"] = self.OnSubStart7210107,
        ["7210108"] = self.OnSubStart7210108,
        ["7210109"] = self.OnSubStart7210109,
        ["7210110"] = self.OnSubStart7210110,
        ["7210111"] = self.OnSubStart7210111
    }
end

function Quest72101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210101"] = self.OnSubFinish7210101,
        ["7210102"] = self.OnSubFinish7210102,
        ["7210103"] = self.OnSubFinish7210103,
        ["7210104"] = self.OnSubFinish7210104,
        ["7210105"] = self.OnSubFinish7210105,
        ["7210106"] = self.OnSubFinish7210106,
        ["7210107"] = self.OnSubFinish7210107,
        ["7210108"] = self.OnSubFinish7210108,
        ["7210109"] = self.OnSubFinish7210109,
        ["7210110"] = self.OnSubFinish7210110,
        ["7210111"] = self.OnSubFinish7210111
    }
end

function Quest72101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72101:Start()
    print("Start")
end

function Quest72101:OnDestroy()
    print("OnDestroy")
end

function Quest72101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72101:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72101:OnSubStart7210101(arg1)
    print("OnSubStart7210101")
end

function Quest72101:OnSubFinish7210101(arg1)
    print("OnSubFinish7210101")
end

function Quest72101:OnSubStart7210102(arg1)
    print("OnSubStart7210102")
end

function Quest72101:OnSubFinish7210102(arg1)
    print("OnSubFinish7210102")
end

function Quest72101:OnSubStart7210103(arg1)
    print("OnSubStart7210103")
end

function Quest72101:OnSubFinish7210103(arg1)
    print("OnSubFinish7210103")
end

function Quest72101:OnSubStart7210104(arg1)
    print("OnSubStart7210104")
end

function Quest72101:OnSubFinish7210104(arg1)
    print("OnSubFinish7210104")
end

function Quest72101:OnSubStart7210105(arg1)
    print("OnSubStart7210105")
end

function Quest72101:OnSubFinish7210105(arg1)
    print("OnSubFinish7210105")
end

function Quest72101:OnSubStart7210106(arg1)
    print("OnSubStart7210106")
end

function Quest72101:OnSubFinish7210106(arg1)
    print("OnSubFinish7210106")
end

function Quest72101:OnSubStart7210107(arg1)
    print("OnSubStart7210107")
end

function Quest72101:OnSubFinish7210107(arg1)
    print("OnSubFinish7210107")
end

function Quest72101:OnSubStart7210108(arg1)
    print("OnSubStart7210108")
end

function Quest72101:OnSubFinish7210108(arg1)
    print("OnSubFinish7210108")
end

function Quest72101:OnSubStart7210109(arg1)
    print("OnSubStart7210109")
end

function Quest72101:OnSubFinish7210109(arg1)
    print("OnSubFinish7210109")
end

function Quest72101:OnSubStart7210110(arg1)
    print("OnSubStart7210110")
end

function Quest72101:OnSubFinish7210110(arg1)
    print("OnSubFinish7210110")
end

function Quest72101:OnSubStart7210111(arg1)
    print("OnSubStart7210111")
end

function Quest72101:OnSubFinish7210111(arg1)
    print("OnSubFinish7210111")
end

return Quest72101
