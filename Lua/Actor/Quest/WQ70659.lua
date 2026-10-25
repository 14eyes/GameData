require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70659 = class("Quest70659", QuestActorProxy)
Quest70659.defaultAlias = "Quest70659"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70659:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70659:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7065901"] = self.OnSubStart7065901,
        ["7065902"] = self.OnSubStart7065902,
        ["7065903"] = self.OnSubStart7065903
    }
end

function Quest70659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7065901"] = self.OnSubFinish7065901,
        ["7065902"] = self.OnSubFinish7065902,
        ["7065903"] = self.OnSubFinish7065903
    }
end

function Quest70659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7065901"] = self.OnSubFailed7065901,
        ["7065902"] = self.OnSubFailed7065902,
        ["7065903"] = self.OnSubFailed7065903
    }
end

function Quest70659:Start()
    print("Start")
end

function Quest70659:OnDestroy()
    print("OnDestroy")
end

function Quest70659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70659:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70659:ShowTutorial()
    print("ShowTutorial")
    self.ShowTutorialDialog(self, 812, function()
        self:FinishQuestID(false, 7065902)
        self:RequestInteractionForceAlias("Npc30051")
    end)
end

function Quest70659:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7065903)
        end

        print("Talk 7065903 Finishi Quest 7065903")
    end
end

function Quest70659:OnSubStart7065901(arg1)
    print("OnSubStart7065901")
end

function Quest70659:OnSubFinish7065901(arg1)
    print("OnSubFinish7065901")
end

function Quest70659:OnSubFailed7065901(arg1)
    print("OnSubFailed7065901")
end

function Quest70659:OnSubStart7065902(arg1)
    print("OnSubStart7065902")
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest70659:OnSubFinish7065902(arg1)
    print("OnSubFinish7065902")
end

function Quest70659:OnSubFailed7065902(arg1)
    print("OnSubFailed7065902")
end

function Quest70659:OnSubStart7065903(arg1)
    print("OnSubStart7065903")
end

function Quest70659:OnSubFinish7065903(arg1)
    print("OnSubFinish7065903")
end

function Quest70659:OnSubFailed7065903(arg1)
    print("OnSubFailed7065903")
end

return Quest70659
