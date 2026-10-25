require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71658 = class("Quest71658", QuestActorProxy)
Quest71658.defaultAlias = "Quest71658"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71658:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71658:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7165801"] = self.OnSubStart7165801,
        ["7165808"] = self.OnSubStart7165808,
        ["7165802"] = self.OnSubStart7165802,
        ["7165809"] = self.OnSubStart7165809,
        ["7165803"] = self.OnSubStart7165803,
        ["7165810"] = self.OnSubStart7165810,
        ["7165804"] = self.OnSubStart7165804,
        ["7165811"] = self.OnSubStart7165811,
        ["7165805"] = self.OnSubStart7165805,
        ["7165812"] = self.OnSubStart7165812,
        ["7165806"] = self.OnSubStart7165806,
        ["7165813"] = self.OnSubStart7165813,
        ["7165807"] = self.OnSubStart7165807
    }
end

function Quest71658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7165801"] = self.OnSubFinish7165801,
        ["7165808"] = self.OnSubFinish7165808,
        ["7165802"] = self.OnSubFinish7165802,
        ["7165809"] = self.OnSubFinish7165809,
        ["7165803"] = self.OnSubFinish7165803,
        ["7165810"] = self.OnSubFinish7165810,
        ["7165804"] = self.OnSubFinish7165804,
        ["7165811"] = self.OnSubFinish7165811,
        ["7165805"] = self.OnSubFinish7165805,
        ["7165812"] = self.OnSubFinish7165812,
        ["7165806"] = self.OnSubFinish7165806,
        ["7165813"] = self.OnSubFinish7165813,
        ["7165807"] = self.OnSubFinish7165807
    }
end

function Quest71658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71658:Start()
    print("Start")
end

function Quest71658:OnDestroy()
    print("OnDestroy")
end

function Quest71658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71658:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71658:OnSubStart7165801(arg1)
    print("OnSubStart7165801")
end

function Quest71658:OnSubFinish7165801(arg1)
    print("OnSubFinish7165801")
end

function Quest71658:OnSubStart7165808(arg1)
    print("OnSubStart7165808")
end

function Quest71658:OnSubFinish7165808(arg1)
    print("OnSubFinish7165808")
end

function Quest71658:OnSubStart7165802(arg1)
    print("OnSubStart7165802")
end

function Quest71658:OnSubFinish7165802(arg1)
    print("OnSubFinish7165802")
end

function Quest71658:OnSubStart7165809(arg1)
    print("OnSubStart7165809")
end

function Quest71658:OnSubFinish7165809(arg1)
    print("OnSubFinish7165809")
end

function Quest71658:OnSubStart7165803(arg1)
    print("OnSubStart7165803")
end

function Quest71658:OnSubFinish7165803(arg1)
    print("OnSubFinish7165803")
end

function Quest71658:OnSubStart7165810(arg1)
    print("OnSubStart7165810")
end

function Quest71658:OnSubFinish7165810(arg1)
    print("OnSubFinish7165810")
end

function Quest71658:OnSubStart7165804(arg1)
    print("OnSubStart7165804")
end

function Quest71658:OnSubFinish7165804(arg1)
    print("OnSubFinish7165804")
end

function Quest71658:OnSubStart7165811(arg1)
    print("OnSubStart7165811")
end

function Quest71658:OnSubFinish7165811(arg1)
    print("OnSubFinish7165811")
end

function Quest71658:OnSubStart7165805(arg1)
    print("OnSubStart7165805")
end

function Quest71658:OnSubFinish7165805(arg1)
    print("OnSubFinish7165805")
end

function Quest71658:OnSubStart7165812(arg1)
    print("OnSubStart7165812")
end

function Quest71658:OnSubFinish7165812(arg1)
    print("OnSubFinish7165812")
end

function Quest71658:OnSubStart7165806(arg1)
    print("OnSubStart7165806")
end

function Quest71658:OnSubFinish7165806(arg1)
    print("OnSubFinish7165806")
end

function Quest71658:OnSubStart7165813(arg1)
    print("OnSubStart7165813")
end

function Quest71658:OnSubFinish7165813(arg1)
    print("OnSubFinish7165813")
end

function Quest71658:OnSubStart7165807(arg1)
    print("OnSubStart7165807")
end

function Quest71658:OnSubFinish7165807(arg1)
    print("OnSubFinish7165807")
end

return Quest71658
