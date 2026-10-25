require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71169 = class("Quest71169", QuestActorProxy)
Quest71169.defaultAlias = "Quest71169"
local clientData
local this
local mainID
local actorAlias

function Quest71169:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71169:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7116901"] = self.OnSubStart7116901,
        ["7116903"] = self.OnSubStart7116903,
        ["7116902"] = self.OnSubStart7116902,
        ["7116905"] = self.OnSubStart7116905,
        ["7116904"] = self.OnSubStart7116904,
        ["7116906"] = self.OnSubStart7116906
    }
end

function Quest71169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7116901"] = self.OnSubFinish7116901,
        ["7116903"] = self.OnSubFinish7116903,
        ["7116902"] = self.OnSubFinish7116902,
        ["7116905"] = self.OnSubFinish7116905,
        ["7116904"] = self.OnSubFinish7116904,
        ["7116906"] = self.OnSubFinish7116906
    }
end

function Quest71169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7116904"] = self.OnSubFailed7116904}
end

function Quest71169:Start()
    print("Start")
end

function Quest71169:OnDestroy()
    print("OnDestroy")
end

function Quest71169:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71169:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71169:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71169:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71169:OnSubStart7116901(arg1)
    print("OnSubStart7116901")
end

function Quest71169:OnSubFinish7116901(arg1)
    print("OnSubFinish7116901")
end

function Quest71169:OnSubStart7116903(arg1)
    print("OnSubStart7116903")
end

function Quest71169:OnSubFinish7116903(arg1)
    print("OnSubFinish7116903")
end

function Quest71169:OnSubStart7116902(arg1)
    print("OnSubStart7116902")
end

function Quest71169:OnSubFinish7116902(arg1)
    print("OnSubFinish7116902")
end

function Quest71169:OnSubStart7116905(arg1)
    print("OnSubStart7116905")
end

function Quest71169:OnSubFinish7116905(arg1)
    print("OnSubFinish7116905")
end

function Quest71169:OnSubStart7116904(arg1)
    print("OnSubStart7116904")
    this:DeployStoryByQuest(147116901)
end

function Quest71169:OnSubFinish7116904(arg1)
    print("OnSubFinish7116904")
    this:CancelStoryByQuest(147116901)
end

function Quest71169:OnSubFailed7116904(arg1)
    print("OnSubFailed7116904")
    this:CancelStoryByQuest(147116901)
end

function Quest71169:OnSubStart7116906(arg1)
    print("OnSubStart7116906")
end

function Quest71169:OnSubFinish7116906(arg1)
    print("OnSubFinish7116906")
end

return Quest71169
