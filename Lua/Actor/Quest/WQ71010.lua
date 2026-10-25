require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71010 = class("Quest71010", QuestActorProxy)
Quest71010.defaultAlias = "Quest71010"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101001"] = self.OnSubStart7101001,
        ["7101002"] = self.OnSubStart7101002,
        ["7101003"] = self.OnSubStart7101003,
        ["7101004"] = self.OnSubStart7101004,
        ["7101005"] = self.OnSubStart7101005,
        ["7101006"] = self.OnSubStart7101006,
        ["7101007"] = self.OnSubStart7101007
    }
end

function Quest71010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101001"] = self.OnSubFinish7101001,
        ["7101002"] = self.OnSubFinish7101002,
        ["7101003"] = self.OnSubFinish7101003,
        ["7101004"] = self.OnSubFinish7101004,
        ["7101005"] = self.OnSubFinish7101005,
        ["7101006"] = self.OnSubFinish7101006,
        ["7101007"] = self.OnSubFinish7101007
    }
end

function Quest71010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101001"] = self.OnSubFailed7101001,
        ["7101002"] = self.OnSubFailed7101002,
        ["7101003"] = self.OnSubFailed7101003,
        ["7101004"] = self.OnSubFailed7101004,
        ["7101005"] = self.OnSubFailed7101005,
        ["7101006"] = self.OnSubFailed7101006,
        ["7101007"] = self.OnSubFailed7101007
    }
end

function Quest71010:Start()
    print("Start")
end

function Quest71010:OnDestroy()
    print("OnDestroy")
end

function Quest71010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71010:OnSubStart7101001(arg1)
    print("OnSubStart7101001")
end

function Quest71010:OnSubFinish7101001(arg1)
    print("OnSubFinish7101001")
end

function Quest71010:OnSubFailed7101001(arg1)
    print("OnSubFailed7101001")
end

function Quest71010:OnSubStart7101002(arg1)
    print("OnSubStart7101002")
end

function Quest71010:OnSubFinish7101002(arg1)
    print("OnSubFinish7101002")
end

function Quest71010:OnSubFailed7101002(arg1)
    print("OnSubFailed7101002")
end

function Quest71010:OnSubStart7101003(arg1)
    print("OnSubStart7101003")
end

function Quest71010:OnSubFinish7101003(arg1)
    print("OnSubFinish7101003")
end

function Quest71010:OnSubFailed7101003(arg1)
    print("OnSubFailed7101003")
end

function Quest71010:OnSubStart7101004(arg1)
    print("OnSubStart7101004")
end

function Quest71010:OnSubFinish7101004(arg1)
    print("OnSubFinish7101004")
end

function Quest71010:OnSubFailed7101004(arg1)
    print("OnSubFailed7101004")
end

function Quest71010:OnSubStart7101005(arg1)
    print("OnSubStart7101005")
end

function Quest71010:OnSubFinish7101005(arg1)
    print("OnSubFinish7101005")
end

function Quest71010:OnSubFailed7101005(arg1)
    print("OnSubFailed7101005")
end

function Quest71010:OnSubStart7101006(arg1)
    print("OnSubStart7101006")
end

function Quest71010:OnSubFinish7101006(arg1)
    print("OnSubFinish7101006")
end

function Quest71010:OnSubFailed7101006(arg1)
    print("OnSubFailed7101006")
end

function Quest71010:OnSubStart7101007(arg1)
    print("OnSubStart7101007")
end

function Quest71010:OnSubFinish7101007(arg1)
    print("OnSubFinish7101007")
end

function Quest71010:OnSubFailed7101007(arg1)
    print("OnSubFailed7101007")
end

return Quest71010
