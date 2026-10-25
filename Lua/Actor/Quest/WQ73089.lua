require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73089 = class("Quest73089", QuestActorProxy)
Quest73089.defaultAlias = "Quest73089"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73089:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73089:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308901"] = self.OnSubStart7308901,
        ["7308902"] = self.OnSubStart7308902,
        ["7308903"] = self.OnSubStart7308903,
        ["7308904"] = self.OnSubStart7308904,
        ["7308905"] = self.OnSubStart7308905,
        ["7308906"] = self.OnSubStart7308906,
        ["7308907"] = self.OnSubStart7308907,
        ["7308908"] = self.OnSubStart7308908
    }
end

function Quest73089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308901"] = self.OnSubFinish7308901,
        ["7308902"] = self.OnSubFinish7308902,
        ["7308903"] = self.OnSubFinish7308903,
        ["7308904"] = self.OnSubFinish7308904,
        ["7308905"] = self.OnSubFinish7308905,
        ["7308906"] = self.OnSubFinish7308906,
        ["7308907"] = self.OnSubFinish7308907,
        ["7308908"] = self.OnSubFinish7308908
    }
end

function Quest73089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73089:Start()
    print("Start")
end

function Quest73089:OnDestroy()
    print("OnDestroy")
end

function Quest73089:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73089:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73089:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73089:OnSubStart7308901(arg1)
    print("OnSubStart7308901")
end

function Quest73089:OnSubFinish7308901(arg1)
    print("OnSubFinish7308901")
end

function Quest73089:OnSubStart7308902(arg1)
    print("OnSubStart7308902")
    self:CreateQuestNpc(arg1, npcs.Npc20751Data.id, 1)
end

function Quest73089:OnSubFinish7308902(arg1)
    print("OnSubFinish7308902")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20751Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73089:OnSubStart7308903(arg1)
    print("OnSubStart7308903")
end

function Quest73089:OnSubFinish7308903(arg1)
    print("OnSubFinish7308903")
end

function Quest73089:OnSubStart7308904(arg1)
    print("OnSubStart7308904")
end

function Quest73089:OnSubFinish7308904(arg1)
    print("OnSubFinish7308904")
end

function Quest73089:OnSubStart7308905(arg1)
    print("OnSubStart7308905")
end

function Quest73089:OnSubFinish7308905(arg1)
    print("OnSubFinish7308905")
end

function Quest73089:OnSubStart7308906(arg1)
    print("OnSubStart7308906")
end

function Quest73089:OnSubFinish7308906(arg1)
    print("OnSubFinish7308906")
end

function Quest73089:OnSubStart7308907(arg1)
    print("OnSubStart7308907")
end

function Quest73089:OnSubFinish7308907(arg1)
    print("OnSubFinish7308907")
end

function Quest73089:OnSubStart7308908(arg1)
    print("OnSubStart7308908")
end

function Quest73089:OnSubFinish7308908(arg1)
    print("OnSubFinish7308908")
end

return Quest73089
