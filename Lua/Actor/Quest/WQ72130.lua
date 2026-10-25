require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72130 = class("Quest72130", QuestActorProxy)
Quest72130.defaultAlias = "Quest72130"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72130:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213004"] = self.OnSubStart7213004,
        ["7213005"] = self.OnSubStart7213005,
        ["7213006"] = self.OnSubStart7213006,
        ["7213007"] = self.OnSubStart7213007,
        ["7213008"] = self.OnSubStart7213008,
        ["7213009"] = self.OnSubStart7213009
    }
end

function Quest72130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213004"] = self.OnSubFinish7213004,
        ["7213005"] = self.OnSubFinish7213005,
        ["7213006"] = self.OnSubFinish7213006,
        ["7213007"] = self.OnSubFinish7213007,
        ["7213008"] = self.OnSubFinish7213008,
        ["7213009"] = self.OnSubFinish7213009
    }
end

function Quest72130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213004"] = self.OnSubFailed7213004,
        ["7213005"] = self.OnSubFailed7213005,
        ["7213006"] = self.OnSubFailed7213006,
        ["7213007"] = self.OnSubFailed7213007,
        ["7213008"] = self.OnSubFailed7213008,
        ["7213009"] = self.OnSubFailed7213009
    }
end

function Quest72130:Start()
    print("Start")
end

function Quest72130:OnDestroy()
    print("OnDestroy")
end

function Quest72130:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72130:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72130:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72130:cutscene()
    print("cutscene")
    self:PlayCutsceneIndex("7213001", self.finishquest, nil, nil, false)
end

function Quest72130:finishquest()
    print("finishquest")
    self:FinishQuestID(false, 7213009)
end

function Quest72130:OnSubStart7213004(arg1)
    print("OnSubStart7213004")
end

function Quest72130:OnSubFinish7213004(arg1)
    print("OnSubFinish7213004")
end

function Quest72130:OnSubFailed7213004(arg1)
    print("OnSubFailed7213004")
end

function Quest72130:OnSubStart7213005(arg1)
    print("OnSubStart7213005")
end

function Quest72130:OnSubFinish7213005(arg1)
    print("OnSubFinish7213005")
end

function Quest72130:OnSubFailed7213005(arg1)
    print("OnSubFailed7213005")
end

function Quest72130:OnSubStart7213006(arg1)
    print("OnSubStart7213006")
end

function Quest72130:OnSubFinish7213006(arg1)
    print("OnSubFinish7213006")
    self:ActionSafeCall(self.cutscene)
end

function Quest72130:OnSubFailed7213006(arg1)
    print("OnSubFailed7213006")
end

function Quest72130:OnSubStart7213007(arg1)
    print("OnSubStart7213007")
end

function Quest72130:OnSubFinish7213007(arg1)
    print("OnSubFinish7213007")
end

function Quest72130:OnSubFailed7213007(arg1)
    print("OnSubFailed7213007")
end

function Quest72130:OnSubStart7213008(arg1)
    print("OnSubStart7213008")
end

function Quest72130:OnSubFinish7213008(arg1)
    print("OnSubFinish7213008")
end

function Quest72130:OnSubFailed7213008(arg1)
    print("OnSubFailed7213008")
end

function Quest72130:OnSubStart7213009(arg1)
    print("OnSubStart7213009")
end

function Quest72130:OnSubFinish7213009(arg1)
    print("OnSubFinish7213009")
end

function Quest72130:OnSubFailed7213009(arg1)
    print("OnSubFailed7213009")
end

return Quest72130
